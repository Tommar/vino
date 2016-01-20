<?php

/**
 * @package 	mod_bt_apb - BT Slideshow Pro Module
 * @version		2.1.1
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

require_once 'helpers/helper.php';
if($params->get('gallery_type') == 'image'){
	$images = BtApbHelper::getPhotos($params);
	$remote = $params->get('remote_image', true);

	$dir = JPATH_ROOT . '/modules/mod_bt_apb/images/';
	foreach ($images as $key => $image) {
	  
		if(isset($image->remote) && $image->remote){
			if(!JFile::exists($dir . '/manager/' . $image->file)){
				if(JFile::exists($dir . '/tmp/manager/' . $image->file)){
					JFile::move($dir . '/tmp/manager/' . $image->file, $dir . '/manager/' . $image->file);
					continue;
				}else{
					 unset($images[$key]);
				}
			}
			continue;
		}

		if (!JFile::exists($dir . '/original/' . $image->file)) {
			if (JFile::exists($dir . '/tmp/original/' . $image->file)) {
				JFile::move($dir . '/tmp/original/' . $image->file, $dir . '/original/' . $image->file);
				JFile::move($dir . '/tmp/manager/' . $image->file, $dir . '/manager/' . $image->file);
			}else{
				unset($images[$key]);
			}
		}

	}

	if (count($images) == 0) {
		echo JText::_('NOTICE_NO_IMAGES');
	}else{
		$images = array_values($images);

		$moduleID = $module->id;
		$moduleURI = JURI::base()."modules/mod_bt_apb/";
		
		$thumbWidth = $params->get('thumb_width', 200);
		$thumbHeight = $params->get('thumb_height', 150);

		// Make thumbnail & slideshow images if haven't created or just change the size
		require_once (JPATH_ROOT . '/modules/mod_bt_apb/helpers/images.php');
		//create image again

		$originalFolderURI = $moduleURI.'images/original/';
		$thumbnailFolderURI = $moduleURI.'images/thumbnail/';
		
		$imagesJson = array();
		foreach($images as $image){
			$img = new stdClass();
			$img->thumbnail = $thumbnailFolderURI . $image->file;
			$img->original = $originalFolderURI . $image->file;
			$img->title = $image->title;
			$imagesJson[] = $img;
		}
		$imagesJson = json_encode($imagesJson);

	}
}else if($params->get('gallery_type') == 'video'){

	if($params->get('video_source') == 'embed'){
		$video = $params->get('embed_video');
	}else{
		$video = '<video width="320" height="240" controls loop  autoplay><source src="' . $params->get('html5_video') . '"></source>Your browser does not support the video tag.</video>';
	}
}

//prepare parameters
$headingText = $params->get('heading_text');
$subText = $params->get('sub_text');
$buttonText = $params->get('button_text');
$thumbnailHeight = $params->get('thumbnail_height', 200);
$thumbnailWidth = $params->get('thumbnail_width', 200);

$backgroundOverlay = '';
if($params->get('textured_color', '')){
	$backgroundOverlay .= $params->get('textured_color');
}
if($params->get('background_textured', '')){
	$relative_path  = '/modules/mod_bt_apb/assets/images/pattern/';
	$backgroundOverlay .= ' url(' . JURI::root() . $relative_path . $params->get('background_textured') . ') ';
}

if($params->get('textured_opacity', '')){
	$backgroundOverlayOpacity = $params->get('textured_opacity');
}else{
	$backgroundOverlayOpacity = '';
}
$speedFactor = $params->get('speed_factor', 0.5);

$contentWidth = $params->get('content_width', '');
$contentEffect = $params->get('content_effect', 'fade');
$contentEffectCustom = $params->get('content_custom_effect', '');

$rows = $params->get('number_rows', 2);

BtApbHelper::fetchHead( $params );
require JModuleHelper::getLayoutPath('mod_bt_apb', $params->get('layout', 'default'));
?>