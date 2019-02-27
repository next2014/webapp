<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_Training.aspx.cs" Inherits="c_Training" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <title>蚂蚁帮工</title>
    <meta content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport" />
    <meta name="MobileOptimized" content="240" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <link rel="stylesheet" href="css/mui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
    <link rel="stylesheet" href="css/css.css" type="text/css" />

    <script src="js/prefixfree.min.js" language="javascript"></script>
    <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="js/layer.m.js" language="javascript"></script>
    <script src="js/public.js" language="javascript"></script>
    <script src="js/mui.min.js" language="javascript"></script>

</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
		<!-- Content area -->
		<div class="body_wap">

			<header class="header_h">

				<div class="header_fixed">
					<div class="header">

						<div class="header_userbg bg3">

							<a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
							<div class="header_h1">培训经历</div>
						</div>

					</div>
				</div>
			</header>

			<style>
				.resume-cont_wate_list dd {
					padding-left: 0px;
				}
				
				.resume_xg_a {
					padding: 5px 30px;
					display: inline-block;
					color: #fff;
				}
			</style>
			<div class="resume-cont">
                <%=wexperience%>
				<div class="add_resume_tjbth">
					<a class="add_resume_tj" href="<%=Uwexperience%>">+ 添加培训经历</a>

					<div class="add_resume_cz_fh">
						<a href="<%=Return%>">完成并返回&gt;&gt;</a>
					</div>
				</div>

			</div>

		</div>


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
                            <%=news%>
                        </li>
                        <li>
                            <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                        </li>
                    </ul>
                </div>
            </div>
		<!--footer   end-->
		
	</body>
</html>

