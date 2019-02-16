<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_login.aspx.cs" Inherits="c_login" EnableEventValidation="false"  %>

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
                        <div class="header_p_z"> 会员登录</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
<div class="login_body">
    <a href="selectLogin.html" class="login_reg"><span class="login_reg_s1">注册</span></a>
    <section class="list">
        <article>

            <div class="login_box_h1_d">
                <ul class="login_box_h_list">
                    <li id="acount_login" class="login_box_h_list_cur" runat="server">账户密码登录<i class="login_box_h_icon"></i></li><a>
                    <li id="mobile_login" class="" runat="server">手机动态码登录 <i class="login_box_h_icon"></i></li>
                </ul>
            </div>
            <input  type="hidden" runat="server" id="usertype" name="usertype" value="0" />
            <div class=" ">
                <div class="login_body_cont">
                        <input type="hidden" name="act_login" id="act_login" value="0" />
                  
                        <input name="wxid" type="hidden" value="" />

                        <dl class="forminputitem" id="login_normal_box" style="padding-top:0px;">
                            <dd>
                                <div class="c inputitem_w">
                                    <i class="reg_icon_font login_icon_n1 "></i>
                                    <input name="username" type="text" id="username" value="" placeholder="邮箱/手机号/用户名" class="inputitemtxt" />
                                </div>
                            </dd>
                            <dd>
                                <div class="c ico_eye_close inputitem_w">
                                    <i class="reg_icon_font login_icon_n2 "></i>
                                    <input name="password" type="password" id="password" class="inputitemtxt" placeholder="请输入密码" />
                                    <em class="viewpwd" id="showPwd" onclick="showPwd(this)"></em>
                                </div>
                            </dd>
                        </dl>

                        <!--手机动态码登录-->

                        <div class="login_sj_box" id="login_sj_box" style="display:none;">
                            <div class="c inputitem_w">
                                <i class="reg_icon_font login_icon_n4 "></i>
                                <input name="moblie" id="usermoblie" type="text" class="inputitemtxt" value="" placeholder="请输入手机号码" runat="server" />
                                <div class="logoin_msg none" id="show_mobile">
                                    <div class="logoin_msg_tx">请填写正确的手机号</div>
                                    <div class="logoin_msg_icon"></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>

                        <div class="login_sj_box_mb" id="login_sjyz_box" style="display:none;">
                            <div class="c ico_name inputitem_w">
                                <i class="reg_icon_font login_icon_n8 "></i>
                                <input name="dynamiccode" type="text" class="inputitemtxt" id="dynamiccode" value="" placeholder="请输入短信验证码" runat="server" />
                                <div class="logoin_msg none" id="show_dynamiccode">
                                    <div class="logoin_msg_tx">请填写发送的验证码</div>
                                    <div class="logoin_msg_icon"></div>
                                </div>
                                <a href="javascript:void(0);" class="login_m_send2" id="send_msg_tip" onclick="send_msg('');">获取动态验证码</a>
                            </div>
                        </div>

                        <input type="hidden" name="checkurl" value="" />
                        <div class="login_bth">
                             <%--<input type="submit" name="submit" id="sublogin" value="登录" class="inputSubmit mt15" />--%>
                            <asp:Button ID="sublogin" CssClass="inputSubmit mt15" runat="server" Text="登录" OnClick="submit_Click" />
                        </div>
                    <div class="login_body_xc">
                        <a href="forgetpw.aspx" class="loginuser_pw">忘记密码?</a>
                        <a href="selectLogin.html" class="loginuser_reg">新用户注册</a>
                    </div>
                </div>
            </div>

            <%--<div class="login_other">
                <span class="login_other_span">其他方式登录</span>
                <a href="#" title="sina" class="login_other_icon login_other_xl"><i class="iconfont_sina"></i></a>
                <a href="#" title="QQ" class="login_other_icon login_other_qq"><i class="iconfont_qq"></i></a>
                <a href="#" title="wx" class="login_other_icon login_other_wx"><i class="iconfont_wx"></i></a>
            </div>--%>
        </article>
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



<script>
        $(document).ready(function() {
            $("#username,#txt_CheckCode,#usermoblie,#dynamiccode").focus(function() {
                var txAreaVal = $(this).val();
                if(txAreaVal == this.defaultValue) {
                    $(this).val("");
                }
            }).blur(function() {
                var txAreaVal = $(this).val();
                if(txAreaVal == this.defaultValue || $(this).val() == "") {
                    $(this).val(this.defaultValue);
                }
            }).keydown(function(e) {
                var ev = document.all ? window.event : e;
                if(ev.keyCode == 13) {
                    check_login('https://www.zhirimao.com/login/c_loginsave.html', 'vcode_imgs');
                } else {
                    return;
                }

            });
            //账号登录和手机登录tab选择
            $('#acount_login').click(function(data) {
                $('#acount_login').removeClass().addClass('login_box_h_list_cur');
                $('#mobile_login').removeClass();
                $('#login_normal_box').show();
                $('#login_sj_box').hide();
                $('#login_sjyz_box').hide();
                $('#act_login').val('0');
                $('#checkcodeDiv').hide();
                document.getElementById('usertype').value = '0';
            });
            $('#mobile_login').click(function(data) {
                $('#mobile_login').removeClass().addClass('login_box_h_list_cur');
                $('#acount_login').removeClass();
                $('#login_sj_box').show();
                $('#login_sjyz_box').show();
                $('#login_normal_box').hide();
                $('#act_login').val('1');
                $('#checkcodeDiv').show();
                document.getElementById('usertype').value = '1';
            });
        });

        var Timer;
        var smsTimer_time = 90; //倒数 90
        var smsTimer_flag = 90; //倒数 90
        var smsTime_speed = 1000; //速度 1秒钟

        //发送手机短信
        function send_msg(url) {
            var moblie = $('#usermoblie').val();
            var code;
            var geetest_challenge;
            var geetest_validate;
            var geetest_seccode;
            if(moblie == "" || moblie == "请输入手机号码") {

                layermsg("请输入手机号码！");
                return false;
            } else {

                var reg = /^[1][3456789]\d{9}$/;
                if(!reg.test(moblie)) {
                    layermsg('手机格式错误！');
                    return false;
                }
            }
            var codesear = new RegExp('前台登录');
            if(codesear.test(code_web)) {
                if(code_kind == 1) {
                    code = $.trim($("#checkcode").val());
                    if(!code) {
                        layermsg('请填写图片验证码！');
                        return false;
                    }
                } else if(code_kind == 3) {

                    geetest_challenge = $('input[name="geetest_challenge"]').val();
                    geetest_validate = $('input[name="geetest_validate"]').val();
                    geetest_seccode = $('input[name="geetest_seccode"]').val();

                    if(geetest_challenge == '' || geetest_validate == '' || geetest_seccode == '') {
                        $("#popup-submit").trigger("click");
                        layermsg('请点击按钮进行验证！');
                        return false;
                    }
                }
            }

            if(smsTimer_time == smsTimer_flag) {
                Timer = setInterval("smsTimer($('#send_msg_tip'))", smsTime_speed);
                $.post(url, {
                    moblie: moblie,
                    authcode: code,
                    geetest_challenge: geetest_challenge,
                    geetest_validate: geetest_validate,
                    geetest_seccode: geetest_seccode
                }, function(data) {
                    //alert(data);
                    var jsonObject = eval("(" + data + ")");

                    if(jsonObject.error !== 1) {
                        clearInterval(Timer);
                    }
                    layermsg(jsonObject.msg, 2, function() {
                        if(code_kind == 1) {

                            checkCode('vcode_img');
                        } else if(code_kind == 3) {

                            $("#popup-submit").trigger("click");
                        }
                        if(jsonObject.url) {
                            window.location.href = jsonObject.url;
                            window.event.returnValue = false;
                            return false;
                        }
                    });
                })
            } else {
                layermsg('请勿重复发送！', 2, 8);
                return false;
            }
        }
        //手机号码校验
        function testMb(mbNo) {

            var reg = /^[1][3456789]\d{9}$/; //验证手机号码   

            return reg.test(mbNo);
        }
        //倒计时
        function smsTimer(obj) {
            if(smsTimer_flag > 0) {
                $(obj).html('重新发送(' + smsTimer_flag + 's)');
                $(obj).attr({
                    'style': 'background:#eaebed;'
                });
                smsTimer_flag--;
            } else {
                $(obj).html('重新发送');
                $(obj).attr({
                    'style': 'background:#eaebed;'
                });
                smsTimer_flag = smsTimer_time;
                clearInterval(Timer);
            }
        }
</script>

</html>
