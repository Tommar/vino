<?php
/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */


defined('_JEXEC') or die;
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>"
	  class='<jdoc:include type="pageclass" />'>

<head>
	<jdoc:include type="head" />
	<?php $this->loadBlock('head') ?>
</head>

<body>
<?php $wrapper_class = ""; ?>
<?php if ($this->countModules('background_slideshow')) : 
	$wrapper_class = "has_slideshow";
endif; 
?>
<div class="t3-wrapper <?php echo $wrapper_class; ?>"> <!-- Need this wrapper for off-canvas menu. Remove if you don't use of-canvas -->
	
	<?php $this->loadBlock('background_slideshow') ?>
	
	<?php $this->loadBlock('header') ?>
	
	<?php $this->loadBlock('tab_home') ?>
	
	<?php $this->loadBlock('top_mainbody') ?>
  
	<?php $this->loadBlock('mainbody') ?>
	
	<?php $this->loadBlock('bottom_mainbody') ?>
	
	<?php $this->loadBlock('spotlight-2') ?>

	<?php $this->loadBlock('footer') ?>

</div>

</body>

</html>