<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_job_view.aspx.cs" Inherits="c_job_view" %>

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
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
	<link rel="stylesheet" href="css/app.css" type="text/css" />
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
                <div class="header_bg  bg3">
                    <a class="hd-lbtn mui-action-back" href="javascript:history.back();"><i class="header_top_l"></i></a>
                    <div class="header_h1">
                        <div class="header_p_z">职位详情</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
<div class="header_navlist">
    <a href="position.aspx" id="jobclick"><i class="naviconfont"></i></a>
</div>
<section>
    <%=notice%>
</section>
<div>
    <%=notice2%>
    <section>
        <div class="com_new_contnet_box  mt15">
            <div class="wap_title"><span class="">任职要求</span></div>
            <ul class="user_contnet_ul user_contnet_ul_wip4">
                <%=notice3%>
            </ul>
        </div>
    </section>
    <section>
        <div class="com_new_contnet_box mt15">
            <div class="wap_title"><span class="">联系方式</span></div>
            <%=contact%>
        </div>
    </section>
    <!-- <section>
        <div class="com_new_contnet_box mt15">
            <div class="wap_title"><span class="">联系方式</span></div>
            <ul class="com_post_msg com_post_msg_touch">
                <li><i class="com_post_msg_touch_icon iconfont_jobshow_teluser"></i>联&nbsp;系 &nbsp;人：谢小姐</li>
                <li class="com_post_msg_tel">
                    <i class="com_post_msg_touch_icon iconfont_jobshow_telip"></i>联系电话：
                    <a href="tel:1372****252" style="color:red;">1372****252</a>
                </li>
            </ul>
            <div class="com_post_login com_post_login_no">
                <div class="com_post_login_no_tip">请登录后查看联系方式 </div>
                <a href="c_login.html" class="com_s_logoin">登录</a>
                <a href="select_login.html" class="com_s_reg">注册</a>
            </div>
        </div>
    </section> -->
    <section>
        <div class="com_new_contnet_box  mt15 muipreview" id="description">
            <div class="wap_title"><span class="">职位描述</span></div>
            <div class="jobshow_content jobshow_content_lh">
                 <p><%=describe%></p>
            </div>
            <div class="jobshow_hr">
                <ul class="job_hr_zk">
                    <li><em class="job_hr_zk_n"><%=delivery%></em>简历投递</li>
                    <li><em class="job_hr_zk_n">100%</em>简历回复率</li>
                    <li><em class="job_hr_zk_n">0</em>简历回复时长</li>
                </ul>
            </div>
        </div>
    </section>

    <%--<section>
        <div class="job_show_tip">
            <div class="job_show_tip_jb">
                <a href="javascript:void(0)" onclick="pleaselogin(&#39;您还未登录个人账号，是否登录？&#39;,&#39;c_login.html&#39;)"><span
                        class="job_show_tip_tip_i"></span>举报</a>
            </div>
            <div class="job_show_tip_p">
                <div class="job_show_tip_p_t">如遇无效、虚假、诈骗信息，请立即举报</div>
                <div>求职过程请勿缴纳费用，谨防诈骗！若信息不实请举报。 </div>
            </div>
        </div>
    </section>--%>

    <section id="job">
        <div class="com_new_contnet_box  mt15">
            <div class="wap_title"><span class="">推荐职位</span></div>
            <%=recommend%>
           
        </div>
    </section>
</div>
<section>
    <div class="yun_job_footer">
        <div class="yun_job_footer_fixed">
            <div class="yun_job_footer_bg">
                <div class="yun_job_footer_fx_left" style="text-align:center">
                    <div class="yun_job_footer_fx">
                         <%=Collection%>
                    </div>
                    <%--<div class="yun_job_footer_fx">
                        <a><i class="iconfont_usershowtel"></i> <span style="color: #d0d0d0;">拨号</span></a>
                    </div>
                    <div class="yun_job_footer_fx">
                        <a href="javascript:void(0);" data-url="" id="shareClick" class=""> <i class="iconfont_jobshare"></i>
                            <span class="yun_job_footer_s">分享</span></a>
                    </div>--%>
                </div>
                <div class="yun_job_footer_fx_right">
                    <asp:Button ID="tdjl" runat="server" Text="投递简历" CssClass="yun_job_footer_fx_right_bth" OnClick="tdjl_Click" />
                </div>
            </div>
        </div>
    </div>
</section>
<!--举报-->
<div style="display:none" id="reportcom">
    <div class="report_box_h1">
        <span class="report_box_h1_s">举报此职位</span>
        <span class="report_box_h1_qx"><input class="" type="button" value="取消" onclick="reportqx();"></span>
    </div>
    <div class="report_box" style="width:320px;">
        <div class="report_job_ly_tip">请选择您的举报理由</div>
        <!--report_job_ly_cur-->
        <span class="report_job_ly" id="r1" onclick="add_reason(1);">电话空号</span>
        <span class="report_job_ly" id="r2" onclick="add_reason(2);">电话没人接</span>
        <span class="report_job_ly" id="r3" onclick="add_reason(3);">工资虚假</span>
        <span class="report_job_ly" id="r4" onclick="add_reason(4);">非法收费</span>
        <span class="report_job_ly" id="r5" onclick="add_reason(5);">职介冒充</span>
        <div class="report_job_ly_tip">备注说明</div>
        <div class="report_job_textarea_box">
            <input id="r_uid" value="1830" type="hidden">
            <input id="id" value="456" type="hidden">
            <input id="r_name" value="广东维佩实业投资有限公司" type="hidden">
            <textarea placeholder="请简明扼要的阐述你的理由，以便工作人员更好的判断" id="r_reason" class="report_job_textarea"></textarea>
        </div>
        <div class="report_job_ly_tip">验证码</div>
        <div class="report_box_yz">
            <input type="text" class="report_box_text" id="authcode" maxlength="6" placeholder="输入图片验证码">
            <img id="vcode_img" src="images/authcode.inc.jpg" class="report_box_yz_img">
            <a onclick="checkCode(&#39;vcode_img&#39;);">看不清?</a>
        </div>
        <div class="report_box_bth"> <input class="login_button_jb" type="button" value="举 报" onclick="reportSub();">
        </div>
    </div>
</div>

<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/pack.js" type="text/javascript"></script>

<script>
    var config = {
        url: 'http://jz.hkpbg.com',
        title: '天天兼职网',
        desc: '',
        img: 'http://jz.hkpbg.com/images/3.jpg',
        img_title: '教师',
        from: '惠州天天兼职网'
    };
    var content = '';

    function reportcom(usertype) {
        if (usertype == 1) {
            content = $("#reportcom").html();
            $("#reportcom").html('');
            layer.open({
                type: 1,
                shadeClose: false,
                content: content
            });
        }
    }

    function add_reason(s) {
        if ($("#r" + s).hasClass('report_job_ly_cur')) {
            $("#r" + s).removeClass('report_job_ly_cur');
        } else {
            $("#r" + s).addClass('report_job_ly_cur');
        }
    }

    function reportqx() {
        $("#reportcom").html(content);
        layer.closeAll();
    }
    function reportSub() {
        var authcode = $("#authcode").val();
        var r1 = $("#r1").html(),
            r2 = $("#r2").html(),
            r3 = $("#r3").html(),
            r4 = $("#r4").html(),
            r5 = $("#r5").html();
        var reason = "理由：";
        if ($("#r1").hasClass('report_job_ly_cur')) {
            var reason = reason + r1 + "，";
        }
        if ($("#r2").hasClass('report_job_ly_cur')) {
            var reason = reason + r2 + "，";
        }
        if ($("#r3").hasClass('report_job_ly_cur')) {
            var reason = reason + r3 + "，";
        }
        if ($("#r4").hasClass('report_job_ly_cur')) {
            var reason = reason + r4 + "，";
        }
        if ($("#r5").hasClass('report_job_ly_cur')) {
            var reason = reason + r5 + "；";
        }

        if (reason == '理由：') {
            layermsg('请选择举报原因！');
            return false;
        }

        var r6 = $("#r_reason").val();

        var reason = reason + r6;

        if (authcode == '') {
            layermsg('请填写验证码！');
            return false;
        }
        layer.closeAll();
        layer_load('执行中，请稍候...');
        $.post(wapurl + "?c=job&a=report", {
            id: '513',
            authcode: authcode,
            reason: reason
        }, function (data) {
            layer.closeAll();
            var data = eval('(' + data + ')');
            if (data.url) {
                layermsg(data.msg, 2, function () {
                    location.href = data.url;
                });
            } else {
                layermsg(data.msg, 2, function () {
                    location.reload();
                });
            }
        });
    }

    function zixun() {
        layer.open({
            type: 1,
            title: '对职位感兴趣？',
            closeBtn: [0, true],
            border: [10, 0.3, '#000', true],
            area: ['300px', '320px'],
            content: '<div class="consultation_box"><textarea class="report_box_textarea mt10" id="reasons" placeholder="您可以提出对该职位的疑问。比如所在地、年薪、福利等等，我会及时给您回复！期待与您合作" 。></textarea><input type="hidden" name="jobid" value="513" /><input type="hidden" name="job_uid" value="62" /><input type="hidden" name="com_name" value="惠州新爱婴早教演达中心" /><input type="hidden" name="job_name" value="教师" /><div class="report_box_yz"><span class="report_box_yz_name">验证码： </span> <input type="text" class="report_box_text" id="authcodes" maxlength="6"><img id="vcode_imgs" src="https://www.zhirimao.com/wap/authcode.inc.php" class="report_box_yz_img"/> <a onclick="checkCode(\'vcode_imgs\');">看不清?</a></div><div class="report_box_bth"><input class="login_button_jb" type="button" value="提交咨询"  onclick="zixunSubs();"/></div></div>'
        });
    }

    function zixunqxs() {
        $("#zixuns").html();
        layer.closeAll();
    }

    function zixunSubs() {
        var authcode = $("#authcodes").val();
        var reason = $("#reasons").val();
        var jobid = $.trim($("input[name='jobid']").val());
        var job_uid = $.trim($("input[name='job_uid']").val());
        var com_name = $.trim($("input[name='com_name']").val());
        var job_name = $.trim($("input[name='job_name']").val());
        if (reason == '') {
            layermsg('请填写咨询内容！');
            return false;
        }
        if (authcode == '') {
            layermsg('请填写验证码！');
            return false;
        }

        layer_load('执行中，请稍候...');
        $.post(wapurl + "?c=job&a=msg", {
            id: '513',
            authcode: authcode,
            reason: reason,
            jobid: jobid,
            job_uid: job_uid,
            com_name: com_name,
            job_name: job_name
        }, function (data) {
            layer.closeAll();
            var data = eval('(' + data + ')');
            if (data.url) {
                layermsg(data.msg, 2, function () {
                    location.href = data.url;
                });
            } else {
                layermsg(data.msg, 2, function () {
                    location.reload();
                });
            }
        });
    }

    function jobapply(jobid) {
        layer_load('执行中，请稍候...');
        $.get(wapurl + "?c=job&a=view&type=sq&id=513", function (data) {
            layer.closeAll();
            var data = eval('(' + data + ')');
            if (data.state == 1) {
                pleaselogin('您还未登录个人账号，是否登录？', 'c_login.html')
            } else if (data.state == 2) {
                notuser('个人账户', '13433598652', '个人账户', '', '513');
            } else if (data.url) {
                if (data.url == '1') {
                    url = location.href;
                }
                layermsg(data.msg, 2, function () {
                    location.href = data.url;
                });
            } else {
                layermsg(data.msg, 2);
            }
        });
    }
    function jobfav(jobid) {
        layer_load('执行中，请稍候...');
        $.get(wapurl + "?c=job&a=view&type=fav&id=513", function (data) {
            layer.closeAll();
            var data = eval('(' + data + ')');
            if (data.state == 1) {
                pleaselogin('您还未登录个人账号，是否登录？', 'c_login.html')
            } else if (data.state == 2) {
                notuser('个人账户', '13433598652', '个人账户', 'c_ajax-a_notuserout.html', '513');
            } else if (data.url) {
                if (data.url == '1') {
                    url = location.href;
                }
                layermsg(data.msg, 2, function () {
                    location.href = data.url;
                });
            } else {
                layermsg(data.msg, 2, function () {
                    location.reload();
                });
            }
        })
    };
    function checkshenming() {
        $('#shenming').hide();
        $("#smtext").show();
    }
    function subsm(id) {
        var shenming = $("#smname").val();
        $.post(wapurl + "?c=job&a=shenming", {
            id: id,
            shenming: shenming
        }, function (data) {
            if (data) {
                location.reload();
            }
        });
    }
</script>
<!--微信分享专用---->
<div style="margin:0 auto;width:0px;height:0px;overflow:hidden;"><img src="images/15196434684.JPG"></div>
<link rel="stylesheet" href="css/mui.previewimage.css" type="text/css">
<script src="js/mui.min.js" language="javascript"></script>
<script src="js/mui.zoom.js" language="javascript"></script>
<script src="js/mui.previewimage.js" language="javascript"></script>
<script>
$(function () {
//企业详情页
$(".muipreview").find('img').each(function () {
    $(this).attr('data-preview-src', '');
    $(this).attr('data-preview-group', '1');
});
mui.previewImage();
})
</script>
<!----如果是微信登录，引导微信自有分享------>
<script src="js/nativeshare.js" language="javascript"></script>
<link rel="stylesheet" href="css/nativeshare.css" type="text/css">
<!----如果是UC QQ浏览器，弹出分享界面------>
<script src="js/appshare.js" type="text/javascript"></script>
<div id="nativeShare"></div>
<script language="javascript">
    if (navigator.userAgent.indexOf('Html5Plus') > -1) {
        var shares = null;
        // 监听plusready事件  
        document.addEventListener("plusready", function () {
            document.getElementById("shareClick").addEventListener("click", function () {
                var message = {
                    title: '惠州天天兼职网',
                    content: '惠州天天兼职网',
                    href: '',
                    thumbs: ["http://jz.hkpbg.com/images/14906489056.PNG"] //分享缩略图
                }
                plusShare(message, function (res) {
                    if (res) {
                        plus.nativeUI.toast("分享成功");
                    } else {
                        plus.nativeUI.toast("分享失败");
                    }
                })
            });
        });
    } else {
        $(function () {
            $('#shareClick').click('click', function () {
                new nativeShare('nativeShare', config);
            });
            $('#otherBrowser').click(function () {
                $(this).hide();
            });
            $('#nativeShare').click(function (evt) {
                if ($(evt.target).parents(".share_bgbox").length == 0) {
                    $(this).hide();
                }
            });
        });
    }
</script>

<!--登录浮动底部-->
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
