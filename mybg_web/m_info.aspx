<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_info.aspx.cs" Inherits="m_info" %>

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
    <!-- Content area -->
    <form runat="server" method='post' enctype="multipart/form-data">
        <div class="body_wap">
            <header class="header_h">
                <div class="header_fixed">
                    <div class="header">
                        <div class="header_userbg bg3">
                            <a class="hd-lbtn mui-action-back" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                            <div class="header_h1">基本信息</div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="header_navlist">
            <%--    <a href="c_login.aspx" id=""><i class="mdlogin"></i></a>--%>
                <a href="c_login.aspx" class="login_reg"><span class="login_reg_s">登录</span></a>
            </div>
            <link rel="stylesheet" href="css/mui.picker.min.css" type="text/css">
            <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css">
            <link rel="stylesheet" href="css/style.css" type="text/css">
            <link rel="stylesheet" href="css/cropper.css" type="text/css">
            <script src="js/cropper.js" language="javascript"></script>
            <script src="js/compress.js" language="javascript"></script>
            <div id="app" class="mui-views">
                <div class="mui-view">
                    <div class="mui-pages"></div>
                </div>
            </div>


            <div id="main" class="mui-page">
                <!--页面主内容区开始-->
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <%--<ul class="yunset_list">
                                <li><a href="#photohtml" class="yunset_list_max">
                                    <span class="yunset_list_name">头像</span>
                                    <span class="yunset_list_tx ">
                                        <img id="photopic" src="<%=Src%>" border="0"></span></a>
                                </li>
                            </ul>--%>
                            <ul class="yunset_list mt15">
                                <li class="yunset_list_text"><span class="yunset_list_name">姓名</span><span class="yunset_list_commentary"><input
                                    type="text" name="name" id="name" value="" placeholder="请输入姓名" runat="server"></span></li>
                            </ul>
                            <ul class="yunset_list mt15">
                                <li><span class="yunset_list_name">性别</span><span class="yunset_list_commentary">
                                    <button id="sexPicker" class="mui-btn mui-btn-block" type="button" data-sex="1" runat="server">男</button>
                                    <input type="hidden" id="sex" name="sex" value="男" runat="server">
                                </span></li>
                                <li><span class="yunset_list_name">出生年月</span><span class="yunset_list_commentary">
                                    <button id="birthdayUserPicker" runat="server" data-options="{&quot;type&quot;:&quot;date&quot;,&quot;value&quot;:&quot;2000-08-08&quot;,&quot;beginYear&quot;:1900,&quot;endYear&quot;:2099}" class="btn mui-btn mui-btn-block" type="button">请选择</button>
                                    <input type="hidden" id="birthday" name="birthday" value="" runat="server">
                                </span></li>
                                <li><span class="yunset_list_name">最高学历</span><span class="yunset_list_commentary">
                                    <button id="eduPicker" class="mui-btn mui-btn-block" type="button" data-edu="" runat="server">请选择</button>
                                    <input type="hidden" id="edu" name="edu" value="" runat="server">
                                </span></li>
                                <li><span class="yunset_list_name">工作经验</span><span class="yunset_list_commentary">
                                    <button id="expPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择</button>
                                    <input type="hidden" id="exp" name="exp" value="" runat="server">
                                </span></li>
                                <li class="yunset_list_text"><span class="yunset_list_name">现居住地</span><span class="yunset_list_commentary"><input
                                    type="text" name="living" id="living" value="" placeholder="请输入现居住地" runat="server"></span></li>
                            </ul>
                            <ul class="yunset_list mt15">
                                <li class="yunset_list_text"><span class="yunset_list_name">手机</span><span class="yunset_list_commentary">
                                    <input type="text" name="telphone" id="telphone" value=""
                                        onkeyup="this.value=this.value.replace(/[^0-9.]/g,&#39;&#39;)" class="" placeholder="请填写手机号码" runat="server">
                                </span></li>
                                <li class="yunset_list_text">
                                    <span class="yunset_list_name">邮箱</span>
                                    <span class="yunset_list_commentary ">
                                        <div class="">
                                            <input type="text" name="email" id="email" value="" class="" placeholder="请填写联系邮箱" runat="server"></div>
                                    </span>
                                </li>
                            </ul>
                            <div class="yunset_bth_box" style="background: transparent; border: none; padding: 0px;">
                                <a href="#addnexthtml" class="yun_wap_info_brief_tit_bc addnext">下一步</a>
                            </div>

                            <div style="height: 30px;"></div>
                            <!--<div class="yunset_bth_box"> <button id="submit" class="mui-btn mui-btn-block mui-btn-primary">保 存</button>-->
                        </div>
                    </div>
                </div>
            </div>

            <div id="photohtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <div id="showResult">
                                <div id="changeAvatar" class="photo_i_box">
                                    <img src="images/14947989259.PNG"  width="120" height="120">
                                </div>
                                <div class="clear"></div>
                                <div class="photo_xz">
                                    <input id="file"  name="file" type="file" accept="image/*">选择上传头像
                                </div>
                                <div class="yunset_identity_msg"><i class="yunset_identity_msg_icon"></i>选择上传头像点击提交按钮即可上传</div>
                                <div class="photo_tj">
                                    <input type="hidden" name="txt" id="uimage" value="">
                                   <%-- <input name="submit" type="button" onclick="photo()" value="提交" class="yunset_bth">--%>
                                <%--    <asp:Button ID="Button1" runat="server" CssClass="yunset_bth" Text="提交" OnClick="Button1_Click" />--%>
                                </div>
                            </div>
                          <%--  <div id="showEdit" style="display: none; width: 100%; height: 100%; position: absolute; top: 0; left: 0; z-index: 9;">
                                <div class="photo_cz_bth">
                                    <button class="mui-btn" data-mui-style="fab" id="cancleBtn">取消</button>
                                    <button class="mui-btn" data-mui-style="fab" onclick="javascript:$(&#39;#readyimg&#39;).cropper(&#39;rotate&#39;,90)">旋转</button>
                                    <div class="photo_cz_bth_qd">
                                        <button class="mui-btn" data-mui-style="fab" data-mui-color="primary" id="confirmBtn">确定</button>
                                    </div>
                                </div>
                                <div id="report">
                                    <img src="img/20181228/101134.jpg" alt="Picture" id="readyimg"></div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                weburl = "";
                var formData = new FormData(),
                    newuploadpic;
            </script>
            <script src="js/mui.view.js" language="javascript"></script>
            <script src="js/mui.picker.min.js" language="javascript"></script>
            <script src="js/mui.poppicker.js" language="javascript"></script>
            <script src="js/resume.js" language="javascript"></script>
            <script>
                $(function () {
                    function toFixed2(num) {
                        return parseFloat(+num.toFixed(2));
                    }
                    $('#cancleBtn').on('click', function () {
                        $("#showEdit").fadeOut();
                        $('#showResult').fadeIn();
                    });
                    $('#confirmBtn').on('click', function () {
                        $("#showEdit").fadeOut();
                        var $image = $('#report > img');
                        var dataURL = $image.cropper("getCroppedCanvas");
                        var imgurl = dataURL.toDataURL("image/jpeg", 0.5);
                        $("#changeAvatar > img").attr("src", imgurl);
                        $("#uimage").val(imgurl);
                        $('#showResult').fadeIn();
                    });
                    function cutImg() {
                        $('#showResult').fadeOut();
                        $("#showEdit").fadeIn();
                    }
                    $('#image').on('change', function () {
                        cutImg();
                    });

                    /**头像裁剪*/
                    var $image = $('#report > img'),
                        options = {
                            modal: true,
                            autoCropArea: 0.5,
                            dragCrop: false,
                            movable: true,
                            resizable: false,
                            minContainerWidth: 400,
                            minContainerHeight: 400,
                            aspectRatio: 1 / 1,
                            crop: function (data) {
                            }
                        };
                    $image.on().cropper(options);
                    var $inputImage = $('#image'),
                        URL = window.URL || window.webkitURL,
                        blobURL;
                    if (URL) {
                        $inputImage.change(function () {
                            var files = this.files,
                                file;
                            if (files && files.length) {
                                file = files[0];
                                if (/^image\/\w+$/.test(file.type)) {
                                    blobURL = URL.createObjectURL(file);
                                    $image.one('built.cropper', function () {
                                        URL.revokeObjectURL(blobURL); // Revoke when load complete
                                    }).cropper('reset', true).cropper('replace', blobURL);

                                    $inputImage.val('');
                                } else {
                                    showMessage('请上传图片');
                                }
                            }
                        });
                    } else {
                        $inputImage.parent().remove();
                    }
                    /***头像裁剪end***/
                });

                var sexData = [];
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
                var marriageData = [];
                ''
                marriageData.push({
                    value: '已婚',
                    text: '已婚'
                })
                ''
                marriageData.push({
                    value: '保密',
                    text: '保密'
                })
                ''
                marriageData.push({
                    value: '未婚',
                    text: '未婚'
                })
                ''
                var expData = [];
                ''
                expData.push({
                    value: '无经验',
                    text: '无经验'
                })
                ''
                expData.push({
                    value: '应届毕业生',
                    text: '应届毕业生'
                })
                ''
                expData.push({
                    value: '1年以上',
                    text: '1年以上'
                })
                ''
                expData.push({
                    value: '2年以上',
                    text: '2年以上'
                })
                ''
                expData.push({
                    value: '3年以上',
                    text: '3年以上'
                })
                ''
                expData.push({
                    value: '4年以上',
                    text: '4年以上'
                })
                ''
                expData.push({
                    value: '5年以上',
                    text: '5年以上'
                })
                ''
                expData.push({
                    value: '6年以上',
                    text: '6年以上'
                })
                ''
                expData.push({
                    value: '8年以上',
                    text: '8年以上'
                })
                ''
                expData.push({
                    value: '10年以上',
                    text: '10年以上'
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
                (function () {
                    if (document.getElementById('main')) {
                        document.getElementById('main').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                    }
                    if (document.getElementById('addnexthtml')) {
                        document.getElementById('addnexthtml').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                    }
                    mui('.yunset_bth_box').on('tap', '.addnext', function () {
                        var name = document.getElementById('name').value,
                            sex = document.getElementById('sex').value,
                            birthday = document.getElementById('birthday').value,
                            edu = document.getElementById('edu').value,
                            exp = document.getElementById('exp').value,
                            living = document.getElementById('living').value,
                            telphone = document.getElementById('telphone').value,
                            email = document.getElementById('email').value;

                        if (name == '') {
                            mui.toast('请填写姓名！');
                            return false;
                        }
                        if (sex == '') {
                            mui.toast('请选择性别！');
                            return false;
                        }
                        if (birthday == '') {
                            mui.toast('请选择出生日期！');
                            return false;
                        }
                        if (edu == '') {
                            mui.toast('请选择最高学历！');
                            return false;
                        }
                        if (exp == '') {
                            mui.toast('请选择工作经验！');
                            return false;
                        }
                        if (living == '') {
                            mui.toast('请填写现居住地！');
                            return false;
                        }
                        if (telphone == '') {
                            mui.toast('请填写手机！');
                            return false;
                        } else if (!isjsMobile(telphone)) {
                            mui.toast('手机格式错误！');
                            return false;
                        }
                        var myreg = /^([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9\-]+@([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                        if (email == "" || !myreg.test(email)) {
                            mui.toast('邮箱格式错误！');
                            return false;
                        }
                    })
                    var submitBtn = document.getElementById('submit')
                    if (submitBtn) {
                        submitBtn.addEventListener('tap', checkinfo, false)
                    }
                })();
                function photo() {
                    var uimage = $("#uimage").val();
                    if (uimage == '') {
                        layermsg('头像未改变，无需修改');
                        return false;
                    }
                    var regS = new RegExp("\\+", "gi");
                    uimage = uimage.replace(regS, "#");
                    $.ajax({
                        type: 'POST',
                        url: "index.php?c=photo",
                        cache: false,
                        dataType: 'json',
                        data: {
                            uimage: uimage,
                            submit: 1
                        },
                        success: function (msg) {

                            if (msg == '1') {
                                var date = '操作成功！';
                            } else {
                                var date = '操作失败！';
                            }
                            layermsg(date, 2, function () { /*location.reload();*/
                                window.location.href = wapurl + "member/index.php?c=info";
                            });
                            return false;
                        }
                    });
                }
            </script>
            <script src="js/publicselect.js" language="javascript"></script>
            <script src="js/category.js" language="javascript"></script>

        </div>
        <div class="mui-poppicker">
    <div class="mui-poppicker-header"> <button class="mui-btn mui-poppicker-btn-cancel">取消</button> <button class="mui-btn mui-btn-blue mui-poppicker-btn-ok">确定</button>
        <div class="mui-poppicker-clear"></div>
    </div>
    <div class="mui-poppicker-body">
        <div class="mui-picker" style="width: 100%;">
            <div class="mui-picker-inner">
                <div class="mui-pciker-rule mui-pciker-rule-ft"></div>
                <ul class="mui-pciker-list" style="transform: perspective(1000px) rotateY(0deg) rotateX(180deg);">
                    <li class="" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(0deg);">无经验</li>
                    <li class="" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-20deg);">应届毕业生</li>
                    <li class="" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-40deg);">1年以上</li>
                    <li class="" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-60deg);">2年以上</li>
                    <li class="" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-80deg);">3年以上</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-100deg);">4年以上</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-120deg);">5年以上</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-140deg);">6年以上</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-160deg);">8年以上</li>
                    <li class="highlight" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-180deg);">10年以上</li>
                </ul>
                <div class="mui-pciker-rule mui-pciker-rule-bg"></div>
            </div>
        </div>
    </div>
</div>
<div class="mui-poppicker">
    <div class="mui-poppicker-header"> <button class="mui-btn mui-poppicker-btn-cancel">取消</button> <button class="mui-btn mui-btn-blue mui-poppicker-btn-ok">确定</button>
        <div class="mui-poppicker-clear"></div>
    </div>
    <div class="mui-poppicker-body">
        <div class="mui-picker" style="width: 100%;">
            <div class="mui-picker-inner">
                <div class="mui-pciker-rule mui-pciker-rule-ft"></div>
                <ul class="mui-pciker-list" style="transform: perspective(1000px) rotateY(0deg) rotateX(0deg);">
                    <li class="highlight" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(0deg);">男</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-20deg);">女</li>
                </ul>
                <div class="mui-pciker-rule mui-pciker-rule-bg"></div>
            </div>
        </div>
    </div>
</div>
<div class="mui-poppicker">
    <div class="mui-poppicker-header"> <button class="mui-btn mui-poppicker-btn-cancel">取消</button> <button class="mui-btn mui-btn-blue mui-poppicker-btn-ok">确定</button>
        <div class="mui-poppicker-clear"></div>
    </div>
    <div class="mui-poppicker-body">
        <div class="mui-picker" style="width: 100%;">
            <div class="mui-picker-inner">
                <div class="mui-pciker-rule mui-pciker-rule-ft"></div>
                <ul class="mui-pciker-list" style="transform: perspective(1000px) rotateY(0deg) rotateX(80deg);">
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(0deg);">高中以下</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-20deg);">高中</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-40deg);">中专</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-60deg);">大专</li>
                    <li class="visible highlight" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-80deg);">本科</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-100deg);">硕士</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-120deg);">博士</li>
                </ul>
                <div class="mui-pciker-rule mui-pciker-rule-bg"></div>
            </div>
        </div>
    </div>
</div>
<div class="mui-poppicker">
    <div class="mui-poppicker-header"> <button class="mui-btn mui-poppicker-btn-cancel">取消</button> <button class="mui-btn mui-btn-blue mui-poppicker-btn-ok">确定</button>
        <div class="mui-poppicker-clear"></div>
    </div>
    <div class="mui-poppicker-body">
        <div class="mui-picker" style="width: 100%;">
            <div class="mui-picker-inner">
                <div class="mui-pciker-rule mui-pciker-rule-ft"></div>
                <ul class="mui-pciker-list" style="transform: perspective(1000px) rotateY(0deg) rotateX(0deg);">
                    <li class="highlight" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(0deg);">已婚</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-20deg);">保密</li>
                    <li class="visible" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(-40deg);">未婚</li>
                </ul>
                <div class="mui-pciker-rule mui-pciker-rule-bg"></div>
            </div>
        </div>
    </div>
</div>
<div id="addnexthtml" class="mui-page">
    <div class="mui-page-content">
        <div class="mui-scroll-wrapper">
            <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                <ul class="yunset_list">
                    <li class="yunset_list_text"><span class="yunset_list_name" style="width:150px">详细地址<em class="yunset_xttip">（选填）</em></span>
                        <div class="yunset_list_commentary"> <input type="text" runat="server" name="address" id="address" value="" placeholder="XXX省XXX市XXX区XXX街道" class=""></div>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">身高<em class="yunset_xttip">（选填）</em></span>
                        <span class="yunset_list_commentary" style="padding-right:20px;">
                            <input type="text" name="height" id="height" value="" placeholder="" runat="server">
                        </span>
                        <i style=" position:absolute;right:10px;top:0px; display:inline-block; line-height:44px;">CM</i>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">体重<em class="yunset_xttip">（选填）</em></span>
                        <span class="yunset_list_commentary" style="padding-right:20px;">
                            <input type="text" name="weight" id="weight" value="" placeholder="" runat="server">
                        </span>
                        <i style=" position:absolute;right:10px;top:0px; display:inline-block; line-height:44px;">KG</i>
                    </li>
                    <li class="yunset_list_text"><span class="yunset_list_name">民族<em class="yunset_xttip">（选填）</em></span>
                        <div class="yunset_list_commentary"> <input type="text" name="nationality" id="nationality"
                                value="" placeholder="例：汉" class="" runat="server"></div>
                    </li>
                    <li><span class="yunset_list_name">婚姻<em class="yunset_xttip">（选填）</em></span><span class="yunset_list_commentary">
                            <button id="marriagePicker" class="mui-btn mui-btn-block" type="button" data-marriage="0" runat="server">请选择婚姻状况</button>
                            <input type="hidden" id="marriage" name="marriage" value="0" runat="server">
                        </span></li>
                    <li class="yunset_list_text"><span class="yunset_list_name" style="width:150px">户籍所在地<em class="yunset_xttip">（选填）</em></span>
                        <div class="yunset_list_commentary"> <input type="text" name="domicile" id="domicile" value=""
                                placeholder="例：江苏-宿迁" class="" runat="server"></div>
                    </li>
                    <li><span class="yunset_list_name">QQ<em class="yunset_xttip">（选填）</em></span>
                        <div class="yunset_list_commentary"> <input type="text" name="qq" id="qq" value="" class=""
                                placeholder="请填写QQ号码" runat="server"></div>
                    </li>
                    <%--<li class="yunset_list_text">
                        <span class="yunset_list_name" style="width:150px">个人二维码<em class="yunset_xttip">（选填）</em></span>
                        <span class="yunset_list_commentary" id="previewshow">
                            <img id="previewimg" src="js/saved_resource" onerror="showImgDelay(this,http://14.29.186.116:666/&#39;,2);"
                                style="border-radius:0px;width:20px;height:20px;">
                        </span>
                        <div class="yunset_list_file">
                            <input type="file" id="pic" name="pic" onchange="previewImage(this,'preview')" accept="image/*">
                        </div>
                        <input type="hidden" name="preview" value="" id="preview" runat="server">
                    </li>--%>
                    <li class="yunset_list_text"><span class="yunset_list_name" style="width:150px">个人主页/博客<em class="yunset_xttip">（选填）</em></span>
                        <div class="yunset_list_commentary"> <input type="text" runat="server" name="homepage" id="homepage" value="" placeholder="请填写个人主页/博客" class=""></div>
                    </li>
                </ul>
                <div class="yunset_bth_box" style="background: transparent; border: none;">
                   <%-- <button id="submit" class="mui-btn mui-btn-block mui-btn-primary">保 存</button>--%>
                    <asp:Button ID="submit" runat="server" CssClass="mui-btn mui-btn-block mui-btn-primary" Height="45px" Text="保 存" OnClick="submit_Click" />
                   <%-- <a class="yun_wap_info_brief_tit_bc mui-action-back" style="background:#f8f8f8;border:1px solid #eee;color:#333">返回上一步</a>--%>
                </div>
            </div>

            <div class="mui-scrollbar mui-scrollbar-vertical">
                <div class="mui-scrollbar-indicator" style="transition-duration: 0ms; display: none; height: 8px; transform: translate3d(0px, -8px, 0px) translateZ(0px);"></div>
            </div>
        </div>
    </div>
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
            <li>
                <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
            </li>
        </ul>
    </div>
 </div>
    </form>
</body>


</html>
