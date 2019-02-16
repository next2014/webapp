<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method='post' enctype="multipart/form-data">
    <div>
    <input type="file" name="file" accept="image/*" value="选择" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
     
    </div>
    </form>
</body>
</html>
