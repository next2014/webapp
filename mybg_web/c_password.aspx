<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_password.aspx.cs" Inherits="c_password" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>蚂蚁帮工
    </title>
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
        <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
        <link rel="stylesheet" href="css/app.css" type="text/css" />
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
    </head>

    <script charset="utf-8" src="js/s.js" language="javascript"></script>
    <script src="js/hm.js" language="javascript"></script>
    <script src="js/push.js" language="javascript"></script>
    <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="js/prefixfree.min.js" language="javascript"></script>
    <script src="js/pack.js" type="text/javascript"></script>
    <script src="js/layer.m.js" language="javascript"></script>
    <script src="js/public.js" language="javascript"></script>
    <script src="js/mui.min.js" language="javascript "></script>
    <script src="js/mui.picker.js" language="javascript "></script>
    <script src="js/mui.poppicker.js" language="javascript "></script>
    <script src="js/forgetpw.js" language="javascript "></script>
    <script src="js/reg_ajax.js" charset="utf-8" language="javascript"></script>
    <script src="js/gt.js" language="javascript"></script>
    <script src="js/mobile.js" type="text/javascript "></script>
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
    <div class="body_wap">
        <header class="header_h">
            <div class="header_fixed">
                <div class="header">
                    <div class="header_userbg bg3">
                        <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                        <div class="header_h1">密码设置</div>
                    </div>
                </div>
            </div>
        </header>
        <section class="wap_member">
            <div class="mui-collapse-content">
                <ul class="yunset_password mt15">
                        <li><span class="yunset_password_mname">原密码</span>
                            <div class="mui-input-row">
                                <input type="password" id="password" class="mui-input-password" placeholder="请输原入密码" runat="server">
                            </div>
                        </li>
                        <li><span class="yunset_password_mname">新密码</span>
                            <div class="mui-input-row">
                                <input type="password" class="mui-input-password" id="passwordnew" placeholder="请输新入密码" runat="server">
                            </div>
                        </li>
                        <li><span class="yunset_password_mname">确认密码</span>
                            <div class="mui-input-row">
                                <input type="password" class="mui-input-password" id="passwordconfirm" placeholder="请重复新密码" runat="server">
                            </div>
                        </li>
                        <div class="yunset_bth_box">
                            <%--<button class="mui-btn mui-btn-primary" type="button" onclick="savepwd();">确认</button>--%>
                            <asp:Button ID="Button1" runat="server" Text="确认" CssClass="mui-btn mui-btn-block mui-btn-primary" OnClick="Button1_Click" Height="40px" />
                            &nbsp;&nbsp;
                        </div>
                </ul>
            </div>
        </section>
    </div>
    <div class="yun_footer">
        <div class="yun_footer_fix">
            <ul class="yun_footer_nav">
                <li>
                    <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
                </li>
                <li>
                    <a href="c_part.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
                </li>
                <li>
                    <a href="m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                     <%=news%>
                </li>
                <!-- <li>
                <a href="More.html"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>更多</a>
            </li> -->
                <li>
                    <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                </li>
            </ul>
        </div>
    </div>
        </form>
</body>


</html>
