<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="pages_index" %>

<!DOCTYPE html>
<html>

<head>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>蚂蚁帮工</title>
    <meta http-equiv="keywords" content="招聘">
    <meta http-equiv="description" content="招聘">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no,email=no">
    <link rel="stylesheet" href="../css/mui.min.css" type="text/css" />
    <link rel="stylesheet" href="../css/mui.picker.css" type="text/css" />
    <link rel="stylesheet" href="../css/mui.poppicker.css" type="text/css" />
    <link rel="stylesheet" href="../css/css.css" type="text/css" />
    <link rel="stylesheet" href="../css/job.css" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="styleSheet" href="../css/layer.css" type="text/css" id="layermcss">
    <link rel="stylesheet" href="../css/swiper.min.css" type="text/css" />
    <link rel="stylesheet" href="../css/demo.css" type="text/css">
	<link rel="stylesheet" href="../css/wap_tck.css" type="text/css">
    <link rel="stylesheet" href="../css/yun_wap_member.css" type="text/css" />
	<link rel="stylesheet" href="../css/app.css" type="text/css" />
</head>
    
    <script charset="utf-8" src="../js/s.js" language="javascript"></script>
<script src="../js/hm.js" language="javascript"></script>
<script src="../js/push.js" language="javascript"></script>
<script src="../js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="../js/prefixfree.min.js" language="javascript"></script>
<script src="../js/pack.js" type="text/javascript"></script>
<script src="../js/layer.m.js" language="javascript"></script>
<script src="../js/public.js" language="javascript"></script>
<script src="../js/mui.min.js" language="javascript "></script>
<script src="../js/mui.picker.js" language="javascript "></script>
<script src="../js/mui.poppicker.js" language="javascript "></script>
<script src="../js/forgetpw.js" language="javascript "></script>
<script src="../js/reg_ajax.js" charset="utf-8" language="javascript"></script>
<script src="../js/gt.js" language="javascript"></script>
<script src="../js/mobile.js" type="text/javascript "></script>
<script src="../js/swiper.js"></script>
<script src="../js/search.js" language="javascript"></script>
<script src="../js/demo.js" language="javascript"></script>
<script src="../js/mui.min.js" language="javascript"></script>
<script src="../js/mui.view.js" language="javascript"></script>
<script src="../js/binding.js" language="javascript"></script>
<script src="../js/compress.js" language="javascript"></script>
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <header class="header_h">
	<div class="header_fixed">
		<div class="header_bg bg3">
			<div class="header_p_z1">蚂蚁帮工</div>
		</div>
	</div>
</header>
<!-- S 轮播 -->
<section>
    <div class="swiper-container" id="imgswiper">
        <div class="swiper-wrapper">
            
            <div class="swiper-slide">
                <a href="#"><img src="../images/1.jpg" width='100%' /></a>
            </div>
            <div class="swiper-slide">
                <a href="#"><img src="../images/2.jpg" width='100%' /></a>
            </div>
            <div class="swiper-slide">
                <a href="#"><img src="../images/3.jpg" width='100%' /></a>
            </div>
            
            
        </div>
        <!-- 如果需要分页器-->
       
    </div>
</section>
<!-- E 轮播 -->
<!-- --------------------搜索-------------------- -->

    <section>
        <div class="index_search_cont">
              <form method="get" action="position.aspx">
               <%-- <input type="hidden" name="c" value="job" />--%>
                <div class="index_formFiled index_formFiled_text">
                    <input type="text" value="" name="keyword" class="index_input_search" placeholder="请输入职位关键字，如：会计... " />
                    <input type="submit" value="搜职位" class="index_input_btn" />
                    <i class="index_input_btn_icon iconfont_index_search"></i>
                </div>
             </form>
        </div>
    </section>


    <!-- --------------------公告-------------------- -->
   <%-- <section>
        <div class="yun_wap_notice sxl" runat="server" id="ceshi">
            <span class="yun_wap_notice_tit"><i class="yun_wap_notice_tit_s"></i></span>
            <ul class="yun_wap_notice_list sxlist" style="padding-left: 70px; height: 30px; overflow: hidden;">
                <%=notice%>
            </ul>
        </div>
    </section>--%>
<!-- S 登录注册 -->
 <!-- --------------------登录注册-------------------- -->

    <section>
          <%=login%>            
    </section>
<!-- E 登录注册 -->

 <!-- --------------------最新兼职-------------------- -->
    <section>
        <div class="wap_tit">
            <div class="bg3">
                <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_zw"></i><font color="#2383f0">最新兼职</font></span>
                    <a href="qy_part2.aspx" class="wap_titmore">更多>></a></div>
            </div>
        </div>
        <div class="index_warp_jobcontent">
            <%=part%>
        </div>
    </section>



 <!-- --------------------最新职位-------------------- -->
    <section>
        <div class="wap_tit">
            <div class="bg3">
                <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_zw"></i><font color="#2383f0">最新职位</font></span>
                    <a href="qy_position.aspx" class="wap_titmore">更多>></a></div>
            </div>
        </div>
        <div class="index_warp_jobcontent">
            <%=newest%>
        </div>


    </section>

  <!-- --------------------名企展示-------------------- -->
    <section>

        <div class="wap_tit">
            <div class="bg3">
                <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_mq"></i><font color="#ff9c00">名企招聘</font></span><a href="qy_company.aspx" class="wap_titmore">更多>></a></div>
            </div>
        </div>
 
        <div class="index_warp_jobcontent">
            <%=nameEnterpriseRecruit%>
        </div>
    </section>
  <!-- --------------------推荐职位-------------------- -->
    <section>
        <div class="wap_tit">
            <div class="bg3">
                <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_tj"></i><font color="#42a30d">推荐职位</font></span><a href="qy_position.aspx?Recommend=1" class="wap_titmore">更多>></a></div>
            </div>
        </div>
 
        <div class="index_warp_jobcontent">
            <%=recommend%>
        </div>


    </section>
<!-- --------------------紧急职位-------------------- -->
    <!-- -------------------最新简历-------------------- -->
    <section>
        <div class="wap_tit">
            <div class="bg3">
                <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_user"></i><font color="#0090ff">最新简历</font></span><a href="qy_resume.aspx" class="wap_titmore">更多>></a></div>
            </div>
        </div>
        
        <div class="index_warp_jobcontent">
            <%=resume%>
        </div>


    </section>
    <!-- -------------------职场资讯-------------------- -->
    <!-- -------------------图片列表-------------------- -->
    <div class="wap_tit">
        <div class="bg3">
            <div class="wap_tit4"><span class="wap_tit4_bg"><i class="wap_tit4_icon_news"></i><font color="#d5870d">职场资讯</font></span><a href="#" class="wap_titmore">更多>></a></div>
        </div>
    </div>
<!-- ------------------------------------最新---------------------------->

      <div>
         <%=workplace%>
      </div>
<script type="text/javascript">
    $(function () {
        var myimgswiper = new Swiper('#imgswiper', {
            direction: 'horizontal',
            autoplay: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                dynamicBullets: true,
            }
        });
        var mySwiper = new Swiper('#navswiper', {
            direction: 'horizontal',
            pagination: {
                el: '.swiper-pagination',
            }
        });
    });
</script>
    <div class="yun_footer">
    <div class="yun_footer_fix">
        <ul class="yun_footer_nav">
            <li class="yun_footer_nav_cur">
                <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
            </li>
            <li>
                <a href="qy_resume.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>简历</a>
            </li>
            <li>
                <a href="qy_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                 <%=news%>
            </li>
            <!-- <li>
                <a href="More.html"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>更多</a>
            </li> -->
            <li>
                <a href="qy_mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
            </li>
        </ul>
    </div>
 </div>
</body>

<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<link rel="stylesheet" href="css/swiper.min.css" type="text/css" />
<script src="js/swiper.min.js"></script>
<script type="text/javascript">
$(function () {
    var myimgswiper = new Swiper('#imgswiper', {
        direction: 'horizontal',
        autoplay: true,
        loop: true
    });
    var mySwiper = new Swiper('#navswiper', {
        direction: 'horizontal',
        pagination: {
            el: '.swiper-pagination',
        }
    });
});
</script>


</html>

