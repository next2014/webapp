$(function () {
    var nvId = 0;
    //高亮显示当前栏目
    
    var urlstr = location.href;  
    //if(urlstr.indexOf("index")>=0){
    //	  $(".nav-ul>li").eq(0).addClass("active");
    //}
     if(urlstr.indexOf("page=about")>=0){
    	  $(".nav-ul>li").eq(0).eq(0).addClass("active");
    }
     if(urlstr.indexOf("page=ysgy")>=0){
    	  $(".nav-ul>li").eq(1).eq(0).addClass("active");
    }    
     if(urlstr.indexOf("page=glpz")>=0){
    	  $(".nav-ul>li").eq(2).eq(0).addClass("active");
     }
     if(urlstr.indexOf("page=omcjs")>=0){
    	  $(".nav-ul>li").eq(3).eq(0).addClass("active");
    }
     if(urlstr.indexOf("page=qc")>=0){
    	  $(".nav-ul>li").eq(4).eq(0).addClass("active");
    }
     if(urlstr.indexOf("news.aspx")>=0){
    	  $(".nav-ul>li").eq(5).eq(0).addClass("active");
    }
     if(urlstr.indexOf("category_id=69")>=0){
    	  $(".nav-ul>li").eq(6).eq(0).addClass("active");
    }
     if(urlstr.indexOf("page=contact")>=0){
    	  $(".nav-ul>li").eq(7).eq(0).addClass("active");
    }
    
    $(".nav-ul>li").mouseover(function(){
    	   $(".nav-ul>li").removeClass("active");
    	   $(this).addClass("active");
    })
        
       
    //导航
  
   
    //首页轮播图
    $('.flexslider').flexslider({
        directionNav: true,
        pauseOnAction: false,
        slideshowSpeed: 15000
    });
    //新闻tab菜单
    var newsNum;
    $(".zy-tab-t li").click(function () {
        newsNum = $(this).index() + 1;
        $(".zy-tab-t li").removeClass("tab-actived");
        $(this).addClass("tab-actived");
        $(".new-tab").hide();
        $(".new-tab" + newsNum).show()
    })
    //招聘
    var zpNum = 3;
    var zpcurrent = 0;
    $(".hr-bt-left").click(function () {
        zpcurrent += 1;
        if (zpcurrent >= 3) {
            zpcurrent = 0;
        }

        $(".hr-cc").animate({ "left": -200 * zpcurrent }, 500);
    })
    $(".hr-bt-right").click(function () {
        zpcurrent -= 1;
        if (zpcurrent < 0) {
            zpcurrent = 2;
        }

        $(".hr-cc").animate({ "left": -200 * zpcurrent }, 500);
    })

    //业务板块tab
    var ywNum;
    var imgadd;
    var newImg;
    $(".yw-tab-box li").click(function () {
        $(".yw-tab-box li").removeClass("ys-tab-actived");
        $(this).addClass("ys-tab-actived");
        ywNum = $(this).index() + 1;
        $(".ps-yw" + ywNum).fadeIn(300);
        $(".ps-yw" + ywNum).siblings().fadeOut(300);
        $(".yw-tab-cc").hide();
        $(".yw-tab" + ywNum).show();
        


    })
    //汽车
    var qclength = $(".qc-tab").length;

    var qcnum = 0;
    $(".qc-tab-bt li").click(function () {
        $(".qc-tab-bt li").removeClass("qc-bt-active");
        $(this).addClass("qc-bt-active");
        qcnum = $(this).index() + 1;

           $(".qc-right-tab" + qcnum).siblings().hide();
        $(".qc-right-tab" + qcnum).fadeIn(300);
        
    })
    var qccurrent = 0;
    $(".qc-bt-left").click(function () {
        qccurrent++;
        if (qccurrent >= qclength) {
            qccurrent = 0;
        }
        $(".qc-tab-cc").animate({ "left": -529 * qccurrent }, 300);
    })
    $(".qc-bt-right").click(function () {
        qccurrent--;
        if (qccurrent < 0) {
            qccurrent = qclength - 1;
        }
        $(".qc-tab-cc").animate({ "left": -529 * qccurrent }, 300);
    })
    //欧美城，缘善，汽车tab切换
    var ttnum = 0;
    $(".tt-news-ul li").click(function () {
        ttnum = $(this).index() + 1;
        $(".tt-news-ul li").removeClass("tt-actived");
        $(this).addClass("tt-actived");
        $(".tt-tab").hide();
        $(".tt-news" + ttnum).show();
    })
})