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

	<div id="stickyMenu" class="stickyMenu">
		<div class="container">
			<div class="row">
				<div class="col-sm-5 stickyMenuLeft">
					<div class="stickyMenuLeft_inner">
						<jdoc:include type="modules" name="<?php $this->_p('stickyMenuLeft') ?>" style="raw" />
					</div>
				</div>
				<div class="col-sm-2 stickyMenuLogo">
					<h1 class="stickyMenuLogo-inner">
						<a href="<?php echo JURI::base(true) ?>" title="<?php echo strip_tags($sitename) ?>">
							<img class="logo-img" src="<?php echo T3_TEMPLATE_URL. '/images/sticky_logo.png' ?>" alt="<?php echo strip_tags($sitename) ?>" />
					</a>
					</h1>
				</div>
				<div class="col-sm-5 stickyMenuRight">
					<div class="stickyMenuRight_inner">
						<jdoc:include type="modules" name="<?php $this->_p('stickyMenuRight') ?>" style="raw" />
					</div>
				</div>
			</div>
		</div>
	</div>
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
			<div class="button_showMenuWapper"><button class="button_showMenu"><i class="fa fa-bars"></i></button></div>
		</div>
		
		
		
		<div id="mainMenuDesktop" class="mainMenuDesktop">
			<div class="button_hideMenuWapper"><button class="button_hideMenu"><i class="fa fa-times"></i></button></div>
			<?php if ($this->countModules('mainmenu')) : ?>

					<div class="mainMenuDesktop_inner">
						<jdoc:include type="modules" name="<?php $this->_p('mainmenu') ?>" style="raw" />
					</div>

			<?php endif; ?>
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
