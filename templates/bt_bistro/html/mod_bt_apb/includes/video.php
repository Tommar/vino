<div  id="bt-apb-<?php echo $module->id ?>" class="bt-apb bt-apb<?php echo $params->get('moduleclass_sfx', '') ?>">
	<div class="parallax-block">
		<div class="parallax-background">
			<div class="parallax-background-overlay"></div>
			<?php if($params->get('background_type') == 'image'){?>
			<img src="<?php echo $params->get('background_image')?>" alt=""/>
			<?php } else{?>
			<video autoplay loop muted>
				<source src="<?php echo $params->get('background_video')?>"></source>
				Your browser doesn't support this format
			</video>
			<?php }?>
		</div>
		<div class="parallax-content">
			<?php if($headingText) {?>
			<h1><?php echo $headingText ?></h1>
			<?php }?>
			<?php if($subText) {?>
			<div class="parallax-content-text"><?php echo $subText ?></div>
			<?php }?>
			<?php if($buttonText){?>
			<a class="button open-btn" href="javascript:void(0);"><?php echo $buttonText?></a>
			<?php }?>
			
			
		</div>
		<div class="control-button">
			<div class="button-wrap hidden">
				<span class="button close-btn">Close</span>
			</div>
		</div>

		
	</div>

</div>

<script type="text/javascript">
$w(document).ready(function ($) {

    $w('#bt-apb-<?php echo $module->id?>').apb({
		galleryType: 'video',
		video: '<?php echo $video?>',
		speedFactor: <?php echo $speedFactor?>,
		dynamicBackground: <?php echo ($params->get('parallax_type', 'dynamic') == 'dynamic') ? 'true' : 'false'?>
	})
});
</script>
