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

<!-- Start K2 Category Layout -->
<div id="k2Container" class="itemListView<?php if($this->params->get('pageclass_sfx')) echo ' '.$this->params->get('pageclass_sfx'); ?>">



	<?php if(( $this->params->get('subCategories') && isset($this->subCategories) && count($this->subCategories) )): ?>
	<!-- Blocks for current category and subcategories -->
	<div class="menusListCategoriesBlock">


		<?php if($this->params->get('subCategories') && isset($this->subCategories) && count($this->subCategories)): ?>
		<!-- Subcategories -->
		<div class="menusListSubCategories">


			<?php foreach($this->subCategories as $key=>$subCategory){ ?>

			<?php
			// Define a CSS class for the last container on each row
			if( (($key+1)%($this->params->get('subCatColumns'))==0))
				$lastContainer= ' subCategoryContainerLast';
			else
				$lastContainer='';
			?>

			<div class="menusCategoryContainer">
				<div class="menusHeader">
					<div class="menusHeader-inner">
						<?php if($this->params->get('subCatImage') && $subCategory->image): ?>
						<!-- Subcategory image -->
						<a class="menusCategoryImage" href="<?php echo $subCategory->link; ?>">
							<img alt="<?php echo K2HelperUtilities::cleanHtml($subCategory->name); ?>" src="<?php echo $subCategory->image; ?>" />
						</a>
						<?php endif; ?>

						<?php if($this->params->get('subCatTitle')): ?>
						<!-- Subcategory title -->
						<h2 class="subCatTitle">
							<a href="<?php echo $subCategory->link; ?>">
								<?php echo $subCategory->name; ?><?php if($this->params->get('subCatTitleItemCounter')) echo ' ('.$subCategory->numOfItems.')'; ?>
							</a>
						</h2>
						<?php endif; ?>

						<?php if($this->params->get('subCatDescription')): ?>
						<!-- Subcategory description -->
						<div class="subCatDescription"><?php echo $subCategory->description; ?></div>
						<?php endif; ?>

						<!-- Subcategory more... -->
						<a class="subCategoryMore" href="<?php echo $subCategory->link; ?>">
							<?php echo JText::_('K2_VIEW_ITEMS'); ?>
						</a>

						<div class="clr"></div>
					</div>
				</div>
				
			


		
	<?php if((isset($this->leading) || isset($this->primary) || isset($this->secondary) || isset($this->links)) && (count($this->leading) || count($this->primary) || count($this->secondary) || count($this->links))): ?>
	<!-- Item list -->
	<div class="menusList">
	
		<div class="row">
		
		
			<?php if(isset($this->leading) && count($this->leading)): ?>
				<?php foreach($this->leading as $key=>$item): ?>
				<div class="col-md-6 col-sm-12 col-xs-12 itemContainer2-wrap leading">
					<div class="itemContainer2">
						<?php
							$this->item=$item;
							echo $this->loadTemplate('item');
						?>
					</div>
				</div>
				<?php endforeach; ?>
			<?php endif; ?>

			<?php if(isset($this->primary) && count($this->primary)): ?>
				<?php foreach($this->primary as $key=>$item): ?>
				<div class="col-md-6 col-sm-12 col-xs-12 itemContainer2-wrap primary">
					<div class="itemContainer2">
						<?php
							$this->item=$item;
							echo $this->loadTemplate('item');
						?>
					</div>
				</div>
				<?php endforeach; ?>
			<?php endif; ?>

			<?php if(isset($this->secondary) && count($this->secondary)): ?>
				<?php foreach($this->secondary as $key=>$item): ?>
				<div class="col-md-6 col-sm-12 col-xs-12 itemContainer2-wrap secondary">
					<div class="itemContainer2">
						<?php
							$this->item=$item;
							echo $this->loadTemplate('item');
						?>
					</div>
				</div>
				<?php endforeach; ?>
			<?php endif; ?>
			
			
		</div>	
	
	</div>
	<?php endif; ?>
				
		
				
				
				
				
			</div>
			<?php } //endforeach; ?>

			<div class="clr"></div>
		</div>
		<?php endif; ?>

	</div>
	<?php endif; ?>
	
	
	
	
	
	
	
	



	
	
	
	
</div>
<!-- End K2 Category Layout -->
