<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_addresume.aspx.cs" Inherits="m_addresume" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>蚂蚁帮工
    </title>
    <link rel="stylesheet" href="css/mui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
    <link rel="stylesheet" href="css/css.css" type="text/css" />
    <script src="js/prefixfree.min.js" language="javascript"></script>
    <script src="js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="js/layer.m.js" language="javascript"></script>
    <script src="js/public.js" language="javascript"></script>
    <script src="js/mui.min.js" language="javascript"></script>
     <script type="text/javascript">
         function UserAddVerify() {
             var Hy = document.getElementById("hy").value;
             var Job1 = document.getElementById("job1").value;
             var Name = document.getElementById("name").value;
             var Salary = document.getElementById("salary").value;
             var Provinceid = document.getElementById("provinceid").value;
             var Type = document.getElementById("type").value;
             var Report = document.getElementById("report").value;
             var Jobstatus = document.getElementById("jobstatus").value;

             if (Hy == "" || Hy == null) {
                 alert("请选择从事行业！");
                 return false;
             }
             else if (Job1 == "" || Job1 == null) {
                 alert("请选择工作职能！");
                 return false;
             }
             else if (Name == "" || Name == null) {
                 alert("请填写期望岗位！");
                 return false;
             }
             else if (Salary == "" || Salary == null) {
                 alert("请填写期望薪资！");
                 return false;
             }
             else if (Provinceid == "" || Provinceid == null) {
                 alert("请选择期望城市！");
                 return false;
             }
             else if (Type == "" || Type == null) {
                 alert("请选择工作性质！");
                 return false;
             }
             else if (Report == "" || Report == null) {
                 alert("请选择到岗时间！");
                 return false;
             }
             else if (Jobstatus == "" || Jobstatus == null) {
                 alert("请选择求职状态！");
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
                            <div class="header_h1">创建简历</div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="header_navlist">
              <%--  <a href="c_login.aspx" id=""><i class="naviconfont"></i></a>--%>
                <a href="c_login.aspx" class="login_reg"><span class="login_reg_s">登录</span></a>
            </div>
            <link rel="stylesheet" href="css/wap_tck.css" type="text/css">
            <script src="js/resume.js" language="javascript"></script>
            <link rel="stylesheet" href="css/mui.picker.min.css" type="text/css">
            <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css">
            <link rel="stylesheet" href="css/style.css" type="text/css">
            <link rel="stylesheet" href="css/cmc.css" type="text/css">
            <div class="wap_member_comp_h1"><span>创建简历</span></div>
            <div id="app" class="mui-views">
                <div class="mui-view">
                    <div class="mui-pages">
                    </div>
                </div>
            </div>
            <div id="main" class="mui-page">
                <!--页面主内容区开始-->
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yunset_addresume_tit">基本信息</div>
                            <ul class="yunset_list ">
                                <li class="yunset_list_text"><span class="yunset_list_name">姓名</span>
                                    <div class="yunset_list_commentary">
                                        <input type="text" name="uname" id="uname" value="" placeholder="请填写姓名" class="" runat="server">
                                    </div>
                                </li>
                                <li class=""><span class="yunset_list_name">性别</span>
                                    <div class="yunset_list_commentary">
                                        <button id="sexPicker" class="mui-btn mui-btn-block"
                                            type="button" runat="server">
                                            男</button>
                                        <input type="hidden" id="sex" name="sex" value="男" runat="server">
                                    </div>
                                </li>
                                <li class=""><span class="yunset_list_name">出生年月</span>
                                    <div class="yunset_list_commentary">
                                        <button id="birthdayUserPicker" data-options="{&quot;type&quot;:&quot;date&quot;,&quot;value&quot;:&quot;2000-08-20&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2099}"
                                            class="btn mui-btn mui-btn-block" runat="server" type="button">
                                            请选择</button>
                                        <input type="hidden" id="birthday" name="birthday" value="" runat="server">
                                    </div>
                                </li>
                                <li class="yunset_list_text"><span class="yunset_list_name">现居住地</span>
                                    <div class="yunset_list_commentary">
                                        <input type="text" name="living" id="living"
                                            value="" placeholder="请填写居住地" class="" runat="server">
                                    </div>
                                </li>

                                <li class=""><span class="yunset_list_name">最高学历</span>
                                    <div class="yunset_list_commentary">
                                        <button id="eduPicker" class="mui-btn mui-btn-block"
                                            type="button" runat="server">
                                            请选择</button>
                                        <input type="hidden" id="edu" name="edu" value="" runat="server">
                                    </div>
                                </li>

                                <li class=""><span class="yunset_list_name">工作经验</span>
                                    <div class="yunset_list_commentary">
                                        <button id="expPicker" class="mui-btn mui-btn-block"
                                            type="button" runat="server">
                                            请选择</button>
                                        <input type="hidden" id="exp" name="exp" value="" runat="server">
                                    </div>
                                </li>
                                <li class="yunset_list_text"><span class="yunset_list_name">手机</span><span class="yunset_list_commentary">
                                    <input type="text" name="telphone" id="telphone" value=""
                                        onkeyup="this.value=this.value.replace(/[^0-9.]/g,&#39;&#39;)" class=""
                                        placeholder="请填写手机号码" runat="server"></span>
                                </li>
                                <li class="yunset_list_text">
                                    <span class="yunset_list_name">邮箱</span>
                                    <span class="yunset_list_commentary ">
                                        <div class="">
                                            <input type="text" name="email" id="email" value="" class=""
                                                placeholder="请填写联系邮箱" runat="server">
                                        </div>
                                    </span>
                                </li>
                            </ul>
                            <div class="yunset_bth_box" style="background: transparent; border: none; padding: 0px;">
                                <a href="#addnexthtml" class="yun_wap_info_brief_tit_bc addnext">下一步</a>
                            </div>
                            <div style="height: 30px;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="addnexthtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="3">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yunset_addresume_tit">求职意向</div>
                            <ul class="yunset_list">
                                <li class=""><span class="yunset_list_name">从事行业</span>
                                    <div class="yunset_list_commentary">
                                        <button id="hyPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择从事行业</button>
                                        <input type="hidden" id="hy" name="hy" value="" runat="server">
                                    </div>
                                </li>
                                <li class="yunset_list_select">
                                    <span class="yunset_list_name">工作职能</span>
                                    <span class="yunset_list_commentary">
                                        <button id="jobPicker" class="mui-btn mui-btn-block" type="button" data-job1=""
                                            data-job1_son="" data-job_post="" runat="server">
                                            请选择工作职能</button>
                                        <input type="hidden" id="job1" name="job1" runat="server">
                                        <input type="hidden" id="job1_son" name="job1_son"  runat="server">
                                        <input type="hidden" id="job_post" name="job_post"  runat="server">
                                    </span>
                                </li>
                                <li class="yunset_list_text">
                                    <span class="yunset_list_name">期望岗位</span>
                                    <div class="yunset_list_commentary">
                                        <input type="text" name="name" id="name" value=""
                                            placeholder="比如：销售总监,销售经理" class="" runat="server">
                                    </div>
                                </li>
                                <li>
                                    <a href="#salaryhtml"><span class="yunset_list_name">期望薪资</span>
                                        <span class="yunset_list_commentary" id="salaryshow" runat="server">请填写期望薪资</span></a>
                                    <input type="hidden" id="salary" name="salary" value="" runat="server">
                                </li>
                                <li class="yunset_list_select">
                                    <span class="yunset_list_name">期望城市</span>
                                    <span class="yunset_list_commentary">
                                        <button id='cityPicker' class="mui-btn mui-btn-block" type='button' data-provinceid=""
                                            data-cityid="" data-three_cityid="" runat="server">
                                            请选择期望城市</button>
                                        <input type="hidden" id="provinceid" name="provinceid" value="" runat="server">
                                        <input type="hidden" id="cityid" name="cityid" value="" runat="server">
                                        <input type="hidden" id="three_cityid" name="three_cityid" value="" runat="server">
                                    </span>
                                </li>
                                <li><span class="yunset_list_name">工作性质</span><span class="yunset_list_commentary">
                                    <button id="typePicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择工作性质</button>
                                    <input type="hidden" id="type" name="type" value="" runat="server">
                                </span></li>
                                <li><span class="yunset_list_name">到岗时间</span><span class="yunset_list_commentary">
                                    <button id="reportPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择到岗时间</button>
                                    <input type="hidden" id="report" name="report" value="" runat="server">
                                </span></li>
                                <li><span class="yunset_list_name">求职状态</span><span class="yunset_list_commentary">
                                    <button id="jobstatusPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择求职状态</button>
                                    <input type="hidden" id="jobstatus" name="jobstatus" value="" runat="server">
                                </span></li>
                            </ul>
                            <div class="yunset_bth_box" style="background: transparent; border: none; padding: 0px;">
                                <%--  <a href="#addnexttwohtml" class="yun_wap_info_brief_tit_bc addnexttwo">下一步</a>--%>
                                <asp:Button ID="resumesubmit" runat="server" Text="保 存" Height="40px" CssClass="mui-btn mui-btn-block mui-btn-primary" OnClick="resumesubmit_Click" />
                                <a class="yun_wap_info_brief_tit_bc mui-action-back" style="background: #f8f8f8; border: 1px solid #eee; color: #333; margin-bottom: 20px;">返回上一步</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="addnexttwohtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="4">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yunset_addresume_tit">毕业院校</div>
                            <ul class="yunset_list">
                                <li class="yunset_list_text"><span class="yunset_list_name">学校名称</span>
                                    <div class="yunset_list_commentary">
                                        <input type="text" id="eduname" name="eduname" value="" placeholder="请填写学校名称" class="" runat="server">
                                    </div>
                                </li>
                                <li>
                                    <a href="#edutimehtml"><span class="yunset_list_name">在校时间</span>
                                        <div class="yunset_list_commentary" id="edutimeshow" runat="server">请选择在校时间</div>
                                    </a>
                                </li>
                                <li><span class="yunset_list_name">毕业学历</span> <span class="yunset_list_commentary">
                                    <button id="educationUserPicker"
                                        class="mui-btn mui-btn-block" type="button" runat="server">
                                        请选择毕业学历</button>
                                    <input type="hidden" id="education" name="education" value="" runat="server">
                                </span>
                                </li>
                                <li class="yunset_list_text"><span class="yunset_list_name">所学专业</span>
                                    <div class="yunset_list_commentary">
                                        <input type="text" id="eduspec" name="eduspec" value=""
                                            placeholder="请填写所学专业" class="" runat="server">
                                    </div>
                                </li>
                            </ul>
                            <div class="yunset_bth_box" style="background: transparent; border: none; padding: 0px;">
                                <%--<button id="resumesubmit" type="button" class="mui-btn mui-btn-block mui-btn-primary" style="margin-top: 20px;">保
                            存</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="保 存" Height="40px" CssClass="mui-btn mui-btn-block mui-btn-primary" OnClick="resumesubmit_Click" />
                                <a class="yun_wap_info_brief_tit_bc mui-action-back" style="background: #f8f8f8; border: 1px solid #eee; color: #333; margin-bottom: 20px;">返回上一步</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--单页面结束-->
            <div id="procontenthtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="5">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yun_wap_addresume_box_group">
                                <div class="yun_wap_addresume_box_nexttit">项目内容</div>
                                <div class="yun_wap_addresume_box_control_text">
                                    <textarea name="procontent" id="procontent" style="width: 100%; height: 200px;" class="yun_wap_addresume_texttextAreaMsg"></textarea>
                                </div>
                                <a class="yun_wap_info_brief_tit_bc mui-action-back" style="margin-top: 0px;">确定</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="workcontenthtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="6">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div class="yun_wap_addresume_box_group">
                                <div class="yun_wap_addresume_box_nexttit">工作内容</div>
                                <div class="yun_wap_addresume_box_control_text">
                                    <textarea name="workcontent" id="workcontent" style="width: 100%; height: 200px;" class="yun_wap_addresume_texttextAreaMsg"></textarea>
                                </div>
                                <a class="yun_wap_info_brief_tit_bc mui-action-back" style="margin-top: 0px;">确定</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="protimehtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="7">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <ul class="yunset_list mt15">
                                <li><span class="yunset_list_name">开始时间</span> <span class="yunset_list_commentary">
                                    <button id="prosdateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block" runat="server" type="button">
                                        请选择开始时间</button><input type="hidden" id="prosdate"
                                            name="prosdate" value=""></span>

                                </li>
                                <li><span class="yunset_list_name">结束时间</span> <span class="yunset_list_commentary">
                                    <button id="proedateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block" type="button">
                                        请选择结束时间</button><input type="hidden" id="proedate"
                                            name="proedate" value=""></span>
                                </li>
                            </ul>
                            <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="edutimehtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="8">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <ul class="yunset_list mt15">
                                <li><span class="yunset_list_name">入校时间</span> <span class="yunset_list_commentary">
                                    <button id="edusdateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block" runat="server" type="button">
                                        请选择入校时间</button>
                                    <input type="hidden" id="edusdate" name="edusdate" value=""></span>

                                </li>
                                <li><span class="yunset_list_name">离校时间</span> <span class="yunset_list_commentary">
                                    <button id="eduedateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block" runat="server" type="button">
                                        请选择离校时间</button>
                                    <input type="hidden" id="eduedate" name="eduedate" value=""></span>
                                </li>
                            </ul>
                            <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="worktimehtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="9">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <ul class="yunset_list mt15">
                                <li><span class="yunset_list_name">入职时间</span> <span class="yunset_list_commentary">
                                    <button id="worksdateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block">
                                        请选择入职时间</button>
                                    <input type="hidden" id="worksdate" name="worksdate" value=""></span>

                                </li>
                                <li><span class="yunset_list_name">离职时间</span> <span class="yunset_list_commentary">
                                    <button id="workedateComPicker"
                                        data-options="{&quot;type&quot;:&quot;month&quot;,&quot;beginYear&quot;:1955,&quot;endYear&quot;:2018}"
                                        class="btn mui-btn mui-btn-block">
                                        请选择离职时间</button>
                                    <input type="hidden" id="workedate" name="workedate" value=""></span>
                                </li>
                                <li class="yunset_list_text">
                                    <span class="yunset_list_name" style="width: 150px;">至今<em class="yunset_xttip"></em></span>
                                    <div class="yunset_kg_box">
                                        <div class="yunset_kg">
                                            <div class="mui-switch mui-switch-mini totoday" data-switch="13">
                                                <div class="mui-switch-handle"></div>
                                            </div>
                                            <input type="hidden" id="totoday" name="totoday" value="">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="salaryhtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper" data-scroll="12">
                        <div class="mui-scroll wap_member" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <ul class="yunset_list">
                                <li class="yunset_list_text"><span class="yunset_list_name">最低薪资</span>
                                    <div class="yunset_list_xzbox">
                                        <input type="number" id="minsalary" value="" placeholder="请填写最低薪资" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)">
                                        <span class="yunset_list_xz">元/月</span>
                                    </div>
                                </li>
                                <li class="yunset_list_text"><span class="yunset_list_name">最高薪资<font color="#999">(选填)</font></span>
                                    <div class="yunset_list_xzbox">
                                        <input type="text" id="maxsalary" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)"
                                            value="" placeholder="请填写最高薪资" runat="server">
                                        <span class="yunset_list_xz">元/月</span>
                                    </div>
                                </li>
                            </ul>
                            <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                        </div>
                    </div>
                </div>
            </div>

            <input type="hidden" id="resume_edu" value="1">
            <input type="hidden" id="resume_exp" value="0">
            <input type="hidden" id="resume_pro" value="0">
            <script src="js/mui.picker.min.js" language="javascript"></script>
            <script src="js/mui.poppicker.js" language="javascript"></script>
            <script src="js/mui.view.js" language="javascript"></script>
            <!-- 简历的数据 -->
            <script src="js/addresume.js"></script>
            <script language="javascript">
                mui.init();
                var viewApi = mui('#app').view({
                    defaultPage: '#main'
                });
                //初始化单页的区域滚动
                var view = viewApi.view;
                (function ($) {
                    mui('.mui-scroll-wrapper').scroll({
                        scrollY: true, //是否竖向滚动
                        scrollX: false, //是否横向滚动
                        startX: 0, //初始化时滚动至x
                        startY: 0, //初始化时滚动至y
                        indicators: false, //是否显示滚动条
                        deceleration: 0.0006, //阻尼系数,系数越小滑动越灵敏
                        // bounce: true //是否启用回弹
                    });
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
                    var salaryshow = ''
                    var minsalary = document.getElementById('minsalary').value;
                    var maxsalary = document.getElementById('maxsalary').value;
                    if (minsalary) {
                        salaryshow = minsalary;
                        if (maxsalary) {
                            salaryshow += '-' + maxsalary + '元/月';
                        } else {
                            salaryshow += '元以上/月';
                        }
                        if (parseInt(maxsalary) > 0 && parseInt(maxsalary) < parseInt(minsalary)) {
                            document.getElementById('minsalary').value = '';
                            document.getElementById('maxsalary').value = '';
                            document.getElementById('salaryshow').innerText = '';
                            return mui.toast('最低薪资不能比最高薪资高，请重新填写');
                        }
                        document.getElementById('salaryshow').innerText = salaryshow;
                        document.getElementById('salary').value = salaryshow;
                    }
                    var worksdate = document.getElementById('worksdate').value;
                    var workedate = document.getElementById('workedate').value;
                    var totoday = document.getElementById('totoday').value;
                    if (worksdate && (workedate || totoday)) {
                        if (totoday) {
                            document.getElementById('worktimeshow').innerText = worksdate + '-至今';
                        } else {
                            document.getElementById('worktimeshow').innerText = worksdate + '-' + workedate;
                        }

                    }
                    var workcontent = document.getElementById('workcontent').value;
                    if (workcontent) {
                        document.getElementById('workcontentshow').innerText = workcontent;
                    }
                    var edusdate = document.getElementById('edusdate').value;
                    var eduedate = document.getElementById('eduedate').value;
                    if (edusdate && eduedate) {
                        document.getElementById('edutimeshow').innerText = edusdate + '-' + eduedate;
                    }
                    var prosdate = document.getElementById('prosdate').value;
                    var proedate = document.getElementById('proedate').value;
                    if (prosdate && proedate) {
                        document.getElementById('protimeshow').innerText = prosdate + '-' + proedate;
                    }
                    var procontent = document.getElementById('procontent').value;
                    if (procontent) {
                        document.getElementById('procontentshow').innerText = procontent;
                    }
                });
                mui('.totoday').each(function () {
                    this.addEventListener('toggle', function (event) {
                        if (event.detail.isActive) {
                            document.getElementById('workedateComPicker').disabled = true;
                            document.getElementById('workedateComPicker').innerText = "2018-11"
                            document.getElementById('totoday').value = 1;
                        } else {
                            document.getElementById('totoday').value = '';
                            document.getElementById('workedateComPicker').disabled = false;
                            document.getElementById('workedateComPicker').innerText = "请选择离职时间"
                        }
                    });
                });
                $(function () {
                    if (document.getElementById('main')) {
                        document.getElementById('main').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                    }
                    if (document.getElementById('addnexthtml')) {
                        document.getElementById('addnexthtml').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                    }
                    if (document.getElementById('addnexttwohtml')) {
                        document.getElementById('addnexttwohtml').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                    }
                    mui('.yunset_bth_box').on('tap', '.addnext', function () {
                        var uname = document.getElementById('uname'),
                            sex = document.getElementById('sex'),
                            birthday = document.getElementById('birthday'),
                            edu = document.getElementById('edu'),
                            exp = document.getElementById('exp'),
                            telphone = document.getElementById('telphone'),
                            email = document.getElementById('email'),
                            living = document.getElementById('living');
                        if (uname.value == "") {
                            mui.toast('请填写真实姓名！'); return false;
                        }
                        if (sex.value == '') {
                            mui.toast('请选择性别！'); return false;
                        }
                        if (birthday.value == '') {
                            mui.toast('请选择出生年月！'); return false;
                        }
                        if (living.value == '') {
                            mui.toast('请选择现居住地！'); return false;
                        }
                        if (edu.value == '') {
                            mui.toast('请选择最高学历！'); return false;
                        }
                        if (exp.value == '') {
                            mui.toast('请选择工作经验！'); return false;
                        }
                        if (telphone.value == '') {
                            mui.toast('请填写手机号码！'); return false;
                        } else {
                            var reg = /^[1][3456789]\d{9}$/; //验证手机号码  
                            if (!reg.test(telphone.value)) {
                                mui.toast('手机号码格式错误！'); return false;
                            }
                        }
                        var myreg = /^([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9\-]+@([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                        if (email.value != "" && !myreg.test(email.value)) {
                            mui.toast('邮箱格式错误！'); return false;
                        }
                    })
                    mui('.yunset_bth_box').on('tap', '.addnexttwo', function () {
                        var name = document.getElementById('name'),
                            hy = document.getElementById('hy'),
                            job_classid = document.getElementById('job_classid'),
                            city_classid = document.getElementById('city_classid'),
                            minsalary = document.getElementById('minsalary'),
                            maxsalary = document.getElementById('maxsalary'),
                            report = document.getElementById('report'),
                            type = document.getElementById('type'),
                            jobstatus = document.getElementById('jobstatus');
                        if (hy.value == "") {
                            mui.toast("请选择从事行业！"); return false;
                        }
                        if (job_classid.value == "") {
                            mui.toast('请选择期望职位！'); return false;
                        }
                        if (name.value == "") {
                            mui.toast('请填写期望岗位！'); return false;
                        }
                        if (minsalary.value == "") {
                            mui.toast('请填写期望薪资！'); return false;
                        }
                        if (maxsalary.value) {
                            if (parseInt(maxsalary.value) > 0 && parseInt(maxsalary.value) <= parseInt(minsalary.value)) {
                                mui.toast('最高薪资必须大于最低薪资！'); return false;
                            }
                        }
                        if (city_classid.value == "") {
                            mui.toast('请选择期望城市！'); return false;
                        }
                        if (type.value == "") {
                            mui.toast('请选择工作性质！'); return false;
                        }
                        if (report.value == "") {
                            mui.toast('请选择到岗时间！'); return false;
                        }
                        if (jobstatus.value == "") {
                            mui.toast('请选择求职状态！'); return false;
                        }
                    })
                    var resumesubmit = document.getElementById('resumesubmit');
                    resumesubmit.addEventListener('tap', addresume, false)
                });

            </script>
            <!-- 单选数据 -->
            <script src="js/job.cache.js" language="javascript"></script>
            <script src="js/city.cache.js" language="javascript"></script>
            <script src="js/category.js" language="javascript"></script>
            <script src="js/publicselect.js" language="javascript"></script>
            <script src="js/cmc.js" language="javascript"></script>
        </div>

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
