<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_company_show.aspx.cs" Inherits="qy_company_show" %>

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
        <link rel="stylesheet" href="../css/yun_wap_member.css" type="text/css">
    </head>

    <script charset="utf-8" src="../js/s.js" language="javascript"></script>
    <script src="../js/hm.js" language="javascript"></script>
    <script src="../js/push.js" language="javascript"></script>
    <script src="../js/prefixfree.min.js" language="javascript"></script>
    <script src="../js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="../js/layer.m.js" language="javascript"></script>
    <script src="../js/public.js" language="javascript"></script>
    <script src="../js/mui.min.js " language="javascript "></script>
    <script src="../js/mui.picker.js " language="javascript "></script>
    <script src="../js/mui.poppicker.js " language="javascript "></script>
    <script src="../js/forgetpw.js " language="javascript "></script>
    <script src="../js/reg_ajax.js" charset="utf-8" language="javascript"></script>
    <script src="../js/gt.js " language="javascript"></script>
    <script src="../js/mobile.js " type="text/javascript "></script>
    <script src="../js/swiper.js"></script>
    <script src="../js/search.js" language="javascript"></script>
    <script src="../js/demo.js" language="javascript"></script>
    <script src="../js/mui.min.js" language="javascript"></script>
    <script src="../js/mui.view.js" language="javascript"></script>
    <script src="../js/binding.js" language="javascript"></script>
    <script src="../js/compress.js" language="javascript"></script>
   
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
                            <div class="header_p_z">公司详情</div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <div class="header_navlist">
        <a href="qy_company.aspx" id=""><i class="naviconfont"></i></a>
    </div>
    <section>
        <div class="company_info">
            <div class="company_info_logo muipreview">
                <img class="avatar" src="../<%=picture%>"  data-preview-group="1">
            </div>
        </div>
        <div class="company_cominfo">
            <div class="company_infonname">
                <%=Titlea%> <i class="job_qy_rz_icon"></i>
            </div>
            <div class="company_cominfo_p">
                <div class="company_cominfo_p_hy"><%=category%></div>
                <span class="company_info_basic"><%=region%></span> <span class="company_info_basic company_info_basic_xz"><%=Nature%></span>
                <span class="company_info_basic company_info_basic_rs"><%=scale%></span>
            </div>
            <div class="com_show_fl com_show_fl_ct">           
                <%=welfareshow%> 
            </div>
        </div>
    </section>
    <div class="com_map ">
        <span class="com_map_name">地址</span><%=address%>
    </div>


    <section id="content">
            <div class=" mt15">
                <div class="com_new_contnet_box ">
                    <div class="wap_title"><span class="">公司简介</span></div>
                    <div class="user_contnet_box_p  jobshow_content_lh muipreview">
                        <div style="width: 100%; height: auto; overflow: hidden" id="com_content" class="img_auto">
                             <%=introduction%><br>
                            <div>
                                <br>
                            </div>
                        </div>
                        <div class="com_show_cont none"><a href="javascript:;" onclick="showcc()">展开信息</a></div>
                    </div>
                </div>
            </div>
        </section>

    <section id="tel">
            <div class=" mt15">
                <div class="com_new_contnet_box ">
                    <div class="wap_title"><span class="">联系方式</span></div>
                    <%=linkman%>
                </div>
            </div>
        </section>


        <section id="tel2">
            <div class=" mt15">
                <div class="com_new_contnet_box ">
                    <div class="wap_title"><span class="">关注企业</span></div>
                    <asp:Button ID="Button1" runat="server" Width="100%" Text="关注企业" OnClick="Button1_Click" />
                </div>
            </div>
        </section>

        <section id="job">
            <div class=" mt15">
                <div class="index_warp_content">
                    <div class="wap_title"><span class="">正在招聘的职位</span></div>
                    <%=recruit%>
                </div>
            </div>
        </section>

        <!--浮动框-->
        <!--footer start-->
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
        <!--footer end-->
        </form>
</body>


</html>
