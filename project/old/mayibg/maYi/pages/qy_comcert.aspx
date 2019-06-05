<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_comcert.aspx.cs" Inherits="pages_qy_comcert" %>

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
    <form runat="server" method='post' enctype="multipart/form-data">
    <div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_userbg bg3">
                    <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                    <div class="header_h1">营业执照</div>
                </div>
            </div>
        </div>
    </header>
        <div class="yun_com_msg"><%=qualifications%></div>
        <ul class="yunset_password mt15">
            <li><span class="yunset_password_mname">企业全名</span> <input type="text" id="name" name="name" value="" class="yunset_text" runat="server"></li>
        </ul>
        <div class="yunset_identity_box">
            <div class="yunset_identity" style="height:260px">
                <div align="center" class="yunset_identity_pic_img" id="previewshow">
                    <img src="../<%=Src%>" id="previewimg">
                </div>
                <div class="yunset_identity_pic">
      <%--              <i class="yunset_identity_pic_tj"></i>--%>
                    <input type="file" name="file" id="file"  onchange="previewImage(this,&#39;preview&#39;)" accept="image/*"
                        class="yunset_identity_pic_file">
                   <%-- <input type="hidden" name="preview" value="" id="preview">--%>
                </div>
                <div class="yunset_identity_tip">上传营业执照</div>
                <span class="yunset_identity_tip_a">选择上传图片</span>
                <div class="yunset_identity_tip_c" style="padding-top:10px;">营业执照中的文字、图片、章印等需清晰可辨别，否则不能通过认证。 </div>
            </div>
        </div>
        <div class="yunset_identity_msg"><i class="yunset_identity_msg_icon"></i>格式为 jpg,png,jpeg,bmp,gif不得超过5M</div>
        <div class="yunset_bth_box">
       <%--     <input type="hidden" name="eid" id="eid" value="">--%>
            <asp:Button ID="Button1" runat="server" CssClass="yunset_bth" Text="提交" OnClick="Button1_Click" />
        </div>
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
        </form>
</body>
</html>

