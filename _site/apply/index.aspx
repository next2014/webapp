﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>格林披志卡丁车馆</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">
<!-- animateion -->
<link href="assets/css/keyframes.css" rel="stylesheet">
<link href="assets/css/animation.css" rel="stylesheet">
<link href="assets/css/swiper.min.css" rel="stylesheet">
<link href="assets/css/glpz.css"  rel="stylesheet">
<!-- icon -->
<link href="assets/fontawesome/css/font-awesome.min.css" rel="stylesheet">
<!-- weui -->
<link href="assets/css/weui.css" rel="stylesheet" >
<link href="assets/css/jquery-weui.css" rel="stylesheet">
<!-- layui -->
<link rel="stylesheet" href="assets/css/layui.css">
<link rel="stylesheet" href="src/css/modules/layer/default/layer.css">
</head>
<body>
    <style>
    .icon {
        width: 1em;
        height: 1em;
        vertical-align: -0.15em;
        fill: currentColor;
        overflow: hidden;
    }
    .layui-input-block {
        margin-left: 100px!important;
    }
    .title h4{
        height: 30px;
        line-height: 30px;
    }
</style>
<div class="pt-2 pb-2 text-center" style="background-repeat: no-repeat; background-size: cover; background-color: transparent; background-position: 50% 50%; background-image:url('assets/img/glpz_img/topbg.jpg');">
    <img src="assets/img/gl_logo.png" width="140" alt="">
</div>
<div class="swiper-container carousel">
    <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="assets/img/glpz_img/01.jpg" class="d-block w-100" alt="">
                </div>
            
                <div class="swiper-slide">
                    <img src="assets/img/glpz_img/02.jpg" class="d-block w-100" alt="">
                </div>
            
                <div class="swiper-slide">
                    <img src="assets/img/glpz_img/03.jpg" class="d-block w-100" alt="">
                </div>
            
                <div class="swiper-slide">
                    <img src="assets/img/glpz_img/04.jpg" class="d-block w-100" alt="">
                </div>
            
                <div class="swiper-slide">
                    <img src="assets/img/glpz_img/05.jpg" class="d-block w-100" alt="">
                </div>       
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>
<div class="container p-0">
    <div class="title p-2 border-bottom">
        <h4><i class="fa fa-pencil-square-o text-secondary mr-1"></i><strong>520卡丁车情侣邀请赛-在线报名</strong></h4>
    </div>
    <form class="layui-form layui-form-pane1" action="" lay-filter="first" style="width:100%" id="form" runat="server">
        <div class="layui-form apply-form" style="width:100%">
            <div class="layui-form-item pt-1 pb-1 m-0 border-bottom">
                <label class="layui-form-label text-left pr-0 mb-0">手机号码<span class="text-danger">*</span></label>
                <div class="layui-input-block">
                    <input type="text" name="phone" lay-verify="number" required placeholder="请输入手机号码" lay-verType="tips" autocomplete="off" class="layui-input border-0" id="u_mobile" runat="server">
                </div>
            </div>
            <div class="layui-form-item pt-1 pb-1 m-0 border-bottom">
                <label class="layui-form-label text-left pr-0 mb-0">参赛姓名<span class="text-danger">*</span></label>
                <div class="layui-input-block">
                    <input type="text" name="name1" lay-verify="name" required placeholder="请输入姓名" lay-verType="tips" autocomplete="off" class="layui-input border-0" id="u_username1" runat="server">
                </div>
            </div>
            <div class="layui-form-item pt-1 pb-1 m-0 border-bottom">
                <label class="layui-form-label text-left pr-0 mb-0">参赛姓名<span class="text-danger">*</span></label>
                <div class="layui-input-block">
                    <input type="text" name="name2" lay-verify="name" required placeholder="请输入姓名" lay-verType="tips" autocomplete="off" class="layui-input border-0" id="u_username2" runat="server">
                </div>
            </div>
            <div class="layui-form-item pt-1 pb-1 m-0 border-bottom">
                <label class="layui-form-label text-left pr-0 mb-0">活动时间</label>
                <div class="layui-input-block mb-1">
                    <input type="text" class="layui-input border-0" value="2019-05-20" readonly="readonly" id="u_settime" runat="server">
                </div>
            </div>
            <div class="layui-form-item pt-1 pb-1 m-0 border-bottom">
                <label class="layui-form-label text-left pr-0 mb-0">报名金额</label>
                <div class="layui-input-block">
                    <input type="text" name="number" lay-verify="money" value="￥152.00" readonly="readonly" autocomplete="off" class="layui-input border-0" id="u_price" runat="server">
                </div>
            </div>
            <div class="layui-form-item m-3">
                <div class="layui-row layui-col-space12 text-center">
                    <asp:Button ID="Button1" runat="server" Text="提  交" CssClass="layui-btn layui-btn-warm layui-col-sm4 w-100" ay-submit lay-filter="*" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</div>
    <!-- 底部导航 -->

    <script src="assets/js/jquery-2.1.0.min.js"></script>
<script src="assets/js/bootstrap.bundle.js"></script>
<script src="src/layui.js"></script>
<script src="assets/js/jquery-weui.js"></script>
<script src="assets/js/weui.min.js"></script>
<script src="assets/lib/fastclick.js"></script>
<script>
    $(function() {
        FastClick.attach(document.body);
    });
</script>

<script src="assets/js/swiper.js"></script>
<script type="text/javascript">
    var swiper = new Swiper('.swiper-container',{
        directon:'horizontal',//水平滑动
        speed:300,//滑动速度
        loop:true,
        autoplay:{//自动切换时间
            delay:3000,
            disableOnInteraction: false,
        },
        pagination: {
            el:'.swiper-pagination',
            dynamicBullets: true,
        }
    });
    var swiper1 = new Swiper('.swiper-container1', {
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
</script>
<script src="assets/js/gallery.js"></script>
<script>
layui.use('form', function () {
	var $ = layui.jquery
		, form = layui.form
		, laydate = layui.laydate

	//自定义验证规则
	form.verify({
		name: function (value) {
			if (value.length < 1) {
				return '请填写参赛姓名';
			}
		}
		, number: function (value) {
			if (value.length < 11) {
				return '手机号码必须填写11位数';
			}
		}
	});

	//监听提交
	form.on('submit(*)', function (data) {
		console.log(data)
		layer.msg('恭喜您报名成功', {icon: 1});
		return false;
	});

});
</script>
</body>
</html>