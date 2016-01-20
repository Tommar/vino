<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 2 columns: content - sidebar
 */
?>
<div id="t3-mainbody" class="t3-mainbody">
	<div class="container">
		<div class="row">

			<!-- MAIN CONTENT -->
			<div id="t3-content" class="t3-content col-xs-12 col-sm-8  col-md-8">
				<div class="t3-content-iner">
					<?php if($this->hasMessage()) : ?>
					<jdoc:include type="message" />
					<?php endif ?>
					<jdoc:include type="component" />
				</div>
			</div>
			<!-- //MAIN CONTENT -->

			<!-- SIDEBAR RIGHT -->
			<div class="t3-sidebar t3-sidebar-right col-xs-12 col-sm-4  col-md-4 <?php $this->_c($vars['sidebar']) ?>">
				<div class="t3-sidebar-inner">
					<jdoc:include type="modules" name="<?php $this->_p($vars['sidebar']) ?>" style="T3Xhtml" />
				</div>
			</div>
			<!-- //SIDEBAR RIGHT -->

		</div>
	</div>
</div> 
