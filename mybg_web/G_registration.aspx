<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G_registration.aspx.cs" Inherits="G_registration" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta http-equiv="Cache-Control" content="no-cache" />
		<title>蚂蚁帮工</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width" initial-scale="1" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=no" />
		<meta name="format-detection" content="telephone=no,email=no" />
		<meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no, width=device-width" />
		<link rel="stylesheet" href="css/mui.min.css" type="text/css" />
		<link rel="stylesheet" href="css/mui.picker.css" type="text/css" />
		<link rel="stylesheet" href="css/mui.poppicker.css" type="text/css" />
		<link rel="stylesheet" href="css/job.css" type="text/css" />
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<link rel="stylesheet" href="css/css.css" type="text/css" />
		<script charset="utf-8" src="js/s.js"></script>
		<script src="js/hm.js"></script>
		<script src="js/push.js"></script>
		
	</head>
<body>          
    <form runat="server">
		<div class="body_wap">
			<header class="header_h">
				<div class="header_fixed">
					<div class="header">
						<div class="header_bg  bg3">
							<a class="hd-lbtn mui-action-back" href="javascript:history.back();"><i class="header_top_l"></i></a>
							<div class="header_h1">
								<div class="header_p_z"><%=header%></div>
							</div>

						</div>
					</div>
				</div>
			</header>
		</div>
		<style type="text/css">
			body {
				background: #fff
			}
		</style>
		<div class="yunwapreg_box">
			<a href="selectLogin.html" class="login_reg"><span class="login_reg_s1">其他类型</span></a>
			<section class="list">
				<article>

					<div class="regform">
						<ul class="regtab">
							<li class="current">
								<a href="#" style="display:block;">手机注册</a>
							</li>
<%--							<li class="">
								<a href="https://www.zhirimao.com/wap/c_register-usertype_1-type_3.html" style="display:block;">邮箱注册</a>
							</li>
							<li class="">
								<a href="https://www.zhirimao.com/wap/c_register-usertype_1-type_1.html" style="display:block;">用户名注册</a>
							</li>--%>
						</ul>

			
							<dl class="forminputitem">
								<dd>
									<div class="c ico_name inputitem_w">
										<i class="reg_icon_font login_icon_n4 "></i>
										<input class="inputitemtxt" placeholder="请填写您的手机号码" runat="server" name="moblie" id="moblie" onblur="check_moblie();" type="text" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" />
										<span class="reg_yes" style="display: none;" id="moblie_yes"></span>
									</div>
								</dd>
								<dd>
									<div class="c ico_pwd2 inputitem_w">
										<i class="reg_icon_font login_icon_n2 "></i>
										<input class="inputitemtxt" onfocus="this.type='password'" runat="server" placeholder="请填写密码，建议填写6-20位字母数字组合" name="password" id="password" type="text" onblur="check_password();" />
										<span class="reg_yes" style="display: none;" id="password_yes"></span>
										<em class="viewpwd"></em></div>
								</dd>

								<dd>
									<div class="c ico_pwd2 inputitem_w">
										<i class="reg_icon_font login_icon_n2 "></i>
										<input class="inputitemtxt" onfocus="this.type='password'" runat="server" placeholder="请确认填写的密码" name="passconfirm" id="passconfirm" type="text" onblur="check_passconfirm();" />
										<span class="reg_yes" style="display: none;" id="passconfirm_yes"></span>
										<em class="viewpwd"></em></div>
								</dd>
								<dd class="mt15">
									<input type="hidden" id="send" value="0" />
                                    <asp:Button ID="subreg" runat="server" Text="提交" CssClass="inputSubmit" OnClick="subreg_Click" />
									<%--<input type="submit" name="submit" id="subreg" value="提交" class="inputSubmit" />--%>
								</dd>
								
							</dl>

					
					</div>
					<style>
						#popup-captcha-mobile {
							margin-top: 15px;
						}
						
						#popup-captcha-mobile .geetest_radar_btn {
							border: 1px solid #eee
						}
					</style>
				</article>
			</section>
		</div>

		<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
		<script src="js/layer.m.js" language="javascript"></script>
		<script src="js/public.js" language="javascript"></script>
		<script src="js/prefixfree.min.js" language="javascript"></script>
		<script src="js/reg_ajax.js" language="javascript"></script>
		<script src="js/gt.js"></script>
		<script src="js/mobile.js" type="text/javascript"></script>


		<!--登录浮动底部-->

		<!--footer   start-->
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
            </li>
                    <li>
                        <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                    </li>
                </ul>
            </div>
        </div>
		<!--footer   end-->
	</form>
	</body>
</html>
