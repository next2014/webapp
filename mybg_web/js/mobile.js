$(document).ready(function(){


var handlerPopupMobile = function (captchaObj) {
	// 鎴愬姛鐨勫洖璋�
	captchaObj.appendTo("#popup-captcha-mobile");

	captchaObj.onSuccess(function () {
		
		var validate = captchaObj.getValidate();
		
		if(validate){
			
			$("input[name='geetest_challenge']").val(validate.geetest_challenge);
			$("input[name='geetest_validate']").val(validate.geetest_validate);
			$("input[name='geetest_seccode']").val(validate.geetest_seccode);

			//$("#mask, #popup-captcha-mobile").hide();

			//鎻愪氦鎿嶄綔
			var type = $('#popup-captcha-mobile').attr('data-type');
			var dataid = $('#popup-captcha-mobile').attr('data-id');
			//鎻愪氦琛ㄥ崟
			if(type=='submit'){
				//$('#'+dataid).submit();
			}else{
				//妯℃嫙鐐瑰嚮
				//$("#"+dataid).trigger("click");
			}
		}

	});
	$("#popup-submit").click(function(){
		$("input[name='geetest_challenge']").val('');
		$("input[name='geetest_validate']").val('');
		$("input[name='geetest_seccode']").val('');
		captchaObj.reset();
	});
	
	
	
	// 鏇村鎺ュ彛鍙傝€冿細http://www.geetest.com/install/sections/idx-client-sdk.html

};

if($("#popup-captcha-mobile").length>0){

	$.ajax({
			url: wapurl+"/index.php?c=geetest&t=" + (new Date()).getTime(), // 鍔犻殢鏈烘暟闃叉缂撳瓨
			type: "get",
			dataType: "json",
			success: function (data) {
				// 浣跨敤initGeetest鎺ュ彛
				// 鍙傛暟1锛氶厤缃弬鏁�
				// 鍙傛暟2锛氬洖璋冿紝鍥炶皟鐨勭涓€涓弬鏁伴獙璇佺爜瀵硅薄锛屼箣鍚庡彲浠ヤ娇鐢ㄥ畠鍋歛ppendTo涔嬬被鐨勪簨浠�
				initGeetest({
					gt: data.gt,
					challenge: data.challenge,
					offline: !data.success, // 琛ㄧず鐢ㄦ埛鍚庡彴妫€娴嬫瀬楠屾湇鍔″櫒鏄惁瀹曟満锛屼竴鑸笉闇€瑕佸叧娉�
					width:"100%",
					new_captcha: data.new_captcha
				}, handlerPopupMobile);
			}
	});
}

});