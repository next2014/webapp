<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_part2.aspx.cs" Inherits="qy_part2" %>

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
<script src="../js/mui.min.js" language="javascript "></script>
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
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_bg  bg3">
                    <a class="hd-lbtn " href="javascript:history.back();"><i class="header_top_l"></i></a>
                    <div class="header_h1">
                        <div class="header_fx_search">
                            <form method="get" action="">
                                <div class="formFiled">
                                    <input type="text" value="" name="keyword" class="input_search" placeholder="请输入兼职关键字,如：小时工...">
                                    <span class="formFiled_bth"> <input type="submit" value=" " class=" "></span>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
</div>

<div class="mui-content pos_tab">
				<div class="mui-row">
					<div class="mui-col-sm-6 mui-col-xs-12">
						<li class="mui-table-view-cell">
							<a href="qy_part2.aspx" class="active">
								兼职
							</a>
						</li>
					</div>
					<div class="mui-col-sm-6 mui-col-xs-12">
						<li class="mui-table-view-cell">
							<a href="qy_position.aspx">
								全职
							</a>
						</li>
					</div>
				</div>
			</div>

<link rel="stylesheet" href="../css/wap_tck.css" type="text/css">
<section>
    <div class="searchOptions clearfix partwork_nav">
        <ul class="searchOptions_list ">
            <%--<li class="grade popup" data-pop="grade">
                <a href="javascript:void(0);" class="searchOptions_list_a">
                    <span class="job_ov">兼职区域</span>
                    <i class="searchOptions_icon"></i>
                </a>
            </li>--%>
            <li class="grade popup">
                                    <a href="javascript:void(0);" class="searchOptions_list_a">
                                        <span class="job_ov" id='showCityPicker'>兼职区域</span>
                                        <i class="searchOptions_icon"></i>
                                    </a>
                                </li>
            <li class="Sorttype popup" data-pop="Sorttype">
                <a href="javascript:void(0);" class="searchOptions_list_a">兼职类型<i class="searchOptions_icon"></i></a>
            </li>
            <li class="Sortcycle popup" data-pop="Sortcycle" style="border-right:none;">
                <a href="javascript:void(0);" class="searchOptions_list_a">结算周期<i class="searchOptions_icon"></i></a>
            </li>
            <input type="hidden" id="searchurl" value="c=part">
            <input type="hidden" id="waptype" value="1">
        </ul>
    </div>
</section>
<div class="clear"></div>
<section>
    <div class="warp_content clear">
        <div class="job_list_content">
            <ul class="part_box">
             <%=part%>
            </ul>
          
        </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        $("#resume").submit(function (e) {
            var min = $("#minresume").val();
            var max = $("#maxresume").val();
            if (min && max && parseInt(max) < parseInt(min)) {
                $("#minresume").val(max);
                $("#maxresume").val(min);
            }
        });
    });
    $(document).ready(function () {
        $("#job").submit(function (e) {
            var min = $("#minjob").val();
            var max = $("#maxjob").val();
            if (min && max && parseInt(max) < parseInt(min)) {
                $("#minjob").val(max);
                $("#maxjob").val(min);
            }
        });
    });

</script>

<!-- Sorttype 兼职类型弹出框-->
<div class="Sorttype-eject Sorttype-height">
    <ul class="Sorttype-Sorttype" id="Sorttype-Sorttype">
        <li>
            <a href="qy_part2.aspx?type=传单派发">传单派发</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=促销导购">促销导购</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=话务客服">话务客服</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=礼仪模特">礼仪模特</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=老师家教">老师家教</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=服务员">服务员</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=问卷调查">问卷调查</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=审核录入">审核录入</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=地推拉访">地推拉访</a>
        </li>
        <li>
            <a href="qy_part2.aspx?type=其他">其他</a>
        </li>
    </ul>
</div>
<!-- End Sorttype -->
<!-- Sortcycle 结算周期弹出框-->
<div class="Sortcycle-eject Sortcycle-height">
    <ul class="Sortcycle-Sortcycle" id="Sortcycle-Sortcycle">
        <li>
            <a href="qy_part2.aspx?cycle=日结">日结</a>
        </li>
        <li>
            <a href="qy_part2.aspx?cycle=周结">周结</a>
        </li>
        <li>
            <a href="qy_part2.aspx?cycle=月结">月结</a>
        </li>
        <li>
            <a href="qy_part2.aspx?cycle=完工结">完工结</a>
        </li>
    </ul>
</div>
<!-- End Sortcycle -->

    <script src="../js/mui.picker.min.js" language="javascript"></script>
    <script src="../js/mui.poppicker.js" language="javascript"></script>
    <script src="../js/city.cache.js" language="javascript"></script>
    <script src="../js/mui.view.js" language="javascript"></script>
    <script src="../js/umeditor.config.js"></script>
    <script src="../js/umeditor.min.js"></script>
    <script src="../js/cominfo.js" language="javascript"></script>
    <script src="../js/category.js" language="javascript"></script>
      <script src="../js/job.cache.js" language="javascript"></script>
    <script src="../js/city.data.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/job.data.js" type="text/javascript" charset="utf-8"></script>
     <script>
         (function ($, doc) {
             $.init();
             $.ready(function () {
                 /**
                  * 获取对象属性的值
                  * @param {Object} obj 对象
                  * @param {String} param 属性名
                  */
                 var _getParam = function (obj, param) {
                     return obj[param] || '';
                 };
                 // 选择区域
                 var cityPicker3 = new $.PopPicker({ layer: 3 });
                 cityPicker3.setData(cityData3);
                 var showCityPickerButton = doc.getElementById('showCityPicker');
                 showCityPickerButton.addEventListener('tap', function (event) {
                     cityPicker3.show(function (items) {
                         location.href = "qy_part2.aspx?pro=" + _getParam(items[0], 'value') + "&city=" + _getParam(items[1], 'value') + "&three=" + _getParam(items[2], 'value');
                     });
                 }, false);
                 // 选择职能
                 var JobPicker = new $.PopPicker({ layer: 3 });
                 JobPicker.setData(jobData);
                 var showJobPickerButton = doc.getElementById('showJobPicker');
                 showJobPickerButton.addEventListener('tap', function (event) {
                     JobPicker.show(function (items) {
                         location.href = "qy_part2.aspx?job=" + _getParam(items[0], 'value') + "&son=" + _getParam(items[1], 'value') + "&post=" + _getParam(items[2], 'value');
                     });
                 }, false);
             });
         })(mui, document);
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
