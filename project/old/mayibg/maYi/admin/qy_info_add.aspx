<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_info_add.aspx.cs" Inherits="admin_qy_info_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="font/css/font-awesome.min.css" />
    <!--[if lte IE 8]>
			  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
			<![endif]-->
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/typeahead-bs2.min.js"></script>
    <script src="assets/layer/layer.js" type="text/javascript"></script>
    <script src="assets/laydate/laydate.js" type="text/javascript"></script>
    <title>企业详细</title>
</head>

<body>
    <form runat="server">
        <div class="margin clearfix">
            <div class="detailed_style clearfix" >
                <%--<em class="type"></em>--%>
                <div class="shop_logo"><img src="<%=Src%>" width="190px" height="190px"  /></div>
                <ul class="shop_content clearfix" style="padding-left:200px;">
                   
                    <li class="shop_name">
                        <label class="label_name">企业名称：</label><span class="info" runat="server" id="name"></span>
                        <div class="Authenticate"><i class="icon-yxrz"></i><i class="icon-yhk"></i><i class="icon-sjrz"></i><i class="icon-grxx"></i></div>
                    </li>
                    <li>
                        <label class="label_name">从事行业：</label><span class="info" runat="server" id="hy"></span></li>
                    <li>
                        <label class="label_name">企业性质：</label><span class="info" runat="server" id="pr"></span></li>
                    <li>
                        <label class="label_name">企业规模：</label><span class="info" runat="server" id="mun"></span></li>
                    <li>
                        <label class="label_name">所 在 地：</label><span class="info" runat="server" id="provinceid"></span></li>
                    <li>
                        <label class="label_name">联 系 人：</label><span class="info" runat="server" id="linkman"></span></li>
                    <li>
                        <label class="label_name">联系手机：</label><span class="info" runat="server" id="linktel"></span></li>
                    <li>
                        <label class="label_name">固定电话：</label><span class="info" runat="server" id="linkphone"></span></li>
                    
                    <li>
                        <label class="label_name">公司福利：</label><span class="info" runat="server" id="welfareshow"></span></li>
                    <li>
                        <label class="label_name">企业邮箱：</label><span class="info" runat="server" id="linkmail"></span></li>
                    <li>
                        <label class="label_name">企业网址：</label><span class="info" runat="server" id="website"></span></li>
                    <li>
                        <label class="label_name">联系人职位：</label><span class="info" runat="server" id="linkjob"></span></li>
                    <li>
                        <label class="label_name">联系人QQ：</label><span class="info" runat="server" id="linkqq"></span></li>
                    <li>
                        <label class="label_name">公交站点：</label><span class="info" runat="server" id="busstops"></span></li>
                    <li>
                        <label class="label_name">创办时间：</label><span class="info" runat="server" id="sdate"></span></li>
                    <li>
                        <label class="label_name">注册资金：</label><span class="info" runat="server" id="money"></span></li>
                    <li>
                        <label class="label_name">创建日期：</label><span class="info" runat="server" id="time"></span></li>
                    <li>
                        <label class="label_name">推荐企业：</label><span class="info" runat="server" id="recommend"></span></li>
                     <li>
                        <label class="label_name">公司地址：</label><span class="info" runat="server" id="address"></span></li>
                </ul>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br /> <br />
            <div class="Store_Introduction">
                <div class="title_name">企业介绍</div>
                <div class="info" id="contentshow" runat="server">
                </div>

            </div>
            <div class="Store_Introduction">
					<div class="title_name">企业认证 (<%=rz%>)</div>
					<div class="info">
	                    <img src="<%=Src2%>" width="190px" height="190px" />
					</div>
				</div>

        </div>
    </form>
    <div class="At_button">
        <button onclick="through_save('this','123');" class="btn btn-primary radius" type="submit">通  过</button>
        <button onclick="through_savea('this','123');" class="btn btn-danger  btn-warning" type="submit">拒  绝</button>
        <button onclick="return_close();" class="btn btn-default radius" type="button">返回上一步</button>
    </div>
</body>

</html>
<script>
    //通过
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);

    function through_save(obj, id) {
        layer.confirm('确认通过该企业认证吗？', function (index) {
            layer.msg('已通过!', {
                icon: 1,
                time: 1000
            });
            location.href = "qy_info_add.aspx?Id=<%=Id%>&tg=<%=Id%>";
            parent.$('#parentIframe').css("display", "none");
            parent.$('.Current_page').css({
                "color": "#333333"
            });
        });

    }

    function through_savea(obj, id) {
        layer.confirm('确认拒绝该企业认证吗？', function (index) {
            layer.msg('已拒绝!', {
                icon: 1,
                time: 1000
            });
            location.href = "qy_info_add.aspx?Id=<%=Id%>&jj=<%=Id%>";
            parent.$('#parentIframe').css("display", "none");
            parent.$('.Current_page').css({
                "color": "#333333"
            });
        });

    }

    //返回操作
    function return_close() {
        location.href = "qy_info.aspx";
        parent.$('#parentIframe').css("display", "none");
        parent.$('.Current_page').css({
            "color": "#333333"
        });

    }
    //拒绝
    function cancel_save() {
        var index = layer.open({
            type: 1,
            title: '内容',
            maxmin: true,
            shadeClose: false,
            area: ['600px', ''],
            content: ('<div class="shop_reason"><span class="content">请说明拒绝该申请人申请店铺的理由，以便下次在申请时做好准备。</span><textarea name="请填写拒绝理由" class="form-control" id="form_textarea" placeholder="请填写拒绝理由" onkeyup="checkLength(this);"></textarea><span class="wordage">剩余字数：<span id="sy" style="color:Red;">500</span>字</span></div>'),
            btn: ['确定', '取消'],
            yes: function (index, layero) {
                if ($('.form-control').val() == "") {
                    layer.alert('回复内容不能为空！', {
                        title: '提示框',
                        icon: 0,
                    })
                } else {
                    layer.msg('提交成功!', {
                        icon: 1,
                        time: 1000
                    });
                    layer.close(index);

                }
            }
        })

    }
    /*字数限制*/
    function checkLength(which) {
        var maxChars = 500; //
        if (which.value.length > maxChars) {
            layer.open({
                icon: 2,
                title: '提示框',
                content: '您输入的字数超过限制!',
            });
            // 超过限制的字数了就将 文本框中的内容按规定的字数 截取
            which.value = which.value.substring(0, maxChars);
            return false;
        } else {
            var curr = maxChars - which.value.length; //减去当前输入的
            document.getElementById("sy").innerHTML = curr.toString();
            return true;
        }
    };
</script>
