<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<!-- FOOTER -->
<footer id="t3-footer" class="wrap t3-footer">

	<?php if ($this->checkSpotlight('footnav', 'footer-1, footer-2, footer-3, footer-4, footer-5, footer-6')) : ?>
		<!-- FOOT NAVIGATION -->
		<div class="container">
			<?php $this->spotlight('footnav', 'footer-1, footer-2, footer-3, footer-4, footer-5, footer-6') ?>
		</div>
		<!-- //FOOT NAVIGATION -->
	<?php endif ?>
	
			<?php if ($this->countModules('footer') || $this->countModules('social_footer')) : ?>
				<div class="container">
					<div class="module_footer">
						<?php if ($this->countModules('footer')) : ?>
							<div class="footer <?php $this->_c('footer') ?>">
								<jdoc:include type="modules" name="<?php $this->_p('footer') ?>" style="none" />
							</div>
						<?php endif ?>
						
						<?php if ($this->countModules('social_footer')) : ?>
							<div class="social_footer <?php $this->_c('social_footer') ?>">
								<jdoc:include type="modules" name="<?php $this->_p('social_footer') ?>" style="none" />
							</div>
						<?php endif ?>
					</div>
				</div>
			<?php endif ?>
</footer>
<!-- //FOOTER -->