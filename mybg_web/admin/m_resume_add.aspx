<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_resume_add.aspx.cs" Inherits="admin_m_resume_add" %>

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
    <title>简历详细</title>
</head>

<body>
    <form runat="server">
        <div class="margin clearfix">
            <div class="detailed_style clearfix">
                <%--<em class="type"></em>--%>
                <%--  <div class="shop_logo"><img src="<%=Src %>" width="190px" height="120px"  /></div>--%>
                <ul class="shop_content clearfix">
                    <li class="shop_name">
                        <label class="label_name">期望岗位：</label><span class="info" runat="server" id="name"></span>
                    </li>
                    <li>
                        <label class="label_name">从事行业：</label><span class="info" runat="server" id="hy"></span></li>
                    <li>
                        <label class="label_name">工作职能：</label><span class="info" runat="server" id="job"></span></li>
                    <li>
                        <label class="label_name">期望薪资：</label><span class="info" runat="server" id="salary"></span></li>
                    <li>
                        <label class="label_name">期望城市：</label><span class="info" runat="server" id="city"></span></li>
                    <li>
                        <label class="label_name">工作性质：</label><span class="info" runat="server" id="type"></span></li>
                    <li>
                        <label class="label_name">到岗时间：</label><span class="info" runat="server" id="report"></span></li>
                    <li>
                        <label class="label_name">求职状态：</label><span class="info" runat="server" id="jobstatus"></span></li>
                    <li>
                        <label class="label_name">日期：</label><span class="info" runat="server" id="time"></span></li>
                    <li>
                        <label class="label_name">默认简历：</label><span class="info" runat="server" id="defaulta"></span></li>
                </ul>
            </div>
            <br />

            <%=Edu %>

        </div>
    </form>
    <div class="At_button">
        <%--  <button onclick="through_save('this','123');" class="btn btn-primary radius" type="submit">通  过</button>
        <button onclick="cancel_save();" class="btn btn-danger  btn-warning" type="button">拒  绝</button>--%>
        <button onclick="return_close();" class="btn btn-default radius" type="button">返回上一步</button>
    </div>
</body>

</html>
<script>
    //通过
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);

    function through_save(obj, id) {
        layer.confirm('确认要开通该店铺吗？', function (index) {
            layer.msg('已开通!', {
                icon: 1,
                time: 1000
            });
            location.href = "Shops_Audit.html";
            parent.$('#parentIframe').css("display", "none");
            parent.$('.Current_page').css({
                "color": "#333333"
            });
        });

    }

    //返回操作
    function return_close() {
        location.href = "m_resume.aspx";
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


