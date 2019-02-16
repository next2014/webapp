<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpw.aspx.cs" Inherits="forgetpw" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>蚂蚁帮工</title>
    <meta http-equiv="keywords" content="招聘">
    <meta http-equiv="description" content="招聘">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
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

    <script charset="utf-8" src="js/s.js" language="javascript"></script>
<script src="js/hm.js" language="javascript"></script>
<script src="js/push.js" language="javascript"></script>
<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/mui.min.js" language="javascript"></script>
<script src="js/mui.picker.min.js" language="javascript"></script>
<script src="js/mui.poppicker.js" language="javascript"></script>
<script src="js/pack.js" type="text/javascript"></script>
<script src="js/forgetpw.js" language="javascript "></script>
<script src="js/reg_ajax.js" charset="utf-8" language="javascript"></script>
<script src="js/gt.js" language="javascript"></script>
<script src="js/mobile.js" type="text/javascript "></script>
<script src="js/swiper.js"></script>
<script src="js/search.js" language="javascript"></script>
<script src="js/demo.js" language="javascript"></script>
<script src="js/mui.view.js" language="javascript"></script>
<script src="js/binding.js" language="javascript"></script>
<script src="js/compress.js" language="javascript"></script>



</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <div class="body_wap">
        <header class="header_h">
            <div class="header_fixed">
                <div class="header">
                    <div class="header_bg  bg3">
                        <a class="hd-lbtn mui-action-back" href="javascript:history.back();"><i class="header_top_l"></i></a>
                        <div class="header_h1">
                            <div class="header_p_z"> 找回密码</div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
    </div>
    <div class="password_box">
        <div class="passport-progress">
            <ul>
                <li id="path1" class="currents"><span>1</span>填写账号</li>
                <li id="path2" class="currents_er"><span>2</span>设置新密码<em></em></li>
                <li id="path3" class="currents_er"><span>3</span>完成<em></em></li>
            </ul>
        </div>

        <div class="account">
            <div id="backpicker" class="account_td1">
                <div id="sendtypePicker" class="input_295_34 select_input">
                    <span id="pickerText" class="J_listitme_text">通过手机找回密码</span>
                    <i class="searchOptions_icon  "></i>
                    <input type="hidden" id="sendtype" name="sendtype" value="moblie">
                </div>
            </div>
            <div id="moblieshow" class="J_listitme_group">
                <div class="selecttip">系统将发送验证码短信到您的手机上，请注意查收</div>
                <div class="J_validate_group">
                    <div class="account_td1">
                        <input class="input_295_34" name="moblie" id="moblie" type="text" placeholder="请输入手机号">
                    </div>
                    <div class="account_td1">
                        <div class="code">
                            <input name="moblie_vcode" id="moblie_vcode" type="text" class="input_295_35" placeholder="请输入短信验证码">
                            <button class="btn_yellow J_hoverbut" id="send_msg_tip" onclick="send_msg()">获取验证码</button>
                        </div>
                    </div>
                    <div class="reset_btnbox">
                        <input type="submit" onclick="forgetPwNext()" value="下一步" class="reset_xia">
                    </div>
                </div>
            </div>

            <div id="emailshow" class="J_listitme_group" style="display: none;">
                <div class="selecttip">系统将发送验证码发到您的邮箱中，请注意查收</div>
                <div class="J_validate_group">
                    <div class="account_td1">
                        <input class="input_295_34" name="email" id="email" type="text" placeholder="请输入邮箱账户">
                    </div>
                    <div class="account_td1">
                        <div class="code">
                            <input name="email_vcode" id="email_vcode" type="text" class="input_295_35" placeholder="请输入邮箱验证码">
                            <button class="btn_yellow J_hoverbut" id="send_email_tip" onclick="send_email()">获取验证码</button>
                        </div>
                    </div>
                    <div class="reset_btnbox">
                        <input type="submit" onclick="forgetPwNext()" value="下一步" class="reset_xia">
                    </div>
                </div>
            </div>

            <div id="shensushow" class="J_listitme_group" style="display: none;">
                <div class="selecttip">信息提交后 , 客服人员会电话回访 , 确认身份！</div>
                <div class="J_validate_group">
                    <div class="reset">
                        <input class="reset_chong_zhi" type="text" name="username" id="username" autocomplete="off" maxlength="20" placeholder="请输入用户名" value="">
                        <input class="reset_chong_zhi" type="text" name="linkman" id="linkman" autocomplete="off" maxlength="20" placeholder="请输入联系人" value="">
                        <input class="reset_chong_zhi" type="text" name="linkphone" id="linkphone" autocomplete="off" maxlength="20" placeholder="请输入联系电话" value="">
                        <input class="reset_chong_zhi" type="text" name="linkemail" id="linkemail" autocomplete="off" placeholder="请输入联系邮箱" value="">
                    </div>
                </div>
                <div class="reset_btnbox_xia">
                    <input type="submit" onclick="checklink()" value="下一步" class="reset_xia">
                </div>
            </div>
            <!--重置密码-->
            <div id="resetpw" class="J_listitme_group" style="display:none;">
                <div class="J_validate_group">
                    <div class="reset">
                        <input class="input_295_34" name="password" id="password" type="password" placeholder="请设置新密码">
                        <input class="input_295_34" name="passwordconfirm" id="passwordconfirm" type="password" placeholder="请确认新密码">
                    </div>
                    <div class="reset_btnbox">
                        <input type="hidden" id="username" value="">
                        <input type="hidden" id="fuid" value="">
                        <input type="submit" onclick="editpw()" value="提交修改" class="reset_xia">
                    </div>
                </div>
            </div>

            <div id="succeed" class="password_cont" style="display:none;" width:100%;margin:0 auto; ">
                <div class="password_cont_success " style="width:100%; ">
                    <div class="password_cont_success_p " style="padding-left:0;width:100%;text-align:center; ">恭喜您！密码重置成功！</div>
                    <div class="password_contm-row " style="margin-left:0;width:100%;text-align:center; ">
                        <a href="https://www.zhirimao.com/wap/c_login.html " style="margin:0 auto;width:280px; " class="password_input_btn ">立即登录</a>
                    </div>
                </div>
           </div>

            <div class="password_cont none " id="finish ">
            <div class="password_icon "></div>

            <div class="password_succ ">提交成功！</div>
                <div class="password_cgd ">请耐心等待，稍后客服人员会联系您！</div>
            </div>
      </div>
   </div>

<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/mui/mui.min.js" language="javascript"></script>
<script src="js/mui/mui.picker.js" language="javascript"></script>
<script src="js/mui/mui.poppicker.js" language="javascript"></script>
<script src="js/forgetpw.js" language="javascript"></script>
<script src="js/geetest/gt.js"></script>
<script src="js/mobile.js" type="text/javascript"></script>
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
</body>
</html>
