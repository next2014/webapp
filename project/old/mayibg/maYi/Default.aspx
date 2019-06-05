<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox><br /><br />
        <asp:TextBox ID="TextBox2" runat="server" Height="200px" Width="400px"></asp:TextBox><br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
        <br /><br /><br />
        <asp:Button ID="Button2" runat="server" Text="Button2" OnClick="Button2_Click"  />
    </form>
</body>
</html>
