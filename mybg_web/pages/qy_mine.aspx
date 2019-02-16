<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_mine.aspx.cs" Inherits="pages_qy_mine" %>

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
   <%-- <div class="header_bg bg3">
        <a class="hd-lbtn " href=""><i class="header_top_l iconfont"></i></a>
        <div class="header_h1"></div>
    </div>--%>
</header>

<div class="yun_com_member">
    <i class="yun_com_member_bg1"></i>
    <div class="yun_com_member_index_t">
        <span class="yun_com_member_index_set"><a class="yun_com_member_index_set_icon" href="qy_set.aspx"></a></span>
        <span class="yun_com_member_index_msg"><a class="yun_com_membersysnews" href="qy_news.aspx"><%=newa%></a></span>
        <!-- <a class="yun_com_member_index_qd"><span class="yun_com_member_index_qd_s">已签到</span></a> -->
    </div>
    <div class="yun_com_member_indexinfo">
        <div class="yun_com_member_indexinfo_logo">
            <a href="qy_photoEdit.aspx"><img src="../<%=Src%>" onerror="showImgDelay(this,&#39;../images/14906489056.PNG&#39;,2);"></a>
        </div>
        <div class="yun_com_member_comname"> <%=name%>
            <a href="<%=preview%>" class="yun_com_member_comlook">预览</a>
        </div>
        <div class="">
            <a class="yun_com_member_comrz" href="qy_moblie.aspx"><i class="yun_com_member_comrz_icon yun_com_member_comrz_iconsj"></i>未认证
            </a> <a class="yun_com_member_comrz" href="qy_email.aspx"><i class="yun_com_member_comrz_icon yun_com_member_comrz_iconyx"></i>未绑定</a>
            <a class="yun_com_member_comrz" href="qy_comcert.aspx"><i class="yun_com_member_comrz_icon yun_com_member_comrz_iconzz"></i><%=comcert%></a>
        </div>
    </div>
    <div class="yun_com_member_indexfw">
        我的服务：普通用户
        <!-- <span>&nbsp;<a href="c_rating.html" style="color:#FF0">升级</a></span>
        <div class="yun_com_member_indexfw_jf">可用积分：43点</div>
        <a href="qy_pay.html" class="yun_com_member_indexczbth">充值</a>
        <a href="qy_integral.html" class="yun_com_member_indexzjf">赚积分</a> -->
    </div>
</div>
<section>
    <div class="m_index_msg">
        <dl class="m_index_msg_list">
            <a href="qy_hr.aspx"><dt id="sqnum"><%=Application%></dt>
                <dd>应聘简历</dd>
            </a>
        </dl>
        <dl class="m_index_msg_list">
            <a href="qy_part.aspx"><dt id="companyjobnum"><%=recruit%></dt>
                <dd>招聘中的职位</dd>
            </a>
        </dl>
        <dl class="m_index_msg_list">
            <a href="qy_talentPool.aspx"><dt id="talent_pool_num"><%=RCollection%></dt>
                <dd>简历收藏</dd>
            </a>
        </dl>
    </div>
</section>
<div class="clear"></div>
<div class="clear"></div>
<ul class="yun_usermember_kj">
    <li>
        <a href="qy_partadd.aspx" class="yun_usermember_kj_a"><i class="yun_usermember_kj_fb"></i>发布职位</a>
    </li>
    <li>
        <a href="qy_mine.aspx" class="yun_usermember_kj_a yun_usermember_kj_a_cur">
            <i class="yun_usermember_kj_sx"></i>刷新职位 <input type="hidden" id="refreshjobids" value=""></a>
    </li>
</ul>
<div class="clear"></div>
<ul class="yun_usermember_nav">
    <li>
        <a href="qy_jobcolumn.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconjob"></i>职位管理<span class="yun_mnav_tip">发布职位</span></a>
    </li>
    <%-- <li>
        <a href="qy_job.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconjob"></i>职位管理<span class="yun_mnav_tip">发布职位</span></a>
    </li>--%>
    <li>
        <a href="qy_resumecolumn.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconjl"></i>简历管理<span class="yun_mnav_tip">应聘简历</span></a>
    </li>
    <li>
        <a href="qy_info.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconinfo"></i>基本资料<span class="yun_mnav_tip">完善企业基本资料</span></a>
    </li>
</ul>
<%-- <ul class="yun_usermember_nav">
    <li>
        <a href="qy_rating.html"><i class="yun_usermember_nav_icon yun_usermember_nav_iconhy"></i>购买会员<span class="yun_mnav_tip">快速招聘</span></a>
    </li>
    <li>
        <a href="qy_finance.html"><i class="yun_usermember_nav_icon yun_usermember_nav_iconcw"></i>财务管理<span class="yun_mnav_tip">充值/明细</span></a>
    </li>
</ul>--%>
<%--<ul class="yun_usermember_nav">
</ul>--%>
<ul class="yun_usermember_nav">
    <li>
        <a href="qy_set.aspx"><i class="yun_usermember_nav_icon yun_usermember_nav_iconzh"></i>账户设置</a>
    </li>
    <%--<li onclick="gwshow()">
        <a href="javascript:void(0)"><i class="yun_usermember_nav_icon yun_usermember_nav_iconkf"></i>专属客服服务</a>
    </li>--%>
</ul>
<div class="clear"></div>
<div class="index_section">
    <section class="wap_member">
        <div class="wap_member_mrecord">
        </div>
    </section>
</div> 
<!--编辑基本信息引导匡-->
<div id="yingdaoone" style="width:100%;height:100%; background:rgba(51,51,51,0.6); position:fixed;left:0px;top:0px; z-index:100000;display:none;">
    <div style="width:100%; position:absolute;left:0px;top:140px;">
        <div style="padding:20px;">
            <div class="index_yd_box">
                <div class="index_yd_box_h1">亲，你还没有填写基本信息</div>
                <div class="user_resume_index_tip_p">
                    <a href="qy_info.html" class="user_resume_index_tip_sub">编辑</a>
                </div>
                <div class="user_resume_index_tip_p2">
                    <a href="javascript:Close_yd(&#39;yingdaoone&#39;);" class="user_resume_index_tip_p2_a">下次再说</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <div id="updaterating" style="width:100%;height:100%; background:rgba(51,51,51,0.6); position:fixed;left:0px;top:0px; z-index:100000;  display: none;  ">
    <div style="width:100%; position:absolute;left:0px;top:140px;">
        <div style="padding:20px;">
            <div class="index_yd_box">
                <div class="index_yd_box_h1">尊敬的企业用户，您好！<br>您的会员已到期，请先升级会员！</div>
                <div class="user_resume_index_tip_p">
                    <a href="qy_rating.html" class="user_resume_index_tip_sub">升级</a>
                </div>
                <div class="user_resume_index_tip_p2">
                    <a href="javascript:Close_yd(&#39;updaterating&#39;);" class="user_resume_index_tip_p2_a">下次再说</a>
                </div>
            </div>
        </div>
    </div>
</div> -->
<!--验证营业执照引导匡-->
<div id="yingdaothree" style="width:100%;height:100%; background:rgba(51,51,51,0.6); position:fixed;left:0px;top:0px; z-index:100000;display:none;">
    <div style="width:100%; position:absolute;left:0px;top:140px;">
        <div style="padding:20px;">
            <div class="index_yd_box">
                <div class="index_yd_box_h1">亲，你还没有验证营业执照</div>
                <div class="user_resume_index_tip_p">
                    <a href="qy_comcert.html" class="user_resume_index_tip_sub">验证</a>
                </div>
                <div class="user_resume_index_tip_p2">
                    <a href="javascript:Close_yd(&#39;yingdaothree&#39;);" class="user_resume_index_tip_p2_a">下次再说</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function Close_yd(id) {
        $("#" + id).hide();
    }
    //加减乘除
    function accAdd(arg1, arg2) {
        var r1, r2, m;
        try {
            r1 = arg1.toString().split(".")[1].length
        } catch (e) {
            r1 = 0
        }
        try {
            r2 = arg2.toString().split(".")[1].length
        } catch (e) {
            r2 = 0
        }
        m = Math.pow(10, Math.max(r1, r2))
        return (arg1 * m + arg2 * m) / m
    }

    function accSub(arg1, arg2) {
        return accAdd(arg1, -arg2);
    }

    function accMul(arg1, arg2) {
        var m = 0,
            s1 = arg1.toString(),
            s2 = arg2.toString();
        try {
            m += s1.split(".")[1].length
        } catch (e) { }
        try {
            m += s2.split(".")[1].length
        } catch (e) { }
        return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m)
    }

    function accDiv(arg1, arg2) {
        var t1 = 0,
            t2 = 0,
            r1, r2;
        try {
            t1 = arg1.toString().split(".")[1].length
        } catch (e) { }
        try {
            t2 = arg2.toString().split(".")[1].length
        } catch (e) { }
        with (Math) {
            r1 = Number(arg1.toString().replace(".", ""));
            r2 = Number(arg2.toString().replace(".", ""));
            return (r1 / r2) * pow(10, t2 - t1);
        }
    }

    function RefreshAll(id) {
        var weburl = '';
        var ajaxUrl = weburl + "member/index.php?c=ajax_refresh_job";
        var integral = '2';

        if (id == "") {
            layermsg("您暂无发布中的职位！", 2, function () {
                window.location.href = weburl + "member/index.php?c=job&type=1&w=1";
            });
            return false;
        } else {
            var chk_value = [];
            chk_value = id.split(",");
            $("#refreshjobids").val(chk_value);
            var jobid = $("#refreshjobids").val();
            var breakjob_num = '1';
            var sxdj = '2';
            var online = '1';
            var pro = '5';

            var num = accSub(chk_value.length, breakjob_num);
            var sxneed = accMul(sxdj, num);
            var inter = integral * pro;
            var sxintegral = accMul(inter, num);
            $.post(ajaxUrl, {
                jobid: jobid
            }, function (data) {
                data = eval('(' + data + ')');
                if (data.error == 1) {
                    layermsg(data.msg, 2, 9, function () {
                        window.location.href = '';
                    });
                } else if (data.error == 2) {
                    if (online == 3) {
                        layer.open({
                            content: "您的等级特权已用完，继续操作将消费" + sxintegral + "积分，是否继续？",
                            btn: ['继续', '取消'],
                            shadeClose: false,
                            yes: function () {
                                window.location.href = "index.php?c=getserver&ids=" + id + "&server=" + 5;;
                            }
                        });
                    } else {
                        layer.open({
                            content: "您的等级特权已用完，继续操作将消费" + sxneed + "元，是否继续？",
                            btn: ['继续', '取消'],
                            shadeClose: false,
                            yes: function () {
                                window.location.href = "index.php?c=getserver&ids=" + id + "&server=" + 5;;
                            }
                        });
                    }
                } else {
                    if (data.url) {
                        layermsg(data.msg, 2, function () {
                            location.href = "index.php?c=rating"
                        });
                    } else {
                        layermsg(data.msg, 2, 8);
                    }
                }
            });
        }
    }
</script>
<div id="hm_t_undefined" class="hm-t-container">
    <div class="hm-t-go-top" style="display: none;"></div>
</div>
    <div class="yun_footer">
        <div class="yun_footer_fix">
            <ul class="yun_footer_nav">
                <li>
                    <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home_cur"></i>首页</a>
                </li>
                <li>
                    <a href="qy_resume.aspx"><i class="yun_footer_nav_icon yun_footer_nav_jl"></i>简历</a>
                </li>
                <li>
                    <a href="qy_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                     <%=news%>
                </li>
                <li class="yun_footer_nav_cur">
                    <a href="qy_mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                </li>
            </ul>
        </div>
     </div>
</body>
</html>