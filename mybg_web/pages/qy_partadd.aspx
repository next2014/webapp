<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_partadd.aspx.cs" Inherits="pages_qy_partadd" %>

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
    <script type="text/javascript">
        function UserAddVerify() {
            var Name = document.getElementById("name").value;
            var Type = document.getElementById("type").value;
            var Number = document.getElementById("number").value;
            var Worktime = document.getElementById("worktime").value;
            var Descriptiontext = document.getElementById("descriptiontext").value;
            var Descriptionsdate = document.getElementById("descriptionsdate").value;
            var Descriptionedate = document.getElementById("descriptionedate").value;
            var Descriptiondeadline = document.getElementById("descriptiondeadline").value;
            var Salary_typetext = document.getElementById("salary_typetext").value;
            var Billing_cycle = document.getElementById("billing_cycle").value;
            var Provinceid = document.getElementById("provinceid").value;
            var Address = document.getElementById("address").value;
            var Contenttext = document.getElementById("contenttext").value;
            var Linkman = document.getElementById("linkman").value;
            var Linktel = document.getElementById("linktel").value;
            
            if (Name == "" || Name == null) {
                alert("请填写职位名称！");
                return false;
            }
            else if (Type == "" || Type == null) {
                alert("请选择工作类型！");
                return false;
            }
            else if (Number == "" || Number == null) {
                alert("请确定招聘人数！");
                return false;
            }
            //else if (Worktime == "" || Worktime == null) {
            //    alert("请选择兼职时间！");
            //    return false;
            //}
            else if (Descriptionsdate == "" || Descriptionsdate == null) {
                alert("请选择兼职开始时间！");
                return false;
            }
            if (Descriptiontext == "1") {
                if (Descriptionedate == "" || Descriptionedate == null) {
                    alert("请选择兼职结束时间！");
                    return false;
                }
                if (Descriptiondeadline == "" || Descriptiondeadline == null) {
                    alert("请选择报名截止时间！");
                    return false;
                }
                if (Descriptionedate < Descriptionsdate) {
                    alert("兼职结束日期不能小于兼职开始日期！");
                    return false;
                }
                if (Descriptiondeadline > Descriptionedate) {
                    alert("兼职报名截止日期不能大于兼职结束日期！");
                    return false;
                }
            }

            if (Salary_typetext == "" || Salary_typetext == null) {
                alert("请填写薪水！");
                return false;
            }
            if (Billing_cycle == "" || Billing_cycle == null) {
                alert("请选择结算周期！");
                return false;
            }
            if (Provinceid == "" || Provinceid == null) {
                alert("请选择工作区域！");
                return false;
            } 
            if (Address == "" || Address == null) {
                alert("请填写详细地址！");
                return false;
            } 
            if (Contenttext == "" || Contenttext == null) {
                alert("请填写兼职内容！");
                return false;
            } 
            if (Linkman == "" || Linkman == null) {
                alert("请填写联系人！");
                return false;
            } 
            if (Linktel == "" || Linktel == null) {
                alert("请填写联系手机！");
                return false;
            }
            if (Linktel.length != 11) {
                alert("请填正确手机格式！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <form runat="server">
    <header>
    <div class="header_bg bg3">
        <a class="hd-lbtn mui-action-back" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
        <div class="header_h1">发布兼职</div>
    </div>
</header>
<link rel="stylesheet" href="../css/mui.picker.min.css" type="text/css" />
<link rel="stylesheet" href="../css/mui.poppicker.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/umeditor.min.css" type="text/css" />
<div id="app" class="mui-views">
    <div class="mui-view">
        <div class="mui-pages"></div>
    </div>
</div>
<!--页面主结构结束-->
<!--单页面开始-->
<div id="main" class="mui-page">
    <!--页面主内容区开始-->
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll">
                <ul class="yunset_list">
                    <li class="yunset_list_text"><span class="yunset_list_name">职位名称</span>
                        <span class="yunset_list_commentary">
                            <input type="text" name="name" id='name' value="" placeholder="请填写职位名称" class="" runat="server">
                            <input type="hidden" name="ida" id="ida" value="" class="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_select"><span class="yunset_list_name">工作类型</span>
                        <span class="yunset_list_commentary">
                            <button id='typePicker' class="mui-btn mui-btn-block" type='button' data-type="" runat="server">请选择</button>
                            <input type="hidden" id="type" name="type" value="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">招聘人数</span>
                        <span class="yunset_list_commentary">
                            <input type="text" name="number" id='number' value="" runat="server" placeholder="招聘人数" class="" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
                        </span>
                    </li>
                   <%-- <li>
                        <a href="#timehtml" id="worktimeeditor"><span class="yunset_list_name">兼职时间</span><span class="yunset_list_commentary yunset_list_js"
                                id="worktimeshow" runat="server">请填写</span></a>
                    </li>--%>
                    <input type="hidden" id="worktime" name="worktime" value="" runat="server">
                </ul>
                <ul class="yunset_list">
                    <li>
                        <a href="#datehtml" id="descriptioneditor"><span class="yunset_list_name">工作时间</span><span
                                class="yunset_list_commentary yunset_list_js" id="descriptionshow" runat="server">请填写</span></a>
                       
                    </li>
                     <input type="hidden" id="descriptiontext" name="descriptiontext"  value="0" runat="server">
                    <input type="hidden" id="descriptionsdate" name="descriptionsdate"  runat="server">
                    <input type="hidden" id="descriptionedate" name="descriptionedate"  runat="server">
                    <input type="hidden" id="descriptiondeadline" name="descriptiondeadline"  runat="server">
                </ul>
                <ul class="yunset_list">
                    <li class="yunset_list_select"><span class="yunset_list_name">性别要求</span>
                        <span class="yunset_list_commentary">
                            <button id='sexPicker' class="mui-btn mui-btn-block" type='button' data-sex="" runat="server">请选择</button>
                            <input type="hidden" id="sex" name="sex" value="" runat="server">
                        </span>
                    </li>
                    <li>
                        <a href="#salaryhtml" id="salary_typeeditor"><span class="yunset_list_name">兼职薪水</span><span
                                class="yunset_list_commentary yunset_list_js" id="salary_typeshow" runat="server">请填写</span></a>
                    </li>
                    <textarea style="display:none" id="salary_typetext" name="salary_type"  runat="server"></textarea>
                    <li class="yunset_list_select"><span class="yunset_list_name">结算周期</span>
                        <span class="yunset_list_commentary">
                            <button id='billing_cycleComPicker' class="mui-btn mui-btn-block" type='button'
                                data-billing_cycle="" runat="server">请选择</button>
                            <input type="hidden" id="billing_cycle" name="billing_cycle" value="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_select"><span class="yunset_list_name">工作区域</span>
                        <span class="yunset_list_commentary">
                            <button id='cityPicker' class="mui-btn mui-btn-block" type='button' data-provinceid=""
                                data-cityid="" data-three_cityid="" runat="server">请选择</button>
                            <input type="hidden" id="provinceid" name="provinceid" value="" runat="server">
                            <input type="hidden" id="cityid" name="cityid" value="" runat="server">
                            <input type="hidden" id="three_cityid" name="three_cityid" value="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">详细地址</span>
                        <span class="yunset_list_commentary">
                            <input type="text" name="address" id='address' value="" onblur="localsearch('全国');"
                                placeholder="详细地址" class="" runat="server">
                        </span>
                    </li>
                    <!-- <li class="yunset_list_text">
                        <a href="#maphtml"><span class="yunset_list_name">设置地图</span><span class="yunset_list_commentary yunset_list_js"
                                id="mapshow">请设置</span></a>
                    </li> -->
                     <li>
                        <a href="#contenthtml"><span class="yunset_list_name">兼职内容</span><span class="yunset_list_commentary yunset_list_js"
                                id="contentshow" runat="server">请填写</span></a>
                    </li> 
                    <textarea style="display:none" id="contenttext" name="content" runat="server"></textarea>
                    <li class="yunset_list_text"><span class="yunset_list_name">联&nbsp;&nbsp;系&nbsp;&nbsp;人</span>
                        <span class="yunset_list_commentary">
                            <input type="text" name="linkman" id='linkman' value="ddd" placeholder="联系人" class="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">联系手机</span>
                        <span class="yunset_list_commentary">
                            <input type="text" name="linktel" id='linktel' value="" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
                                placeholder="联系手机" class="" runat="server">
                        </span>
                    </li>
                </ul>
                <div class="yunset_bth_box">
                    <%-- <button id="submit" type="submit" class="mui-btn mui-btn-block mui-btn-primary">保 存</button>--%>
                    <asp:Button ID="Button1" runat="server" CssClass="mui-btn mui-btn-block mui-btn-primary" Text="保 存" OnClick="Button1_Click" Height="40px" />
                    <!--<input type="submit" name="submit" value="保 存" class="yunset_bth">-->
                </div>

            </div>

        </div>
    </div>
    <!--页面主内容区结束-->
</div>
<div id="datehtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <ul class="yunset_list  ">
                    <li class="yunset_list_select"><span class="yunset_list_name">招聘方式</span>
                        <span class="yunset_list_commentary">
                            <button id='timetypePicker' class="mui-btn mui-btn-block" type='button' data-timetype="">长期招聘</button>
                            <input type="hidden" id="timetype" name="timetype" value="0" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_select"><span class="yunset_list_name">兼职开始日期</span>
                        <span class="yunset_list_commentary">
                            <button id='sdatePicker' data-options='{"type":"date","value":"","beginYear":2010,"endYear":2028}'
                                class="mui-btn mui-btn-block" type='button'>兼职开始日期</button>
                            <input type="hidden" id="sdate" name="sdate" value="" runat="server">
                        </span>
                    </li>
                    <li class="yunset_list_select" id="eline" style="display:none"><span class="yunset_list_name">兼职结束日期</span>
                        <span class="yunset_list_commentary">
                            <button id='edatePicker' data-options='{"type":"date","value":"","beginYear":2010,"endYear":2028}'
                                class="mui-btn mui-btn-block" type='button'>兼职结束日期</button>
                            <input type="hidden" id="edate" name="edate" value="" runat="server"> 
                        </span>
                    </li>
                    <li class="yunset_list_select" id="dline" style="display:none"><span class="yunset_list_name">报名截止</span>
                        <span class="yunset_list_commentary">
                            <button id='deadComPicker' data-options='{"type":"date","value":"","beginYear":2010,"endYear":2028}'
                                class="mui-btn mui-btn-block" type='button'>报名截止</button>
                            <input type="hidden" id="deadline" name="deadline" value="" runat="server">
                        </span>
                    </li>
                </ul>
                <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
            </div>
        </div>
    </div>
</div>
<div id="salaryhtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <ul class="yunset_list  ">
                    <li class="yunset_list_text"><span class="yunset_list_name">兼职薪水</span>
                        <input type="number" id="salary" name="salary" value="" placeholder="请填写薪资">
                    </li>
                    <li class="yunset_list_select"><span class="yunset_list_name">类型</span>
                        <span class="yunset_list_commentary">
                            <button id='salary_typeComPicker' class="mui-btn mui-btn-block salary_typename" type='button'
                                data-salary_type="">类型</button>
                            <input type="hidden" id="salary_type" name="salary_type" value="">
                        </span>
                    </li>
                </ul>
                <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
            </div>
        </div>
    </div>
</div>
 <div id="contenthtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll">
                <div class="yun_wap_info_brief">
                    <div class="yun_wap_info_brief_c">
                        <div class="yun_wap_addresume_box_nexttit"> 兼职内容 </div>
                        <textarea class="textAreaMsg tip contenttext" id="content" name="content" placeholder="请输入兼职内容描述500字以内"></textarea>
                    </div>
                    <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                </div>
            </div>
        </div>
    </div>
</div> 
<%--<div id="timehtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <div class="yun_wap_addresume_box_group">
                    <div class="yun_wap_addresume_box_nexttit"> 兼职时间 <span class="resume-cont_wate_bj">*</span> </div>
                    <table class="tjob_timetable" cellpadding="1" cellspacing="1" style="margin-top:0px;">
                        <tr>
                            <th>&nbsp;</th>
                            <th>周一</th>
                            <th>周二</th>
                            <th>周三</th>
                            <th>周四</th>
                            <th>周五</th>
                            <th>周六</th>
                            <th>周日</th>
                        </tr>
                        <tr>
                            <th>上午</th>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0101" class="lang" value='0101' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0201" class="lang" value='0201' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0301" class="lang" value='0301' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0401" class="lang" value='0401' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0501" class="lang" value='0501' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0601" class="lang" value='0601' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0701" class="lang" value='0701' /></td>
                        </tr>
                        <tr>
                            <th>下午</th>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0102" class="lang" value='0102' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0202" class="lang" value='0202' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0302" class="lang" value='0302' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0402" class="lang" value='0402' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0502" class="lang" value='0502' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0602" class="lang" value='0602' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0702" class="lang" value='0702' /></td>
                        </tr>
                        <tr>
                            <th>晚上</th>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0103" class="lang" value='0103' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0203" class="lang" value='0203' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0303" class="lang" value='0303' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0403" class="lang" value='0403' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0503" class="lang" value='0503' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0603" class="lang" value='0603' /></td>
                            <td><input data-mark='isneed' name='jz' type="checkbox" data-id="0703" class="lang" value='0703' /></td>
                        </tr>
                        <tr>
                            <td colspan="8"> <input id='upAllSelect' type="checkbox" class="com_Release_job_qx_check">全选</td>
                        </tr>
                    </table>
                    <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                </div>
            </div>
        </div>
    </div>
</div>--%>
<!-- <div id="maphtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll">
                <div id="map_container" style="width:100%;height:280px; left:0;"></div>
                <input name="x" id="map_x" type="hidden" value="">
                <input name="y" id="map_y" type="hidden" value="">
                <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
            </div>
        </div>
    </div>
</div> -->
<script src="../js/mui.picker.min.js" language="javascript"></script>
<script src="../js/mui.poppicker.js" language="javascript"></script>
<script src="../js/mui.view.js" language="javascript"></script>
<script src="../js/umeditor.config.js"></script>
<script src="../js/umeditor.min.js"></script>
<script src="../js/city.cache.js" language="javascript"></script>
<script src="../js/category.js" language="javascript"></script>
<!-- <script type="text/javascript" src="../js/api"></script>
<script type="text/javascript" src="../js/map.js"></script> -->
<script language="javascript">
    $(document).ready(function () {
        if (document.getElementById('main')) {
            document.getElementById('main').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
        }
    })
    var typeData = [];
    ''
    typeData.push({
        value: '传单派发',
        text: '传单派发'
    })
    ''
    typeData.push({
        value: '促销导购',
        text: '促销导购'
    })
    ''
    typeData.push({
        value: '话务客服',
        text: '话务客服'
    })
    ''
    typeData.push({
        value: '礼仪模特',
        text: '礼仪模特'
    })
    ''
    typeData.push({
        value: '老师家教',
        text: '老师家教'
    })
    ''
    typeData.push({
        value: '服务员',
        text: '服务员'
    })
    ''
    typeData.push({
        value: '问卷调查',
        text: '问卷调查'
    })
    ''
    typeData.push({
        value: '审核录入',
        text: '审核录入'
    })
    ''
    typeData.push({
        value: '地推拉访',
        text: '地推拉访'
    })
    ''
    typeData.push({
        value: '其他',
        text: '其他'
    })
    ''
    var sexData = [];
    ''
    sexData.push({
        value: '不限',
        text: '不限'
    })
    ''
    sexData.push({
        value: '男',
        text: '男'
    })
    ''
    sexData.push({
        value: '女',
        text: '女'
    })
    ''
    var salary_typeData = [];
    ''
    salary_typeData.push({
        value: '元/天',
        text: '元/天'
    })
    ''
    salary_typeData.push({
        value: '元/周',
        text: '元/周'
    })
    ''
    salary_typeData.push({
        value: '元/月',
        text: '元/月'
    })
    ''
    salary_typeData.push({
        value: '元/小时',
        text: '元/小时'
    })
    ''
    salary_typeData.push({
        value: '元/次',
        text: '元/次'
    })
    ''
    salary_typeData.push({
        value: '元/人',
        text: '元/人'
    })
    ''
    salary_typeData.push({
        value: '面议',
        text: '面议'
    })
    ''
    var billing_cycleData = [];
    ''
    billing_cycleData.push({
        value: '日结',
        text: '日结'
    })
    ''
    billing_cycleData.push({
        value: '周结',
        text: '周结'
    })
    ''
    billing_cycleData.push({
        value: '月结',
        text: '月结'
    })
    ''
    billing_cycleData.push({
        value: '完工结',
        text: '完工结'
    })
    ''
    var timetypeData = [{
        value: '0',
        text: '长期招聘'
    }, {
        value: '1',
        text: '短期招聘'
    }];

    function change() {
        if ($("#timetype").val() == '1') {
            $("#dline").show();
            $("#eline").show();
        } else {
            $("#eline").hide();
            $("#dline").hide();
        }
    }
    $(function () {
        $('#upAllSelect').click(function () {
            ischecked = $(this).attr('checked');
            allcheck = $('input[data-mark="isneed"]');
            if (ischecked == 'checked') {
                allcheck.each(function (i) {
                    $(this).attr('checked', true);
                });
            } else {
                allcheck.each(function (i) {
                    $(this).attr('checked', false);
                });
            }
        });
    });
    // var address = document.getElementById('address');
    // var map = new BMap.Map("map_container");
    // map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
    // var searchcity = '全国';
    // var local;
    // function getLocalResult() {
    //     var address = document.getElementById('address').value;
    //     var points = local.getResults();
    //     if (points.getPoi(0)) {
    //         var lngLat = points.getPoi(0).point;
    //         setLocation('map_container', lngLat.lng, lngLat.lat, "map_x", "map_y");
    //         document.getElementById("map_x").value = lngLat.lng;
    //         document.getElementById("map_y").value = lngLat.lat;
    //     } else {
    //         layermsg('该地址未搜索到，请正确输入详细地址！', 2);
    //         return false;
    //     }
    // }
    // function localsearch(city) {
    //     if (document.getElementById('address').value == "") {
    //         layermsg('请输入详细地址！', 2);
    //         return false;
    //     }
    //     local = new BMap.LocalSearch(city, {
    //         renderOptions: {
    //             map: map,
    //             panel: "r-result",
    //             autoViewport: true,
    //             selectFirstResult: false
    //         },
    //         onSearchComplete: getLocalResult
    //     });
    //     local.search(document.getElementById('address').value);
    // }

    // function setLocation(id, x, y, xid, yid) {
    //     var rating, map_control_type, map_control_anchor;
    //     if (!x && !y) {
    //         x = '116.404';
    //         y = '39.915';
    //     }
    //     var point = new BMap.Point(x, y);
    //     var marker = new BMap.Marker(point);
    //     var opts = {
    //         type: BMAP_NAVIGATION_CONTROL_LARGE
    //     }
    //     map.enableScrollWheelZoom(true);
    //     map.addControl(new BMap.NavigationControl(opts));
    //     map.centerAndZoom(point, 15);
    //     map.addOverlay(marker);
    //     map.addEventListener("click", function (e) {
    //         var info = new BMap.InfoWindow('', {
    //             width: 260
    //         });
    //         var projection = this.getMapType().getProjection();
    //         var lngLat = e.point;
    //         document.getElementById(xid).value = lngLat.lng;
    //         document.getElementById(yid).value = lngLat.lat;
    //         map.clearOverlays();
    //         var point = new BMap.Point(lngLat.lng, lngLat.lat);
    //         var marker = new BMap.Marker(point);
    //         map.addOverlay(marker);
    //         document.getElementById('mapshow').innerText = '已设置';
    //     });
    // }
</script>
<script src="../js/partadd.js" language="javascript"></script>
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
        </form>
</body>
</html>
