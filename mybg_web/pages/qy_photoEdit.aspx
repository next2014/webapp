<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_photoEdit.aspx.cs" Inherits="pages_qy_photoEdit" %>

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
<script type="text/javascript">
    function imgChange(obj) {
    //获取点击的文本框
    var file =document.getElementById("file");
    var imgUrl =window.URL.createObjectURL(file.files[0]);
    var img =document.getElementById('imghead');
    img.setAttribute('src',imgUrl); // 修改img标签src属性值
    };
</script>


</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <form runat="server" method='post' enctype="multipart/form-data">
    <div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_userbg bg3">
                    <a class="hd-lbtn " href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                    <div class="header_h1">企业logo</div>
                </div>
            </div>
        </div>
    </header>
    <section class="resume_mangage">
        <div class="verify">
            <div class="photo_i_box_v">
                <div class="photo_i_box_v_c">
                    <div id="showResult">
                        <div id="changeAvatar" class="photo_i_box">
                            <img src="../<%=Src%>" width="120" height="120" id="imghead">
                        </div>
                        <div class="clear"></div>
                        <div class="photo_xz">
                            <input id="file" name="file" type="file" accept="image/*" onchange="imgChange(this);">选择企业logo
                        </div>
                        <div class="yunset_identity_msg"><i class="yunset_identity_msg_icon"></i>选择上传企业logo点击提交按钮即可上传</div>
                    </div>
                    <%--<div id="showEdit" style="display: none;width:100%;height: 100%;position: absolute;top:0;left: 0;z-index: 9;">
                        <div class="photo_cz_bth">
                            <button class="mui-btn" data-mui-style="fab" id="cancleBtn">取消</button>
                            <button class="mui-btn" data-mui-style="fab" onclick="javascript:$(&#39;#readyimg&#39;).cropper(&#39;rotate&#39;,90)">旋转</button>
                            <div class="photo_cz_bth_qd">
                                <button class="mui-btn" data-mui-style="fab" data-mui-color="primary" id="confirmBtn">确定</button>
                            </div>
                        </div>
                        <div id="report">
                            <img src=" alt="Picture" id="readyimg">
                        </div>
                    </div>--%>
                </div>
                <div class="photo_tj">
                    <input type="hidden" name="txt" id="uimage" value="">
<%--                    <input name="submit" type="button" onclick="photo()" value="提交" class="yunset_bth">--%>
                     <asp:Button ID="Button1" runat="server" CssClass="yunset_bth" Text="提交" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </section>
</div>

<link rel="stylesheet" type="text/css" href="../css/cropper.css">
<script src="../js/cropper.js" language="javascript"></script>
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
                    window.location.href = wapurl + "member/index.php";
                });
                return false;
            }
        });
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