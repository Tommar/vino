/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */
 
 
jQuery(document).ready(function($){
	$('.button_showMenu').click(function(){
		$('#mainMenuDesktop').addClass('showMenu');
		$('.button_showMenuWapper').addClass('hideButton');
		$('#t3-header').addClass('zIndex');
	});
	
	$('.button_hideMenu').click(function(){
		if ($('#mainMenuDesktop').hasClass('showMenu')){
			$('#mainMenuDesktop').removeClass('showMenu');
		}
		if ($('.button_showMenuWapper').hasClass('hideButton')){
			$('.button_showMenuWapper').removeClass('hideButton');
		}
		if ($('#t3-header').hasClass('zIndex')){
			$('#t3-header').removeClass('zIndex');
		}
	});
	
	

	$(window).resize(function(){
		$('#stickyMenu').css('top', '-'+($('#stickyMenu').height())+'px'); 
		if ($(window).width() < 1199){
			if ($('#stickyMenu').hasClass('showStickyMenu')){
				$('#stickyMenu').removeClass('showStickyMenu');
			};
			$('#stickyMenu').css('top', '-'+($('#stickyMenu').height()) + 'px'); 
			
		} else if ($(window).width() > 1199){
			
			$(window).scroll(function(){
				if ($(window).scrollTop() > 220) {
					if ($('#mainMenuDesktop').hasClass('showMenu')){
						$('#mainMenuDesktop').removeClass('showMenu');
					}
				if ($('.button_showMenuWapper').hasClass('hideButton')){
					$('.button_showMenuWapper').removeClass('hideButton');
				}
					$('#stickyMenu').addClass('showStickyMenu'); 
				}else{ 
					$('#stickyMenu').removeClass('showStickyMenu')
				}
			
			});
		};
		
	});
	
	
	$('.bt_parallax').each(function(index){
		$(this).waypoint(function(){
			$(this).animate({
				width: "auto"
			}, 0, function(){
				$(this).addClass('parallaxAnimate'); 
			});
		}, { offset: '100%' });
	});
	
	
	
	
	
	

	
	
 
});
 
 
 
 
 
 
 
 
 
 
 
 
 