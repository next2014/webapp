<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mine.aspx.cs" Inherits="mine" %>

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
    <!-- Content area -->
<div class="body_wap">
    <div class="yun_usermember_topbg">
        <span class="yun_com_member_index_set">
            <a class="yun_com_member_index_set_icon" href="m_accountSet.aspx"></a>
        </span>
        <a class="yun_user_membersysnews" href="m_news.aspx"><%=newsa%></a>
    </div>
    <div class="yun_usermember_info">
        <div class="yun_usermember_info_box">
            <div class="yun_usermember_info_box_c">
                <div class="yun_usermember_info_cont">
                    <%--<div class="yun_usermember_qd">
                        <a href="javascript:void(0);" onclick="sign();"><span class="yun_usermember_qdbth">签到</span></a>
                    </div>--%>
                    <div class="yun_usermember_info_photo">
                        <a href="m_photoEdit.aspx">
                            <img src="<%=src%>" border="0">
                        </a>
                    </div>
                    <!-- 账户设置 -->
                    <a href="m_accountSet.aspx">
                        <div class="yun_usermember_info_name"><%=name%></div>
                    </a>
                    <div class="yun_usermember_info_rz">
                        <a href="yz_moblie.aspx"><span class="yun_usermember_info_rz_s"><i class="rz_icon rz_iconsj"></i>未认证</span></a>
                        <a href="yz_email.aspx"><span class="yun_usermember_info_rz_s "><i class="rz_icon rz_iconyx"></i>未绑定</span></a>
                        <a href="yz_idcard.aspx"> <span class="yun_usermember_info_rz_s "><i class="rz_icon rz_iconsm"></i><%=yz_idcard%></span></a>
                    </div>
                </div>
                <ul class="yun_usermember_tj">
                    <li><a href="m_interview.aspx"><span class="yun_usermember_tj_n" id="yqnum"><%=Interview%></span> 面试通知</a></li>
                    <li><a href="m_appRecord.aspx"><span class="yun_usermember_tj_n" id="sq_jobnum"><%=apply%></span> 申请记录</a></li>
                    <li><a href="m_collecRecord.aspx"><span class="yun_usermember_tj_n" id="fav_jobnum"><%=Collection%></span> 收藏记录</a></li>
                </ul>
            </div>
        </div>
    </div>
    <ul class="yun_usermember_nav">
        <li>
            <a href="resume.aspx"><i class="yun_usermember_nav_icon"></i>简历管理</a>
        </li>
        <li>
            <a href="m_info.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconinfo"></i>基本资料<span class="yun_mnav_tip">完善基本资料</span></a>
        </li>
    </ul>
    <ul class="yun_usermember_nav">
        <li>
            <a href="m_jobcolumn.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconjob"></i>职位管理</a>
        </li>
        <li>
            <a href="m_collecRecord.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconsc"></i>收藏&amp;关注</a>
        </li>
        <li>
            <a href="m_PartTime.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconjz"></i>兼职管理</a>
        </li>
       <%-- <li>
            <a href="m_BountyPosition.html"><i class="yun_usermember_nav_icon yun_usermember_nav_iconsj"></i>赏金职位</a>
        </li>--%>
    </ul>
    <%--<ul class="yun_usermember_nav">
        <li>
            <a href="m_financial.html"><i class="yun_usermember_nav_icon yun_usermember_nav_iconcw"></i>财务管理</a>
        </li>
    </ul>--%>
    <ul class="yun_usermember_nav" style="padding-bottom:20px;">
        <li>
            <a href="m_accountSet.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconzh"></i>账户设置</a>
        </li>
    </ul>

    <!--编辑基本信息引导匡-->
    <div id="yingdaoone" style="width:100%;height:100%; background:rgba(51,51,51,0.6); position:fixed;left:0px;top:0px; z-index:100000;display:none;">
        <div style="width:100%; position:absolute;left:0px;top:140px;">
            <div style="padding:20px;">
                <div class="index_yd_box">
                    <div class="index_yd_box_h1">亲，你还没有填写基本信息</div>
                    <div class="user_resume_index_tip_p">
                        <a href="" class="user_resume_index_tip_sub">编辑</a>
                    </div>
                    <div class="user_resume_index_tip_p2">
                        <a href="javascript:Close_yd(&#39;yingdaoone&#39;);" class="user_resume_index_tip_p2_a">下次再说</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        function Close_yd(id) {
            $("#" + id).hide();
        }
        mui.init({
            swipeBack: true //启用右滑关闭功能
        });
        //简历刷新
        if (document.getElementById("refresh")) {
            document.getElementById("refresh").addEventListener('tap', function () {
                $.get(wapurl + "member/index.php?c=resumeset&update=1078", function (data) {
                    layermsg(data ? '刷新成功！' : '刷新失败！', 2, function () {
                        mui.openWindow({
                            url: wapurl + "member/",
                        });
                    });
                });
            });
        }
        function fidcard() {
            layermsg('请先完成身份认证！', 2, function () {
                location.href = 'index.php?c=idcard';
            });
        }
    </script>
    <!--footer start-->
<div class="yun_footer">
    <div class="yun_footer_fix">
        <ul class="yun_footer_nav">
            <li >
                <a href="index.aspx" id="indexclick"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
            </li>
            <li>
                <a href="c_part.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
            </li>
            <li>
                <a href="m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                  <%=news%>
            </li>
            <li class="yun_footer_nav_cur">
                <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
            </li>
        </ul>
    </div>
 </div>
<!--footer end-->
</body>
</html>
