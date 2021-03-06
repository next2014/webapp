﻿m<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_addEdu.aspx.cs" Inherits="c_addEdu" %>

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
    <script charset="utf-8" src="js/s.js"></script>
    <script src="js/hm.js"></script>
    <script src="js/push.js"></script>
    <script src="js/prefixfree.min.js" language="javascript"></script>
    <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="js/layer.m.js" language="javascript"></script>
    <link href="js/layer.css" type="text/css" rel="styleSheet" id="layermcss" />
    <script src="js/public.js" language="javascript"></script>
    <script src="js/mui.min.js" language="javascript"></script>

    <script type="text/javascript">
        function UserAddVerify() {
            var Name = document.getElementById("name").value;
            var Sdate = document.getElementById("sdate").value;
            var Edate = document.getElementById("edate").value;
            var Specialty = document.getElementById("specialty").value;
            var Education = document.getElementById("education").value;

            if (Name == "" || Name == null) {
                alert("请输入学校名称");
                return false;
            }
            else if (Sdate == "" || Sdate == null) {
                alert("请选择入校时间");
                return false;
            }
            else if (Edate == "" || Edate == null) {
                alert("请选择离校时间");
                return false;
            }
            else if (Specialty == "" || Specialty == null) {
                alert("请输入所学专业");
                return false;
            }
            else if (Education == "" || Education == null) {
                alert("请选择最高学历");
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <form runat="server">
        <!-- Content area -->
        <div class="body_wap">
            <header class="header_h">

                <div class="header_fixed">
                    <div class="header">
                        <div class="header_userbg bg3">
                            <a class="hd-lbtn mui-action-back" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                            <div class="header_h1">教育经历</div>
                        </div>

                    </div>
                </div>
            </header>

            <link rel="stylesheet" href="css/mui.picker.min.css" type="text/css" />
            <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css" />
            <link rel="stylesheet" href="css/style.css" type="text/css" />
            <link rel="stylesheet" href="css/umeditor.min.css" type="text/css" />
            <script src="js/umeditor.config.js"></script>
            <script src="js/umeditor.min.js"></script>

            <script src="js/compress.js" language="javascript"></script>

            <style>
                .yun_wap_addresume_box_control_text {
                    border: 1px solid #ddd;
                }

                .yun_wap_addresume_texttextAreaMsg {
                    width: 100%;
                    height: 60px;
                    border: none;
                    margin: 0;
                    padding: 0;
                    outline: none;
                    ;
                }
            </style>
            <div id="app" class="mui-views" data-view="1">
                <div class="mui-view">
                    <div class="mui-pages">
                        <div id="main" class="mui-page mui-page-center">
                            <!--页面主内容区开始-->
                            <div class="mui-page-content">
                                <div class="mui-scroll-wrapper" data-scroll="2">
                                    <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                                        <div class="resume-cont">
                                            <div class="">
                                                <ul class="yunset_list mt15">
                                                    <li class="yunset_list_text"><span class="yunset_list_name">学校名称</span> <span class="yunset_list_commentary">
                                                        <input type="text" runat="server" name="name" id="name" value="" placeholder="请输入学校名称" /></span></li>
                                                </ul>
                                                <ul class="yunset_list mt15">
                                                    <li><span class="yunset_list_name">入校时间</span> <span class="yunset_list_commentary">
                                                        <button id="sdatePicker" runat="server" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2099}" class="btn mui-btn mui-btn-block" type="button">请选择入校时间</button>
                                                        <input type="hidden" runat="server" id="sdate" name="sdate" value="" /></span>
                                                    </li>
                                                    <li><span class="yunset_list_name">离校时间</span> <span class="yunset_list_commentary">
                                                        <button id="edatePicker" runat="server" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2099}" class="btn mui-btn mui-btn-block" type="button">请选择离校时间</button>
                                                        <input type="hidden" runat="server" id="edate" name="sdate" value="" /></span>
                                                    </li>
                                                </ul>
                                                <ul class="yunset_list mt15">
                                                    <li class="yunset_list_text"><span class="yunset_list_name">所学专业</span> <span class="yunset_list_commentary">
                                                        <input type="text" runat="server" name="specialty" id="specialty" value="" placeholder="请输入所学专业" /></span></li>
                                                </ul>
                                                <ul class="yunset_list mt15">
                                                    <li><span class="yunset_list_name">最高学历</span> <span class="yunset_list_commentary">
                                                        <button id="educationUserPicker" runat="server" class="mui-btn mui-btn-block" type="button" data-education="">请选择最高学历</button>
                                                        <input type="hidden" runat="server" id="education" name="education" value="" />
                                                    </span></li>
                                                </ul>

                                                <div class="yunset_bth_box">
                                                    <asp:Button ID="Button1" runat="server" Text="保 存" CssClass="mui-btn mui-btn-block mui-btn-primary" Height="45px" OnClick="Button1_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mui-scrollbar mui-scrollbar-vertical">
                                        <div class="mui-scrollbar-indicator" style="transition-duration: 0ms; display: none; height: 558px; transform: translate3d(0px, 0px, 0px) translateZ(0px);"></div>
                                    </div>
                                </div>
                            </div>
                            <!--页面主内容区结束-->
                        </div>
                    </div>
                </div>
            </div>
            <!--页面主结构结束-->
            <!--单页面开始-->

            <!--单页面结束-->
            <div id="contenthtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="3">
                        <%--<div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yun_wap_addresume_box_group">
                                <div class="yun_wap_addresume_box_control_text">
                                    <textarea name="content" id="content" style="height: 200px;" class="yun_wap_addresume_texttextAreaMsg "></textarea>
                                </div>
                                <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                            </div>
                        </div>--%>
                        <div class="mui-scrollbar mui-scrollbar-vertical">
                            <div class="mui-scrollbar-indicator" style="transition-duration: 0ms; display: none; height: 8px; transform: translate3d(0px, -8px, 0px) translateZ(0px);"></div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="js/mui.picker.min.js" language="javascript"></script>
            <script src="js/mui.poppicker.js" language="javascript"></script>
            <script src="js/mui.view.js" language="javascript"></script>
            <script src="js/resume.js" language="javascript"></script>
            <script>
                var formData = new FormData(),
                    newuploadpic;

                var eduData = [];
                ''
                eduData.push({
                    value: '高中以下',
                    text: '高中以下'
                })
                ''
                eduData.push({
                    value: '高中',
                    text: '高中'
                })
                ''
                eduData.push({
                    value: '中专',
                    text: '中专'
                })
                ''
                eduData.push({
                    value: '大专',
                    text: '大专'
                })
                ''
                eduData.push({
                    value: '本科',
                    text: '本科'
                })
                ''
                eduData.push({
                    value: '硕士',
                    text: '硕士'
                })
                ''
                eduData.push({
                    value: '博士',
                    text: '博士'
                })
                ''
                mui.init();
                var viewApi = mui('#app').view({
                    defaultPage: '#main'
                });
                //初始化单页的区域滚动
                mui('.mui-scroll-wrapper').scroll({
                    scrollY: true, //是否竖向滚动
                    scrollX: false, //是否横向滚动
                    startX: 0, //初始化时滚动至x
                    startY: 0, //初始化时滚动至y
                    indicators: true, //是否显示滚动条
                    deceleration: 0.0006, //阻尼系数,系数越小滑动越灵敏
                    // bounce: true //是否启用回弹
                });
                var view = viewApi.view;
                var oldBack = mui.back;
                mui.back = function () {
                    if (viewApi.canBack()) {
                        viewApi.back();
                    } else {
                        oldBack();
                    }
                };
                view.addEventListener('pageBack', function (e) {
                    if (e.detail.page.id == 'contenthtml') {
                        if (document.getElementById('content')) {
                            document.getElementById('contentshow').innerText = document.getElementById('content').value.replace(/<\/?.+?>/g, "").replace(/ /g, "");
                        }
                    }

                });
                mui('.totoday').each(function () {
                    this.addEventListener('toggle', function (event) {
                        if (event.detail.isActive) {
                            document.getElementById('edatePicker').disabled = true;
                            document.getElementById('edatePicker').innerText = "2018-11"
                            document.getElementById('totoday').value = 1;
                        } else {
                            document.getElementById('totoday').value = '';
                            document.getElementById('edatePicker').disabled = false;
                            document.getElementById('edatePicker').innerText = "请选择离职时间"
                        }
                    });
                });
                $(function () {
                    var submit = document.getElementById('submit');
                    submit.addEventListener('tap', kresume, false)
                });
                //上传图片
            </script>
            <script src="js/publicselect.js" language="javascript"></script>



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

        </div>

    </form>
</body>
</html>
