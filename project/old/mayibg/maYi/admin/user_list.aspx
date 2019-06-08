<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_list.aspx.cs" Inherits="admin_user_list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="assets/css/codemirror.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
    <script src="assets/js/jquery.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

    <!--[if !IE]> -->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

    <script type="text/javascript">
        if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/typeahead-bs2.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="js/H-ui.js"></script>
    <script type="text/javascript" src="js/H-ui.admin.js"></script>
    <script src="assets/layer/layer.js" type="text/javascript"></script>
    <script src="assets/laydate/laydate.js" type="text/javascript"></script>
    <title>用户列表</title>
     <style type="text/css">
        .pagelist {
            clear: both;
            display: block;
            margin: 0 0 20px 1px;
        }

            .pagelist:after {
                clear: both;
                content: ".";
                display: block;
                height: 0;
                visibility: hidden;
            }

            .pagelist .l-btns {
                display: block;
                float: left;
                margin: 2px 5px 0 -1px;
                padding: 0 10px;
                border: 1px solid #dbdbdb;
                height: 28px;
                overflow: hidden;
            }

                .pagelist .l-btns span {
                    font-size: 12px;
                    color: #333;
                    line-height: 28px;
                }

                .pagelist .l-btns .pagenum {
                    display: inline-block;
                    margin: 0 5px;
                    padding: 0 5px;
                    border: 1px solid #dbdbdb;
                    border-top: 0;
                    border-bottom: 0;
                    width: 30px;
                    height: 28px;
                    line-height: 28px;
                    font-size: 12px;
                    color: #333;
                    text-align: center;
                    vertical-align: top;
                    overflow: hidden;
                }

        div.default {
            margin: 0;
            padding: 0;
            font-family: "Microsoft YaHei",Verdana;
            font-size: 12px;
        }

            div.default a, div.default span {
                display: block;
                float: left;
                margin: 2px 0 0 -1px;
                padding: 4px 12px;
                line-height: 20px;
                height: 20px;
                border: 1px solid #e1e1e1;
                background: #fff;
                color: #333;
                text-decoration: none;
            }

                div.default span:first-child {
                    border-left: 1px solid #e1e1e1;
                }

                div.default a:hover {
                    color: #666;
                    background: #eee;
                }

                div.default span.current {
                    color: #fff;
                    background: #488FCD;
                    border-color: #488FCD;
                }

                div.default span.disabled {
                    color: #999;
                    background: #fff;
                }

        .sc {
            background-color: #d15b47!important;
            border-color: #d15b47;
            margin-left: 1px;
            color:#fff;
            border-width:0px;
        }
    </style>
<script type="text/javascript">
    $(function () {
        //全选,设置chheckbox name='all' tbody id=tb
        $("input[name=all]").click(function () {
            if (this.checked) {
                $(".checkall input:enabled").prop("checked", true);
            } else {
                $(".checkall input:enabled").prop("checked", false);
            }
        });
    })
    </script>
</head>

<body>
    <form runat="server">
    <div class="page-content clearfix">
        <div id="Member_Ratings">
            <div class="d_Confirm_Order_style">
                <div class="search_style">

                    <ul class="search_content clearfix">
                        <li>
                            <label class="l_f">用户名称</label><input runat="server" id="txtKeywords" name="txtKeywords" type="text" class="text_add" placeholder="输入用户名称" style="width: 400px" /></li>
                        <li>
                            <label class="l_f">添加时间</label><input runat="server" class="inline laydate-icon" id="start" style="margin-left: 10px;" /></li>
                        <li style="width: 90px;">
                            <%--<button runat="server" type="button" class="btn_search"><i class="icon-search"></i>查询</button>--%>
                            <asp:Button ID="Button1" CssClass="btn_search" runat="server" Text="查询" OnClick="Button1_Click" />
                        </li>
                    </ul>
                </div>
                <!---->
                <div class="border clearfix">
                    <span class="l_f">
                        <a href="javascript:ovid()" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
                           <div class="btn btn-danger"><i class="icon-trash"></i><asp:Button ID="Button4"   CssClass="sc"  runat="server" Text="批量删除" OnClick="Button4_Click"  OnClientClick="javascript:return confirm('确定删除吗?');" /></div  >
                    </span>
                    <span class="r_f">共：<b><%=count%></b>条</span>
                </div>
                <!---->
                <div class="table_menu_list" style="align-content:center">
                    <asp:Repeater ID="rptList" runat="server">
                        <HeaderTemplate>
                            <table class="table table-striped table-bordered table-hover" id="sample-table" >
                                <tr >
                                    <th width="25" style="text-align:center">
                                        <label><input type="checkbox" class="ace" name="all" /><span class="lbl"></span></label>
                                    </th>
                                    <th width="100" style="text-align:center">用户名</th>
                                    <th width="180" style="text-align:center">加入时间</th>
                                    <th width="180" style="text-align:center">用户类型</th>
                                    <th width="250" style="text-align:center">操作</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                  <%--  <label>
                                        <input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                                     <asp:CheckBox ID="CheckBox1" CssClass="checkall"  runat="server" AutoPostBack="false"  />
                                        <asp:HiddenField ID="hidId" Value='<%#Eval("username")%>' runat="server" />
                                </td>
                                <td><u style="cursor: pointer" class="text-primary"><%#Eval("username")%></u></td>
                                <td><%#Eval("time")%></td>
                                <td><%#Convert.ToInt32(Eval("number"))==1 ? "个人用户" : (Convert.ToInt32(Eval("number"))==2 ? "企业用户" : "超级用户") %></td>
                                <td class="td-manage">
                                    <a title="编辑" onclick="member_edit('<%#Eval("username")%>')" href="javascript:;" class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>
                                    <a title="删除" href="user_list.aspx?del=<%#Eval("username") %>"  onclick="return confirm('确定删除?');" class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                         <FooterTemplate>
                                <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"9\">暂无记录</td></tr>" : ""%>
                            </table>
                            </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>

     <br />
        <!--内容底部-->
        <div style="text-align: center;">
            <asp:LinkButton ID="lbtnFirstPage" runat="server" OnClick="lbtnFirstPage_Click">首页</asp:LinkButton>
            <asp:LinkButton ID="lbtnpritPage" runat="server" OnClick="lbtnpritPage_Click">上一页</asp:LinkButton>
            <asp:LinkButton ID="lbtnNextPage" runat="server" OnClick="lbtnNextPage_Click">下一页</asp:LinkButton>
            <asp:LinkButton ID="lbtnDownPage" runat="server" OnClick="lbtnDownPage_Click">尾页</asp:LinkButton>
            第<asp:Label ID="labPage" runat="server" Text="1"></asp:Label>页/共<asp:Label ID="LabCountPage" runat="server" Text="1"></asp:Label>页  
 
        </div>
        <!--/内容底部-->

    <!--添加用户图层-->
    <div class="add_menber" id="add_menber_style" style="display: none">

        <ul class=" page-content">
            <li>
                <label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label>
                <span class="add_name">
                    <input value="" name="用户名" type="text" class="text_add" runat="server" id="user" />
                </span>
            </li>
            <li>
                <label class="label_name">密&nbsp;&nbsp;码：</label>
                <span class="add_name">
                    <input value="" name="密码" type="password" class="text_add" runat="server" id="pass" />
                </span>
            </li>
            <li>
                <label class="label_name">用户类型：</label>
                <span class="add_name">
<asp:DropDownList ID="drop1" runat="server"><asp:ListItem>个人用户</asp:ListItem><asp:ListItem>企业用户</asp:ListItem></asp:DropDownList>
                </span>
            </li>
        </ul>
        <br /><br /><br /><br /><br /><br /><br />
        <div style="text-align:center">
            <asp:Button ID="Button2" runat="server" Text="确定" OnClick="Button2_Click" Width="200px" Height="40px" />
</div><br /><br />
    </div>

         <div class="add_menber" id="add_menber_stylea" style="display: none">

        <ul class=" page-content">
            <li>
                <label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label>
                <span class="add_name">
                    <input  type="text" class="text_add" runat="server" id="Text1"  disabled="disabled"  />
                     <input type="hidden" id="yhm"  runat="server" />
                </span>
            </li>
            <li>
                <label class="label_name">密&nbsp;&nbsp;码：</label>
                <span class="add_name">
                    <input value="" name="密码" type="password" class="text_add" runat="server" id="Password1" />
                </span>
            </li>
        </ul>
        <br /><br /><br /><br />
        <div style="text-align:center">
            <asp:Button ID="Button3" runat="server" Text="修改密码" OnClick="Button3_Click" Width="200px" Height="40px" />
</div><br /><br />
    </div>
        </form>
</body>
</html>
<script>
    jQuery(function ($) {
        var oTable1 = $('#sample-table').dataTable({
            "aaSorting": [[1, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
              //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
              { "orderable": false, "aTargets": [0, 8, 9] }// 制定列不参与排序
            ]
        });


        $('table th input:checkbox').on('click', function () {
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
            .each(function () {
                this.checked = that.checked;
                $(this).closest('tr').toggleClass('selected');
            });

        });


        $('[data-rel="tooltip"]').tooltip({ placement: tooltip_placement });
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }
    })
    /*用户-添加*/
    $('#member_add').on('click', function () {
        layer.open({
            type: 1,
            title: '添加用户',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area: ['800px', ''],
            content: $('#add_menber_style'),
            //btn: ['提交', '取消'],
            //yes: function (index, layero) {
            //    var num = 0;
            //    var str = "";
            //    $(".add_menber input[type$='text']").each(function (n) {
            //        if ($(this).val() == "") {

            //            layer.alert(str += "" + $(this).attr("name") + "不能为空！\r\n", {
            //                title: '提示框',
            //                icon: 0,
            //            });
            //            num++;
            //            return false;
            //        }
            //    });
            //    if (num > 0) { return false; }
            //    else {
            //        layer.alert('添加成功！', {
            //            title: '提示框',
            //            icon: 1,
                        
            //        });
            //        location.href = "user_list.aspx";
            //        layer.close(index);
            //    }
            //}
        });
    });
    /*用户-查看*/
    function member_show(title, url, id, w, h) {
        layer_show(title, url + '#?=' + id, w, h);
    }
    /*用户-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要停用吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!', { icon: 5, time: 1000 });
        });
    }

    /*用户-启用*/
    function member_start(obj, id) {
        layer.confirm('确认要启用吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', { icon: 6, time: 1000 });
        });
    }
    /*用户-编辑*/
    function member_edit(id) {
        document.getElementById("Text1").value = id;
        document.getElementById("yhm").value = id;
        layer.open({
            type: 1,
            title: '修改用户信息',
            maxmin: true,
            shadeClose: false, //点击遮罩关闭层
            area: ['800px', ''],
            content: $('#add_menber_stylea'),
            //btn: ['提交', '取消'],
            //yes: function (index, layero) {
            //    var num = 0;
            //    var str = "";
            //    $(".add_menber input[type$='text']").each(function (n) {
            //        if ($(this).val() == "") {

            //            layer.alert(str += "" + $(this).attr("name") + "不能为空！\r\n", {
            //                title: '提示框',
            //                icon: 0,
            //            });
            //            num++;
            //            return false;
            //        }
            //    });
            //    if (num > 0) { return false; }
            //    else {
            //        layer.alert('添加成功！', {
            //            title: '提示框',
            //            icon: 1,
            //        });
            //        layer.close(index);
            //    }
            //}
        });
    }
    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $(obj).parents("tr").remove();
            layer.msg('已删除!', { icon: 1, time: 1000 });
        });
    }
    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>

