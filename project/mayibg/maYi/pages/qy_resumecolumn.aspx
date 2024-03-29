﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_resumecolumn.aspx.cs" Inherits="pages_qy_resumecolumn" %>

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
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <header>
    <div class="header_bg bg3">
        <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
        <div class="header_h1">简历管理</div>
    </div>
</header>
<ul class="yunset mt15">
    <li>
        <a href="qy_hr.aspx">应聘简历<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有<%=Ypjl%>条</span></a>
    </li>
    <li>
        <a href="qy_invite.aspx">面试邀请<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有<%=Msyq%>条</span></a>
    </li>
    <%--<li>
        <a href="qy_lookResume.aspx">浏览简历<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有6条</span></a>
    </li>--%>

    <li>
        <a href="qy_talentPool.aspx">收藏简历<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有<%=Scjl%>条</span></a>
    </li>
    <!-- <li>
        <a href="qy_down.html">下载简历<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有0条</span></a>
    </li> -->
</ul>
<%--<ul class="yunset mt15">
    <li>
        <a href="qy_attentionMe.aspx">关注我的人才<span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有0条</span></a>
    </li>
    <li>
        <a href="qy_lookjob.aspx">被浏览的职位 <span class="yunset_list_newmsg"></span><span class="yun_mnav_tip">有0条</span></a>
    </li>
</ul>--%>
<ul class="yunset mt15">
    <li>
        <a href="qy_resume.aspx">搜人才</a>
    </li>
</ul>
    <div class="yun_footer">
        <div class="yun_footer_fix">
            <ul class="yun_footer_nav">
                <li class="yun_footer_nav_cur">
                    <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home_cur"></i>首页</a>
                </li>
                <li>
                    <a href="qy_resume.aspx"><i class="yun_footer_nav_icon yun_footer_nav_jl"></i>简历</a>
                </li>
                <li>
                    <a href="qy_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                     <%=news%>
                </li>
                <li>
                    <a href="qy_mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                </li>
            </ul>
        </div>
     </div>
</body>
</html>

