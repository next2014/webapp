<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_resume.aspx.cs" Inherits="admin_m_resume" %>

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
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/typeahead-bs2.min.js" type="text/javascript"></script>
    <!-- page specific plugin scripts -->
    <script src="assets/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.dataTables.bootstrap.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/H-ui.js"></script>
    <script type="text/javascript" src="js/H-ui.admin.js"></script>
    <script src="assets/layer/layer.js" type="text/javascript"></script>
    <script src="assets/laydate/laydate.js" type="text/javascript"></script>
    <title>简历管理</title>
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
                                <label class="l_f">关键字</label><input runat="server" id="txtKeywords" name="txtKeywords" type="text" class="text_add" placeholder="期望岗位" style="width: 400px" /></li>
                             <li><label class="l_f">添加时间</label><input runat="server" class="inline laydate-icon" id="start" style="margin-left: 10px;" /></li>
                            <li style="width: 90px;">
                                <asp:Button ID="Button1" CssClass="btn_search" runat="server" Text="查询" OnClick="Button1_Click" />
                            </li>
                        </ul>
                    </div>
                    <!---->
                    <div class="border clearfix">
                        <span class="l_f">
                            <a href="#" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加个人简历</a>
                            <div class="btn btn-danger"><i class="icon-trash"></i><asp:Button ID="Button2"   CssClass="sc"  runat="server" Text="批量删除" OnClick="Button2_Click"  OnClientClick="javascript:return confirm('确定删除吗?');" /></div  >
                   
                        </span>
                        <span class="r_f">共：<b><%=count%></b>条</span>
                    </div>
                    <!---->
                    <div class="table_menu_list" style="align-content: center">
                        <asp:Repeater ID="rptList" runat="server">
                            <HeaderTemplate>
                                <table class="table table-striped table-bordered table-hover" id="sample-table">
                                    <tr>
                                        <th width="25" style="text-align: center">
                                            <label>
                                                <input type="checkbox" class="ace" name="all" /><span class="lbl"></span></label>
                                        </th>
                                        <th  style="text-align: center">从事行业</th>
                                        <th  style="text-align: center">期望岗位</th>
                                        <th  style="text-align: center">期望薪资</th>
                                        <th  style="text-align: center">工作性质</th>
                                        <th  style="text-align: center">到岗时间</th>
                                        <th  style="text-align: center">求职状态</th>
                                        <th  style="text-align: center">时间</th>
                                        <th  style="text-align: center">操作</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" CssClass="checkall"  runat="server" AutoPostBack="false"  />
                                        <asp:HiddenField ID="hidId" Value='<%#Eval("Id")%>' runat="server" />
                                    </td>
                                    <td>
                                        <a href="m_resume_add.aspx?id=<%#Eval("Id") %>" style="cursor: pointer" class="text-primary"><%#Eval("hy")%></a>
                                    </td>
                                    <td><%#Eval("name")%></td>
                                    <td><%#Eval("salary")%></td>
                                    <td><%#Eval("type")%></td>
                                    <td><%#Eval("report")%></td>
                                    <td><%#Eval("jobstatus")%></td>
                                    <td><%#Eval("time")%></td>
                                    <td class="td-manage">
                                        <a title="推荐" href="m_resume.aspx?Id=<%#Eval("Id") %>&dis=<%#Eval("defaulta") %>"  class="<%#Convert.ToInt32(Eval("defaulta"))==1 ? "btn btn-xs btn-success" : "btn btn-xs" %>"><i class="icon-ok bigger-120"></i></a> 
                                        <a title="简历详细" href="m_resume_add.aspx?Id=<%#Eval("Id") %>" class="btn btn-xs btn-info Refund_detailed">详细</a>
                                        <a title="删除"  href="m_resume.aspx?del=<%#Eval("Id") %>"  onclick="return confirm('确定删除?');" class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>
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


    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>


