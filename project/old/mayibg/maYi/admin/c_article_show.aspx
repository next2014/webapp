<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_article_show.aspx.cs" Inherits="c_article_show" %>

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
    <div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_bg  bg3">
                    <a class="hd-lbtn mui-action-back" href="javascript:history.back();"><i class="header_top_l"></i></a>
                    <div class="header_h1">
                        <div class="header_p_z"> 职场资讯</div>
                    </div>

                </div>
            </div>
        </div>
    </header>
</div>
<div class="news_cont_box">
    <div class="news_cont_box_tit">
        <h1><%=name%></h1>
    </div>
    <div class="news_cont_ms"><%=start%>&nbsp;&nbsp;&nbsp;<span class="news_list_box_ly">来源：<%=source%></span>&nbsp;&nbsp;&nbsp;点击：<%=clicks%>次&nbsp;&nbsp;&nbsp;<span class="news_list_box_ly">作者：<%=author%></span> </div>
    <div class="wap_news_cont">
        <div class="wap_txt link_lan">
            <%=Contents%>
        </div>
    </div>
    <div class="atc_news_tj">
        <div class="atc_news_tj_h1"><span>相关推荐</span></div>
        <div>
            <div class="evaluate_pj_no"><i class="evaluate_pj_no_icon"></i>暂无相关推荐</div>
        </div>
    </div>
   <%-- <a href="javascript:void(0);" id="shareClick" style="display:block; background:#f60;border:1px solid #f60; padding:5px;color:#fff; text-align:center">分享</a>
   --%>
</div>
    <div class="yun_footer">
    <div class="yun_footer_fix">
        <ul class="yun_footer_nav">
            <li>
                <a href="../index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
            </li>
            <li>
                <a href="../position.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
            </li>
            <li>
                <a href="../m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                <%=news%>
            </li>
            <!-- <li>
                <a href="More.html"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>更多</a>
            </li> -->
            <li>
                <a href="../mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
            </li>
        </ul>
    </div>
 </div>
</body>


</html>
