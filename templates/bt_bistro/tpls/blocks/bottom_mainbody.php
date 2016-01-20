










<?php if ($this->countModules('bottom_mainbody')) : ?>
	<div id="bottom_mainbody" class="bottom_mainbody">
		<div class="bottom_mainbody_inner">
			<div class="bottom_mainbody_inner1">
				<div class="container">
					<jdoc:include type="modules" name="<?php $this->_p('bottom_mainbody') ?>" style="raw" />
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>


<?php if ($this->countModules('aboutUs')) : ?>
	<div id="aboutUs" class="aboutUs">
		<div class="aboutUs_inner1">
			<div class="aboutUs_inner2">
				<div class="container">
					<jdoc:include type="modules" name="<?php $this->_p('aboutUs') ?>" style="raw" />
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>

<?php if ($this->countModules('bt_contact')) : ?>
	<div id="bt_contact" class="bt_contact">
		<div class="bt_contact_inner1">
			<div class="bt_contact_inner2">
				<div class="container">
					<jdoc:include type="modules" name="<?php $this->_p('bt_contact') ?>" style="firstText" />
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>

<?php if ($this->countModules('bt_map_contact')) : ?>
	<div id="bt_map_contact" class="bt_map_contact">
		<div class="bt_map_contact_inner1">
			<div class="bt_map_contact_inner2">
					<jdoc:include type="modules" name="<?php $this->_p('bt_map_contact') ?>" style="none" />
			</div>
		</div>
	</div>
<?php endif; ?>




