(function( $ ){
	$.fn.apb = function(options) {
		var a = $(this);
		var win_height = $(window).height();
		var win_width = $(window).width();
		var para_height, para_width;
		var ePos, eSize, isThumClick = false, isNavClick = true, isCloseClick = true, direction;
		var speed = 2, next_prev_s = 200, colSpacing = 0, rowSpacing = 0;
		var eTopCurrent, eTopCenter, eLeftCurrent;
		var back_posY, back_posX;
		var s, timer = null;
		var c_pos ;
		var list = null, image_list, listAnimate = false;
		
		var firstTop;
		var paddingTop = 0;
		var backgroundSize = {width: 0, height: 0};
		
		options = $.extend({
			galleryType : 'image',
			thumbnailWidth : 200,
			thumbnailHeight: 200,
			videos: null,
			images: null,
			rows: 2,
			speed: 2,
			transitionTime: 500,
			speedFactor: 0.5,
			dynamicBackground: true
			
			
		}, options);
		
		function initial(){
			//prepare gallery
			if(a.find('.parallax-gallery-wrap').size() == 0){
				a.find('.parallax-block').append($('<div>').addClass('parallax-gallery-wrap').hide());
			}
			
			var wrap = a.find('.parallax-gallery-wrap');
			
			if(options.galleryType == 'image'){
				if(typeof(options.images) == null){
					throw "There is no data for images!";
				}
				
				//var images = $.parseJSON(options.images);
				var images = options.images;
				if(images.length == 0){
					throw "There is no data for images!";
				}
				
				
				wrap.append($('<div>').addClass('parallax-gallery-in'));
				wrap.append($('<div>').addClass('content-show-large').addClass('hidden'));
				
				var wrapIn = a.find('.parallax-gallery-in');
				var large = a.find('.content-show-large');
				large.append($('<div>').addClass('image-contain'));
				large.append($('<div>').addClass('loading'));
				large.find('.loading').append('<img src="images/loading.gif"/>');
				
				//add images
				var columns = new Array();
				var colIndex = -1;
				for(var i = 0; i < images.length; i++){
					if(i % options.rows == 0){
						colIndex += 1;
						columns[colIndex] = $('<div>').addClass('parallax-col');
						if(i ==0) columns[colIndex].addClass('col-first');
						else if(i == images.length) columns[colIndex].addClass('col-last');
					}	
					var row = $('<div>').addClass('parallax-row');
					row.append(
						$('<div>').addClass('thumb').append(
							$('<img>').attr({alt: images[i].title, src: images[i].thumbnail})
						)
					).append(
						$('<div>').addClass('show_box hidden').append(
							$('<img>').addClass('image-show').attr({alt: images[i].title, src: images[i].original})			
						)
					);
					
					columns[colIndex].append(row);
				}
				
				for(var i = 0; i < columns.length; i++){
					wrapIn.append(columns[i]);
				}
				
				list = a.find('.parallax-col');
				image_list = a.find('.show_box');
				
				colSpacing += parseInt(list.css('margin-left')) 
							+ parseInt(list.css('margin-right')) 
							+ parseInt(list.css('padding-left')) 
							+ parseInt(list.css('padding-right'));
	
				list.each(function (index) {
					if(index == 0){
						$(this).css({'transform': 'translateX(0px)'});
					}else{
						$(this).css({'transform': 'translateX(' + ((options.thumbnailWidth + colSpacing) * index  )+ 'px)'});
					}	
				});
				
				
				c_pos = a.find('.parallax-gallery-in');
				c_pos.width((options.thumbnailWidth + colSpacing) * list.length);
				
				if ((options.thumbnailWidth + colSpacing) * list.length  < win_width) {
					c_pos.css('left', ((win_width - ((options.thumbnailWidth + colSpacing) * list.length)) / 2) + 'px');
				}
				
				var rows = a.find('.parallax-row');
				rowSpacing = parseInt(rows.css('margin-bottom')) 
							+ parseInt(rows.css('margin-top')) 
							+ parseInt(rows.css('padding-top'))
							+ parseInt(rows.css('padding-bottom'));
				
				c_pos.css('margin-top', (win_height - (options.thumbnailHeight + rowSpacing) * options.rows) / 2 + 'px');
	
				//bind click event

				a.find('.open-btn').click(function(){ openGallery()});
				a.find('.nav-next').click(function () {
					if(!isNavClick) return false;
					isNavClick = false;
					if ($(this).hasClass('next-large')) {
						nextImage();
					}else{
						next();
					}
				});
				a.find('.nav-prev').click(function () {
					if(!isNavClick) return false;
					isNavClick = false;
					if ($(this).hasClass('prev-large')) {
						prevImage();
					}else{
						prev();
					}
				});
				a.find('.thumb').click(function(e){
					openImage(e);
				});
				a.find('.close-btn').click(function(){ closeGallery(this)});
			
			}else{
				wrap.append($('<div>').addClass('content-video'));
				a.find('.open-btn').click(function(){ openGallery()});
				a.find('.close-btn').click(function(){ closeGallery(this)});
			}
			
			jQuery(window).resize(function () {
				win_width = jQuery(this).width();
				win_height = jQuery(this).height();
				a.find('.content-video').css({'height': win_height});
				
				update();
				
				if(a.find('.parallax-gallery-wrap').is(':visible')){
				
					if ((options.thumbnailWidth + colSpacing) * list.length  < win_width) {
						c_pos.css('left', ((win_width - ((options.thumbnailWidth + colSpacing) * list.length)) / 2) + 'px');
						animateStop();
					}else{
						c_pos.css('left', 0);
						animateStart();
					}
					
					c_pos.css({'transform': 'translateX(0)'});
					var marginTop = (win_height - (options.thumbnailHeight + rowSpacing) * options.rows) / 2;
					if(marginTop < 0) marginTop = 0;
					c_pos.css('margin-top', marginTop + 'px');
				}

			});
			
			//for parallax background
			
			firstTop = a.offset().top;
			if(a.find('.parallax-background video').size() > 0){
				backgroundSize.width = 640;
				backgroundSize.height = 360;
			}else{
				var image = new Image();
				image.src = a.find('.parallax-background img').attr('src');
				backgroundSize.width = image.width;
				backgroundSize.height = image.height;
			}
			
			$(window).bind('scroll', update);
			update();
			
		}
		
		function openGallery(){

			a.find('.parallax-content').addClass('out');
			$('body').addClass('galleryOpen');
			setTimeout(function(){
				var el = a.find('.parallax-block');
				/**
				 * customized to add class to .parallax-block
				 */
				//el.addClass('your-class');
				if(el.hasClass('contentMove')){
					el.removeClass('contentMove');
				}
				/**
				 * end
				 */
				a.find('.parallax-content').hide();
				
				
				$('body').addClass('no-scroll');
				$('html').addClass('no-scroll');
				
				para_height = el.height();
				para_width = el.width();
				eTopCurrent = el.offset().top - $(window).scrollTop();
				eTopCenter = ((win_height - para_height) / 2);
				eLeftCurrent = el.offset().left;

				if (eTopCurrent > eTopCenter) {
					s = eTopCurrent - eTopCenter;
				} else {
					s = eTopCenter - eTopCurrent;
				}

				var cssOpen = {
					'position': 'fixed',
					'z-index': 99999,
					'width': para_width,
					'height': para_height,
					'top': eTopCurrent,
					'left': eLeftCurrent
				};
				//el.parent().css({'width': para_width, 'height': para_height});
				el.parent().css({'height': para_height});
				var espeed = s * speed;
				if (espeed < 500) {
					espeed = 500;
				}

				el.css(cssOpen).animate({'top': eTopCenter},
				{
					duration: espeed,
					step: function(now, fx){
						update();
					},
					done: function () {
						
						setTimeout(function () {
							el.animate(
								{'top': 0, 'height': '100%'}, 
								{
									duration : 1000, 
									easing: 'easeInOutQuint', 
									step: function(){
										update();
									},
									done: function () {
										el.animate({'left': 0, 'width': '100%'},
										{										
											duration: 1000, 
											step: function(){
												update();
											},
											easing: 'easeInOutQuint',
											done: function () {
												if(options.galleryType == 'video'){
													el.find('.parallax-gallery-wrap').fadeIn(500, function () {
														el.find('.content-video').css({'height': win_height}).html(options.video);
														setTimeout(function () {
															a.find('.button-wrap').removeClass('hidden');
															el.animate({'left': 0, 'width': '100%'}, 1000, 'easeInOutQuint');
														}, 200);
													});											
												}else{
													el.find('.button-wrap').removeClass('hidden');
													el.find('.parallax-gallery-wrap').fadeIn(500, function () {
														loadImageItems(true, function () {
															//c_pos.width((options.thumbnailWidth + colSpacing) * list.length );
															isThumClick = true;
															if (((options.thumbnailWidth + colSpacing) * list.length) > win_width) {
																a.find('.nav-wrap').removeClass('hidden');
																listAnimate = true;
																animateStart();
															}
														});
													});
												}	
											}
										});
									}
								}	
							);
						}, 200);
					}

				},
				'easeInOutQuint');
			}, options.transitionTime);	
		}
		
		function closeGallery(obj){
			
			$('body').removeClass('galleryOpen');
			if ($(obj).hasClass('close-image-info')) {

				a.find('.nav-prev').removeClass('prev-large');
				a.find('.nav-next').removeClass('next-large');
				a.find('.content-show-large.show').animate({'top': ePos.top, 'left': ePos.left, 'width': 0, 'height': 0}, 500, function () {
					$(this).addClass('hidden').removeClass('show');
					$('span.close-btn').removeClass('close-image-info');
					$('.content-show-large .image-contain').html('');
					setTimeout(function () {
						if (listAnimate) {
							animateStart();
							a.find('.nav-wrap').removeClass('hidden');
						}else{
							a.find('.nav-wrap').addClass('hidden');
						}
						isThumClick = true;
					}, 100);
				});
				return;
			}
			
			$('body').removeClass('no-scroll');
			$('html').removeClass('no-scroll');
			var el = a.find('.parallax-block');
			/**
			 * customized to add class to .parallax-block
			 */
			el.delay(2000).addClass('contentMove');
			/**
			 * end
			 */
			el.find('.parallax-gallery-wrap').fadeOut(500, function () {
				if(options.galleryType == 'video'){
					el.find('.content-video').html('');
					el.find('.content-video').css({'height': 0});
				}
				el.animate(
					{'left': (win_width - para_width) / 2, 'width': para_width},
					{
						duration: 500,
						step: function(now, fx){
							update();
						},
						easing: 'easeInOutQuint',
						done: function () {
							a.find('.nav-wrap').addClass('hidden');
							a.find('.button-wrap').addClass('hidden');
							el.animate(
								{'top': eTopCenter, 'height': para_height}, 
								{
									duration: 1000, 
									easing: 'easeInOutQuint', 
									done: function () {
										var espeed = s * speed;
										if (espeed < 500) {
											espeed = 500;
										}
										el.animate({'top': eTopCurrent, 'left': eLeftCurrent},
										{
											duration: espeed,
											step: function(){ update();},
											easing: 'easeInOutQuint',
											done: function () {
												el.attr('style', '');
												if(options.galleryType == 'image'){
													loadImageItems(false, function () {
														el.find('.parallax-gallery-in').width((options.thumbnailWidth + colSpacing) * list.length);
														animateStop();
													});
												}
												el.find('.parallax-content').show(0, function(){$(this).removeClass('out')});
											}
										});
									}
								}
							);
						}		
					}
					
				);
			});
		}
		
		function nextImage(){
			var timeout = setTimeout(function () {
                a.find('.content-show-large .loading').fadeIn(100);
            }, 100);
            var ce = a.find('.show_box.show');
            var ne;
            if (image_list.index(ce) + 1 >= image_list.length) {
                ne = image_list[0];
            } else {
                ne = image_list[image_list.index(ce) + 1];
            }
            var n_e = $(ne).html();
            a.find('.content-show-large .image-contain').append($(n_e).css('display', 'none'));
            if (a.find('.content-show-large .image-contain img').length > 2) {
                a.find('.content-show-large .image-contain img:first').remove();
            }
            var img = new Image();
            $(img).load(function () {
                a.find('.content-show-large .image-contain img:first').fadeOut(2000);
                a.find('.content-show-large .image-contain img:last').fadeIn(2000, function () {
                    if (a.find('.content-show-large .image-contain img').length > 2) {
                        a.find('.content-show-large .image-contain img:first').remove();
                    }
                });
                isNavClick = true;
                clearTimeout(timeout);
                a.find('.content-show-large .loading').fadeOut(100);
                $(ne).addClass('show');
                ce.removeClass('show');
            }).error(function () {
                console.log('Can\'t load image!');
            }).attr('src', $(n_e).attr('src'));
            return false;
		}
		
		function next(){
			var left = Math.abs(c_pos.position().left);
			if (left + next_prev_s <= c_pos.width() - $(window).width()) {
				c_pos.animate({'transform': 'translateX(' + (c_pos.position().left - next_prev_s) + 'px)'}, 400, function () {
					isNavClick = true;
				});
			} else {
				var s_e = c_pos.width() - $(window).width();
				c_pos.animate({'transform': 'translateX(-' + (next_prev_s - (s_e - left)) + 'px)'}, 400, function () {
					isNavClick = true;
				});
			}
			return false;
		}
		
		function prevImage(){
			var timeout = setTimeout(function () {
                a.find('.content-show-large .loading').fadeIn(100);
            }, 100);
            var ce = a.find('.show_box.show');
            var ne;
            if (image_list.index(ce) - 1 <= 0) {
                ne = image_list[image_list.length - 1];
            } else {
                ne = image_list[image_list.index(ce) - 1];
            }
            var n_e = $(ne).html();
            a.find('.content-show-large .image-contain').append($(n_e).css('display', 'none'));
            if (a.find('.content-show-large .image-contain img').length > 2) {
                a.find('.content-show-large .image-contain img:first').remove();
            }
            var img = new Image();
            $(img).load(function () {
                a.find('.content-show-large .image-contain img:first').fadeOut(3000);
                a.find('.content-show-large .image-contain img:last').fadeIn(3000, function () {
                    if (a.find('.content-show-large .image-contain img').length > 2) {
                        a.find('.content-show-large .image-contain img:first').remove();
                    }
                });
                isNavClick = true;
                clearTimeout(timeout);
                a.find('.content-show-large .loading').fadeOut(100);
                $(ne).addClass('show');
                ce.removeClass('show');
            }).error(function () {
                console.log('Can\'t load image!');
            }).attr('src', $(n_e).attr('src'));
            return false;
		}
		
		function prev(){
			var left = Math.abs(c_pos.position().left);
			if (left - next_prev_s > 0) {
				c_pos.animate({'transform': 'translateX(' + (c_pos.position().left + next_prev_s) + 'px)'}, 400, function () {
					isNavClick = true;
				});
			} else {
				var s_e = Math.abs(left - next_prev_s);
				c_pos.animate({'transform': 'translateX(-' + (c_pos.width() - $(window).width() - s_e) + 'px)'}, 400, function () {
					isNavClick = true;
				});
			}
			return false;
		}
		
		function openImage(e){
			if (isThumClick === false) {
				return;
			} else {
				if (listAnimate === true) {
					animateStop();
				}else{
					a.find('.nav-wrap').removeClass('hidden');
				}
				ePos = {'top': e.clientY, 'left': e.clientX};
				eSize = {'width': $(e.target).width(), 'height': $(e.target).height()};
				a.find('.nav-prev').addClass('prev-large');
				a.find('.nav-next').addClass('next-large');
				var show_box = $(e.target).parents('.parallax-row').find('.show_box');
				show_box.addClass('show');
				var img = new Image();
				$(img).load(function () {
					a.find('.content-show-large .image-contain').html(show_box.html()).fadeIn(500);
					a.find('.content-show-large').css({'top': ePos.top, 'left': ePos.left, 'width': 0, 'height': 0}).removeClass('hidden').addClass('show').animate({'top': 0, 'left': 0, 'width': '100%', 'height': '100%'}, 500, function () {
						a.find('.content-show-large .loading').fadeIn(100);
						a.find('.content-show-large .loading').fadeOut(100);
						a.find('.button.close-btn').addClass('close-image-info');
						isThumClick = false;
					});                     
				}).error(function () {
					console.log('Can\'t load image!');
				}).attr('src', $(show_box.html()).attr('src'));

			}
		}
		var i = 0;
		function itemAnimateIn(list, callback) {

			if (i < list.length) {
				var spacing = parseInt($(list[i]).css('margin-left')) 
						+ parseInt($(list[i]).css('margin-right')) 
						+ parseInt($(list[i]).css('padding-left')) 
						+ parseInt($(list[i]).css('padding-right'));
				$(list[i]).animate({'transform': 'translateX(' + ((options.thumbnailWidth + spacing) * i) + 'px)', 'opacity': 1}, 100, function () {
					
					i++;
					itemAnimateIn(list, callback);
				});
			} else {
				callback(); i = 0;
				
				
			}
		}
		function itemAnimateOut(list, callback) {
			if (i < list.length) {
				var spacing = parseInt($(list[i]).css('margin-left')) 
						+ parseInt($(list[i]).css('margin-right')) 
						+ parseInt($(list[i]).css('padding-left')) 
						+ parseInt($(list[i]).css('padding-right'));
				$(list[i]).animate({'margin-left': (spacing) + 'px', 'opacity': 0}, 100, function () {
					i++;
					itemAnimateOut(list, callback);
				});
			} else {
				callback();
				i = 0;
			}
		}
		function loadImageItems(in_out, callback) {
			var list = a.find('.parallax-col'); 
			if (in_out === true) {
				itemAnimateIn(list, callback);
			} else {
				itemAnimateOut(list, callback);
			}
		}

		function listItemAnimate() {
			if (Math.abs(c_pos.position().left) === (((options.thumbnailWidth + colSpacing) * list.length) - $(window).width())) {
				direction = false;
				$('.parallax-gallery-in').css('transform', 'translateX(' + (c_pos.position().left + 1) + 'px)');
			} else if (Math.abs(c_pos.position().left) === 0) {
				direction = true;
				$('.parallax-gallery-in').css('transform', 'translateX(' + (c_pos.position().left - 1) + 'px)');
			} else {
				if (direction === true) {
					$('.parallax-gallery-in').css('transform', 'translateX(' + (c_pos.position().left - 1) + 'px)');
				} else {
					$('.parallax-gallery-in').css('transform', 'translateX(' + (c_pos.position().left + 1) + 'px)');
				}
			}
		}


		function animateStart() {
			listItemAnimate();
			timer = setTimeout(animateStart, 10);
		}

		function animateStop() {
			clearTimeout(timer);
		}
		
		function update(){
		
			if(a.is(":hidden")) return;
			var pos = $(window).scrollTop();
			var $element = a.find('.parallax-block');
			var height = a.find('.parallax-block').height(), width = a.find('.parallax-block').width();
			var fit, newHeight = height,  newWidth = width; 
			if((backgroundSize.width / backgroundSize.height) > (width / height) ){
					newWidth =  Math.floor(height / backgroundSize.height * backgroundSize.width);
					fit = 'height';
				}else{
					newHeight =  Math.floor(width / backgroundSize.width * backgroundSize.height);
					fit = 'width';
				}		
				
			if(fit == 'height'){
				a.find('.parallax-background').css({height: newHeight, width: newWidth, left: '50%', marginLeft: '-' + (newWidth/ 2) + 'px', top: '', marginTop: ''});
			}else{
				a.find('.parallax-background').css({height: newHeight, width: newWidth, left: '', marginLeft: ''});
				
			}
			
			if(options.dynamicBackground){
				var top = $element.offset().top;
				var height = getHeight($element);

				// Check if totally above or totally below viewport
				if (top + height < pos || top > pos + win_height) {
					return;
				}
				var factor = Math.round(-1 * (firstTop - pos) * options.speedFactor);
				var backgroundHeight = getHeight($element.find('.parallax-background'));
				if(backgroundHeight - Math.abs(factor) < height) factor = height - backgroundHeight;
				if(factor > 0) factor = 0;
				a.find('.parallax-background').css('top', factor);
			}
		
		}
		
		function getHeight(jqo){
			return jqo.outerHeight(true);
		}

		return initial();
	}
})(jQuery);