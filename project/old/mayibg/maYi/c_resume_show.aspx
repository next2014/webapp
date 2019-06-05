<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_resume_show.aspx.cs" Inherits="c_resume_show" %>

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
        <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css">
    </head>

    <script charset="utf-8" src="js/s.js" language="javascript"></script>
    <script src="js/hm.js" language="javascript"></script>
    <script src="js/push.js" language="javascript"></script>
    <script src="js/prefixfree.min.js" language="javascript"></script>
    <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="js/layer.m.js" language="javascript"></script>
    <script src="js/public.js" language="javascript"></script>
    <script src="js/mui.min.js " language="javascript "></script>
    <script src="js/mui.picker.js " language="javascript "></script>
    <script src="js/mui.poppicker.js " language="javascript "></script>
    <script src="js/forgetpw.js " language="javascript "></script>
    <script src="js/reg_ajax.js" charset="utf-8" language="javascript"></script>
    <script src="js/gt.js " language="javascript"></script>
    <script src="js/mobile.js " type="text/javascript "></script>
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
                            <div class="header_p_z">个人简历</div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
    </div>
    <div class="header_navlist">
        <a href="m_resume.aspx" id="jobclick"><i class="naviconfont"></i></a>
    </div>
        <section>
            <div class="resume_bg">
                <span class="resume_gx"><%=time%> 更新</span>
            </div>
            <div class="resume_info_pd">
                <div class="resume_info_pd_c">
                    <div class="resume_info_pd_c_b">

                        <div class="resume_photo_box">
                            <div class="resume_photo muipreview" id="resume_photo">
                                <div class="resume_photo_c muipreview">
                                    <img src="<%=src%>"
                                        data-preview-src="" data-preview-group="1">
                                    <i class="<%=sexa%>"></i>
                                </div>

                            </div>
                            <div class="resume_info_n_c">
                                <div class="resume_user_name">
                                    <%=uname%>
                                    <span class="resume_user_nj">(<%=sex%>，<%=age%>岁)
                                    </span>
                                </div>
                                <div class="resume_user_info_p">
                                    <span class="resume_user_info_p_s"><i class="resume_user_info_xl"></i><%=edu%>学历</span><span
                                        class="resume_user_info_p_s"><i class="resume_user_info_nl"></i><%=exp%>经验</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="resume_info_pd_c_b">
                <div class="resume_user_info_box">
                    <div class="resume_user_info_p_box">
                    </div>
                </div>
            </div>
        </section>
        <div class="resume_show_pd">

            <section>
                <div class="resume_showbox">
                    <div class="resume_showbox_tit"><i class="resume_showbox_icon"></i>求职意向</div>
                    <div class="resume_showbox_cont">
                        <ul class="user_resume_yxlist">
                            <!-- -->
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>期望岗位</span>
                                <font color="#efb62e"><%=name%></font>
                            </li>
                            <%--<li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>工作职能</span>
                                <span class="user_resume_yxzn">外语教师</span> </li>--%>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>期望城市</span>
                                <span class="user_resume_yxzn"><%=city_classid%></span> </li>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>期望薪资</span>￥<%=minsalary%></li>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>工作性质</span><%=type%></li>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>到岗时间</span><%=report%></li>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>所属行业</span><%=hy%></li>
                            <li class="user_resume_yxli"><span class="user_resume_yx"><i class="user_resume_yx_icon"></i>目前状态</span><%=jobstatus%></li>
                        </ul>
                    </div>
                </div>
            </section>

            <section>

                <div class="resume_showbox" id="tel">
                    <div class="resume_showbox_tit"><i class="resume_showbox_icon resume_showbox_icon_lxfs"></i>联系方式</div>
                    <div style="clear: both"></div>
                    <%=contact%>
                </div>

            </section>

          <%--  <section>
                <div class="job_show_tip">
                    <div class="job_show_tip_jb">
                        <a href="javascript:void(0)" onclick="pleaselogin(&#39;您还未登录企业账号，是否登录？&#39;,&#39;c_login.aspx&#39;)"><span
                            class="job_show_tip_tip_i"></span>举报</a>
                    </div>
                    <div class="job_show_tip_p">
                        <div class="job_show_tip_p_t">若该简历为广告简历 或 无意义简历 （乱写、乱填）,请您可以举报</div>
                    </div>
                </div>
            </section>--%>
        </div>

        <!--工作经历 -->
        <section>
            <%=wexperiencea%>
        </section>
        <!--教育经历 -->
        <section>
            <%=education%>
        </section>
        <!--培训经历 -->
        <section>
            <%=train%>
        </section>
        <!--项目经历 -->
        <section>
            <%=project%>
        </section>
        <!--职业技能-->
        <section>
            <%=function%>
        </section>

        <!--我的作品-->
        <section>
            <%=wcase%>
        </section>
        <!--其他信息-->
        <!--黏贴简历内容-->
        <!--自我评价-->
        <section>
            <%=evaluatea%>
        </section>

        <section>
            <div class="yun_job_footer">
                <div class="yun_job_footer_fixed">
                    <div class="yun_job_footer_bg">
                        <div class="yun_job_footer_fx_left" style="text-align:center">
                           <%-- <div class="yun_job_footer_fx">
                                <a href="javascript:void(0);" data-url=""
                                    id="shareClick" class="yun_job_footer_bth"><i class="iconfont_jobshare"></i><span
                                        class="yun_job_footer_s">分享</span></a>
                            </div>
                            <div class="yun_job_footer_fx">
                                <a href="javascript:phone(&#39;1&#39;)" class="yun_job_footer_bth">
                                    <i class=" iconfont_usershowtel"></i>
                                    <span class="yun_job_footer_s" style="color: #999">电话</span>
                                </a>

                            </div>--%>
                            <div class="yun_job_footer_fx">
                                    <%=RCollection%>
                            </div>
                        </div>
                        <div class="yun_job_footer_fx_right">
                           <%-- <a href="javascript:void(0);"  class="yun_job_footer_fx_right_bth sq_resume">面试邀请</a>--%>
                            <asp:Button ID="Button1" runat="server" CssClass="yun_job_footer_fx_right_bth sq_resume" Text="面试邀请" OnClick="tdjl_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!--footer start-->
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
    <!--footer end-->
        </form>
</body>


</html>
