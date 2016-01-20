<?php
/**
 * @package 	formfields
 * @version		1.0
 * @created		Apr 2012
 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2012 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */
// No direct access
defined('_JEXEC') or die;
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');
require_once (JPATH_ROOT . '/modules/mod_bt_apb/helpers/images.php');

class JFormFieldGallery extends JFormField {

    protected $type = 'gallery';
    public $_name = 'gallery';
	private $params;

    protected function getLabel() {
        return '';
    }

    protected function _build($moduleID, $name, $value) {
        /* @var JDocument $document */
        $document = JFactory::getDocument();
        

        if (version_compare(JVERSION, '1.6.0', 'ge')) {
            $document->addScript(JURI::root() . "modules/mod_bt_apb/assets/js/btslideshow.min.js");
            $document->addScript(JURI::root() . "modules/mod_bt_apb/assets/js/btbase64.min.js");
			$document->addScriptDeclaration('(function($){$(document).ready(function(){initGallery();});})(jQuery);');
        } else {
            $document->addScript(JURI::root() . "modules/mod_bt_apb/assets/js/btloader.min.js");
            // Hack, replace mootools by newer
            foreach ($document->_scripts as $key => $tmp) {
                if (preg_match('#media/system/js/mootools.js#is', $key)) {
                    unset($document->_scripts[$key]);
                }
            }
            $mootools = array(
                JURI::root() . "modules/mod_bt_apb/assets/js/mootools-core.js" => 'text/javascript',
                JURI::root() . "modules/mod_bt_apb/assets/js/mootools-more.js" => 'text/javascript'
            );
            $document->_scripts = $mootools + $document->_scripts;
            ?>
            <script>

                (function(){
                    var libs = [
                        '<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/js/mootools-core.js',
                        '<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/js/mootools-more.js',
                        '<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/js/btslideshow.min.js',
                        '<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/js/btbase64.min.js',
                        '<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/squeezebox/squeezebox.min.js'
                    ];

                    BT.Loader.js(libs, function(){
                        initGallery();
                    });
                    BT.Loader.css('<?php echo JURI::root(); ?>modules/mod_bt_apb/assets/squeezebox/assets/squeezebox.css');

                    window.addEvent('load', function() {
                        document.combobox = null;
                        var combobox = new JCombobox();
                        document.combobox = combobox;
                    });

                })();
            </script>
            <?php
        }



        // Remove temp files
        $images = json_decode(base64_decode($value));
		
        //check if 0 folder exists
        $saveDir = JPATH_SITE . '/modules/mod_bt_apb/images';
        if ($moduleID != 0 && JFolder::exists($saveDir . '/0')) {
            JFolder::move($saveDir . '/0', $saveDir . '/' . $moduleID);
        }

        //load file if miss save
        $originalDir = $saveDir . '/' . $moduleID . '/original';
        if (is_dir($originalDir)) {
            $open = opendir($originalDir);
            $arrFiles = array();
            $filename = readdir($open);
            while ($filename !== false) {
                //check validated file
                if (filetype($originalDir . '/' . $filename) == "file") {
                    $existed = false;
                    if (count($images) > 0) {
                        foreach ($images as $image) {
                            if ($image->file == $filename) {
                                $existed = true;
                                break;
                            }
                        }
                    }
                    if (!$existed) {
                        $objFile = new stdClass();
                        $objFile->file = $filename;
                        $objFile->title = '';
                        $images[] = $objFile;
                    }
                }
                $filename = readdir($open);
            }
        }
		
		$moduleURI = JPATH_SITE . "/modules/mod_bt_apb/";
		if(isset($this->params)){
			$thumbWidth = $this->params->thumbnail_width;
			$thumbHeight = $this->params->thumbnail_height;

			// Make thumbnail if haven't created or just change the size

			$originalPath = JPATH_SITE . '/modules/mod_bt_apb/images/original/';
			$thumbnailPath = JPATH_SITE . '/modules/mod_bt_apb/images/thumbnail/';
			
			$originalFile = '';
			
			foreach($images as $image){
				$file = $thumbnailPath . $image->file;
				if($this->params->remote_image){
					if(isset($image->remote)){
						$originalFile = $image->remote;
					}else{
						$originalFile = $originalPath.$image->file;
					}
				}else{
					if(file_exists($originalPath.$image->file)){
						$originalFile = $originalPath.$image->file;
					}else if(isset($image->remote)){
						$originalFile = $image->remote;
					}
				}

				if(file_exists($file)){
					$imageSize = getimagesize($file);
					if($imageSize[0] != $thumbWidth || $imageSize[1] != $thumbHeight){
					   BTImageHelper::resize($originalFile, $file, $thumbWidth, $thumbHeight,true, 100);
					}
				}else {
					BTImageHelper::resize($originalFile, $file, $thumbWidth, $thumbHeight,true, 100);	
				}
			}	
		}
        $value = base64_encode(json_encode($images));

        $html = '
			<div id="btss-message" class="clearfix"></div>
                  <ul id="btss-upload-list"></ul>
			<div id="btss-file-uploader">
				<noscript>
					<p>' . JText::_('MOD_BTBGSLIDESHOW_NOTICE_JAVASCRIPT') . '</p>
				</noscript>
			</div>
			<input id="btss-gallery-hidden" class="gallery-option" type="hidden" name="' . $name . '" value="" />
			<ul id="btss-gallery-container" class="clearfix"></ul>
			';
        ?>
        <script type="text/javascript">
            function openFrame(a){
                var jQ = jQuery.noConflict();				
                if(jQ("#ifK2Articles").css('display') != 'none') return false;
                if(jQ(a).attr('rel') == 0){
                    jQ(a).html('Back');
                    jQ(a).attr('rel', 1);
                    jQ("#sbox-window .adminform").hide();
                    jQ("#sbox-window").animate({height: 450}, 300);
                    jQ("#ifArticles").show();
                }else{
                    jQ(a).html('Select Article');
                    jQ(a).attr('rel', 0);
                    jQ("#sbox-window .adminform").show();
                    jQ("#sbox-window").animate({height: 380}, 300);
                    jQ("#ifArticles").hide();
                }
                return false;
            }

            function jSelectArticle_jform_params_id(id, title, order){
                var jQ = jQuery.noConflict();				
                jQ("#btss-article").html('Select Article');
                jQ("#btss-article").attr('rel', 0);
                jQ("#ifArticles").hide();
                jQ("#sbox-window").animate({height: 380}, 300);
                jQ("#sbox-window .adminform").show();
                jQ.ajax({
                    type: "post",
                    url: location.href,
                    data: {action: "get_article",article_id : id},
                    success: function(response){
                        var data = jQ.parseJSON(response);						
                        if(data!= null && data.success){
                            jQ("#sbox-window .btss-title").val(title);
                            jQ("#sbox-window .btss-link").val(data.link);
                            jQ("#sbox-window .btss-desc").val(data.desc);							
                        }else{
                            jQ("#sbox-window .adminform").prepend(
                            "<div style='color: red; font-size: 10px;'>Importing article is failed. Have some errors.</div>"
                        );
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        //alert('Sending ajax request is failed. Check ajax.php, please.')
                    }
                });
            }
        <?php
        require_once (JPATH_ROOT . '/modules/mod_bt_apb/helpers/helper.php');
        if (BtApbHelper::checkK2Component()) {
            ?>
                    function openK2Frame(a){
                        var jQ = jQuery.noConflict();
                        if(jQ("#ifArticles").css('display') != 'none') return false;
                        if(jQ(a).attr('rel') == 0){
                            jQ(a).html('Back');
                            jQ(a).attr('rel', 1);
                            jQ("#sbox-window .adminform").hide();
                            jQ("#sbox-window").animate({height: 450}, 300);
                            jQ("#ifK2Articles").show();
                        }else{
                            jQ(a).html('Select K2 Article');
                            jQ(a).attr('rel', 0);
                            jQ("#sbox-window .adminform").show();
                            jQ("#sbox-window").animate({height: 380}, 300);
                            jQ("#ifK2Articles").hide();
                        }
                        return false;
                    }
                    function jSelectItem(id, title, objectname){
                        var jQ = jQuery.noConflict();
                        jQ("#btss-k2article").html('Select K2 Article');
                        jQ("#btss-k2article").attr('rel', 0);
                        jQ("#ifK2Articles").hide();
                        jQ("#sbox-window").animate({height: 350}, 300);
                        jQ("#sbox-window .adminform").show();
                        jQ.ajax({
                            type: "post",
                            url: location.href,
                            data: {action: "get_article", article_id : id, k2 : 1},
                            success: function(response){
                                var data = jQ.parseJSON(response);
                                if(data!= null && data.success){
                                    jQ("#sbox-window .btss-title").val(title);									
                                    jQ("#sbox-window .btss-link").val(data.link);									
                                    jQ("#sbox-window .btss-desc").val(data.desc);
                                }else{
                                    jQ("#sbox-window .adminform").prepend(
                                    "<div style='color: red; font-size: 10px;'>Importing k2 article is failed. Have some errors.</div>"
                                );
                                }
                            },
                            error: function(jqXHR, textStatus, errorThrown){
                                //alert('Sending ajax request is failed. Check ajax.php, please.')
                            }
                        });
                    }
            <?php
        }
        ?>	
			function initGallery(){
                BTSlideshow = new BT.Slideshow({
                    liveUrl: '<?php echo JURI::root(); ?>',
                    encodedItems: '<?php echo $value; ?>',
                    moduleID: '<?php echo $moduleID; ?>',
                    galleryContainer: 'btss-gallery-container',
                    dialogTemplate:
                        '<div style="margin: 10px 0px 10px 10px;" class="button2-left">'+
                        '     <div class="blank">'+
                        '         <a id="btss-article" onclick="openFrame(this);" title="Import from article" class="btn btn-small" rel="0">Select Article</a>' +
                        '     </div>'+
                        '</div>'+
        <?php
        if (BtApbHelper::checkK2Component()) {
            ?>
                            '<div style="margin: 10px 0px 10px 10px;" class="button2-left">'+
                                '     <div class="blank">'+
                                '         <a id="btss-k2article" onclick="openK2Frame(this);" title="Import from K2 article" class="btn btn-small" rel="0">Select K2 Article</a>' +
                                '     </div>'+
                                '</div>'+
            <?php
        }
        ?>
                    '<fieldset style="clear: both;" class="adminform">' +
						'<legend><?php echo JText::_('CAPTION'); ?></legend>'+
                        '<ul class="adminformlist">' +
                        '<li>' +
                        '<label class="btss-title-lbl" class="hasTip" title="<?php echo JText::_('TITLE_DESC'); ?>" for="btss-title"><?php echo JText::_('TITLE_LABEL'); ?></label>' +
                        '<input class="btss-title" type="text" name="btss-title" size="90" />' +
                        '</li>' +
                        '<li>' +
                        '<label class="btss-link-lbl" class="hasTip" title="<?php echo JText::_('LINK_DESC'); ?>" for="btss-link"><?php echo JText::_('LINK_LABEL'); ?></label>' +
                        '<input class="btss-link" type="text" name="btss-link" size="90" />' +
                        '</li>' +
                        '<li>' +
                        '<label class="btss-target-lbl" class="hasTip" title="<?php echo JText::_('TARGET_DESC'); ?>" for="btss-target"><?php echo JText::_('TARGET_LABEL'); ?></label>' +
                        '<select class="btss-target" name="btss-link">' +
                        '   <option value=""><?php echo JText::_('TARGET_CURRENT') ?></option>' +
                        '   <option value="_blank"><?php echo JText::_('TARGET_BLANK') ?></option>' +
                        '   <option value="window"><?php echo JText::_('TARGET_WINDOW') ?></option>' +
                        '</select>'+
                        '</li>' +						
                        '<li>' +
                        '<label class="btss-desc-lbl" class="hasTip" title="<?php echo JText::_('DESCRIPTION_DESC'); ?>" for="btss-desc"><?php echo JText::_('DESCRIPTION_LABEL'); ?></label>' +
                        '<textarea style="width: 375px;" class="btss-desc" name="btss-desc" rows="5" cols="50"></textarea>' +
                        '</li>' +
                        '</ul>' +                      
                        '</fieldset>' +						
						'<div style="clear: both;">' +
                        '<label>&nbsp;</label><button class="btss-dialog-ok btn btn-small" style="margin-left: 10px;"><?php echo JText::_('BTN_OK'); ?></button><button class="btss-dialog-cancel btn btn-small" style="margin-left: 10px;"><?php echo JText::_('BTN_CANCEL'); ?></button>'+
                        '</div>' +
                        '<iframe style="display: none" id="ifArticles" height="400" frameborder="0" width="775" src="index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_params_id"></iframe>'+
                        '<iframe style="display: none" id="ifK2Articles" height="400" frameborder="0" width="775" src="index.php?option=com_k2&view=images&task=element&tmpl=component"></iframe>'
                });


           };

        </script>
        <?php
        return $html;
    }

    protected function getInput() {
        JHtml::_('behavior.framework', true);
        JHtml::_('behavior.modal');

        $moduleID = $this->form->getValue('id');
		$this->params = $this->form->getValue('params');
        if ($moduleID == '')
            $moduleID = 0;
        $this->sync($moduleID);
        return $this->_build($moduleID, $this->name, $this->value);
    }

    private function sync($moduleID) {
        if (!JRequest::get('post')) {
            $images = json_decode(base64_decode($this->value));
            $itemNames = array();
            if ($images) {
                foreach ($images as $item) {
                    $itemNames[] = $item->file;
                }
            }
            $saveDir = JPATH_SITE . '/modules/mod_bt_apb/images';

            //sync with older version
			
            if (JFolder::exists($saveDir . '/' . $moduleID)) {
                if ($images) {
                    foreach ($images as $olderFile) {
                        @JFile::move($saveDir . '/' . $moduleID . '/original/' . $olderFile->file, $saveDir . '/original/' . $olderFile->file);
                        @JFile::move($saveDir . '/' . $moduleID . '/manager/' . $olderFile->file, $saveDir . '/manager/' . $olderFile->file);
                        @JFile::move($saveDir . '/' . $moduleID . '/thumbnail/' . $olderFile->file, $saveDir . '/thumbnail/' . $olderFile->file);
                        @JFile::move($saveDir . '/' . $moduleID . '/slideshow/' . $olderFile->file, $saveDir . '/slideshow/' . $olderFile->file);
                    }
                }
                JFolder::delete($saveDir . '/' . $moduleID);
            } else {

                //move images after save
                if($images){
                    foreach ($images as $key => $item) {
					
						if(isset($item->remote) && $item->remote){
							if(!JFile::exists($saveDir . '/manager/' . $item->file)){
								if(JFile::exists($saveDir . '/tmp/manager/' . $item->file)){
									JFile::move($saveDir . '/tmp/manager/' . $item->file, $saveDir . '/manager/' . $item->file);
									continue;
								}else{
									 unset($images[$key]);
								}
							}
							continue;
						}
					
                        if (!JFile::exists($saveDir . '/original/' . $item->file)) {
                            if (JFile::exists($saveDir . '/tmp/original/' . $item->file)) {
                                JFile::move($saveDir . '/tmp/original/' . $item->file, $saveDir . '/original/' . $item->file);
                                JFile::move($saveDir . '/tmp/manager/' . $item->file, $saveDir . '/manager/' . $item->file);
                            }else{
                                unset($images[$key]);
                            }
                        }
                    }
					$this->value = base64_encode(json_encode(array_values($images)));
                }
                
                //delete images if not save
                $tmpOriginalFiles = JFolder::files($saveDir . '/tmp/original');
				if($tmpOriginalFiles){
					$config = JFactory::getConfig();
					$cacheTime = $config->get('cachetime') * 60;
					foreach ($tmpOriginalFiles as $originalFile) {
						$modifiedTime = filemtime($saveDir . '/tmp/original/' . $originalFile);
						if (time() - $modifiedTime > $cacheTime && !in_array($originalFile, $itemNames)) {
							@JFile::delete($saveDir . '/tmp/original/' . $originalFile);
							@JFile::delete($saveDir . '/tmp/manager/' . $originalFile);
						}
					}
				}	
            }
        }
    }

}
