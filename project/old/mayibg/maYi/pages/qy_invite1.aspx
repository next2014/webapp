<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_invite1.aspx.cs" Inherits="pages_qy_invite1" %>

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
<script src="../js/layer.m.js" language="javascript"></script>
<script src="../js/public.js" language="javascript"></script>
<script src="../js/prefixfree.min.js" language="javascript"></script>
<script src="../js/mui.min.js" language="javascript"></script>
<script src="../js/mui.picker.min.js" language="javascript"></script>
<script src="../js/mui.poppicker.js" language="javascript"></script>
<script src="../js/pack.js" type="text/javascript"></script>
<script src="../js/forgetpw.js" language="javascript "></script>
<script src="../js/reg_ajax.js" charset="utf-8" language="javascript"></script>
<script src="../js/gt.js" language="javascript"></script>
<script src="../js/mobile.js" type="text/javascript "></script>
<script src="../js/swiper.js"></script>
<script src="../js/search.js" language="javascript"></script>
<script src="../js/demo.js" language="javascript"></script>
<script src="../js/mui.view.js" language="javascript"></script>
<script src="../js/binding.js" language="javascript"></script>
<script src="../js/compress.js" language="javascript"></script>



</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <form runat="server">
    <div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_bg  bg3">
                    <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l"></i></a>
                    <div class="header_h1">
                        <div class="header_p_z"> 面试邀请</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
<link rel="stylesheet" href="../css/mui.picker.min.css" type="text/css" />
<input name="uid" id="uid" value="108" type="hidden">
    <div class="invite_box">
        <div class="invite_box_c">
            <div class="invite_box_user">
                <div class="invite_box_userpic">
                    <img src="../images/14922051316.PNG" width="50" height="50">
                </div>
                <div class="invite_box_username"><%=Name%></div>
                 <input type="hidden" id="username" name="username" value="" runat="server">
                <div class="invite_box_userwant">TA想要找<font color="#f00"><%=Hy%></font> 工作</div>
            </div>
            <div class="invite_box_about">
                <div class="invite_box_list">
                    <i class="invite_box_job_icon"></i>
                    <span class="invite_box_list_name">面试职位</span>
                    <div class="yun_newwap_text_box">
                        <button id="interjobPicker" class="mui-btn mui-btn-block" type="button" runat="server">
                            请选择面试职位
                        </button>
                        <input type="hidden" id="jobname" name="jobname" value="" runat="server">
                         <input type="hidden" id="zwlx" name="zwlx" value="" runat="server">
                    </div>
                </div>
                <div class="invite_box_list">
                    <i class="invite_box_time_icon"></i>
                    <span class="invite_box_list_name">面试时间</span>
                    <div class="yun_newwap_text_box">
                        <button id='intertimePicker' style="border:none" type="button">请选择面试时间</button>
                        <input type="hidden" id="intertime" name="intertime" value="" runat="server">
                    </div>
                </div>
            </div>
            <div class="invite_box_dz">
                <i class="invite_box_add_icon"></i>
                <span class="invite_box_list_name">面试地址</span>
                <div class="invite_box_dz_box">

                    <input id='address' type="text" value='' class="job_invite_text" placeholder="请填写面试地址" runat="server">
                </div>
            </div>
            <div class="invite_box_bc"> <i class="invite_box_sm_icon"></i>面试备注：( 选填 )</div>
            <div class="invite_box_bc_box">
                <textarea id="content" class="job_invite_textarea" placeholder="请输入面试备注 " runat="server"></textarea>
            </div>
        </div>
        <div class="invite_box_tel_box">
            <div class="invite_box_tel">
                <i class="invite_box_pop_icon"></i>
                <span class="invite_box_list_name">联系人</span>
                <input type="text" id="linkman"  class="job_invite_text" placeholder="请填写联系人" runat="server"> </div>
            <div class="invite_box_tel">
                <i class="invite_box_tel_icon"></i>
                <span class="invite_box_list_name">联系电话</span>
                <input type="text" id="linktel"  class="job_invite_text" placeholder="请填写联系电话" runat="server"> </div>
            <div class="yun_newwap_bth mt10">
                <%--<button id="click_invite" type="button" class="mui-btn mui-btn-block mui-btn-primary">发布面试邀请</button>--%>
                <asp:Button ID="click_invite1" runat="server" CssClass="mui-btn mui-btn-block mui-btn-primary" Text="发布面试邀请" OnClick="tdjl_Click" />
            </div>
        </div>
    </div>
        </form>
<%=Js%>
  <%--  <script>mui.init(); var interjobData = []; interjobData.push({ value: '0', text: '销售员', zwlx: '1' }); interjobData.push({ value: '1', text: '市场专员', zwlx: '1' }); interjobData.push({ value: '2', text: '教师', zwlx: '1' });</script>--%>

<script src="../js/publicselect.js" language="javascript"></script>
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
