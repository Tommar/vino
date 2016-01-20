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
?>
<?php $items = array_merge($this->leading, $this->primary, $this->secondary, $this->links); //echo count($items);?>
<?php JHTML::_('behavior.modal'); ?>

<!-- Start K2 Category Layout -->
<div id="k2Container" class="menusListView<?php if($this->params->get('pageclass_sfx')) echo ' '.$this->params->get('pageclass_sfx'); ?>">

	<?php if($this->params->get('subCategories') && isset($this->subCategories) && count($this->subCategories)): ?>
		<!-- Subcategories -->
		
		<div class="menusListLink">
			<?php foreach($this->subCategories as $key=>$subCategory){ ?>
				<a class="menusLinkItem" href="#<?php echo $subCategory->alias; ?>">
					<img src="<?php echo $subCategory->image; ?>" />
					<span><?php echo $subCategory->name; ?></span>
				</a>
			<?php } ?>
		</div>
		
		<div class="itemListSubCategories2">

			<?php foreach($this->subCategories as $key=>$subCategory): ?>

			<?php
			// Define a CSS class for the last container on each row
			if( (($key+1)%($this->params->get('subCatColumns'))==0))
				$lastContainer= ' subCategoryContainerLast';
			else
				$lastContainer='';
			?>

			<div class="subCategoryContainer2">
				
				
				<div id="<?php echo $subCategory->alias; ?>" class="menusItemAnchor"></div>
				<div class="subCategory_head <?php if ($key==0)  echo "abc"; ?>">
					<div class="subCategory_headInner">
						<div class="subCategory_headInner2">
						<div class="subCategory_headInner3">
							<div class="container">
							
								<?php //if($this->params->get('subCatTitle')): ?>
								<!--<h2 class="menus_subCatTitle">
										<?php //echo $subCategory->name; ?>
								</h2>-->
								<?php //endif; ?>
								<div class="menus_subCatTitle">
									<?php echo $subCategory->name; ?>
								</div>

								<?php if($this->params->get('subCatDescription')): ?>
								<!-- Subcategory description -->
								<div class="menus_subCatDescription"><?php echo $subCategory->description; ?></div>
								<?php endif; ?>
								
								
							<!--	<?php // if($this->params->get('subCatImage') && $subCategory->image): ?>
								<div class="menu_subCatImage">
									<img src="<?php //echo $subCategory->image; ?>" />
								</div>
								<?php //endif; ?> -->


								<div class="clr"></div>
							</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="subCategory_listItem">
					<div class="row">
						<?php 
						$i = 0;
						$count = count($items);
						while($i < $count){
						
						if($items[$i]->catid == $subCategory->id){
						//var_dump($items); die;
						?>
						<div class="col-md-6 col-sm-12 col-xs-12 menusItem_wrap">
							<div class="menusItem">
							
								<div class="menus_itemLeft">
									<div class="menusItem_avt">
										<a style="width:100px;" class="modal menusItem_avtImage" rel="{handler: 'image'}" href="<?php echo $items[$i]->imageXLarge; ?>">
											<img src="<?php echo $items[$i]->imageXLarge; ?>" />
										</a>										
									</div>
									
									<div class="extraField">
										<?php foreach ($items[$i]->extra_fields as $key=>$extraField): ?>
										<?php if($extraField->value != ''): ?>
											<span class="menusItemExtraField <?php if ($extraField->name == "Price"){ echo "price";  } ?>"><?php echo $extraField->value; ?></span>
										<?php endif; ?>
										<?php endforeach; ?>
									</div>
										
										
								</div>
								
								<div class="menusItem_body">
									<h3 class="menusItem_title"><?php echo $items[$i]->title; ?></h3>
									<div class="menusItem_text"><?php echo $items[$i]->introtext;?></div>
										
										
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<?php	
							unset($items[$i]);
						}
						$i++;
						 }?>
					
					</div>
				</div> 
				 
				 
				 
			</div>
			<?php if(($key+1)%($this->params->get('subCatColumns'))==0): ?>
			<div class="clr"></div>
			<?php endif; ?>
			
			<script type="text/javascript">
				jQuery(document).ready(function() {	
					jQuery('a[href=#<?php echo $subCategory->alias; ?>]').click(function(){
						jQuery('html, body').animate({scrollTop:jQuery("#<?php echo $subCategory->alias; ?>").offset().top}, 'slow');
						return false;
					});
				});
			</script>
			
			
			<?php endforeach; ?>

			<div class="clr"></div>
		</div>
		<?php endif; ?>

	
	
	
	
	
	
	
	
	



	
	
	
	
</div>
<script type="text/javascript">
jQuery(document).ready(function() {	
	jQuery('.t3-wrapper').addClass('menusPages');

});
</script>
<!-- End K2 Category Layout -->
