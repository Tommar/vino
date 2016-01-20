<?php
 /**
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$cparams = JComponentHelper::getParams ('com_media');
?>
<div class="contactFormPage<?php echo $this->pageclass_sfx?>">
<?php 
$a = ($this->contact->misc && $this->params->get('show_misc'));
if ($a){
	$classForm = "col-md-8 col-sm-12 col-xs-12";
} else{
	$classForm = "col-md-12 col-sm-12 col-xs-12";
}
?>
			
			
		<div class="row">	
			
			<?php if ($this->contact->misc && $this->params->get('show_misc')) : ?>
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="contact-miscinfo">
						<div class="contact-misc">
							<div class="contact-misc-inner1">
								<div class="contact-misc-inner2">
									<div class="topText"><?php echo JText::_('BT_BISTRO_COM_CONTACT_INFOR_MISC');?></div>
									<div class="contactMisc">
										<?php echo $this->contact->misc; ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
			
			<div class="<?php echo $classForm; ?>">
				<?php if ($this->params->get('show_email_form') && ($this->contact->email_to || $this->contact->user_id)) : ?>
					<?php  echo $this->loadTemplate('form');  ?>
				<?php endif; ?>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
	
	

</div>
