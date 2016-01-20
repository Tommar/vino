jQuery(document).ready(function ($) {
	// Tabs
	$('body:not(.bt-other-shortcodes-loaded) .bt-tabs-nav span').on('click',  function (e) {
		var $tab = $(this),
			index = $tab.index(),
			is_disabled = $tab.hasClass('bt-tabs-disabled'),
			$tabs = $tab.parent('.bt-tabs-nav').children('span'),
			$panes = $tab.parents('.bt-tabs').find('.bt-tabs-pane'),
			$gmaps = $panes.eq(index).find('.bt-gmap:not(.bt-gmap-reloaded)');
		// Check tab is not disabled
		if (is_disabled) return false;
		// Hide all panes, show selected pane
		$panes.hide().removeClass('active').eq(index).show().addClass('active');
		// Disable all tabs, enable selected tab
		$tabs.removeClass('bt-tabs-current').eq(index).addClass('bt-tabs-current');
		// Reload gmaps
		if ($gmaps.length > 0) $gmaps.each(function () {
			var $iframe = $(this).find('iframe:first');
			$(this).addClass('bt-gmap-reloaded');
			$iframe.attr('src', $iframe.attr('src'));
		});
		// Set height for vertical tabs
		tabs_height();
		e.preventDefault();
	});
	$('.tabSlider .bt-tabs-nav span').unbind('click');
	$('.tabSlider .bt-tabs-nav span').on('click',  function (e) {
		var $tab = $(this),
			index = $tab.index(),
			is_disabled = $tab.hasClass('bt-tabs-disabled'),
			$tabs = $tab.parent('.bt-tabs-nav').children('span'),
			$panes = $tab.parents('.bt-tabs').find('.bt-tabs-pane'),
			$gmaps = $panes.eq(index).find('.bt-gmap:not(.bt-gmap-reloaded)');
		// Check tab is not disabled
		if (is_disabled) return false;
		// Hide all panes, show selected pane
		//$panes.hide().removeClass('active').eq(index).show().addClass('active');
		$panes.each(function(){
			var self = $(this);
			if($(this).hasClass('active')){
				$(this).removeClass('active').addClass('out');
			}
			setTimeout(function(){
				self.removeClass('out');
			}, 700);
		});
		
		$panes.eq(index).show().addClass('active');
		var height = $panes.eq(index).outerHeight();
		$tab.parents('.bt-tabs').find('.bt-tabs-panes').animate({height: height}, 700);
		// Disable all tabs, enable selected tab
		$tabs.removeClass('bt-tabs-current').eq(index).addClass('bt-tabs-current');
		// Reload gmaps
		if ($gmaps.length > 0) $gmaps.each(function () {
			var $iframe = $(this).find('iframe:first');
			$(this).addClass('bt-gmap-reloaded');
			$iframe.attr('src', $iframe.attr('src'));
		});
		// Set height for vertical tabs
		tabs_height();
		e.preventDefault(); 
	});
	$(window).resize(function(){
		var height = $('.tabSlider .bt-tabs-panes .active').height();
		$('.tabSlider .bt-tabs-panes').height(height);
	});
	// Activate tabs
	$('.bt-tabs').each(function () {
		var active = parseInt($(this).data('active')) - 1;
		$(this).children('.bt-tabs-nav').children('span').eq(active).trigger('click');
		tabs_height();
	});
	
	
	/**
	 * Custom for create next/back button for tabs
	 */
	$('.bt-tabs').each(function(){
		var self = $(this);
		var tabs = self.find('.bt-tabs-nav span');
		var navigation = $('<div>').addClass('bt-tabs-navigation');
		var prev = $('<a>').addClass('bt-tabs-prev').attr({href: '#'});
		var next = $('<a>').addClass('bt-tabs-next').attr({href: '#'});
		navigation.append(prev);
		navigation.append(next);
		$(this).append(navigation);
		next.click(function(){
			var currentTab = self.find('.bt-tabs-current');
			if(currentTab.index() + 1 >= tabs.size()) return false;
			tabs.eq(currentTab.index() + 1).trigger('click');
			return false;
		});
		
		prev.click(function(){
			var currentTab = self.find('.bt-tabs-current');
			if(currentTab.index() == 0) return false;
			tabs.eq(currentTab.index() - 1).trigger('click');
			return false;
		});
			
	});
	
	/**
	 * End of customization
	 */
	 
	 

	// Activate anchor nav for tabs and spoilers
	anchor_nav();
	
	function tabs_height() {
		$('.bt-tabs-vertical, .bt-tabs-vertical-right').each(function () {
			var $tabs = $(this),
				$nav = $tabs.children('.bt-tabs-nav'),
				$panes = $tabs.find('.bt-tabs-pane'),
				height = 0;
			$panes.css('min-height', $nav.outerHeight(true));
		});
	}
	function anchor_nav() {
		// Check hash
		if (document.location.hash === '') return;
		// Go through tabs
		$('.bt-tabs-nav span[data-anchor]').each(function () {
			if ('#' + $(this).data('anchor') === document.location.hash) {
				var $tabs = $(this).parents('.bt-tabs');
					 
				// Activate tab
				$(this).trigger('click');
				// Scroll-in tabs container
				window.setTimeout(function () {
					$(window).scrollTop($tabs.offset().top - 10);
				}, 100);
			}
		});
		// Go through spoilers
		$('.bt-spoiler[data-anchor]').each(function () {
			if ('#' + $(this).data('anchor') === document.location.hash) {
				var $spoiler = $(this);
				// Activate tab
				if ($spoiler.hasClass('bt-spoiler-closed')) $spoiler.find('.bt-spoiler-title:first').trigger('click');
				// Scroll-in tabs container
				window.setTimeout(function () {
					$(window).scrollTop($spoiler.offset().top  - 10);
				}, 100);
			}
		});
	}

	if ('onhashchange' in window) $(window).live('hashchange', anchor_nav);
	
	/**
	 * Accordion
	 */
	$('.bt-accordion .bt-spoiler-content').hide();
	$('.bt-accordion').each(function(){
		if($(this).data('active-first') == 'yes'){
			$(this).find('.bt-spoiler').eq(0).addClass('bt-spoiler-opened').children('.bt-spoiler-content').show();
		}
	});
	$('.bt-spoiler-title').click(function(e){
		var $spoiler = $(this).parent();
		var $accordion = $spoiler.parent();
		$accordion.find('.bt-spoiler-opened .bt-spoiler-content').stop();
		if($spoiler.hasClass('bt-spoiler-opened')){
		
			$spoiler.removeClass('bt-spoiler-opened');
			$(this).next('.bt-spoiler-content').slideUp(300);
			
		}else{
			$accordion.find('.bt-spoiler-opened .bt-spoiler-content').slideUp(300);
			$accordion.find('.bt-spoiler').removeClass('bt-spoiler-opened');
			$spoiler.addClass('bt-spoiler-opened');
			$(this).next('.bt-spoiler-content').slideDown(300);
		}
		
	});
	
	//$('body').addClass('bt-other-shortcodes-loaded');
});