function mlogin(target_form) {
	var act_login=$.trim($("#act_login").val()); 
		 var moblie=$.trim($("#usermoblie").val());
		 var dynamiccode=$.trim($("#dynamiccode").val()); 
		 if(moblie==''||dynamiccode==''){
			  layermsg('手机号或验证码均不能为空！');return false; 
		 }
		 //验证码验证
		 var authcode;
		 var geetest_challenge;
		 var geetest_validate;
		 var geetest_seccode;
		 var codesear=new RegExp('前台登录');
		 if(codesear.test(code_web)){
			  if(code_kind==1){
					authcode=$.trim($("#checkcode").val());  
					if(!authcode){
						 layermsg('请填写验证码！');return false;
					}					
			  }else if(code_kind==3){
					geetest_challenge = $('input[name="geetest_challenge"]').val();
					geetest_validate = $('input[name="geetest_validate"]').val();
					geetest_seccode = $('input[name="geetest_seccode"]').val();
					if(geetest_challenge =='' || geetest_validate=='' || geetest_seccode==''){
						 $("#popup-submit").trigger("click");
						 layermsg('请点击按钮进行验证！');return false;
					}
			  }
		 }

	post2ajax(target_form);
	return false;
}
function layermsg(content,time,end){ 
	  layer.open({
			content: content, 
			time: time === undefined ? 2 : time,
			end: end
	  });
	  return false;
}
function form2json(target_form) {
	  var json_form = '';
	  $(target_form).find('input,select,textarea').each(function () {
			if($(this).attr('type')=='radio'){
				 if ($(this).attr('name')&&$(this).attr('checked')=='checked') {
					  json_form += ',' + $(this).attr('name') + ':"' + $(this).val().replace(/[\r\n]+/g, '\\n')+'"';
				 }
			}else{
				 if ($(this).attr('name')) {
					  json_form += ',' + $(this).attr('name') + ':"' + $(this).val().replace(/[\r\n]+/g, '\\n')+'"';
				 }
			}
	  });
	  return eval('({' + json_form.substring(1) + '})');
	  }
	  function formfile2json(target_form) {
	  var json_form = '';
	  var formData = new FormData(target_form);
	  $(target_form).find('input,select').each(function () {
			if ($(this).attr('name')) {
				 //alert($(this)[0].type);
				 if ($(this)[0].type == 'file') {
					  //alert('adsfad');
					  formData.append('file', $('input[type=file]', target_form).get(0).files[0]);
				 } else {
					  formData.append($(this).attr('name'), $(this).val());
				 }
			}
	  });
	  
	  //alert(formData.length);
	  //formData.append('file', $('input[type=file]', target_form).get(0).files[0]);
	  //alert(formData);
	  return formData;
	  }
	  function form2string(target_form) {
	  var json_form = '';
	  $(target_form).find('input,select').each(function () {
			if ($(this).attr('name')) {
				 json_form += '&' + $(this).attr('name') + '=' + $(this).val();
			}
	  });
	  return json_form;
	  }
function post2ajax(target_form) {
	  layer_load('执行中，请稍候...');
	  if ($('input[type=file]', target_form).length > 0) {
			$.ajax({
				 url: $(target_form).attr('action'),
				 data: formfile2json(target_form),
				 processData: false,
				 type: 'POST',
				 async: false,  
				 cache: false,
				 contentType: false,
				 success: function (data) {
					  layer.closeAll();
					  var json_data = eval('(' + data + ')');
					  if (json_data.msg) {
							if($("#popup-captcha-mobile").length>0){
								 $("#popup-submit").trigger("click");
							}
							if (json_data.st==10) {
								 checkCode('vcode_img'); 
							}
							layermsg(json_data.msg, json_data.tm, function () {
								 if (json_data.url) { 
									  location.href = json_data.url; 
								 } 
							});
					  } else if (json_data.url) {
							location.href = json_data.url;
					  }
				 }
			});
	  } else {
			if ($(target_form).attr('action') == 'get') {
				 $.get($(target_form).attr('action') + form2string(target_form), function (data) {
					  layer.closeAll();
					  var json_data = eval('(' + data + ')');
					  if (json_data.msg) {
							if($("#popup-captcha-mobile").length>0){
								 $("#popup-submit").trigger("click");
							}
							layermsg(json_data.msg, json_data.tm, function () { if (json_data.url) { location.href = json_data.url; } });
					  } else if (json_data.url) {
							location.href = json_data.url;
					  }
				 });
			} else {		
				 $.post($(target_form).attr('action'), form2json(target_form), function (data) {
											layer.closeAll();
					  var json_data = eval('(' + data + ')');
					  if (json_data.msg) {
												 if($("#popup-captcha-mobile").length>0){
													  $("#popup-submit").trigger("click");
												 }
												 if(json_data.msg.indexOf('script')){
													  $('#uclogin').html(json_data.msg);
												 }
								 layermsg(json_data.msg, json_data.tm, function () {
													  if (json_data.url) {
															location.href = json_data.url; 
													  }  
												 });
												 if (json_data.st==10) {
													  checkCode('vcode_img'); 
												 }
					  } else if (json_data.url) {
							location.href = json_data.url;
					  }
				 });
			}
	  }
	  return false;
} 