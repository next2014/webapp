<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_part_add.aspx.cs" Inherits="admin_qy_job_add" %>

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



    
    
    <link rel="stylesheet" href="../css/job.css" type="text/css" />
    
    <title>职位详情</title>
</head>

<body>

    <div class="margin clearfix">
            <form runat="server">
           <div class="detailed_style clearfix">
                <%--<em class="type"></em>--%>
              <%--  <div class="shop_logo"><img src="<%=Src%>" width="190px" height="190px" /></div>--%>
                <ul class="shop_content clearfix">
                   
                    <li class="shop_name">
                        <label class="label_name">职位名称：</label><span class="info" runat="server" id="name"></span>
                    </li>
                    <li>
                        <label class="label_name">工作类型：</label><span class="info" runat="server" id="type"></span></li>
                    <li>
                        <label class="label_name">招聘人数：</label><span class="info" runat="server" id="number"></span></li>
                    <li>
                        <label class="label_name">性别要求：</label><span class="info" runat="server" id="sex"></span></li>
                    <li>
                        <label class="label_name">兼职薪水：</label><span class="info" runat="server" id="salary_typetext"></span></li>
                    
                    <li>
                        <label class="label_name">结算周期：</label><span class="info" runat="server" id="billing_cycle"></span></li>
                    <li>
                        <label class="label_name">工作区域：</label><span class="info" runat="server" id="cityid"></span></li>
                   
                    <li>
                        <label class="label_name">联系人：</label><span class="info" runat="server" id="linkman"></span></li>
                    <li>
                        <label class="label_name">联系手机：</label><span class="info" runat="server" id="linktel"></span></li>
                     <li>
                        <label class="label_name">时  间：</label><span class="info" runat="server" id="time"></span></li>
                     <li>
                        <label class="label_name">置  顶：</label><span class="info" runat="server" id="nottop"></span></li>
                     <li>
                        <label class="label_name">投递次数：</label><span class="info" runat="server" id="delivery"></span></li>
                     <li>
                        <label class="label_name">推荐职位：</label><span class="info" runat="server" id="recommend"></span></li>
                      
                     <li>
                        <label class="label_name">详细地址：</label><span class="info" runat="server" id="address"></span></li>
                    <li>
                        <label class="label_name">有效期：</label><span class="info" runat="server" id="descriptiontext"></span></li>
                    <li>
                        <label class="label_name">审核码：</label><span class="info" runat="server" id="audits"></span></li>
                </ul>
            </div>
        <br /><br /><br /><br /><br />

       <%--  <div class="Store_Introduction">
            <div class="title_name">兼职时间</div>
            <div class="info" runat="server" id="Div1">
                <table class="det-tab" width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <th height="28" align="center" valign="middle" class="fre-tab01">TIME</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab02">周一</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab03">周二</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab04">周三</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab05">周四</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab06">周五</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab07">周六</th>
                                    <th height="28" align="center" valign="middle" class="fre-tab08">周日</th>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab09">上午</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array1%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array2%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array3%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array4%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array5%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array6%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array7%></td>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab10">下午</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array8%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array9%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array10%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array11%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array12%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array13%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array14%></td>
                                </tr>
                                <tr>
                                    <td height="28" align="center" valign="middle" class="fre-tab11">晚上</td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array15%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array16%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array17%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array18%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array19%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array20%></td>
                                    <td height="28" align="center" valign="middle" class="cut"><%=Array21%></td>
                                </tr>
                            </tbody>
                        </table>
            </div>
        </div>--%>

        <div class="Store_Introduction">
            <div class="title_name">职位描述</div>
            <div class="info" runat="server" id="contentshow">
                
            </div>
        </div>
  </form>

        <div class="At_button">
            <button onclick="through_save('this','123');" class="btn btn-primary radius" type="submit">通  过</button>
            <button onclick="through_savea('this','123');" class="btn btn-danger  btn-warning" type="submit">拒  绝</button>
            <button onclick="return_close();" class="btn btn-default radius" type="button">返回上一步</button>
        </div>
    </div>
      
</body>
</html>
<script>
    //通过
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);
    function through_save(obj, id) {
        layer.confirm('确认要通过该职位审核吗？', function (index) {
            layer.msg('已审核!', { icon: 1, time: 1000 });
            location.href = "qy_part_add.aspx?Id=<%=Id%>&tg=<%=Id%>";
            parent.$('#parentIframe').css("display", "none");
            parent.$('.Current_page').css({ "color": "#333333" });
        });
    }

    function through_savea(obj, id) {
        layer.confirm('确认要拒绝该职位审核吗？', function (index) {
            layer.msg('已拒绝!', { icon: 1, time: 1000 });
            location.href = "qy_part_add.aspx?Id=<%=Id%>&jj=<%=Id%>";
            parent.$('#parentIframe').css("display", "none");
            parent.$('.Current_page').css({ "color": "#333333" });
        });
    }

    //返回操作
    function return_close() {
        location.href = "qy_part.aspx";
        parent.$('#parentIframe').css("display", "none");
        parent.$('.Current_page').css({ "color": "#333333" });

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
                    layer.msg('提交成功!', { icon: 1, time: 1000 });
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

