<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rules.aspx.cs" Inherits="rules" %>

<!DOCTYPE html>
<html style="font-size: 35.8px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>狮子城 · 服务之星</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/font.css">
    <link rel="stylesheet" href="assets/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/common.css">
    <link rel="stylesheet" href="assets/css/common2.css">
    <link rel="stylesheet" href="assets/css/rule.css">
    <link rel="stylesheet" href="src/css/layui.css">
    <style>
        .icon {
            width: 1em;
            height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }
        .layui-upload-img {
            width: 92px;
            height: 92px;
            margin: 0 10px 10px 0;
        }
        .rule-container .content p {
            text-align: left;
            line-height: 30px;
        }
        .rule-container .content p {
            font-size: 14px;
        }
        .container .sort-title {
            font-size: 16px;
            color: #fff;
            text-align: center;
            width: 8.93rem;
            height: 1.3rem;
            line-height: 1.3rem;
            position: relative
        }

        .container .sort-title .icon {
            position: absolute;
            top: -18px;
            left: -15px;
            width: 30px;
            height: 30px;
            transform: rotateZ(-5deg)
        }
    </style>
</head>

<body onload="countTime()">
    <div class="votes">
        <header>
            <div>
			   <img src="assets/img/banner/6-1.png"  style="width:100%" />
			</div>
           <!-- <div class="swiper-container carousel">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="assets/img/banner/1.jpg" class="d-block w-100" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/banner/2.jpg" class="d-block w-100" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/banner/3.jpg" class="d-block w-100" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/img/banner/4.jpg" class="d-block w-100" alt="">
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div> -->
            <!-- <div class="count-info layui-bg-green">
                <div class="info">
                    <p class="type"><i class="iconfont icon-20-account"></i><span class="text">参赛数</span></p> <span
                        class="num">3</span>
                </div>
                <div class="info">
                    <p class="type"><i class="iconfont icon-20-numbers"></i><span class="text">投票数</span></p> <span
                        class="num">2</span>
                </div>
                <div class="info">
                    <p class="type"><i class="iconfont icon-20-views"></i><span class="text">访问量</span></p> <span
                        class="num">42</span>
                </div>
            </div> -->
            <%--<p class="count-down">
                <i class="iconfont icon-time font-color"></i> 投票
                <span class="text">结束</span>倒计时：
                <span id="_d">00</span>
                <span id="_h">00</span>
                <span id="_m">00</span>
                <span id="_s">00</span>
            </p>--%>
        </header>
        <div id="app" class="container">
            <div class="rule-container">
                <h4 class="sort-title layui-bg-red" style="width:100%">
                    <i class="iconfont icon-20-rules mr-1"></i> 评选规则
                </h4>
                <div class="content">
                    <p>
                      <strong style="font-size:14px;width: 100%;display: block;">第二期 “狮子城 · 服务之星” 评比活动</strong>
                    </p>
                    <p>投票时间：10月18日12:00-10月20日12:00</p>
                    <p>投票结果公布：10月21日投票结果公布</p>
                    <p>投票规则：<strong style="font-size:12px;font-weight: bold;">投票期间公司全体正式员工每人拥有一票的投票权</strong></p>
                </div>
            </div>
        </div>
        <footer>
            <div class="footer-navs layui-bg-gray text-dark">
                <a href="index.aspx" class="link">
                    <i class="fa fa-home mr-1" style="font-size:20px;"></i> <span class="text">首页</span>
                </a>
                <a href="ranking.aspx" class="link ">
                    <i class="iconfont icon-rank mr-1" style="font-size:20px;"></i> <span class="text">排行榜</span>
                </a>
                <a href="rules.aspx" class="link active">
                    <i class="layui-icon layui-icon-form mr-1" style="font-size:20px;"></i> <span class="text">投票说明</span>
                </a>
            </div>
        </footer>
    </div>
    <!-- <script src="assets/js/jquery-2.1.0.min.js"></script>
    <script type="text/javascript">
        function countTime() {
            //获取当前时间  
            var date = new Date();
            var now = date.getTime();
            //设置截止时间  
            var str = "2019/07/06 23:59:59";
            var endDate = new Date(str);
            var end = endDate.getTime();
            //时间差  
            var leftTime = end - now;
            //定义变量 d,h,m,s保存倒计时的时间  
            var d, h, m, s;
            if (leftTime >= 0) {
                d = Math.floor(leftTime / 1000 / 60 / 60 / 24);
                h = Math.floor(leftTime / 1000 / 60 / 60 % 24);
                m = Math.floor(leftTime / 1000 / 60 % 60);
                s = Math.floor(leftTime / 1000 % 60);
            }
            //将倒计时赋值到div中  
            document.getElementById("_d").innerHTML = d + "天";
            document.getElementById("_h").innerHTML = h + "时";
            document.getElementById("_m").innerHTML = m + "分";
            document.getElementById("_s").innerHTML = s + "秒";
            //递归每秒调用countTime方法，显示动态时间效果  
            setTimeout(countTime, 1000);
        }
    </script> -->
</body>

</html>