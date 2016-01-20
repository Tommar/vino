<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

// Create a shortcut for params.
$params = &$this->item->params;
$images = json_decode($this->item->images);
$canEdit	= $this->item->params->get('access-edit');
?>

<?php if ($this->item->state == 0 || strtotime($this->item->publish_up) > strtotime(JFactory::getDate())) : ?>
<div class="system-unpublished">
<?php endif; ?>

<div class="jContentListView">

		<?php  if (isset($images->image_intro) and !empty($images->image_intro)) : ?>
			<?php $imgfloat = (empty($images->float_intro)) ? $params->get('float_intro') : $images->float_intro; ?>

			<div class="img-intro image-float-<?php echo htmlspecialchars($imgfloat); ?>">
			<img
				<?php if ($images->image_intro_caption):
					echo 'class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'"';
				endif; ?>
				src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
			</div>
		<?php endif; ?>


		
	<div class="itemViewWrap">
		<div class="itemViewInner">
		
	<?php if ($params->get('show_publish_date') || $params->get('show_author') || $params->get('show_hits') || $params->get('show_title')) : ?>		
		<div class="itemListViewHeader">
			<?php if ($params->get('show_title')) : ?>
				<h2 class="itemListView">
					<?php if ($params->get('link_titles') && $params->get('access-view')) : ?>
						<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid, $this->item->language)); ?>">
						<?php echo $this->escape($this->item->title); ?></a>
					<?php else : ?>
						<?php echo $this->escape($this->item->title); ?>
					<?php endif; ?>
				</h2>
			<?php endif; ?>
			
			
			<?php if ($params->get('show_publish_date') || $params->get('show_author') || $params->get('show_hits')) : ?>	
				<div class="itemViewInfo">
					<?php if ($params->get('show_publish_date')) : ?>
							<dd class="published">
							<?php echo JHtml::_('date', $this->item->publish_up, JText::_('K2_DATE_LISTING')); ?>
							</dd>
					<?php endif; ?>
					<?php if ($params->get('show_author') && !empty($this->item->author )) : ?>
						<dd class="createdby">
							<?php $author =  $this->item->author; ?>
							<?php $author = ($this->item->created_by_alias ? $this->item->created_by_alias : $author);?>

								<?php if (!empty($this->item->contactid ) &&  $params->get('link_author') == true):?>
									<?php 	echo JText::sprintf('K2_POST_BY'); ?> 
									<?php echo JHtml::_('link', JRoute::_('index.php?option=com_contact&view=contact&id='.$this->item->contactid), $author); ?>

								<?php else :?>
									<?php echo JText::_('K2_POST_BY'); ?> <?php echo ($author); ?>
								<?php endif; ?>
						</dd>
					<?php endif; ?>
					<?php if ($params->get('show_hits')) : ?>
							<dd class="hits">
							<?php echo JText::sprintf('COM_CONTENT_ARTICLE_HITS', $this->item->hits); ?>
							</dd>
					<?php endif; ?>
				
				</div>
			<?php endif; ?>
			
		</div>
	<?php endif; ?>

			<?php if (!$params->get('show_intro')) : ?>
				<?php echo $this->item->event->afterDisplayTitle; ?>
			<?php endif; ?>

			<?php echo $this->item->event->beforeDisplayContent; ?>

			<?php // to do not that elegant would be nice to group the params ?>


			<div class="itemListViewIntroText"><?php echo $this->item->introtext; ?></div>

			<?php if ($params->get('show_readmore') && $this->item->readmore) :
				if ($params->get('access-view')) :
					$link = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid, $this->item->language));
				else :
					$menu = JFactory::getApplication()->getMenu();
					$active = $menu->getActive();
					$itemId = $active->id;
					$link1 = JRoute::_('index.php?option=com_users&view=login&Itemid=' . $itemId);
					$returnURL = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid, $this->item->language));
					$link = new JURI($link1);
					$link->setVar('return', base64_encode(urlencode($returnURL)));
				endif;
			?>
						<div class="readmore">
							<a href="<?php echo $link; ?>">
								<?php if (!$params->get('access-view')) :
									echo JText::_('COM_CONTENT_REGISTER_TO_READ_MORE');
								elseif ($readmore = $this->item->alternative_readmore) :
									echo $readmore;
									if ($params->get('show_readmore_title', 0) != 0) :
										echo JHtml::_('string.truncate', ($this->item->title), $params->get('readmore_limit'));
									endif;
								elseif ($params->get('show_readmore_title', 0) == 0) :
									echo JText::sprintf('COM_CONTENT_READ_MORE_TITLE');
								else :
									echo JText::_('COM_CONTENT_READ_MORE');
									echo JHtml::_('string.truncate', ($this->item->title), $params->get('readmore_limit'));
								endif; ?></a>
					</div>
			<?php endif; ?>
			
			<?php if (($params->get('show_category')) or ($params->get('show_create_date')) or ($params->get('show_modify_date')) or ($params->get('show_parent_category'))) : ?>
			 <div class="itemListViewFooter">
				<?php if ($params->get('show_parent_category') && $this->item->parent_id != 1) : ?>
						<div class="parent-category-name">
							<?php $title = $this->escape($this->item->parent_title);
								$url = '<a href="' . JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->parent_slug)) . '">' . $title . '</a>'; ?>
							<?php if ($params->get('link_parent_category') and $this->item->parent_slug) : ?>
								<?php echo JText::sprintf('COM_CONTENT_PARENT', $url); ?>
								<?php else : ?>
								<?php echo JText::sprintf('COM_CONTENT_PARENT', $title); ?>
							<?php endif; ?>
						</div>
				<?php endif; ?>
				<?php if ($params->get('show_category')) : ?>
						<div class="category-name">
							<?php $title = $this->escape($this->item->category_title);
								$url = '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catslug)).'">'.$title.'</a>';?>
							<?php if ($params->get('link_category') and $this->item->catslug) : ?>
								<?php echo JText::sprintf('COM_CONTENT_CATEGORY', $url); ?>
								<?php else : ?>
								<?php echo JText::sprintf('COM_CONTENT_CATEGORY', $title); ?>
							<?php endif; ?>
						</div>
				<?php endif; ?>
				<?php if ($params->get('show_create_date')) : ?>
						<div class="create">
						<?php echo JText::sprintf('COM_CONTENT_CREATED_DATE_ON', JHtml::_('date', $this->item->created, JText::_('DATE_FORMAT_LC2'))); ?>
						</div>
				<?php endif; ?>
				<?php if ($params->get('show_modify_date')) : ?>
						<div class="modified">
						<?php echo JText::sprintf('COM_CONTENT_LAST_UPDATED', JHtml::_('date', $this->item->modified, JText::_('DATE_FORMAT_LC2'))); ?>
						</div>
				<?php endif; ?>
				
				 </div>
				<?php endif; ?>
			
			
		</div>
	</div>
</div>


<?php if ($this->item->state == 0 || strtotime($this->item->publish_up) > strtotime(JFactory::getDate())) : ?>
</div>
<?php endif; ?>

<?php echo $this->item->event->afterDisplayContent; ?>
