<?php
/**
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

/**
 * This is a file to add template specific chrome to module rendering.  To use it you would
 * set the style attribute for the given module(s) include in your template to use the style
 * for each given modChrome function.
 *
 * eg.  To render a module mod_test in the sliders style, you would use the following include:
 * <jdoc:include type="module" name="test" style="slider" />
 *
 * This gives template designers ultimate control over how modules are rendered.
 *
 * NOTICE: All chrome wrapping methods should be named: modChrome_{STYLE} and take the same
 * two arguments.
 *
 * This module chrome file creates custom output for modules used with the Atomic template.
 * The first function wraps modules using the "container" style in a DIV. The second function
 * uses the "bottommodule" style to change the header on the bottom modules to H6. The third
 * function uses the "sidebar" style to change the header on the sidebar to H3.
 */

function modChrome_container($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="container">
			<?php echo $module->content; ?>
		</div>
	<?php endif;
}
function modChrome_bottommodule($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<?php if ($module->showtitle) : ?>
			<h6><?php echo $module->title; ?></h6>
		<?php endif; ?>
		<?php echo $module->content; ?>
	<?php endif;
}
function modChrome_sidebar($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<?php if ($module->showtitle) : ?>
			<h3><?php echo $module->title; ?></h3>
		<?php endif; ?>
		<?php echo $module->content; ?>
	<?php endif;
}
function modChrome_xhtml_st($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="moduletable <?php echo htmlspecialchars($params->get('moduleclass_sfx')); ?>">
			<div class="container">
				<div class="moduletable-spotlight_top">
				<?php if ($module->showtitle != 0) : ?>
					<h3><?php echo $module->title; ?></h3>
				<?php endif; ?>
					<?php echo $module->content; ?>
				</div>
			</div>
		</div>
	<?php endif;
}

function modChrome_T3Xhtml($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div id="Mod<?php echo $module->id;?>" class="t3-module module<?php echo htmlspecialchars($params->get('moduleclass_sfx')); ?>">
			<div class="module-inner">
				<?php if ($module->showtitle != 0) : ?>
					<!--<h3 class="module-title"><span><?php echo $module->title ?></span></h3>-->
					
					
						<?php
							for($i=0; $i <= strlen($module->title); $i++){
								if(substr($module->title,$i,1)== false){
									echo '<h3 class="module-title"><span class="firstText">'.$module->title.'</h3>';	
								} else{
									if(substr($module->title,$i,1)==' '){
										$str = substr($module->title,0, $i);
										$str1 = substr($module->title, $i);					
										echo '<h3 class="module-title"><span class="firstText">'.$str.'</span>'.' '.$str1.'</h3>';							
										break;
									}
								}
							}
						?>
					
					
				<?php endif; ?>
					<div class="module-ct">
						<div class="module-ct-inner">
							<?php echo $module->content; ?>
						</div>
					</div>
			</div>
		</div>
	<?php endif;
}






function modChrome_FirstText($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div id="Mod<?php echo $module->id;?>" class="t3-module module<?php echo htmlspecialchars($params->get('moduleclass_sfx')); ?>">
			<div class="module-inner">
				<?php if ($module->showtitle != 0) : ?>
						<?php
							for($i=0; $i <= strlen($module->title); $i++){
								if(substr($module->title,$i,1)== false){
									echo '<h3 class="module-title"><span class="firstText">'.$module->title.'</h3>';	
								} else{
									if(substr($module->title,$i,1)==' '){
										$str = substr($module->title,0, $i);
										$str1 = substr($module->title, $i);					
										echo '<h3 class="module-title"><span class="firstText">'.$str.'</span>'.' '.$str1.'</h3>';							
										break;
									}
								}
							}
						?>
					
				<?php endif; ?>
					<div class="module-ct">
						<div class="module-ct-inner">
							<?php echo $module->content; ?>
						</div>
					</div>
			</div>
		</div>
	<?php endif;
}






?>
