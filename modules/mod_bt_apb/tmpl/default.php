<?php
include dirname(__FILE__) . '/includes/' . $params->get('gallery_type', 'image') . '.php';

$document = JFactory::getDocument();
$css = '#bt-apb-' . $module->id . '{
			width: ' . ($params->get('module_width', '') ? $params->get('module_width') . 'px' : 'auto') . ';
			height: ' . $params->get('module_height', 500) . 'px;
		}
		#bt-apb-' . $module->id . ' iframe{
			width: 100% !important; height: 100% !important;
		}';
if($backgroundOverlay){
	$css .= '
		#bt-apb-' . $module->id . ' .parallax-background-overlay{
		background: ' . $backgroundOverlay . ';
		' . ($backgroundOverlayOpacity ? ' opacity: ' . $backgroundOverlayOpacity : '') . ';
		}';
		
}		
if($contentWidth){
	$css .= '
		#bt-apb-' . $module->id . ' .parallax-content{
			width: ' . $contentWidth . 'px;
		}
	';
}
if($contentEffectCustom){
	$css .= $contentEffectCustom;
}else{
	switch($contentEffect){
		case 'fade':
			$css .= '#bt-apb-' . $module->id . ' .out{ opacity: 0}';
			break;
		case 'slide_top':
			$css .= '#bt-apb-' . $module->id . ' .out{ transform: translateY(-150%)}';
			break;
		case 'slide_bottom':
			$css .= '#bt-apb-' . $module->id . ' .out{transform: translateY(150%)}';
			break;
		case 'slide_left':
			$css .= '#bt-apb-' . $module->id . ' .out{ transform: translateX(-150%)}';
			break;
		case 'slide_right':
			$css .= '#bt-apb-' . $module->id . ' .out{ transform: translateX(150%)}';
			break;		
	}		
}
$document->addStyleDeclaration($css);


?>