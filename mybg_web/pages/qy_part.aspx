<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_part.aspx.cs" Inherits="pages_qy_part" %>

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
    <div class="header_bg bg3">
        <a class="hd-lbtn" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
        <div class="header_h1">兼职管理</div>
        <!-- 发布职位-->
        <div class="header_fa_add">
            <a href="qy_partadd.aspx" class="header_fa_add_p">发布兼职</a>
        </div>
        <!-- 发布兼职-->
    </div>
</header>
    <div class="mui-content pos_tab">
				<div class="mui-row">
					<div class="mui-col-sm-6 mui-col-xs-6">
						<li class="mui-table-view-cell">
							<a href="qy_part.aspx" class="active">
								兼职管理
							</a>
						</li>
					</div>
					<div class="mui-col-sm-6 mui-col-xs-6">
						<li class="mui-table-view-cell">
							<a href="qy_job.aspx" >
								全职管理
							</a>
						</li>
					</div>
				</div>
			</div>
<section class="wap_member">
    <div id="slider" class="mui-slider">
        <div id="sliderSegmentedControl" class="mui-slider-indicator mui-segmented-control mui-segmented-control-inverted index_jobtit">
            <a class="mui-control-item  mui-active" href="#zplist">招聘中</a>
            <a class="mui-control-item" href="#shlist">待审核</a>
            <a class="mui-control-item" href="#xjlist">已下架</a>
        </div>
        <style>
            .index_jobtit .mui-active {
            position: relative;
            color: #f60
        }
        .index_jobtit .mui-active:after {
            width: 26px;
            height: 2px;
            background: #f60;
            display: inline-block;
            position: absolute;
            left: 50%;
            bottom: 0px;
            content: '';
            margin-left: -13px;
        }
        .mui-segmented-control.mui-segmented-control-inverted .mui-control-item.mui-active {
            color: #f60
        }
    </style>
        <!-- <div id="sliderProgressBar" class="mui-slider-progress-bar mui-col-xs-4"></div>-->
        <div class="mui-slider-group">
            <div id="zplist" class="mui-slider-item mui-control-content" style="border:none;">
                 <%=zplist%>
            </div>
            <div id="shlist" class="mui-slider-item mui-control-content" style="border:none;">
                 <%=shlist%>
            </div>
            <div id="xjlist" class="mui-slider-item mui-control-content" style="border:none;">
                 <%=xjlist%>
            </div>
        </div>
    </div>
</section>

<script>
    mui('.mui-scroll-wrapper').scroll();

    function showserver(id) {
        $('#jobid').val(id);
        $('#jobserver').show();
    }

    function ckserver(type) {
        $("#server").val(type);
        $(".serverul li").removeClass("job_extension_tck_yse");
        $(".server" + type).addClass("job_extension_tck_yse");
    }

    function forserver() {
        var server = $("#server").val();
        var jobid = $("#jobid").val();
        if (server == '5') {
            window.location.href = "index.php?c=addreward&type=share&jobid=" + jobid;

        } else {
            window.location.href = "index.php?c=getserver&id=" + jobid + "&server=" + server;
        }

    }

    function refreshJobWap(jobId) {
        var weburl = '';
        var integral = '2';
        var online = '1';
        var pro = '5';
        var ajaxUrl = weburl + "member/index.php?c=ajax_refresh_job";

        $.post(ajaxUrl, {
            jobid: jobId
        }, function (data) {
            data = eval('(' + data + ')');
            if (data.error == 1) {
                layermsg(data.msg, 2, 9, function () {
                    window.location.href = '';
                });
            } else if (data.error == 2) {
                if (online == 3) {
                    layer.open({
                        content: "您的等级特权已用完，继续操作将消费" + integral * pro + "积分，是否继续？",
                        btn: ['继续', '取消'],
                        shadeClose: false,
                        yes: function () {
                            window.location.href = "index.php?c=getserver&id=" + jobId + "&server=" + 5;;
                        }
                    });
                } else {
                    layer.open({
                        content: "您的等级特权已用完，继续操作将消费" + integral + "元，是否继续？",
                        btn: ['继续', '取消'],
                        shadeClose: false,
                        yes: function () {
                            window.location.href = "index.php?c=getserver&id=" + jobId + "&server=" + 5;;
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
</script>
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
