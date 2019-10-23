<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html style="font-size: 35.8px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>狮子城 · 服务之星</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/font.css">
    <link rel="stylesheet" href="assets/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/common2.css">
    <link rel="stylesheet" href="assets/css/index.css">
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
        .nameCoupon1 {
            padding: 10px 10px 0 10px;
            text-align: left;
        }
        .nameCoupon1 p{
           line-height: 25px;
        }
        .layui-layer-btn .layui-layer-btn0 {
            border-color: rgb(236, 170, 3)!important;
            background-color: #FFB800!important;
            color: #333333!important;
        }
        .shadow-sm a {
            background:#FFB800;
            display:block;
            padding:6px 5px 3px 5px;
            margin:10px 10px;
            border-radius:3px;
        }
        .modal-title{
            font-size:18px;
        }
        .modal-header{
          padding:0.35rem 1rem!important;
        }
        .modal-header .close{
          padding:0.9rem 1rem 0 1rem!important;
          font-size:35px;
        }
        .modal-body{
            padding:1.2rem 1rem;
        }
    </style>
</head>

<body onload="countTime()">
    <form id="form1" runat="server">
    <div class="votes">
        <header>
		    <div>
			   <img src="assets/img/banner/6-1.png"  style="width:100%" />
			</div>
            <p class="count-down">
                <!-- <i class="iconfont icon-time font-color"></i> -->
                <i class="iconfont icon-time font-color"></i> 活动
                <span class="text">结束</span>倒计时：
                <span id="_d">00</span>
                <span id="_h">00</span>
                <span id="_m">00</span>
                <span id="_s">00</span>
            </p>
        </header>
        <div class="container">
            <div id="user-list" class="user-list">
                <asp:Repeater ID="rpt_list" runat="server" OnItemCommand="rpt_list_ItemCommand">
                <ItemTemplate>
                <div class="user equi shadow-sm">
                    <span class="number"><%#Eval("j_no") %><small>号</small></span>
                    <a style="margin:4px 0 0 0;" href="detail.aspx?id=<%#Eval("id") %>" class="link"><img class="lazy img" src="/upload/<%#Eval("j_img") %>" style="display: block;" alt=""></a>
                    <div class="nameCoupon1 text-justify">
                        <p><strong>姓名：</strong><%#Eval("j_username") %></p>
                        <p><strong>部门：</strong><%#Eval("j_department") %></p>
                        <p class="text-truncate"><strong>职位：</strong><%#Eval("j_position") %></p>
                        <p style="height:45px;overflow:hidden;">
                            <strong>服务格言：</strong><%#Eval("j_jianjie") %></p>
                    </div>
                    <%--<button class="layui-btn layui-btn-warm m-1 toupiao" data-type="tpdata" style="width:90%;color:#333333" id="buttom" runat="server" CommandName="rpt_tp" CommandArgument='<%=Request.QueryString["openid"] %>' OnClientClick='<%#  "if (!confirm(\"确定取消该订单?\")) return false;"%>' disabled>
                      <i class="layui-icon layui-icon-praise" style="font-size:20px; color: #333333;vertical-align: middle;"></i> 投票 (<span id="TP1"><%#Eval("j_number") %></span>)
                    </button>--%>
                    <asp:LinkButton ID="LinkButton1" CommandName="rpt_tp" CommandArgument='<%#Eval("id")+","+Request.QueryString["openid"] %>'  runat="server" CssClass="btn_qd wancheng"><i class="layui-icon layui-icon-praise" style="font-size:20px; color: #333333;vertical-align: middle;"></i>　投票 (<span id="TP1"><%#Eval("j_number") %></span>)</asp:LinkButton>
                </div>
                </ItemTemplate>
                </asp:Repeater>                
            </div>
        </div>
        <footer>
            <div class="footer-navs layui-bg-gray text-dark">
                <a href="index.aspx" class="link active ">
                    <i class="fa fa-home mr-1" style="font-size:20px;"></i> <span class="text">首页</span>
                </a>
                <a href="ranking.aspx" class="link ">
                    <i class="iconfont icon-rank mr-1" style="font-size:20px;"></i> <span class="text">排行榜</span>
                </a>
                <a href="rules.aspx" class="link ">
                    <i class="layui-icon layui-icon-form mr-1" style="font-size:20px;"></i> <span class="text">投票说明</span>
                </a>
            </div>
        </footer>
    </div>
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">提示</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p style="text-align: center;font-size:18px;">投票活动已结束</p>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-2.1.0.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function countTime() {
            //获取当前时间  
            var date = new Date();
            var now = date.getTime();
            //设置截止时间  
            var str = "2019/10/25 12:00:00";
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
            } else{
                // 投票结束后 弹出提示
                window.setTimeout(function(){
                    $('#myModal').modal('show')
                },100)
            }
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
<script src="src/layui.js"></script>
<script>
    layui.use(['form', 'upload','layer'], function () {
        var $ = layui.jquery
            , layer = layui.layer;

        //触发事件
		/*var active = {
            tpdata: function(){
            layer.confirm('您是否确定投票？', {
                title: '张三',
                btn: ['确认','取消'] //按钮
            }, function(){
                layer.msg('成功投票', {icon: 1});
            }, function(){
                layer.msg('取消投票', {icon: 5});
            });
            }
        };*/
        //var active = {
        //    tpdata: function(){
        //    layer.confirm('投票活动尚未开始', {
        //        title: '提示',
        //        btn: '取消' //按钮
        //    });
        //    }
        //};
        $('.toupiao').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
});

</script>
<!-- <script>
    window.setTimeout(function(){
        $('#myModal').modal('show')
    },100)
</script> -->
</form>
</body>
</html>