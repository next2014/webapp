<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_accountSet.aspx.cs" Inherits="m_accountSet" %>

!DOCTYPE html>
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
    <link rel="stylesheet" href="css/mui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/mui.picker.css" type="text/css" />
    <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css" />
    <link rel="stylesheet" href="css/css.css" type="text/css" />
    <link rel="stylesheet" href="css/job.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="styleSheet" href="css/layer.css" type="text/css" id="layermcss">
    <link rel="stylesheet" href="css/swiper.min.css" type="text/css" />
    <link rel="stylesheet" href="css/demo.css" type="text/css">
	<link rel="stylesheet" href="css/wap_tck.css" type="text/css">
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css">
</head>
    
<script charset="utf-8" src="js/s.js" language="javascript"></script>
<script src="js/hm.js" language="javascript"></script>
<script src="js/push.js" language="javascript"></script>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/mui.min.js " language="javascript "></script>
<script src="js/mui.picker.js " language="javascript "></script>
<script src="js/mui.poppicker.js " language="javascript "></script>
<script src="js/forgetpw.js " language="javascript "></script>
<script src="js/reg_ajax.js" charset="utf-8" language="javascript"></script>
<script src="js/gt.js " language="javascript"></script>
<script src="js/mobile.js " type="text/javascript "></script>
<script src="js/swiper.js"></script>
<script src="js/search.js" language="javascript"></script>
<script src="js/demo.js" language="javascript"></script>
<script src="js/mui.min.js" language="javascript"></script>
<script src="js/mui.view.js" language="javascript"></script>
<script src="js/binding.js" language="javascript"></script>
<script src="js/compress.js" language="javascript"></script>
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <form runat="server">
    <!-- Content area -->
<div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_userbg bg3">
                    <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                    <div class="header_h1">账户设置</div>
                </div>
            </div>
        </div>
    </header>
    <!--账号设置-->
    <div class="yunset_box">
        <a href="m_info.aspx" class="yunset_box_photo">
            <img src="<%=Src%>" border="0" />
            <div class=""><%=Name%></div>
            <div class="yunset_box_info">完善基本资料</div>
        </a>
    </div>
    <ul class="yunset mt15">
        <li>
            <a href="yz_idcard.aspx">实名认证 <span class="yunset_tip"><%=yzidcard%></span></a>
        </li>
    </ul>
    <ul class="yunset mt15">
        <li class="yunset_yx">
            <a href="yz_moblie.aspx">
                <span class="yunset_list_maxheight">手机</span>
                <span class="yunset_tip ">（未绑定）<%=Name%> <div class=""> 手机用于登录和找回密码请谨慎填写</div></span>
            </a>
        </li>
        <li class="yunset_yx">
            <a href="yz_email.aspx">
                <span class="yunset_list_maxheight">邮箱</span>
                <span class="yunset_tip ">（未绑定）<div class=""> 邮箱用于登录和找回密码请谨慎填写</div></span>
            </a>
        </li>
       <%-- <li><a href="">社交账号绑定</a></li>--%>
    </ul>
    <%--<ul class="yunset mt15">
        <li><a href="#">隐私设置</a></li>
    </ul>--%>
    <ul class="yunset mt15">
        <li><a href="c_password.aspx">密码设置</a></li>
        <%--<li><a href="#">用户名修改 <div class="yunset_tip ">您有一次修改账户名的机会</div></a></li>
        <li><a href="#">求助反馈</a></li>--%>
    </ul>
    <div class="yunset_logout mt15">
        <a href="javascript:;" onclick="islogout('m_accountSet.aspx?tc=1','确认退出吗？');">退出登录</a>
<%--        <asp:Button ID="Button1" runat="server" Text="退出登录" OnClick="lk1_Click" />--%>
    </div>

</div>
    <!--footer start-->
<div class="yun_footer">
    <div class="yun_footer_fix">
        <ul class="yun_footer_nav">
            <li>
                <a href="index.aspx" id="indexclick"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
            </li>
            <li>
                <a href="c_part.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
            </li>
            <li>
                <a href="m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                <%=news%>
            </li>
            <li>
                <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
            </li>
        </ul>
    </div>
 </div>
<!--footer end-->
        </form>
</body>


</html>
