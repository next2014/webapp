<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_part_show.aspx.cs" Inherits="c_part_show" %>

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
            <div class="header_userbg bg3">
                <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l"></i></a>
                <div class="header_p_z1">兼职</div>
            </div>
        </div>
    </header>
</div>
         <div class="header_navlist">
        <a href="c_part.aspx" id="jobclick"><i class="naviconfont"></i></a>
    </div>
<div style="padding:10px 10px;">
    <section>
        <div class="">
            <div class="user_contnet_box ">
                <div class="com_show_t1">
                    <h2><%=Name%></h2>
                </div>
                <div class="Part-time_job_js">
                    <span class="Part-time_job_js_span"><i class="Part-time_job_js_city iconfont_partcity"></i>
                        <%=Cityid%>
                    </span>
                    <%--<span class="Part-time_job_js_span"><i class="Part-time_job_js_city iconfont_parteye"></i>201次</span>--%>
                    <span class="Part-time_job_js_span"><i class="Part-time_job_js_city iconfont_partdate"></i><%=Time%></span>
                </div>
                <div class="Part-time_job_js">
                    <span class="Part-time_job_js_span "><i class="Part-time_job_js_s_doc ">￥</i><em class="Part-time_job_js_span_jg"><%=Salary%></em></span>
                </div>

            </div>
        </div>
    </section>
    <section>
        <div class="mt10">
            <div class="user_contnet_box ">
                <div class="wap_title"><span class="">基本信息</span></div>
                <ul class="user_contnet_ul user_contnet_ul_jz">
                    <li><span class="user_contnet_info_n">工作类型：</span><%=Type%></li>
                    <li><span class="user_contnet_info_n"> 发&nbsp;布 &nbsp;者：</span><%=Info%></li>
                    <li><span class="user_contnet_info_n">招聘人数： </span><%=Number%>人</li>
                    <li><span class="user_contnet_info_n">性别要求： </span><%=Sex%></li>
                     <li><span class="user_contnet_info_n">招聘方式： </span><%=Description%></li>
                    <li><span class="user_contnet_info_n">兼职日期： </span><%=Jztime%></li>
                  <%--  <li>
                        <table class="det-tab" width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <th height="28" align="center" valign="middle" class="fre-tab01">TIME</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab02">周一</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab03">周二</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab04">周三</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab05">周四</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab06">周五</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab07">周六</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab08">周日</th>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab09">上午</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array1%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array2%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array3%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array4%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array5%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array6%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array7%></td>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab10">下午</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array8%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array9%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array10%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array11%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array12%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array13%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array14%></td>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab11">晚上</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array15%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array16%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array17%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array18%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array19%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array20%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array21%></td>
                                </tr>
                            </tbody>
                        </table>
                    </li>--%>
                    <li><span class="user_contnet_info_n">结算周期：</span><%=Billing%></li>
                    <li><span class="user_contnet_info_n">工作地址： </span><%=Address%></li>
                </ul>
            </div>
        </div>
    </section>
    <section>
        
        <div class="mt10" id="con_link_per">
            <div class="user_contnet_box ">
                <div class="wap_title"><span class="">具体要求</span></div>
                <div class="part_show_cont muipreview" id="partcontent">
                    <%=Contenttext%>
                </div>
               <%-- <div class="job_jz_tips_sq">
                    <asp:Button ID="Button1" runat="server" CssClass="job_jz_tips_sq_bth"  Text="我要报名" />
                 
                    <%=Bm%>
                    <%=Collection%>
                </div>--%>
                <br />
                <%=Lxfs%>
            </div>
        </div>
    </section>



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
                    <asp:Button ID="tdjl" runat="server" Text="我要报名" CssClass="yun_job_footer_fx_right_bth" OnClick="tdjl_Click"  />
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/part.js" language="javascript"></script>
<script type="text/javascript" src="js/api" charset="utf-8"></script>
<script type="text/javascript" src="js/getscript"></script>
<script src="js/map.js" language="javascript"></script>
<script>
    var sy_weburl = '';
    var map = new BMap.Map("maps_container");
    map.centerAndZoom(new BMap.Point('114.389487', '23.089727'), 12);
    var point = new BMap.Point('114.389487', '23.089727');
    var marker = new BMap.Marker(point);
    map.addOverlay(marker);
</script>
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

<div id="hm_t_undefined" class="hm-t-container">
    <div class="hm-t-go-top" style="display: none;"></div>
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
