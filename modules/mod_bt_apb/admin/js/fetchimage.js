jQuery(document).ready(function($){
	var moduleId = window.moduleId;
	var phocaExists = $(".source_jgallery_not_found").size() > 0 ? false : true;
	var jgalleryExists = $(".source_phocagallery_not_found").size() > 0 ? false : true;
	var source = $("#jform_params_source").val(); 
	var inProgess = new Object();
	inProgess.value = false;
	
	//ajax load photosets for flickr
	var flickrAPI = $("#jform_params_flickr_api").val();
	var flickrUserID = $("#jform_params_flickr_userid").val();
	var slcFlickrPhotoset = $("#jform_params_flickr_photosetid");
	if(flickrAPI != "" && flickrUserID != ""){
		getFlickrPhotoSet(slcFlickrPhotoset, flickrAPI, flickrUserID, BTSlideshow);
	}
	$("#jform_params_flickr_userid").focus(function(){
		flickrUserID = $(this).val();
		flickrAPI = $("#jform_params_flickr_api").val();
	}).focusout(function(){
		if($(this).val() != flickrUserID && flickrAPI != ""){
			getFlickrPhotoSet(slcFlickrPhotoset, flickrAPI, $(this).val(), BTSlideshow);
		}
	});
	$("#jform_params_flickr_api").focus(function(){
		flickrAPI = $(this).val();
		flickrUserID = $("#jform_params_flickr_userid").val();
	}).focusout(function(){
		if($(this).val() != flickrAPI && flickrUserID != ""){
			getFlickrPhotoSet(slcFlickrPhotoset, $(this).val(),flickrUserID, BTSlideshow);
		}
	});
	//ajax load album for picasa
	var picasaUserID = $("#jform_params_picasa_userid").val();
	var slcPicasaAlbum = $("#jform_params_picasa_albumid");
	if(picasaUserID != ""){
		getPicasaAlbums(slcPicasaAlbum, picasaUserID, BTSlideshow);
	}
	$("#jform_params_picasa_userid").focus(function(){
		picasaUserID = $(this).val();
	}).focusout(function(){
		if($(this).val() != picasaUserID){
			getPicasaAlbums(slcPicasaAlbum, $(this).val(), BTSlideshow);
		}
	});
	
	$("#btnGetImages").click(function(){
		if(inProgess.value){
			alert(Joomla.JText._('MOD_BTBGSLIDESHOW_ERROR_ON_PROGESS'));
		}else{


			var cw = ch = th = tw = "";
			if($("#jform_params_crop_image").val() == 1){
				cw = $("#jform_params_crop_width").val();
				ch = $("#jform_params_crop_height").val();
			}
			var strParams = "";
			if(cw != "" && ch != "") strParams +="&cw="+cw+"&ch="+ch;
			var getLimit = ($("#jform_params_get_limit").val() != "") ? "&get_limit=" + $("#jform_params_get_limit").val() : "" ;
			var query = "";
			source = $("#jform_params_source").val();
			switch (source){
				case "jfolder":
					if($("#jform_params_jfolder_path").val()!=""){
						query = "jFolderPath="+$("#jform_params_jfolder_path").val() +strParams;
					}else{
						alert(Joomla.JText._('MOD_BTBGSLIDESHOW_JOOMLAFOLDER_ALERT'));
						return false;
					}

					break;
				case "flickr":
					if($("#jform_params_flickr_api").val() != "" && $("#jform_params_flickr_userid").val() != ""){
						query = "flickrUserID="+$("#jform_params_flickr_userid").val() + "&flickrAPI="+$("#jform_params_flickr_api").val();
						if($("#jform_params_flickr_photosetid").val() != 0)
							query+="&photosetid="+$("#jform_params_flickr_photosetid").val();
					}else{
						alert(Joomla.JText._("MOD_BTBGSLIDESHOW_FLICKR_ALERT"));
						return false;
					}
					break;
				case "picasa":
					if($("#jform_params_picasa_userid").val() !=""){
						query="picasaUserID=" + $("#jform_params_picasa_userid").val();
						if($("#jform_params_picasa_albumid").val() != "0" && $("#jform_params_picasa_albumid").val() != null)
							query+="&albumid="+$("#jform_params_picasa_albumid").val();
					}else{
						alert(Joomla.JText._('MOD_BTBGSLIDESHOW_PICASA_ALERT'));
						return false;
					}
					break;
				case "phocagallery":
					if(phocaExists == 1){
						if($("#jform_params_phoca_catid").val() !=""){
							 query="phoca_catid=" + $("#jform_params_phoca_catid").val();
						}else{
							 query="phoca_catid=0";
						}
					}else{
						alert(Joomla.JText._('MOD_BTBGSLIDESHOW_PHOCA_ALERT'));
						return false;
					}
					break;
				case "jgallery":
					if(jgalleryExists == 1){
						if($("#jform_params_jgallery_catid").val() !=""){
							query="jgallery_catid=" + $("#jform_params_jgallery_catid").val();
						}else{
							query="jgallery_catid=0";
						}
					}else{
						alert(Joomla.JText._('MOD_BTBGSLIDESHOW_JOOMGALLERY_ALERT'));
						return false;
					}
					break;
				
				case "ytlink":
					if($("#jform_params_yt_link").val() !== ""){
						var videoId = getUrlParameter($("#jform_params_yt_link").val(), "v");
						var playlist = getUrlParameter($("#jform_params_yt_link").val(), "list");
						if(videoId){
							query = "video_id=" + videoId;
						}else if(playlist){
							query = "playlist_id=" + playlist;
						}else{
							alert(Joomla.JText._('MOD_BTBGSLIDESHOW_YOUTUBE_LINK_ALERT'));
							return false;
						}
					}else{
						alert(Joomla.JText._('MOD_BTBGSLIDESHOW_YOUTUBE_LINK_ALERT'));
						return false;
					}
				default:
					break;
			}
			
			query = "action=get&" + query + getLimit+ "&id=" + moduleId;
			inProgess.value = true;
			$.ajax({
				url: location.href,
				data: query,
				type: "post",
				beforeSend: function(){
					BTSlideshow.showMessage("btss-message", "Loading images... <span class=\"btss-upload-spinner\"></span>");
					$("#btnGetImages").html("Loading...");
				},
				success: function(responseJSON){
						var data = $.parseJSON(responseJSON);
						if (!data.success) {
							inProgess = false;
							$("#btnGetImages").html("Get Images");
							BTSlideshow.showMessage("btss-message", "<b>Loading Failed</b> - " + data.message);
							BTSlideshow.removeLog();
						}
						else {
							sendRequest($.parseJSON(data.files), 0, BTSlideshow, strParams, inProgess);
						}

				},
				error: function(jqXHR, textStatus, errorThrown){
					inProgess = false;
					$("#btnGetImages").html("Get Images");
					//BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
					//BTSlideshow.removeLog();
				}
			});

		}
		return false;
	});
	// for delete all images
	$("#btnDeleteAll").click(function(){
		if($("#btss-gallery-container li").length > 0){
			if(confirm(Joomla.JText._('MOD_BTBGSLIDESHOW_CONFIRM_DELETE_ALL'))){
				BTSlideshow.removeAll();	
			}	
		}
		return false;
	});
	
	
	

});
function sendRequest(files, i, BTSlideshow, strParams, inProgess){
	if(i < files.length){
		var remote = jQuery("#jform_params_remote_image1").is(":checked") ? 1 : 0;	
		
		jQuery.ajax({
			url: location.href,
			data: "action=upload&id=" + window.moduleId + "&btfile="+ files[i].file + "&title="+files[i].title + "&source="+files[i].source+ strParams  + (files[i].videoId ? "&videoid=" + files[i].videoId : "") + "&remote=" + remote,
			type: "post",
			beforeSend: function(){
				var j;
				for(j = files[i].file.length - 1; j >= 0; j--){
					if(files[i].file.charAt(j) == '/' || files[i].file.indexOf(j) == '\\') break;
				}
				var filename = "";
				if(files[i].videoId){
					filename = "video " + files[i].title;
				}else{
					filename = "image " + files[i].file.substr(j+1);
				}
				BTSlideshow.showMessage("btss-message", "<div id=\"btss-upload-file-" + i + "\">Loading <b>" + filename + "</b><span class=\"btss-upload-spinner\"></span></div>");

			},
			success: function(response){
				var data2 = jQuery.parseJSON(response);
				if(data2 == null){
					BTSlideshow.showMessage("btss-message", "<b>Loading Failed</b> - Have errors");
					BTSlideshow.removeLog();
				}else{
					var file = data2.files;
					jQuery("#btss-upload-file-"+i+" .btss-upload-spinner").remove();
					if (!data2.success) {
						jQuery("#btss-upload-file-"+i).append("<span style=\"color: red;\"> " + data2.message +"</span>");
					}
					else {

						var item = {
							  file: file.filename,
							  title: file.title,
							  desc: file.desc,
							  remote: file.remote,
							  youid: file.videoId
						};
						BTSlideshow.add(item, true);
						jQuery("#btss-upload-file-"+i).append("<span style=\"color: green;\"> Completed</span>");
					}
				}
				sendRequest(files, ++i, BTSlideshow, strParams, inProgess);
			},
			error: function(jqXHR, textStatus, errorThrown){
				//BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
				//BTSlideshow.removeLog();
			}
		});
	}else{
		BTSlideshow.removeLog();
		inProgess.value = false;
		jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
		return;
	}
}
function getFlickrPhotoSet(select, api, userid, BTSlideshow){
	//remove old option
	var options = select.children();
	for(var i = 0; i < options.length; i++){
		options.eq(i).remove();
	}
	select.trigger("liszt:updated");
	jQuery.ajax({
		url: location.href,
		type: "post",
		data: "action=load_options&flickrAPI="+ api + "&flickrUserID=" + userid,
		beforeSend: function(){
			BTSlideshow.showMessage("btss-message", "<div>Loading Flickr Photosets <span class=\"btss-upload-spinner\"></span></div>");
			jQuery("#btnGetImages").html("Loading...").attr("disabled","disabled");
		},
		success: function(response){
			var data = jQuery.parseJSON(response);
			if(data != null && data.success){
				if(data.options.length > 0){
					for(var i = 0; i< data.options.length; i++){
						select.append("<option value=\""+data.options[i].value+"\">"+data.options[i].text+"</option>");
					}
					select.trigger("liszt:updated");
				}else{
					BTSlideshow.showMessage("btss-message", "<div>Have no photoset.</div>");
				}
			}else{
				BTSlideshow.showMessage("btss-message", "<div>Loading Flickr Photosets failed. "+ data.message + "</div>");
			}
			BTSlideshow.removeLog();
			jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
		},
		error: function(jqXHR, textStatus, errorThrown){
				$("#btnGetImages").html("Get Images");
				//BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
				//BTSlideshow.removeLog();
			}
	});
}
function getPicasaAlbums(select, userid, BTSlideshow){
	//remove old option
	var options = select.children();
	for(var i = 0; i < options.length; i++){
		options.eq(i).remove();
	}
	select.trigger("liszt:updated");
	jQuery.ajax({
		url: location.href,
		type: "post",
		data: "action=load_options&picasaUserID="+ userid,
		beforeSend: function(){
			BTSlideshow.showMessage("btss-message", "<div>Loading Picasa albums <span class=\"btss-upload-spinner\"></span></div>");
			jQuery("#btnGetImages").html("Loading...").attr("disabled","disabled");
		},
		success: function(response){
			var data = jQuery.parseJSON(response);
			if(data != null && data.success){
				if(data.options.length > 0){
					for(var i = 0; i< data.options.length; i++){
						select.append("<option value=\""+data.options[i].value+"\">"+data.options[i].text+"</option>");
					}
					select.trigger("liszt:updated");
				}else{
					BTSlideshow.showMessage("btss-message", "<div>Have no album.</div>");
				}
			}else{
				BTSlideshow.showMessage("btss-message", "<div>Loading Picasa albums failed. " + data.message + "</div>");
			}
			BTSlideshow.removeLog();
			jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
		},
		error: function(jqXHR, textStatus, errorThrown){
				jQuery("#btnGetImages").html("Get Images");
				//BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
				//BTSlideshow.removeLog();
			}
	});
}


function getUrlParameter(url, name)
{

  return decodeURIComponent(
	(RegExp(name + "=" + "(.+?)(&|$)", "i").exec(url) || [, ""])[1]
	);
}
