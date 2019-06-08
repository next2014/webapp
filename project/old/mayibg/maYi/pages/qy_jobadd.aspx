<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_jobadd.aspx.cs" Inherits="pages_qy_jobadd" %>

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
    <form runat="server">
    <header>
    <div class="header_bg bg3">
        <a class="hd-lbtn mui-action-back" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
        <div class="header_h1">发布职位</div>
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
<div id="main" class="mui-page">
    <!--页面主内容区开始-->
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <ul class="yunset_list mt10">
                    <li class="yunset_list_text"><span class="yunset_list_name">职位名称</span>
                        <span class="yunset_list_commentary">
                            <input type="text" runat="server" name="name" id='name' value="" placeholder="请填写职位名称" class="">
                            <input type="hidden" runat="server" id="ida" name="ida" value="">
                        </span>
                    </li>
                    <li class="yunset_list_select"><span class="yunset_list_name">职位类别</span>
                        <span class="yunset_list_commentary">
                            <button id="jobPicker" class="mui-btn mui-btn-block" type="button" data-job1=""
                                data-job1_son="" data-job_post="" runat="server">请选择</button>
                            <input type="hidden" runat="server" id="job1" name="job1" value="">
                            <input type="hidden" runat="server" id="job1_son" name="job1_son" value="">
                            <input type="hidden" runat="server" id="job_post" name="job_post" value="">
                        </span>
                    </li>
                    <li class="yunset_list_select">
                        <span class="yunset_list_name">工作地点</span>
                        <span class="yunset_list_commentary">
                            <button id='cityPicker' class="mui-btn mui-btn-block" type='button' data-provinceid=""
                                data-cityid="" data-three_cityid="" runat="server">请选择</button>
                            <input type="hidden" runat="server" id="provinceid" name="provinceid" value="">
                            <input type="hidden" runat="server" id="cityid" name="cityid" value="">
                            <input type="hidden" runat="server" id="three_cityid" name="three_cityid" value="">
                        </span>
                    </li>
                    <li>
                        <a href="#salaryhtml"><span class="yunset_list_name">薪资待遇</span>
                            <span class="yunset_list_commentary yunset_list_js" runat="server" id="salary">请填写</span>
                            <input type="hidden" runat="server" id="issalary" name="issalary" value="" />
                        </a>
                    </li>
                    <li>
                        <a href="#contenthtml"><span class="yunset_list_name">职位描述</span><span class="yunset_list_commentary yunset_list_js" runat="server" id="contentshow">请填写</span></a>
                    </li> 
                    <textarea style="display:none" id="contenttext" runat="server"></textarea> 
                    <li>
                        <a href="#linkhtml"><span class="yunset_list_name">联系方式</span><span class="yunset_list_commentary yunset_list_js" runat="server" id="link">ddd&nbsp;13433598652</span></a>
                        <input type="hidden" runat="server" id="islink" name="islink" value="" />
                        <input type="hidden" runat="server" id="link_moblie" name="link_moblie" value="">
                        <input type="hidden" runat="server" id="link_man" name="link_man" value="">
                        <input type="hidden" runat="server" id="tblink" name="tblink" value="">
                    </li>
                    <li>
                        <a href="#emailhtml"><span class="yunset_list_name" style="width:150px;">接收简历的邮箱</span>
                            <span id="emailshow" runat="server" class="yunset_list_commentary yunset_list_js">494864068@qq.com</span>
                        </a>
                        <input type="hidden" runat="server" id="isemail" name="isemail" value="" />
                        <input type="hidden" runat="server" id="email" name="email" value="494864068@qq.com">
                    </li>
                </ul>
                <div class="yunset_bth_box" style="background: transparent; border: none; padding:0px;">
                    <a href="#addnexthtml" class="yun_wap_info_brief_tit_bc addnext">下一步</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="addnexthtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <div class="yun_wap_xtbox" style="display:block">
                    <ul class="yunset_list">
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">从事行业<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="hyPicker" class="mui-btn mui-btn-block" type="button" data-hy="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="hy" name="hy" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">招聘人数<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="numberPicker" class="mui-btn mui-btn-block" type="button" data-number="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="number" name="number" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">工作经验<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="expPicker" class="mui-btn mui-btn-block" type="button" data-exp="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="exp" name="exp" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">到岗时间<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="reportPicker" class="mui-btn mui-btn-block" type="button" data-report="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="report" name="report" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">年龄要求<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="agePicker" class="mui-btn mui-btn-block" type="button" data-age="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="age" name="age" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">性别要求<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="sexPicker" class="mui-btn mui-btn-block" type="button" data-sex="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="sex" name="sex" value="">
                            </span>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">教育程度<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="eduPicker" class="mui-btn mui-btn-block" type="button" data-edu="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="edu" name="edu" value="">
                            </span>
                        </li>
                        <li class="yunset_list_text">
                            <span class="yunset_list_name" style="width:150px;">可接受应届生<em class="yunset_xttip"></em></span>
                            <div class="yunset_kg_box">
                                <div class="yunset_kg">
                                    <div class="mui-switch mui-switch-mini is_graduate " id="graduate" runat="server">
                                        <div class="mui-switch-handle"></div>
                                    </div>
                                    <input type="hidden" runat="server"  id="is_graduate" name="is_graduate" value="0">
                                </div>
                            </div>
                        </li>
                        <li class="yunset_list_select">
                            <span class="yunset_list_name">婚姻状况<em class="yunset_xttip"></em></span>
                            <span class="yunset_list_commentary">
                                <button id="marriagePicker" class="mui-btn mui-btn-block" type="button" data-marriage="" runat="server">请选择</button>
                                <input type="hidden" runat="server"  id="marriage" name="marriage" value="">
                            </span>
                        </li>
                        <li>
                            <a href="#languagehtml"><span class="yunset_list_name">语言要求<em class="yunset_xttip"></em></span>
                                <span class="yunset_list_commentary yunset_list_js" id="langshow" runat="server">
                                    请选择
                                </span></a>
                            <input type="hidden" runat="server"  id="lang" name="lang" value="">
                        </li>
                    </ul>
                </div>
                <div class="yunset_bth_box" style="background: transparent; border: none;">
                    <input id="id" name="id" value="" type="hidden" />
                    <input id="state" name="state" value="" type="hidden" />

                    <%--<input type="submit" id="jobsubmit" value="提交操作" class="reinputText2">--%>
                    <asp:Button ID="jobsubmita" CssClass="reinputText2" runat="server" Text="提交操作" OnClick="jobsubmit_Click" />
                    <a class="yun_wap_info_brief_tit_bc mui-action-back" style="background:#f8f8f8;border:1px solid #eee;color:#333">返回上一步</a>
                </div>
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
                        <div class="yun_wap_addresume_box_nexttit">职位描述</div>
                        <textarea class="textAreaMsg tip" runat="server" id="content" name="content" style="width: 100%;"></textarea>
                    </div>
                    <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                </div>
            </div>
        </div>
    </div>
</div> 
<div id="salaryhtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <ul class="yunset_list">
                    <li class="yunset_list_text"><span class="yunset_list_name">最低薪资</span>
                        <div class="yunset_list_xzbox">
                            <input type="number" id="minsalary" value="" placeholder="请填写最低薪资">
                            <span class="yunset_list_xz">元/月</span>
                        </div>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">最高薪资</span>
                        <div class="yunset_list_xzbox">
                            <input type="number" id="maxsalary" value="" placeholder="请填写最高薪资">
                            <span class="yunset_list_xz">元/月</span> </div>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">面议</span>
                        <div class="yunset_kg_box">
                            <div class="yunset_kg">
                                <div class="mui-switch mui-switch-mini salary_type">
                                    <div class="mui-switch-handle"></div>
                                </div>
                                <input type="hidden" id="salary_type" value="2">
                            </div>
                        </div>
                    </li>
                </ul>
                <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
            </div>
        </div>
    </div>
</div>
<div id="linkhtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <div class="yun_wap_addresume_box_group">
                    <div class="yun_wap_addresume_box_nexttit">联系方式</div>
                    <div class="">
                        <div class="admin_job_js_list_rt">
                            <span class="admin_job_style admin_job_style_n" onclick="choice('1','link')" id="islink1" runat="server"></span>
                        </div>
                        <div class="admin_job_js_list_rt">
                            <span class="admin_job_style " onclick="choice('2','link')" id="islink2">使用新联系方式</span>
                        </div>
                        <div class="admin_job_js mt10" id="newlink" style=" display:none;">
                            <div class="job_touch_other">
                                <div class="job_touch_other_tit">使用新联系方式</div>
                                <ul>
                                    <li>
                                        <div class="job_touch_other_text"> <input type="text" class="payment_fp_touch_text payment_fp_touch_text_p"
                                                value="" id="lxr" placeholder="请输入联系人">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="job_touch_other_text"> <input type="text" value="" id="lxdh"
                                                placeholder="请输入联系电话" class="payment_fp_touch_text"> </div>
                                    </li>
                                    <li>
                                        同步到所有职位
                                        <div class="mui-switch mui-switch-mini tblink">
                                            <div class="mui-switch-handle"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="admin_job_style " onclick="choice('3','link')" id="islink3">不向求职者展示联系方式（不想受到骚扰）</div>
                        <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="emailhtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll wap_member">
                <div class="yun_wap_addresume_box_group">
                    <div class="yun_wap_addresume_box_nexttit">接收简历的邮箱</div>

                    <div class="admin_job_js_list_rt">
                        <span class="admin_job_style admin_job_style_n" onclick="choice('1','email')" id="isemail1" runat="server"></span>
                    </div>
                    <div class="admin_job_js_list_rt">
                        <span class="admin_job_style " onclick="choice('2','email')" id="isemail2">使用新邮箱</span>
                    </div>
                    <div class="admin_job_js mt10" id="newemail" style="display:none;">
                        <div class="job_touch_other">
                            <div class="job_touch_other_tit">使用新邮箱</div>
                            <div class="job_touch_other_text"> <input type="text" id="xyx" value="" placeholder="请填写新邮箱"
                                    class="payment_fp_touch_text"> </div>
                        </div>
                    </div>
                    <div class="admin_job_style " onclick="choice('3','email')" id="isemail3">不需要将收到的简历发送到邮箱</div>
                    <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="languagehtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll">
                <div class="yun_info_fl">
                    <div class="yun_info_fl_c">
                        <div class="yun_wap_addresume_box_nexttit">语言要求</div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>西班牙语 </label>
                                <input name="yyyq" value="西班牙语" type="checkbox" class="lang" data-id="西班牙语" data-name="西班牙语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>普通话一级 </label>
                                <input name="yyyq" value="普通话一级" type="checkbox" class="lang" data-id="普通话一级" data-name="普通话一级">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>普通话二级 </label>
                                <input name="yyyq" value="普通话二级" type="checkbox" class="lang" data-id="普通话二级" data-name="普通话二级">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>普通话三级 </label>
                                <input name="yyyq" value="普通话三级" type="checkbox" class="lang" data-id="普通话三级" data-name="普通话三级">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>粤语 </label>
                                <input name="yyyq" value="粤语" type="checkbox" class="lang" data-id="粤语" data-name="粤语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>韩语 </label>
                                <input name="yyyq" value="韩语" type="checkbox" class="lang" data-id="韩语" data-name="韩语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>德语 </label>
                                <input name="yyyq" value="德语" type="checkbox" class="lang" data-id="德语" data-name="德语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>法语 </label>
                                <input name="yyyq" value="法语" type="checkbox" class="lang" data-id="法语" data-name="法语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>闽南语 </label>
                                <input name="yyyq" value="闽南语" type="checkbox" class="lang" data-id="闽南语" data-name="闽南语">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>上海话 </label>
                                <input name="yyyq" value="上海话" type="checkbox" class="lang" data-id="上海话" data-name="上海话">
                            </div>
                        </div>
                        <div class="yun_info_fl_list">
                            <div class="mui-input-row mui-checkbox">
                                <label>英语 </label>
                                <input name="yyyq" value="英语" type="checkbox" class="lang" data-id="英语" data-name="英语">
                            </div>
                        </div>
                        <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../js/mui.picker.min.js" language="javascript"></script>
<script src="../js/mui.poppicker.js" language="javascript"></script>
<script src="../js/mui.view.js" language="javascript"></script>
<script src="../js/jobadd.js" language="javascript"></script>
<script src="../js/umeditor.config.js"></script>
<script src="../js/umeditor.min.js"></script>
<script src="../js/job.cache.js" language="javascript"></script>
<script src="../js/city.cache.js" language="javascript"></script>
<script src="../js/category.js" language="javascript"></script>
<script type="text/javascript">
    var umeditor = UM.getEditor('content', {
        toolbar: false,
        elementPathEnabled: false,
        wordCount: false,
        autoHeightEnabled: false
    });
    mui.init();
    var viewApi = mui('#app').view({
        defaultPage: '#main'
    });
    var view = viewApi.view;
    (function ($) {
        //初始化单页的区域滚动
        mui('.mui-scroll-wrapper').scroll({
            indicators: false, //是否显示滚动条
            bounce: false //是否启用回弹
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
        // view.addEventListener('pageBeforeShow', function (e) { //动画开始前触发
        //     if (e.detail.page.id == 'contenthtml') {
        //         var contenttext = document.getElementById('contenttext').value;
        //         if (contenttext != "") {
        //             umeditor.setContent(contenttext);
        //         }
        //     }
        // });
        view.addEventListener('pageBeforeBack', function (e) {
            if (e.detail.page.id == 'salaryhtml') {
                //薪资待遇
                var salarytype = document.getElementById('salary_type').value;
                if (salarytype == 2) {
                    var minsalary = document.getElementById('minsalary').value;
                    var maxsalary = document.getElementById('maxsalary').value;
                    if (minsalary != "") {
                        document.getElementById('salary').innerText = minsalary + '元以上/月';
                        document.getElementById('issalary').value = minsalary + '元以上/月';
                    }
                    if (parseInt(maxsalary) > 0) {
                        if (parseInt(maxsalary) <= parseInt(minsalary)) {
                            mui.toast('最高薪资必须大于最低薪资');
                            document.getElementById('salary').innerText = "";
                            document.getElementById('issalary').value = "";
                        } else {
                            document.getElementById('salary').innerText = minsalary + '-' + maxsalary + '元/月';
                            document.getElementById('issalary').value = minsalary + '-' + maxsalary + '元/月';
                        }
                    }
                } else if (salarytype == 1) {
                    document.getElementById('salary').innerText = '面议';
                    document.getElementById('issalary').value = '面议';
                }
            }
            if (e.detail.page.id == 'contenthtml') {
                var content = document.getElementById('content').value;
                 //var content = umeditor.getContent();
                if (content != "") {
                     document.getElementById('contentshow').innerText = content.replace(/<\/?.+?>/g, "").replace(/ /g, "");
                     document.getElementById('contenttext').innerText = content;
                 }
             }
            if (e.detail.page.id == 'linkhtml') {
                //联系方式
                var islink = document.getElementById('islink').value;
                if (islink == 1) {
                    document.getElementById('link').innerText = document.getElementById('islink1').innerText;
                } else if (islink == 2) {
                    var linkman = document.getElementById('lxr').value,
                        linkphone = document.getElementById('lxdh').value;
                    document.getElementById('link_man').value = linkman;
                    document.getElementById('link_moblie').value = linkphone;
                    document.getElementById('link').innerText = linkman + ' ' + linkphone;
                } else if (islink == 3) {
                    document.getElementById('link').innerText = '不向求职者展示联系方式';
                }
            }
            if (e.detail.page.id == 'languagehtml') {
                //语言要求
                var yyyq = "",
                    langshow = "";
                $(".lang").each(function (w, lang) {
                    if (lang.checked == true) {
                        if (yyyq == "") {
                            yyyq = lang.dataset.id;
                        } else {
                            yyyq = yyyq + "," + lang.dataset.id;
                        }
                        if (langshow == "") {
                            langshow = lang.dataset.name;
                        } else {
                            langshow = langshow + "," + lang.dataset.name;
                        }
                    }
                });
                document.getElementById("lang").value = yyyq;
                document.getElementById("langshow").innerText = langshow != "" ? langshow : "请选择";
            }
            if (e.detail.page.id == 'emailhtml') {
                //接收简历的邮箱
                var isemail = document.getElementById('isemail').value;
                if (isemail == 1) {
                    document.getElementById('emailshow').innerText = document.getElementById('isemail1').innerText;
                } else if (isemail == 2) {
                    var xyx = document.getElementById('xyx');
                    if (xyx) {
                        document.getElementById('email').value = xyx.value;
                        document.getElementById('emailshow').innerText = xyx.value;
                    }
                } else if (isemail == 3) {
                    document.getElementById('emailshow').innerText = '不需要将收到的简历发送到邮箱';
                }
            }
        });
    })(mui);
    $(document).ready(function () {
        if (document.getElementById('addnexthtml')) {
            document.getElementById('addnexthtml').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
        }
    })
    var hyData = [];
    '';
    hyData.push({
        value: '互联网/电子商务',
        text: '互联网/电子商务'
    });
    '';
    hyData.push({
        value: 'IT服务（系统/数据/维护）',
        text: 'IT服务（系统/数据/维护）'
    });
    '';
    hyData.push({
        value: '计算机软件/硬件',
        text: '计算机软件/硬件'
    });
    '';
    hyData.push({
        value: '交通/运输/物流',
        text: '交通/运输/物流'
    });
    '';
    hyData.push({
        value: '航空/航天研究与制造',
        text: '航空/航天研究与制造'
    });
    '';
    hyData.push({
        value: '医疗设备/器械',
        text: '医疗设备/器械'
    });
    '';
    hyData.push({
        value: '医药/生物工程',
        text: '医药/生物工程'
    });
    '';
    hyData.push({
        value: '办公用品及设备',
        text: '办公用品及设备'
    });
    '';
    hyData.push({
        value: '印刷/包装/造纸',
        text: '印刷/包装/造纸'
    });
    '';
    hyData.push({
        value: '仪器仪表及工业自动化',
        text: '仪器仪表及工业自动化'
    });
    '';
    hyData.push({
        value: '加工制造（原料加工/模具）',
        text: '加工制造（原料加工/模具）'
    });
    '';
    hyData.push({
        value: '大型设备/机电设备/重工业',
        text: '大型设备/机电设备/重工业'
    });
    '';
    hyData.push({
        value: '医疗/护理/美容/保健',
        text: '医疗/护理/美容/保健'
    });
    '';
    hyData.push({
        value: '酒店/餐饮',
        text: '酒店/餐饮'
    });
    '';
    hyData.push({
        value: '旅游/度假',
        text: '旅游/度假'
    });
    '';
    hyData.push({
        value: '农/林/牧/渔',
        text: '农/林/牧/渔'
    });
    '';
    hyData.push({
        value: '学术/科研',
        text: '学术/科研'
    });
    '';
    hyData.push({
        value: '政府/公共事业/非盈利机构',
        text: '政府/公共事业/非盈利机构'
    });
    '';
    hyData.push({
        value: '环保',
        text: '环保'
    });
    '';
    hyData.push({
        value: '电气/电力/水利',
        text: '电气/电力/水利'
    });
    '';
    hyData.push({
        value: '石油/石化/化工',
        text: '石油/石化/化工'
    });
    '';
    hyData.push({
        value: '能源/矿产/采掘/冶炼',
        text: '能源/矿产/采掘/冶炼'
    });
    '';
    hyData.push({
        value: '娱乐/体育/休闲',
        text: '娱乐/体育/休闲'
    });
    '';
    hyData.push({
        value: '媒体/出版/影视/文化传播',
        text: '媒体/出版/影视/文化传播'
    });
    '';
    hyData.push({
        value: '汽车/摩托车',
        text: '汽车/摩托车'
    });
    '';
    hyData.push({
        value: '工艺美术/收藏品/奢侈品',
        text: '工艺美术/收藏品/奢侈品'
    });
    '';
    hyData.push({
        value: '网络游戏',
        text: '网络游戏'
    });
    '';
    hyData.push({
        value: '通信/电信/网络设备',
        text: '通信/电信/网络设备'
    });
    '';
    hyData.push({
        value: '通信/电信运营、增值服务',
        text: '通信/电信运营、增值服务'
    });
    '';
    hyData.push({
        value: '电子技术/半导体/集成电路',
        text: '电子技术/半导体/集成电路'
    });
    '';
    hyData.push({
        value: '基金/证券/期货/投资',
        text: '基金/证券/期货/投资'
    });
    '';
    hyData.push({
        value: '金融/保险/银行',
        text: '金融/保险/银行'
    });
    '';
    hyData.push({
        value: '信托/担保/拍卖/典当',
        text: '信托/担保/拍卖/典当'
    });
    '';
    hyData.push({
        value: '房地产/建筑/建材/工程',
        text: '房地产/建筑/建材/工程'
    });
    '';
    hyData.push({
        value: '家居/室内设计/装饰装潢',
        text: '家居/室内设计/装饰装潢'
    });
    '';
    hyData.push({
        value: '物业管理/商业中心',
        text: '物业管理/商业中心'
    });
    '';
    hyData.push({
        value: '专业服务/咨询(财会/法律/人力资源等)',
        text: '专业服务/咨询(财会/法律/人力资源等)'
    });
    '';
    hyData.push({
        value: '广告/会展/公关',
        text: '广告/会展/公关'
    });
    '';
    hyData.push({
        value: '教育/培训',
        text: '教育/培训'
    });
    '';
    hyData.push({
        value: '租赁服务',
        text: '租赁服务'
    });
    '';
    hyData.push({
        value: '零售/批发',
        text: '零售/批发'
    });
    '';
    hyData.push({
        value: '贸易/进出口',
        text: '贸易/进出口'
    });
    '';
    hyData.push({
        value: '耐用消费品（服饰/纺织/皮革/家具/家电）',
        text: '耐用消费品（服饰/纺织/皮革/家具/家电）'
    });
    '';
    hyData.push({
        value: '快速消费品（食品/饮料/烟酒/日化）',
        text: '快速消费品（食品/饮料/烟酒/日化）'
    });
    '';
    hyData.push({
        value: '外包服务',
        text: '外包服务'
    });
    '';
    hyData.push({
        value: '检验/检测/认证',
        text: '检验/检测/认证'
    });
    '';
    hyData.push({
        value: '中介服务',
        text: '中介服务'
    });
    '';
    hyData.push({
        value: '其他',
        text: '其他'
    });
    '';
    var numberData = [];
    '';
    numberData.push({
        value: '若干',
        text: '若干'
    });
    '';
    numberData.push({
        value: '1-2人',
        text: '1-2人'
    });
    '';
    numberData.push({
        value: '3-4人',
        text: '3-4人'
    });
    '';
    numberData.push({
        value: '5-6人',
        text: '5-6人'
    });
    '';
    numberData.push({
        value: '7-8人',
        text: '7-8人'
    });
    '';
    numberData.push({
        value: '9-10人',
        text: '9-10人'
    });
    '';
    var expData = [];
    '';
    expData.push({
        value: '不限',
        text: '不限'
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
        value: '5年以上',
        text: '5年以上'
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
    var reportData = [];
    '';
    reportData.push({
        value: '不限',
        text: '不限'
    });
    '';
    reportData.push({
        value: '1周以内',
        text: '1周以内'
    });
    '';
    reportData.push({
        value: '2周以内',
        text: '2周以内'
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
    var ageData = [];
    '';
    ageData.push({
        value: '不限',
        text: '不限'
    });
    '';
    ageData.push({
        value: '18-25岁',
        text: '18-25岁'
    });
    '';
    ageData.push({
        value: '35岁以下',
        text: '35岁以下'
    });
    '';
    ageData.push({
        value: '35岁以上',
        text: '35岁以上'
    });
    '';
    var sexData = [];
    '';
    sexData.push({
        value: '不限',
        text: '不限'
    });
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
        value: '不限',
        text: '不限'
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
    var marriageData = [];
    '';
    marriageData.push({
        value: '不限',
        text: '不限'
    });
    '';
    marriageData.push({
        value: '已婚',
        text: '已婚'
    });
    '';
    marriageData.push({
        value: '未婚',
        text: '未婚'
    });
    '';

    function choice(id, type) {
        if (type == 'link' || type == 'email') {
            if (id == 1) {
                $("#is" + type + "3").removeClass('admin_job_style_n');
                $("#is" + type + "2").removeClass('admin_job_style_n');
                $("#is" + type + id).addClass('admin_job_style_n');
                $("input[name='is" + type + "']").val(id);
                $("#new" + type).hide();
            } else if (id == 2) {
                $("#is" + type + "3").removeClass('admin_job_style_n');
                $("#is" + type + "1").removeClass('admin_job_style_n');
                $("#is" + type + id).addClass('admin_job_style_n');
                $("input[name='is" + type + "']").val(id);
                $("#new" + type).show();
            } else if (id == 3) {
                $("#is" + type + "1").removeClass('admin_job_style_n');
                $("#is" + type + "2").removeClass('admin_job_style_n');
                $("#is" + type + id).addClass('admin_job_style_n');
                $("input[name='is" + type + "']").val(id);
                $("#new" + type).hide();
            }
        }
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
        </form>
</body>
</html>

