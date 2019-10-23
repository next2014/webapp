<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ranking.aspx.cs" Inherits="ranking" %>

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
    <link rel="stylesheet" href="assets/css/sort.css">
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
    </style>
</head>

<body onload="countTime()">
    <div class="votes">
        <header>
            <div>
			   <img src="assets/img/banner/6-1.png"  style="width:100%" />
			</div>
            <p class="count-down">
                <!-- <i class="iconfont icon-time font-color"></i> -->
                <i class="iconfont icon-time font-color"></i> 投票
                <span class="text">结束</span>倒计时：
                <span id="_d">00</span>
                <span id="_h">00</span>
                <span id="_m">00</span>
                <span id="_s">00</span>
            </p>
        </header>
        <div id="app" class="container">
            <div class="sort-container" style="width:100%">
                <h4 class="sort-title layui-bg-red" style="width:100%">
                    <i class="iconfont icon-rank"></i> 排行榜
                </h4>
                <table class="layui-table sort-table sort-table" lay-even lay-skin="line" lay-size="lg" style="width:100%;margin:10px 0 2px 0;">
                    <thead>
                        <tr style="color:#cc0000">
                            <th style="width:30%;padding:5px 0;text-align: center;">排名</th>
                            <th style="width:40%;padding:5px 0;text-align: center;">姓名</th>
                            <th style="width:30%;padding:5px 0;text-align: center;">票数</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_list" runat="server">
                        <ItemTemplate>
                        <tr>
                            <td>
                               第 <%# Container.ItemIndex + 1%> 名
                            </td>
                            <td style="text-align: center" claas="user-name">
                                    <a href="detail.aspx?id=<%#Eval("id") %>">
                                <span style="display:block"><%#Eval("j_username") %></span></a>
                            </td>
                            <td><%#Eval("j_number") %> 票</td>
                        </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <button type="button" class="load-more-btn no-more" style="width:100%">没有更多了</button>
            </div>
        </div>
        <footer>
            <div class="footer-navs layui-bg-gray text-dark">
                <a href="index.aspx" class="link">
                    <i class="fa fa-home mr-1" style="font-size:20px;"></i> <span class="text">首页</span>
                </a>
                <a href="ranking.aspx" class="link active">
                    <i class="iconfont icon-rank mr-1" style="font-size:20px;"></i> <span class="text">排行榜</span>
                </a>
                <a href="rules.aspx" class="link">
                    <i class="layui-icon layui-icon-form mr-1" style="font-size:20px;"></i> <span class="text">投票说明</span>
                </a>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery-2.1.0.min.js"></script>
    <!-- <script src="https://cdn.bootcss.com/jquery/2.1.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/ft-carousel.min.js"></script> -->
    <script type="text/javascript">
        function countTime() {
            //获取当前时间  
            var date = new Date();
            var now = date.getTime();
            //设置截止时间  
            var str = "2019/10/23 12:00:00";
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
            // document.getElementById("_d").innerHTML = d + "天";
            // document.getElementById("_h").innerHTML = h + "时";
            // document.getElementById("_m").innerHTML = m + "分";
            // document.getElementById("_s").innerHTML = s + "秒";
            var dag = document.getElementById("_d");
            var hour = document.getElementById('_h');
            var mouse = document.getElementById('_m');
            var soure = document. getElementById('_s');
            var yc = $('yingcang');
            if(d > 0){
                dag.innerHTML = d + "天";
            }else{
                dag.innerHTML = "投票活动已结束";
                yc.css('display','none');
            }
            
            if(h > 0){
                hour.innerHTML = h + "时";
            }else{
                hour.innerHTML = " ";
            }

            if(m > 0){
                mouse.innerHTML = m + "分";
            }else{
                mouse.innerHTML = " ";
            }

            if(s > 0){
                soure.innerHTML = s + "秒";
            }else{
                soure.innerHTML = " ";
            }
            //递归每秒调用countTime方法，显示动态时间效果  
            setTimeout(countTime, 1000);
        }
    </script>
</body>

</html>