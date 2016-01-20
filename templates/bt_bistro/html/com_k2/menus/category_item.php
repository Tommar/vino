<?php
/**
 * @version		2.6.x
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die;

// Define default image size (do not change)
K2HelperUtilities::setDefaultImage($this->item, 'itemlist', $this->params);

?>
<?php JHTML::_('behavior.modal'); ?>
<!-- Start K2 Item Layout -->
<div class="menusItem group<?php echo ucfirst($this->item->itemGroup); ?><?php echo ($this->item->featured) ? ' catItemIsFeatured' : ''; ?><?php if($this->item->params->get('pageclass_sfx')) echo ' '.$this->item->params->get('pageclass_sfx'); ?>">

	<?php if($this->item->params->get('catItemImage') && !empty($this->item->image)): ?>
	  <!-- Item Image -->
	  <div class="menusItemImage">
		    <a class="modal" rel="{handler: 'image'}" href="<?php echo $this->item->imageXLarge; ?>" title="<?php if(!empty($this->item->image_caption)) echo K2HelperUtilities::cleanHtml($this->item->image_caption); else echo K2HelperUtilities::cleanHtml($this->item->title); ?>">
		    	<img src="<?php echo $this->item->image; ?>" alt="<?php if(!empty($this->item->image_caption)) echo K2HelperUtilities::cleanHtml($this->item->image_caption); else echo K2HelperUtilities::cleanHtml($this->item->title); ?>" />
		    </a>
		  <div class="clr"></div>
	  </div>
	  <?php endif; ?>

  <div class="menusItemBody">

	  
		<?php if($this->item->params->get('catItemTitle')): ?>
			<h3 class="menusItemTitle">
				<?php echo $this->item->title; ?>
			</h3>
		<?php endif; ?>
		<?php if($this->item->params->get('catItemIntroText')): ?>
		  <!-- Item introtext -->
		  <div class="menusItemIntroText">
			<?php echo $this->item->introtext; ?>
		  </div>
		  <?php endif; ?>

	  <?php if($this->item->params->get('catItemExtraFields') && count($this->item->extra_fields)): ?>
	  <div class="list_food">
	  	<ul>
			<?php foreach ($this->item->extra_fields as $key=>$extraField): ?>
			<?php if($extraField->value != ''): ?>
			<!--<li class="type<?php echo ucfirst($extraField->type); ?> group<?php echo $extraField->group; ?>">-->
				<?php if($extraField->type == 'header'): ?>
				<!--<h4 class="catItemExtraFieldsHeader"><?php echo $extraField->name; ?></h4>-->
				<?php else: ?>
				<!--<span class="catItemExtraFieldsLabel"><?php //echo $extraField->name; ?></span>-->

				<span class="menusItemExtraField <?php if ($extraField->name == "Price"){ echo "price";  } ?>"><?php echo $extraField->value; ?></span>
				
				<?php endif; ?>
			<!--</li>-->
			<?php endif; ?>
			<?php endforeach; ?>
			</ul>
	    <div class="clr"></div>
	  </div>
	  <?php endif; ?>

  </div>
<div class="clr"></div>
</div>
