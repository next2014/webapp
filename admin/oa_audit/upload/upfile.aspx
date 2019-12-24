<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upfile.aspx.cs" Inherits="admin_sys_upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
<style type="text/css">
<!--
body {
	font-family:"微软雅黑";
	margin: 0px;
	font-size: 12px;
}
#GridView1 {
	border:0px solid #F00;
	margin-bottom:0px;
}
#GridView1 td {
	border:0px solid #F00;
}
a {
	color:#0080C0;
	text-decoration:underline;
}
/*a:hover {
	text-decoration:underline;
}*/
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="upfile" runat="server">
        <asp:FileUpload ID="imgFile" runat="server" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上传" />
    </div>
    <div><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField><ItemTemplate><asp:LinkButton CommandName="gv_down" CommandArgument='<%#Eval("c_title") %>' ID="LinkButton1" runat="server"><%#Eval("c_title") %></asp:LinkButton></ItemTemplate></asp:TemplateField>
            <asp:TemplateField><ItemTemplate><asp:LinkButton ID="LinkButton2" CommandName="gv_del" CommandArgument='<%#Eval("id") %>' OnClientClick='<%#  "if (!confirm(\"确定要删除吗？\")) return false;"%>' runat="server" CssClass="link_btn">删除</asp:LinkButton></ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="40px" />
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>    
    </form>
</body>
</html>