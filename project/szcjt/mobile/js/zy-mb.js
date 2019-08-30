$(function(){
	//导航菜单
	$(".close-nv span").click(function(){
		$(".nv-list").hide();
	})
	$(".nv-button").click(function(){
		$(".nv-list").show();
	})
	//tab菜单
	var tabNum;
	$(".tab-nv li").click(function(){
		tabNum=$(this).index()+1;
		$(".tab-nv li").removeClass("li-active");
		$(this).addClass("li-active");
		$(".new-tab").hide();
		$(".new-tab-c"+tabNum).show();
	})
	//tab4大板块
	var tabNum2;
	$(".yw-nv li").click(function(){
		tabNum2=$(this).index()+1;
		$(".yw-nv li").removeClass("yw-active");
		$(this).addClass("yw-active");
		$(".yw-tab-cc").hide();
		$(".yw-tab-cc"+tabNum2).show();
	})
	//视频

	$("#poster-img").click(function(){
		
			$(this).hide();
			$("#vv").trigger('play');
			
	
		
	})
	$("#vv").click(function(){
		
			$("#poster-img").show();
			$(this).trigger('pause');
			
	
		
	})
	//关于tab
	var tabnum;
	$(".find_nav_list li").click(function(){
		tabnum=$(this).index();
		console.log(tabnum);
		$(".gy-tab").hide();
		$(".gy-tab"+tabnum).show();
		
	})
})
