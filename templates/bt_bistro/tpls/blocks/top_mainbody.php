










<?php if ($this->countModules('bt_gallery')) : ?>
	<div id="bt_parallax" class="bt_parallax">
		<div class="bt_parallax_inner1">
			<div class="bt_parallax_inner2">
					<jdoc:include type="modules" name="<?php $this->_p('bt_gallery') ?>" style="raw" />
			</div>
		</div>
	</div>
<?php endif; ?>


<?php if ($this->countModules('menus_showcase')) : ?>
	<div id="menus_showcase" class="menus_showcase">
		<div class="menus_showcase_inner1">
			<div class="menus_showcase_inner2">
				<div class="container">
					<jdoc:include type="modules" name="<?php $this->_p('menus_showcase') ?>" style="FirstText" />
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>






