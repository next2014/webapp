<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="wap_news" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>欧美城新闻动态</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<uc1:head ID="head" runat="server" />
<div class="tit"><h1>欧美城活动资讯</h1></div>
<div class="news">
    <asp:Repeater ID="rpt_news1" runat="server">
    <ItemTemplate>
    <a href="detail.aspx?id=<%#Eval("id") %>"><dl>
    <dt><img src="../upload/<%#Eval("NewPic") %>" alt="" /></dt>
    <dd>
      <h1><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h1>
      <p>　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
    </dd>
  </dl></a>
    </ItemTemplate>
    </asp:Repeater>
</div>
<div class="tit" style=" clear:left"><h1>欧美城振业汽车</h1></div>
<div class="news">
    <asp:Repeater ID="rpt_news2" runat="server">
    <ItemTemplate>
    <a href="detail.aspx?id=<%#Eval("id") %>"><dl>
    <dt><img src="../upload/<%#Eval("NewPic") %>" alt="" /></dt>
    <dd>
      <h1><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h1>
      <p>　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
    </dd>
  </dl></a>
    </ItemTemplate>
    </asp:Repeater>
</div>
<div class="tit" style=" clear:left"><h1>欧美城婚博中心</h1></div>
<div class="news">
    <asp:Repeater ID="rpt_news3" runat="server">
    <ItemTemplate>
    <a href="detail.aspx?id=<%#Eval("id") %>"><dl>
    <dt><img src="../upload/<%#Eval("NewPic") %>" alt="" /></dt>
    <dd>
      <h1><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h1>
      <p>　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
    </dd>
  </dl></a>
    </ItemTemplate>
    </asp:Repeater>
</div>
<div class="tit" style=" clear:left"><h1>汕头活动城资讯</h1></div>
<div class="news">
    <asp:Repeater ID="rpt_news4" runat="server">
    <ItemTemplate>
    <a href="detail.aspx?id=<%#Eval("id") %>"><dl>
    <dt><img src="../upload/<%#Eval("NewPic") %>" alt="" /></dt>
    <dd>
      <h1><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h1>
      <p>　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
    </dd>
  </dl></a>
    </ItemTemplate>
    </asp:Repeater>
</div>
<div class="tit" style=" clear:left"><h1>欧美城格林披治卡丁车馆</h1></div>
<div class="news">
    <asp:Repeater ID="rpt_news5" runat="server">
    <ItemTemplate>
    <a href="detail.aspx?id=<%#Eval("id") %>"><dl>
    <dt><img src="../upload/<%#Eval("NewPic") %>" alt="" /></dt>
    <dd>
      <h1><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h1>
      <p>　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
    </dd>
  </dl></a>
    </ItemTemplate>
    </asp:Repeater>
</div>
<uc2:foot ID="foot" runat="server" />
</body>
</html>