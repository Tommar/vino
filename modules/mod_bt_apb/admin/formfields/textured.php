<?php
/**
 * @package     formfields
 * @version		1.0
 * @created		Oct 2011

 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright           Copyright (C) 2012 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */
// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.form.formfield');

class JFormFieldTextured extends JFormField {

    protected $type = 'pattern';

    public function getInput(){
		$relative_path  = '/modules/mod_bt_apb/assets/images/pattern/';
		$images =  $this->getAllImages(JPATH_ROOT. $relative_path);
		$html = '<div class="bt-textured" id="bt-textured-' . $this->id . '">
					<div class="bt-textured-preview">';
		if(!$this->value){
			$html .=	'<div class="bt-pattern-item" title="">None</div>';
		}else{
			$html .= 	'<div class="bt-pattern-item" title="'.$this->value.'" style="background:#' . (strpos($this->value, 'w') !== false ? '000' : 'fff') .' url('.JURI::root().$relative_path.$this->value.') left top repeat"></div>';
		}		
		$html .=	'</div>
					<div class="bt-textured-button"></div>
					<div class="bt-textured-patterns">
						<div class="bt-pattern-item' .(!$this->value ? ' active' : '') .'">None</div>';
		foreach ($images as $image) {
			
			$html .= 	'<div class="bt-pattern-item' .($image == $this->value ? ' active' : '') . '" title="'.$image.'" style="background:#' . (strpos($image, 'w') !== false ? '000' : 'fff') .' url('.JURI::root().$relative_path.$image.') left top repeat"></div>';
			
		}
		$html .=	'</div>
				</div>';	
       
		$html .= '<div style="clear: both"></div>';
		$html .= '<input id="'.$this->id.'" type="hidden" name="'.$this->name.'" value="'. $this->value.'">';
		
		$document = JFactory::getDocument();
		
		$js = 
			'jQuery(document).ready(function($){
				$("#bt-textured-' . $this->id . ' .bt-textured-button").click(function(){
					if($(this).hasClass("open")){
						$("#bt-textured-' . $this->id . ' .bt-textured-patterns").slideUp(300);
						$(this).removeClass("open");
					}else{
						$("#bt-textured-' . $this->id . ' .bt-textured-patterns").slideDown(300);
						$(this).addClass("open");
					}
				});
				$("#bt-textured-' . $this->id . ' .bt-pattern-item").click(function(){
					if($(this).hasClass("active")) return;
					else{
						$("#bt-textured-' . $this->id . ' .bt-pattern-item").removeClass("active");
						$("#bt-textured-' . $this->id . ' .bt-textured-preview").html($(this).clone());
						$(this).addClass("active");
						$("#'.$this->id.'").val($(this).attr("title"));
						$("#bt-textured-' . $this->id . ' .bt-textured-patterns").slideUp(300);
						$("#bt-textured-' . $this->id . ' .bt-textured-button").removeClass("open");
					}
					
				});
				$("#bt-textured-' . $this->id . ' .bt-textured-patterns").hide();
			});
			';
		
		$document->addScriptDeclaration($js);
		return $html;
    }

    public function getAllImages($folder){
		$result = array();
        $files = JFolder::files($folder);
        foreach ($files as $file) {
			$paths = pathinfo($file);
			$ext = $paths['extension'];
           if(in_array($ext,array('png','jpeg','gif','bmp'))){
				$result[] = $file;
		   }
        }
		return $result;
    }

}

?>
