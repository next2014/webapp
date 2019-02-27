$(function() {
	// 点击提示内容
	 $('[data-toggle="tooltip"]').tooltip({ boundary: 'window' })

	// 移除当前按钮
	$('.mod_pos_item_ind li').on('click',function(){
		$(this).remove();
	});
	
	 //滚动固定在顶部 companyDetail
	 var hBanner = $('.mod_pos_item').innerHeight();
	 var cbHeight = hBanner - 50;
	 $(window).scroll(function () {
		var scroll = $(window).scrollTop();
		if (scroll >= cbHeight) {
		  $(".companyDetail .weui-tab").addClass('mod_pos_hig');
		}else{
		  $("companyDetail .weui-tab").removeClass('mod_pos_hig');
		}
	 });

	//展开收起 positionDetail
	//  var $mpiBtn = $('.mod_pos_item_btn');
	//  var $mpiInd = $('.mod_pos_item_ind');
	//  $mpiBtn.on('click',function(){
	// 	if($mpiInd.height() == "32"){
	// 		$mpiInd.height('auto');
	// 		$('.mod_pos_item_btn i').attr("class","fa fa-angle-down");
	// 		$('.mod_pos_item_btn i').html(' 展开');
	// 	}else{
	// 		$mpiInd.height('32');
	// 		$('.mod_pos_item_btn i').attr("class","fa fa-angle-up");
	// 		$('.mod_pos_item_btn i').html(' 收起');
	// 	}
	//  });

	//当前编辑页跳转修改 qyCorInf
	var $qyZl = $('#qyZl');
	var $qyCon = $('#qyCon');
	var $qyFl = $('#qyFl');
	$qyZl.click(function(){
				$('.qyCorInf .weui-tab').css('display','none');
				setTimeout(function(){
					$('.qyZl').removeAttr('style'); 
				},500)
	})
	$qyCon.click(function(){
				$('.qyCorInf .weui-tab').css('display','none');
				setTimeout(function(){
					$('.qyCon').removeAttr('style'); 
				},500)
	})
	$qyFl.click(function(){
				$('.qyCorInf .weui-tab').css('display','none');
				setTimeout(function(){
					$('.qyFl').removeAttr('style'); 
				},500)
	})

		
	//协议显示效果 register
    $(document).on("open", ".weui-popup-modal", function() {
			console.log("open popup");
			}).on("close", ".weui-popup-modal", function() {
			console.log("close popup");
		});

		//qyLogEdit、comAlb
		var tmpl = '<li class="weui-uploader__file" style="background-image:url(#url#)"></li>',
		$gallery = $("#gallery"), $galleryImg = $("#galleryImg"),
		$uploaderInput = $("#uploaderInput"),
		$uploaderFiles = $("#uploaderFiles")
		;
		$uploaderInput.on("change", function(e){
			var src, url = window.URL || window.webkitURL || window.mozURL, files = e.target.files;
			for (var i = 0, len = files.length; i < len; ++i) {
				var file = files[i];
				if (url) {
						src = url.createObjectURL(file);
				} else {
						src = e.target.result;
				}
				$uploaderFiles.append($(tmpl.replace('#url#', src)));
			}
		});
		$uploaderFiles.on("click", "li", function(){
				$galleryImg.attr("style", this.getAttribute("style"));
				$gallery.fadeIn(100);
		});
		$gallery.on("click", function(){
				$gallery.fadeOut(100);
		});

});

// 全选  qyPosMan
function clickAll(){
		$('.checkOne').prop("checked",$(".checkAll").prop("checked"));
}
// 单选  qyPosMan
function clickOne(){
		var allChecked = true;
		$(".checkOne").each(function(){
				 if($(this).prop("checked") == false){
						 allChecked = false;
				 };
		});
		if(allChecked){
				 $(".checkAll").prop("checked",true);
		}else{
				 $(".checkAll").prop("checked",false);
		}
 }
//  var tabsSwiper = new Swiper('.tabs-container', {
// 	speed: 500,
// 	on: {
// 			slideChangeTransitionStart: function() {
// 			$(".tabs .active").removeClass('active');
// 			$(".tabs a").eq(this.activeIndex).addClass('active');
// 		}
// 	}
// });
// $(".tabs a").on('click', function(e) {
// 	e.preventDefault()
// 	$(".tabs .active").removeClass('active')
// 	$(this).addClass('active')
// 	tabsSwiper.slideTo($(this).index())
// })