<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_job_applyjob.aspx.cs" Inherits="c_job_applyjob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

    <script type="text/javascript">
        function UserAddVerify() {
            var Uname = document.getElementById("uname").value;
            var Birthday = document.getElementById("birthday").value;
            var Edu = document.getElementById("edu").value;
            var Exp = document.getElementById("exp").value;
            var Type = document.getElementById("type").value;
            var Report = document.getElementById("report").value;
            var Telphone = document.getElementById("telphone").value;
            var Eduname = document.getElementById("eduname").value;
            var Edusdate = document.getElementById("edusdate").value;
            var Eduedate = document.getElementById("eduedate").value;
            var Education = document.getElementById("education").value;
            var Eduspec = document.getElementById("eduspec").value;
            var Paw = document.getElementById("paw").value;
            var Paww = document.getElementById("paww").value;

            if (Uname == "" || Uname == null) {
                alert("请填写真实姓名");
                return false;
            }
            else if (Birthday == "" || Birthday == null) {
                alert("请选择出生年月");
                return false;
            }
            else if (Edu == "" || Edu == null) {
                alert("请选择最高学历");
                return false;
            }
            else if (Exp == "" || Exp == null) {
                alert("请选择工作经验");
                return false;
            }
            else if (Type == "" || Type == null) {
                alert("请选择工作性质");
                return false;
            }
            else if (Report == "" || Report == null) {
                alert("请选择到岗时间");
                return false;
            }
            else if (Telphone == "" || Telphone == null) {
                alert("请输入手机号码");
                return false;
            }
            else if (Paw == "" || Paw == null) {
                alert("请输入密码");
                return false;
            }
            else if (Paww == "" || Paww == null || Paw != Paww) {
                alert("对不起，两次输入密码不一样");
                return false;
            }
            else if (Eduname == "" || Eduname == null) {
                alert("请填写学校名称");
                return false;
            }
            else if (Edusdate == "" || Edusdate == null) {
                alert("请选择入校时间");
                return false;
            }
            else if (Eduedate == "" || Eduedate == null) {
                alert("请选择离校时间");
                return false;
            }
            else if (Education == "" || Education == null) {
                alert("请选择毕业学历");
                return false;
            }
            else if (Eduspec == "" || Eduspec == null) {   
                alert("请填写所学专业");
                return false;
            }
            return true;
        }
    </script>

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
                                <div class="header_p_z">快速申请</div>
                            </div>

                        </div>
                    </div>
                </div>
            </header>
        </div>
        <link rel="stylesheet" href="css/mui.picker.min.css" type="text/css" />
        <link rel="stylesheet" href="css/wap_tck.css" type="text/css" />
        <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
        <div id="app" class="mui-views" data-view="1">
            <div class="mui-view">
                <div class="mui-pages">
                    <div id="main" class="mui-page mui-page-center">
                        <!--页面主内容区开始-->
                        <div class="mui-page-content">
                            <div class="" data-scroll="2">
                                <div class="mui-scroll" style="transform: translate3d(0px, -2px, 0px) translateZ(0px); transition-duration: 0ms; transition-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);">
                                    <div class="yun_reg_BasicInfo_h1">

                                        <div class="yun_reg_BasicInfo_h1_em">
                                            如您有简历，可直接登录
											<a href="c_login.aspx" class="yun_reg_BasicInfo_h1_bth">登录</a>
                                        </div>
                                    </div>
                                    <div class="yun_applyjobuid_tit mt15">基本信息</div>

                                    <ul class="yun_newwap_box">
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">真实姓名</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="text" runat="server" name="uname" id="uname" placeholder="请填写真实姓名" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">性别</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="sexPicker" class="mui-btn mui-btn-block" type="button" data-sex="">请选择性别</button>
                                                <input type="hidden" runat="server" id="sex" name="sex" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">出生年月</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="birthdayUserPicker" data-options="{&quot;type&quot;:&quot;date&quot;,&quot;value&quot;:&quot;1988-08-08&quot;,&quot;beginYear&quot;:1900,&quot;endYear&quot;:2018}" class="btn mui-btn mui-btn-block" type="button">请选择出生年月</button>
                                                <input type="hidden" runat="server" id="birthday" name="birthday" value="" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">最高学历</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="eduPicker" class="mui-btn mui-btn-block" type="button" data-edu="">请选择最高学历</button>
                                                <input type="hidden" runat="server" id="edu" name="edu" value="" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">工作经验</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="expPicker" class="mui-btn mui-btn-block" type="button" data-exp="">请选择工作经验</button>
                                                <input type="hidden" runat="server" id="exp" name="exp" value="" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">工作性质</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="typePicker" class="mui-btn mui-btn-block" type="button" data-type="">请选择工作性质</button>
                                                <input type="hidden" runat="server" id="type" name="type" value="" />
                                            </div>
                                        </li>
                                        <li class=""><span class="yun_newwap_text_name">到岗时间</span>
                                            <div class="yun_newwap_text_box">
                                                <button id="reportPicker" class="mui-btn mui-btn-block" type="button" data-report="">请选择到岗时间</button>
                                                <input type="hidden" runat="server" id="report" name="report" value="" />
                                            </div>
                                        </li>
                                    </ul>

                                    <ul class="yun_newwap_box mt15">
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">手机号码</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="text" runat="server" name="telphone" id="telphone" value="" placeholder="请输入手机号码" />
                                            </div>
                                        </li>
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">密码</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="password" runat="server" name="paw" id="paw" value="" placeholder="请输入密码" />
                                            </div>
                                        </li>
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">确认密码</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="password" runat="server" name="paww" id="paww" value="" placeholder="请输入确认密码" />
                                            </div>
                                        </li>
                                    </ul>

                                    <div class="yun_applyjobuid_tit mt15">毕业院校</div>
                                    <ul class="yun_newwap_box">
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">学校名称</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="text" runat="server" id="eduname" name="eduname" value="" placeholder="请填写学校名称" class="" />
                                            </div>
                                        </li>
                                        <li><span class="yun_newwap_text_name">入校时间</span> <span class="yun_newwap_text_box">
                                            <%-- <button id="edusdateComPicker" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}" class="btn mui-btn mui-btn-block">请选择入校时间</button>--%>
                                            <button id="edusdateComPicker" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}" class="btn mui-btn mui-btn-block" type="button">请选择入校时间</button>
                                            <input type="hidden" runat="server" id="edusdate" name="edusdate" value="" /></span>

                                        </li>
                                        <li><span class="yun_newwap_text_name">离校时间</span> <span class="yun_newwap_text_box">
                                            <%--<button id="eduedateComPicker" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}" class="btn mui-btn mui-btn-block">请选择离校时间</button>--%>
                                            <button id="eduedateComPicker" data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}" class="btn mui-btn mui-btn-block" type="button">请选择离校时间</button>
                                            <input type="hidden" runat="server" id="eduedate" name="eduedate" value="" /></span>
                                        </li>
                                        <li><span class="yun_newwap_text_name">毕业学历</span> <span class="yun_newwap_text_box">
                                            <button id="educationUserPicker" class="mui-btn mui-btn-block" type="button" data-education="">请选择毕业学历</button>
                                            <input type="hidden" runat="server" id="education" name="education" value="" />
                                        </span>
                                        </li>
                                        <li class="yun_newwap_text"><span class="yun_newwap_text_name">所学专业</span>
                                            <div class="yun_newwap_text_box">
                                                <input type="text" runat="server" id="eduspec" name="eduspec" value="" placeholder="请填写所学专业" class="" />
                                            </div>
                                        </li>

                                    </ul>

                                    <div class="yun_newwap_bth">
                                        <%-- <button id="applybtn" onclick="addButton()">立即申请</button></div>--%>
                                        <asp:Button ID="btnSave" runat="server" Text="立即申请" OnClick="Button1_Click" />
                                        <%-- <input type="button" value="点击增加" onclick="addButton();" />--%>
                                        <div class="yun_newwap_bth_fh">
                                            <a href="javascript:void(0)" class="mui-action-back">&lt; 返回上一步</a>
                                        </div>

                                        <br />
                                        <br />
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/prefixfree.min.js" language="javascript"></script>
        <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
        <script src="js/layer.m.js" language="javascript"></script>
        <script src="js/public.js" language="javascript"></script>
        <script src="js/mui.min.js" language="javascript"></script>
        <script src="js/mui.view.js" language="javascript"></script>
        <script src="js/mui.picker.min.js" language="javascript"></script>
        <script src="js/mui.poppicker.js" language="javascript"></script>
        <script src="js/gt.js"></script>
        <script src="js/mobile.js" type="text/javascript"></script>
        <script>
            var wapurl = "";
            var weburl = ""
            var backurl = '';

            var sexData = [];
            '';
            sexData.push({
                value: '男',
                text: '男'
            });
            '';
            sexData.push({
                value: '女',
                text: '女'
            });
            '';
            var eduData = [];
            '';
            eduData.push({
                value: '高中以下',
                text: '高中以下'
            });
            '';
            eduData.push({
                value: '高中',
                text: '高中'
            });
            '';
            eduData.push({
                value: '中专',
                text: '中专'
            });
            '';
            eduData.push({
                value: '大专',
                text: '大专'
            });
            '';
            eduData.push({
                value: '本科',
                text: '本科'
            });
            '';
            eduData.push({
                value: '硕士',
                text: '硕士'
            });
            '';
            eduData.push({
                value: '博士',
                text: '博士'
            });
            '';
            var expData = [];
            '';
            expData.push({
                value: '无经验',
                text: '无经验'
            });
            '';
            expData.push({
                value: '应届毕业生',
                text: '应届毕业生'
            });
            '';
            expData.push({
                value: '1年以上',
                text: '1年以上'
            });
            '';
            expData.push({
                value: '2年以上',
                text: '2年以上'
            });
            '';
            expData.push({
                value: '3年以上',
                text: '3年以上'
            });
            '';
            expData.push({
                value: '4年以上',
                text: '4年以上'
            });
            '';
            expData.push({
                value: '5年以上',
                text: '5年以上'
            });
            '';
            expData.push({
                value: '6年以上',
                text: '6年以上'
            });
            '';
            expData.push({
                value: '8年以上',
                text: '8年以上'
            });
            '';
            expData.push({
                value: '10年以上',
                text: '10年以上'
            });
            '';
            var typeData = [];
            '';
            typeData.push({
                value: '不限',
                text: '不限'
            });
            '';
            typeData.push({
                value: '全职',
                text: '全职'
            });
            '';
            typeData.push({
                value: '兼职',
                text: '兼职'
            });
            '';
            var reportData = [];
            '';
            reportData.push({
                value: '随时到岗',
                text: '随时到岗'
            });
            '';
            reportData.push({
                value: '1周以内',
                text: '1周以内'
            });
            '';
            reportData.push({
                value: '3周以内',
                text: '3周以内'
            });
            '';
            reportData.push({
                value: '1个月之内',
                text: '1个月之内'
            });
            '';
            reportData.push({
                value: '3个月之内',
                text: '3个月之内'
            });
            '';
            reportData.push({
                value: '不确定',
                text: '不确定'
            });
            '';
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
                indicators: false, //是否显示滚动条
                deceleration: 0.0006, //阻尼系数,系数越小滑动越灵敏
                // bounce: true //是否启用回弹
            });
            var view = viewApi.view;
            (function ($) {
                //处理view的后退与webview后退
                var oldBack = $.back;
                $.back = function () {
                    if (viewApi.canBack()) { //如果view可以后退，则执行view的后退
                        viewApi.back();
                    } else { //执行webview后退
                        oldBack();
                    }
                };
            })(mui);
            view.addEventListener('pageBeforeShow', function (e) {
                document.activeElement.blur();
            });
            view.addEventListener('pageBeforeBack', function (e) {
                var worksdate = document.getElementById('worksdate').value;
                var workedate = document.getElementById('workedate').value;
                if (worksdate && workedate) {
                    document.getElementById('worktimeshow').innerText = worksdate + '~' + workedate;
                }
                var workcontent = document.getElementById('workcontent').value;
                if (workcontent) {
                    document.getElementById('workcontentshow').innerText = workcontent;
                }
                var edusdate = document.getElementById('edusdate').value;
                var eduedate = document.getElementById('eduedate').value;
                if (edusdate && eduedate) {
                    document.getElementById('edutimeshow').innerText = edusdate + '~' + eduedate;
                }
                var prosdate = document.getElementById('prosdate').value;
                var proedate = document.getElementById('proedate').value;
                if (prosdate && proedate) {
                    document.getElementById('protimeshow').innerText = prosdate + '~' + proedate;
                }
                var procontent = document.getElementById('procontent').value;
                if (procontent) {
                    document.getElementById('procontentshow').innerText = procontent;
                }
            });
            var Timer;
            var smsTimer_time = 90; //倒数 90
            var smsTimer_flag = 90; //倒数 90
            var smsTime_speed = 1000; //速度 1秒钟

            function exitsid(id) {
                if (document.getElementById(id)) {
                    return true;
                } else {
                    return false;
                }
            }

        </script>
        <script src="js/category.js" language="javascript"></script>
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

