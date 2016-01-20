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
// no direct access
defined('_JEXEC') or die('Restricted access');
jimport('joomla.form.formfield');

class JFormFieldFetchImage extends JFormField {

    protected $type = 'fetchimage';

    protected function getInput() {
        JHtml::_('behavior.framework', true);
        JHtml::_('behavior.modal');

        $moduleID = $this->form->getValue('id');
        if ($moduleID == '')
            $moduleID = 0;
        return $this->_build($moduleID);
    }
    protected function _build($moduleID){
        if($moduleID == '') $moduleID = 0;
        
        //check phocagallery component exists
        $phocaPath = JPATH_ADMINISTRATOR.'/components/com_phocagallery';
        $phocaExists = (is_dir($phocaPath)) ? 1 : 0;
        //check joomgallery component exists
        $jgalleryPath = JPATH_ADMINISTRATOR.'/components/com_joomgallery';
        $jgalleryPathExists = (is_dir($jgalleryPath)) ? 1 : 0;
        $root = JURI::root();
		$class = $this->element['class'] ? (string) $this->element['class'] : '';
        
		
		JText::script('MOD_BTBGSLIDESHOW_ERROR_ON_PROGESS'); 
		JText::script('MOD_BTBGSLIDESHOW_JOOMLAFOLDER_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_FLICKR_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_PICASA_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_PHOCA_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_JOOMGALLERY_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_YOUTUBE_LINK_ALERT'); 
		JText::script('MOD_BTBGSLIDESHOW_CONFIRM_DELETE_ALL'); 
 
		$html = '<button id="btnGetImages" class="'.$class.'">Get Images</button>';
		$html .= '<script type="text/javascript">window.moduleId = ' . $moduleID . '</script>';
		$html .= '<script type="text/javascript" src="' . JURI::root() . '/modules/mod_bt_apb/admin/js/fetchimage.js"></script>';
               

		return $html;
    }
}

?>
