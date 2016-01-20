<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// get params
$app				= JFactory::getApplication();
$doc				= JFactory::getDocument();
$menu 				= $app->getMenu();
$lang 				= JFactory::getLanguage();

$sitename  = $this->params->get('sitename');
$slogan    = $this->params->get('slogan', '');
$logotype  = $this->params->get('logotype', 'text');
$logoimage = $logotype == 'image' ? $this->params->get('logoimage', T3Path::getUrl('images/logo.png', '', true)) : '';
$logoimgsm = ($logotype == 'image' && $this->params->get('enable_logoimage_sm', 0)) ? $this->params->get('logoimage_sm', T3Path::getUrl('images/logo-sm.png', '', true)) : false;

if (!$sitename) {
	$sitename = JFactory::getConfig()->get('sitename');
}


?>

<!-- HEADER -->
<header id="t3-header" class="t3-header">
	
	<div class="logoBlock">
		<div class="container">
			<div class="logo">
				<div class="logo-image">
					<a href="<?php echo JURI::base(true) ?>" title="<?php echo strip_tags($sitename) ?>">
						<?php if($logotype == 'image'): ?>
							<img class="logo-img" src="<?php echo JURI::base(true) . '/' . $logoimage ?>" alt="<?php echo strip_tags($sitename) ?>" />
						<?php endif ?>
					</a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="mainMenu">
		<div class="container">
			<div class="button_showMenuWapper"><button class="button_showMenu">Menu</button></div>
			<div class="mainMenu_inner">
				<div id="mainMenu_inner2" class="mainMenu_inner2">
					<nav id="t3-mainnav" class="wrap navbar t3-mainnav">
						
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
							
								<?php if ($this->getParam('navigation_collapse_enable', 1) && $this->getParam('responsive', 1)) : ?>
									<?php $this->addScript(T3_URL.'/js/nav-collapse.js'); ?>
									<!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".t3-navbar-collapse">
										<i class="fa fa-bars"></i>
									</button>-->
								<?php endif ?>

								<?php //if ($this->getParam('addon_offcanvas_enable')) : ?>
									<?php //$this->loadBlock ('off-canvas') ?>
								<?php //endif ?>
							</div>

							<?php if ($this->getParam('navigation_collapse_enable')) : ?>
								<div class="t3-navbar-collapse navbar-collapse collapse"></div>
							<?php endif ?>
							
							

							<div class="t3-navbar navbar-collapse collapse">
								<jdoc:include type="<?php echo $this->getParam('navigation_type', 'megamenu') ?>" name="<?php echo $this->getParam('mm_type', 'mainmenu') ?>" />
							</div>
					</nav>
				</div>
			</div>
			
		</div>
	</div>
	
			<?php if ($menu->getActive() != $menu->getDefault($lang->getTag()) ) : ?>	
				<div class="page-heading">
							<div class="container">
								<div class="pageheading_title">
									<?php 
										$menuItem =	$menu->getActive();
										if($menuItem){
											echo $menuItem->title;
										}else
											echo $doc->getTitle();
									?>	
								</div>
								<?php if($menuItem && $menuItem->note != null) : ?>
								<div class="pageheading_desc">
									<?php echo $menuItem->note; ?>
								</div>
								<?php endif; ?>
							</div>
				</div>	
			<?php endif; ?>
	
	
	
</header>
<!-- //HEADER -->
