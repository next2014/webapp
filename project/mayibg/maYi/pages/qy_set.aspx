<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_set.aspx.cs" Inherits="pages_qy_set" %>

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
        <div class="header_h1">账户设置</div>
    </div>
</header>
<!--账号设置-->
<a href="qy_info.aspx" class="yunset_box_cominfo">
    <img src="../<%=Src%>">
    <div class=""><%=Name%></div>
    <div class="yunset_box_info">完善企业基本资料</div>
</a>

<ul class="yunset mt15">
    <li>
        <a href="qy_comcert.aspx">营业执照认证 <span class="yunset_tip"><%=comcert%></span> </a>
    </li>
</ul>
<ul class="yunset mt15">
    <li class="yunset_yx">
        <a href="qy_moblie.aspx">
            <span class="yunset_list_maxheight">手机</span>
            <span class="yunset_tip">
                <div class="yunset_yx_name">
                    <%=moblie%>
                </div>
                手机用于登录和找回密码请谨慎填写
            </span>
        </a>
    </li>

    <li class="yunset_yx">
        <a href="qy_email.aspx">
            <span class="yunset_list_maxheight">邮箱</span>
            <span class="yunset_tip ">
                <div class="yunset_yx_name">
                    <%=email%>
                </div>
                邮箱用于登录和找回密码请谨慎填写
            </span>
        </a>
    </li>
    <%--<li>
        <a href="c_binding.html">社交账号绑定</a>
    </li>--%>
</ul>

<%--<ul class="yunset mt15">
    <li>
        <a href="#">企业设置地图
            <span class="yunset_tip">已设置</span>
        </a>
    </li>
    <li>
        <a href="#">上传企业环境</a>
    </li>
</ul>--%>
<ul class="yunset mt15">
    <li>
        <a href="qy_password.aspx">密码设置</a>
    </li>
  <%--  <li>
        <a href="#">用户名修改
            <div class="yunset_tip ">您有一次修改账户名的机会</div></a>
    </li>
    <li>
        <a href="#">意见反馈</a>
    </li>--%>
</ul>
<div class="yunset_logout mt15">
    <a href="javascript:;" onclick="islogout('qy_set.aspx?tc=1','确认退出吗？');">退出登录</a>
</div>
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

