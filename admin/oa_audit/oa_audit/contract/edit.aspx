<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="oa_user_product_add_qs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link href="../Css/css.css?v=0507" rel="stylesheet" type="text/css" />
<title>无标题页</title>
<script src="../js/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        //$("#ImageButton1").click(function () {
        //    //if($("#cn_name").val().trim()=="")
        //    if (document.getElementById("cn_name").value == "" || document.getElementById("cn_price").value == "" || document.getElementById("cn_amount").value == "") {
        //        alert("物料名称/单价/数量不能为空!");
        //        return false;
        //    }
        //});
        $("#Button1").click(function () {
            if ($("#cn_title").val().trim() == "") {
                alert("商品名称不能为空");
                return false;
            }
            if ($("#cn_seller").val().trim() == "") {
                alert("供应商不能为空");
                return false;
            }
            //if ($("#cn_zhibao").val().trim() == "") {
            //    alert("商品单价不能为空");
            //    return false;
            //}
            //if ($("#cn_zonge").val().trim() == "") {
            //    alert("购买数量不能为空");
            //    return false;
            //}
            return confirm("是否确定提交?");
        });

        $("#Button2").click(function () {
            if ($("#p_settime").val().trim() == "") {
                alert("请选择出库日期");
                return false;
            }
            if ($("#p_count").val().trim() == "") {
                alert("出库数量不能为空");
                return false;
            }
            return confirm("是否确定提交?");
        });
        $("#Button4").click(function () {
            if ($("#ruku_date").val().trim() == "") {
                alert("请选择入库日期");
                return false;
            }
            if ($("#ruku_count").val().trim() == "") {
                alert("入库数量不能为空");
                return false;
            }
            if ($("#ruku_price").val().trim() == "") {
                alert("入库单价不能为空");
                return false;
            }
            if ($("#ruku_zengsong").val().trim() == "") {
                alert("搭赠不能为空");
                return false;
            }
            return confirm("是否确定提交?");
        });
    });
	//两位小数点
    function getnum() {
        
        var zonge = document.getElementById("cn_zonge").value;
        var yifu = document.getElementById("cn_yifu").value;
        var zhibao = document.getElementById("cn_zhibao").value;
        var weifu = document.getElementById("cn_weifu").value;
        var chaochu = document.getElementById("cn_chaochu").value;
        var zongjia = document.getElementById("cn_zongjia").value;
        var rukuzong = document.getElementById("cn_rukuzong").value;

        if (zhibao.length == 0) {
            document.getElementById("cn_zhibao").value = toDecimal2(0);
        } else {
            document.getElementById("cn_zhibao").value = toDecimal2(zhibao);
        }
        if (yifu.length != 0) {
            document.getElementById("cn_yifu").value = toDecimal2(yifu);            
        } else {
            document.getElementById("cn_yifu").value = toDecimal2(0);
        }

        if (rukuzong.length != 0) {
            document.getElementById("cn_rukuzong").value = toDecimal2(cn_rukuzong);
        } else {
            document.getElementById("cn_rukuzong").value = toDecimal2(0);
        }

        //if (weifu.length == 0) {
        //    document.getElementById("cn_weifu").value = toDecimal2(0);
        //} else {
        //    document.getElementById("cn_weifu").value = toDecimal2(weifu);
        //}

        if (chaochu.length == 0) {
            document.getElementById("cn_chaochu").value = toDecimal2(0);
        } else {
            document.getElementById("cn_chaochu").value = toDecimal2(chaochu);
        }

        if (zonge.length != 0) {
            document.getElementById("cn_zonge").value = toDecimal2(zonge);
        } else {
            document.getElementById("cn_zonge").value = toDecimal2(0);
        }

        var weifu = Number(zonge) - Number(yifu) + Number(chaochu);
        document.getElementById("cn_weifu").value = toDecimal2(weifu);

        document.getElementById("cn_zongjia").value = toDecimal2(Number(zonge * zhibao));
        //document.getElementById("cn_junjia").value = toDecimal2(Number(zongjia / weifu));
        
        var p_count = document.getElementById("p_count").value;
        if (p_count.length != 0) {
            document.getElementById("p_count").value = toDecimal2(p_count);
        }
    }
    function toDecimal(x) {
        var f = parseFloat(x);
        if (isNaN(f)) {
            return;
        }
        f = Math.round(x * 100) / 100;
        return f;
    }
    function toDecimal2(x) {
        var f = parseFloat(x);
        if (isNaN(f)) {
            return false;
        }
        var f = Math.round(x * 100) / 100;
        var s = f.toString();
        var rs = s.indexOf('.');
        if (rs < 0) {
            rs = s.length;
            s += '.';
        }
        while (s.length <= rs + 2) {
            s += '0';
        }
        return s;
    }
</script>
<script type="text/javascript" language="javascript">//iframe自适应高度
    function iFrameHeight() {
        var ifm = document.getElementById("ifm");
        var subWeb = document.frames ? document.frames["ifm"].document : ifm.contentDocument;
        if (ifm != null && subWeb != null) {
            ifm.height = subWeb.body.scrollHeight;
        }
    }
</script>
<%--<script type="text/javascript">
	////弹出广东欧美汽车城(总部)二级菜单
    $(function () {
        if ($('#DropDownList2 option:selected').text() == "三号馆") {
            $("#DropDownList3").show();
        } else {
            $("#DropDownList3").hide();
        }
        $("#DropDownList2").change(function () {
            if ($('#DropDownList2 option:selected').text() == "三号馆") {
                $("#DropDownList3").show();
            } else {
                $("#DropDownList3").hide();
            }
        })

        if ($('#ddl_guanqu2 option:selected').text() == "三号馆") {
            $("#ddl_guanqu3").show();
        } else {
            $("#ddl_guanqu3").hide();
        }
        $("#ddl_guanqu2").change(function () {
            if ($('#ddl_guanqu2 option:selected').text() == "三号馆") {
                $("#ddl_guanqu3").show();
            } else {
                $("#ddl_guanqu3").hide();
            }
        })
    })
</script>--%>

<%--<script src="../js/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="../js/combo.select.css" />
<script type="text/javascript" src="../js/jquery.combo.select.js"></script>
<script type="text/javascript">
$(function () {
    $('#ddl_guanqu').comboSelect();
    $('#ddl_area2').comboSelect();
    $('#ddl_area3').comboSelect();
    $('#ddl_class').comboSelect();
    $('#ddl_subclass').comboSelect();
});
</script>--%>

<style type="text/css">
    .btn-back
    {
        font-family: 微软雅黑;
        padding:2px 10px;
        border:solid 1px #808080;
        -webkit-border-radius:2px;
        -moz-border-radius:2px;
        -ms-border-radius:2px;
        -o-border-radius:2px;
        color:#333;
    }
    .c-paid
    {
        /*padding-top:5px;*/
    }
    .c-paid ul
    {
        margin: 0px;
	padding: 0px;
    }
    .c-paid ul li
    {
	
	list-style-type: none;
	line-height: 22px;
	border-bottom-width: 0px;
	border-bottom-style: dotted;
	border-bottom-color: #CCC;
    color:#F00;
    margin-top:2px;
    }
    .c-paid li:hover
    {
        background:#e5e5e5;
    }
    .c-paid ul li a
    {
        float:right;
        text-decoration:underline;
        padding-right:5px;
    }
	.m-l{
	  margin-left:2px;
	}
	.m-t{
	  margin-top: 2px;
	}
    #gv_chuku th
    {
        height:24px;
        background:#E8E8E8;
    }
    #gv_ruku th
    {
        height:24px;
        background:#E8E8E8;
    }
    #gv_chuku ,#gv_ruku td
    {
        background:#E8E8E8;
        padding:0 2px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:1px 2px 2px 2px;">
      <%--<div class="navigation"><span class="navigation" style="border:0px; float:left; padding:0px">&nbsp;&nbsp;当前位置 ： 工程合同管理 &gt; 编辑管理</span></div>--%>
      <div class="spClear"></div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="background:#CCC">
        <tr>
          <td><table width="100%" border="0" cellspacing="1" cellpadding="2">
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">选择区域：</td>
              <td bgcolor="#FFFFFF"><asp:DropDownList CssClass="select" ID="DropDownList1" runat="server" Width="200">       
                  <asp:ListItem>惠州</asp:ListItem>
                  <asp:ListItem>汕头</asp:ListItem>
                  </asp:DropDownList></td>
              <td bgcolor="#FFFFFF">选择公司：</td>
              <td bgcolor="#FFFFFF"><asp:DropDownList CssClass="select" ID="ddl_company" runat="server" Width="200">
                <asp:ListItem>惠州狮子城</asp:ListItem>
                <%--<asp:ListItem>汕头欧美</asp:ListItem>--%>
              </asp:DropDownList></td>
              <td width="6%" bgcolor="#FFFFFF">交易金额：</td>
              <td bgcolor="#FFFFFF"><input name="cn_zongjia" type="text" class="input" id="cn_zongjia" onchange="getnum();" value="0.00" size="4" runat="server" /></td>
              <td bgcolor="#FFFFFF">存放地点：
              <input name="cn_location" type="text" id="cn_location" size="4" runat="server" class="input"/></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">入库数量：</td>
              <td bgcolor="#FFFFFF"><input name="cn_zonge" type="text" class="input" id="cn_zonge" onchange="getnum();" value="0.00" size="4" runat="server"/></td>
              <td bgcolor="#FFFFFF">购买单价：</td>
              <td bgcolor="#FFFFFF"><input name="cn_zhibao" type="text" class="input" id="cn_zhibao" onchange="getnum();" value="0.00" size="4" runat="server"/></td>
              <td align="right" bgcolor="#FFFFFF">&nbsp;</td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr style=" display:none">
              <td align="right" bgcolor="#FFFFFF">选择馆区：</td>
              <td colspan="3" bgcolor="#FFFFFF"><asp:DropDownList CssClass="select" ID="ddl_guanqu" runat="server" Width="">
                <%--<asp:ListItem>行政楼</asp:ListItem>
                <asp:ListItem>一号馆</asp:ListItem>
                <asp:ListItem>二号馆</asp:ListItem>
                <asp:ListItem>三号馆</asp:ListItem>
                <asp:ListItem>四号馆</asp:ListItem>
                <asp:ListItem>花车</asp:ListItem>
                <asp:ListItem>俱乐部</asp:ListItem>
                <asp:ListItem>会所</asp:ListItem>
                <asp:ListItem>缘善楼</asp:ListItem>
                <asp:ListItem>售票岗亭</asp:ListItem>--%>
              </asp:DropDownList>
                <asp:DropDownList CssClass="select m-l" ID="ddl_area2" runat="server" Width="">
                  <asp:ListItem>卡丁车馆</asp:ListItem>
                  <asp:ListItem>真人CS馆</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList CssClass="select m-l" ID="ddl_area3" runat="server" Width="">
                  <asp:ListItem>卡丁车奉茶</asp:ListItem>
                  <asp:ListItem>正新鸡扒</asp:ListItem>
              </asp:DropDownList></td>
              <td align="right" bgcolor="#FFFFFF">&nbsp;</td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
              <td align="center" bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#FFFFFF">商品名称：</td>
              <td colspan="3" bgcolor="#FFFFFF"><input name="cn_title" type="text" id="cn_title" size="4" runat="server" class="input" style="width:476px;" /></td>
              <td align="right" bgcolor="#FFFFFF">选择分类：</td>
              <td bgcolor="#FFFFFF"><asp:DropDownList CssClass="select" ID="ddl_class" runat="server" Width="99">
                <asp:ListItem>食品类</asp:ListItem> 
                <asp:ListItem>商品类</asp:ListItem>                               
                <asp:ListItem>固定资产</asp:ListItem>
                </asp:DropDownList><asp:DropDownList CssClass="select m-l" ID="ddl_subclass" runat="server" Width="99">
                  <asp:ListItem>海鲜</asp:ListItem>
                  <asp:ListItem>肉类</asp:ListItem>                
                  <asp:ListItem>蔬菜</asp:ListItem>
                  <asp:ListItem>水果</asp:ListItem>
                  <asp:ListItem>饮料</asp:ListItem>
                  <asp:ListItem>副食品</asp:ListItem>
              </asp:DropDownList></td>
              <td align="center" bgcolor="#FFFFFF">商品图片</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#FFFFFF">&nbsp;</td>
              <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td>
              <td align="right" bgcolor="#FFFFFF">供应商：</td>
              <td bgcolor="#FFFFFF"><input name="cn_seller" type="text" id="cn_seller" size="4" runat="server" class="input"/></td>
              <td rowspan="3" align="center" bgcolor="#FFFFFF"><img alt="" src="/upload/<%=spic %>" name="spic" height="80" id="spic" style="padding:1px;"/></td>
            </tr>            
            <tr>
              <td width="6%" align="right" bgcolor="#FFFFFF">商品编号：</td>
              <td width="200" bgcolor="#FFFFFF"><input name="cn_number" type="text" id="cn_number" size="4" runat="server" class="input"/></td>
              <td width="6%" align="right" bgcolor="#FFFFFF">商品规格：</td>
              <td width="200" bgcolor="#FFFFFF"><input name="cn_guige" type="text" id="cn_guige" size="4" runat="server" class="input"/></td>              
              <td align="right" bgcolor="#FFFFFF">搭赠数量：</td>
              <td bgcolor="#FFFFFF"><input name="cn_chaochu" type="text" class="input" id="cn_chaochu" onchange="getnum();" value="0.00" size="4" runat="server"/></td>
            </tr>
                      
 <%--           <tr>
              <td width="100" align="right" bgcolor="#FFFFFF">合同总金额：</td>
              <td bgcolor="#FFFFFF"><input name="cn_zonge" type="text" id="Text1" size="4" runat="server" class="input" onchange="getnum();"/></td>
            </tr>--%>
            <tr>
              <td align="right" bgcolor="#FFFFFF">入库总计：</td>
              <td bgcolor="#FFFFFF"><input name="cn_rukuzong" type="text" class="input" id="cn_rukuzong" value="0.00" size="4" readonly="readonly" runat="server" /></td>
              <td align="right" bgcolor="#FFFFFF">出库总计：</td>
              <td bgcolor="#FFFFFF"><input name="cn_yifu" type="text" class="input" id="cn_yifu" value="0.00" size="4" readonly="readonly" runat="server" /></td>
              <td align="right" bgcolor="#FFFFFF">剩余数量：</td>
              <td width="200" bgcolor="#FFFFFF"><input name="cn_weifu" type="text" class="input" id="cn_weifu" value="0.00" size="4" readonly="readonly" runat="server"/></td>
            </tr>
            <tr>
              <td align="right" bgcolor="#FFFFFF">&nbsp;</td>
              <td colspan="5" bgcolor="#FFFFFF"><asp:Button ID="Button1" runat="server" Text="确定提交" CssClass="buttom" OnClick="Button1_Click"/>              
              <asp:Button ID="Button3" runat="server" Text="返回列表" CssClass="buttom" onclientclick="javascript:location.href='list.aspx';return false;" Width="80px" /></td>
              <td align="left" bgcolor="#FFFFFF"><iframe src="../upload.aspx?Input=cn_img&img=spic" width="300" height="24" frameborder="0"  scrolling="no"></iframe>
                <span style="display:none"><asp:TextBox CssClass="ipt" ID="cn_img" runat="server" Width="300px"></asp:TextBox></span></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">电脑编号：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_gongcheng" type="text" id="cn_gongcheng" size="4" runat="server" class="input"/></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">项目：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_xiangmu" type="text" id="cn_xiangmu" size="4" runat="server" class="input"/></td>
            </tr>  
            <div  id="fk_paid" runat="server">            
              <tr>
                <td colspan="7" align="right" bgcolor="#E8E8E8" style=" height:20px;"></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#FFFFFF">入库明细：</td>
                <td colspan="6" bgcolor="#FFFFFF"><div><input name="" placeholder="日期" type="text" id="ruku_date" size="4" runat="server" class="input" style="width:72px"/><asp:DropDownList CssClass="select m-l" ID="DropDownList6" runat="server" Width="">
                  <asp:ListItem>卡丁车奉茶</asp:ListItem>
                  <asp:ListItem>正新鸡扒</asp:ListItem>
              </asp:DropDownList> <input name="" placeholder="数量" type="text" id="ruku_count" size="4" runat="server" class="input" style="width:72px" /> <input name="" placeholder="单价" type="text" id="ruku_price" size="4" runat="server" class="input" style="width:72px"/> <input name="" placeholder="金额" type="text" id="Text1" size="4" runat="server" class="input" style="width:72px"/> <input name="" placeholder="搭赠" type="text" id="ruku_zengsong" size="4" runat="server" class="input" style="width:72px"/> <asp:DropDownList CssClass="select" ID="DropDownList2" runat="server" Width="86">                  
                  <asp:ListItem>行政楼</asp:ListItem>
                  <asp:ListItem>一号馆</asp:ListItem>
                  <asp:ListItem>二号馆</asp:ListItem>
                  <asp:ListItem>三号馆</asp:ListItem>
                  <asp:ListItem>四号馆</asp:ListItem>                                    
                  <asp:ListItem>花车</asp:ListItem>
                  <asp:ListItem>俱乐部</asp:ListItem>
                  <asp:ListItem>会所</asp:ListItem>
                  <asp:ListItem>缘善楼</asp:ListItem>
                  <asp:ListItem>售票岗亭</asp:ListItem>
                  </asp:DropDownList> <asp:DropDownList CssClass="select" ID="DropDownList3" runat="server" Width="80">                  
                  <asp:ListItem>卡丁车馆</asp:ListItem>
                  <asp:ListItem>真人CS馆</asp:ListItem>
                  </asp:DropDownList><asp:DropDownList CssClass="select m-l" ID="DropDownList4" runat="server" Width="">
                  <asp:ListItem>卡丁车奉茶</asp:ListItem>
                  <asp:ListItem>正新鸡扒</asp:ListItem>
              </asp:DropDownList> <input name="" placeholder="备注" type="text" id="ruku_content" size="4" runat="server" class="input" style="width:125px;"/> <asp:Button ID="Button4" runat="server" Text="提交" CssClass="buttom" onclick="Button4_Click" /></div><div class="c-paid" style="border:solid 0px #000000; padding-top:2px;">
                      <asp:GridView ID="gv_ruku" runat="server" AutoGenerateColumns="False" Width="680">
                          <Columns>
                              <asp:BoundField DataField="p_settime" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" HeaderText="时间"  >
                                <HeaderStyle Width="76"></HeaderStyle><ItemStyle HorizontalAlign="Center"></ItemStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="p_count" HeaderText="数量" >
                                <HeaderStyle Width="79"></HeaderStyle>
                                <ItemStyle HorizontalAlign="right"></ItemStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="p_price" HeaderText="单价" >
                                <HeaderStyle Width="79"></HeaderStyle>
                                <ItemStyle HorizontalAlign="right"></ItemStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="p_price" HeaderText="金额" >
                                <HeaderStyle Width="79"></HeaderStyle>
                                <ItemStyle HorizontalAlign="right"></ItemStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="p_zengsong" HeaderText="搭赠" >
                                <HeaderStyle Width="79"></HeaderStyle>
                                <ItemStyle HorizontalAlign="right"></ItemStyle>
                              </asp:BoundField>
                              <asp:TemplateField HeaderText="馆区">
                                <HeaderStyle Width="100" /><ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate><%#Eval("p_guanqu") %><%#Eval("p_sub_guanqu") %></ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="p_content" HeaderText="备注" >
                                <HeaderStyle></HeaderStyle>
                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                              </asp:BoundField>
                              <asp:TemplateField HeaderText="操作">
              　                <HeaderStyle Width="46"></HeaderStyle>
                                <ItemTemplate><asp:LinkButton ID="LinkButton1" CommandName="gv_del" CommandArgument='<%#Eval("id") %>' OnClientClick='<%#  "if (!confirm(\"确定要删除吗?\")) return false;"%>' runat="server" CssClass="link_btn">删除</asp:LinkButton></ItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                  </div><div class="c-paid" style="display:none"><ul style="width:687px"><asp:Repeater ID="rpt_ruku" runat="server" OnItemCommand="rpt_DelCommand"><ItemTemplate><li>时间：<%#Convert.ToDateTime(Eval("p_settime")).ToString("yyyy-MM-dd") %>　数量：<%#Eval("p_count") %>　单价：<%#Eval("p_price") %>　搭赠：<%#Eval("p_zengsong") %>　馆区：<%#Eval("p_guanqu") %><%#Eval("p_sub_guanqu") %>　备注：<%#Eval("p_content") %><asp:LinkButton ID="LinkButton1" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick='<%#"if (!confirm(\"确定要删除吗？\")) return false;"%>' CssClass="link_btn0" runat="server">删除</asp:LinkButton></li></ItemTemplate></asp:Repeater></ul></div></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#FFFFFF">出库明细：</td>
                <td colspan="6" bgcolor="#FFFFFF"><div style="border:solid 0px #000000;"><input name="" placeholder="日期" type="text" id="p_settime" size="4" runat="server" class="input" style="width:72px"/> <input name="" placeholder="数量" type="text" id="p_count" size="4" runat="server" class="input" style="width:72px"/> <asp:DropDownList CssClass="select" ID="ddl_guanqu2" runat="server" Width="80">                  
                  <asp:ListItem>一号馆</asp:ListItem>
                  <asp:ListItem>二号馆</asp:ListItem>
                  <asp:ListItem>三号馆</asp:ListItem>
                  <asp:ListItem>四号馆</asp:ListItem>
                  <asp:ListItem>行政楼</asp:ListItem>
                  <asp:ListItem>花车</asp:ListItem>
                  <asp:ListItem>俱乐部</asp:ListItem>
                  <asp:ListItem>会所</asp:ListItem>
                  <asp:ListItem>缘善楼</asp:ListItem>
                  <asp:ListItem>售票岗亭</asp:ListItem>
                  </asp:DropDownList> <asp:DropDownList CssClass="select" ID="ddl_guanqu3" runat="server" Width="80">
                    <asp:ListItem>海洋馆</asp:ListItem>
                    <asp:ListItem>美食天地</asp:ListItem><asp:ListItem>大宴会厅</asp:ListItem>
                  </asp:DropDownList><asp:DropDownList CssClass="select m-l" ID="DropDownList5" runat="server" Width="">
                  <asp:ListItem>卡丁车奉茶</asp:ListItem>
                  <asp:ListItem>正新鸡扒</asp:ListItem>
              </asp:DropDownList> <input name="" placeholder="备注" type="text" id="p_content" size="4" runat="server" class="input" style="width:112px;"/> <asp:Button ID="Button2" runat="server" Text="提交" CssClass="buttom" onclick="Button2_Click" /></div><div class="c-paid" style="border:solid 0px #000000; padding-top:2px;">
                      <asp:GridView ID="gv_chuku" runat="server" AutoGenerateColumns="False" Width="416">
                          <Columns>
                              <asp:BoundField DataField="p_settime" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" HeaderText="时间"  >
                                <HeaderStyle Width="76"></HeaderStyle><ItemStyle HorizontalAlign="Center"></ItemStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="p_count" HeaderText="数量" >
                                <HeaderStyle Width="79"></HeaderStyle>
                                <ItemStyle HorizontalAlign="right"></ItemStyle>
                              </asp:BoundField>
                              <asp:TemplateField HeaderText="馆区">
                                <HeaderStyle /><ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate><%#Eval("p_guanqu") %> <%#Eval("p_sub_guanqu") %></ItemTemplate>
                              </asp:TemplateField>
                              <asp:BoundField DataField="p_content" HeaderText="备注" >
                                <HeaderStyle></HeaderStyle>
                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                              </asp:BoundField>
                              <asp:TemplateField HeaderText="操作">
              　                <HeaderStyle Width="46"></HeaderStyle>
                                <ItemTemplate><asp:LinkButton ID="LinkButton1" CommandName="gv_del" CommandArgument='<%#Eval("id") %>' OnClientClick='<%#  "if (!confirm(\"确定要删除吗?\")) return false;"%>' runat="server" CssClass="link_btn">删除</asp:LinkButton></ItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                  </div><div class="c-paid" style="border:solid 1px #000000; display:none"><ul style="width:524px"><asp:Repeater ID="rpt_paid" runat="server" OnItemCommand="rpt_DelCommand"><ItemTemplate><li>时间：<%#Convert.ToDateTime(Eval("p_settime")).ToString("yyyy-MM-dd") %>　数量：<%#Eval("p_count") %>　馆区：<%#Eval("p_guanqu") %><%#Eval("p_sub_guanqu") %>　备注：<%#Eval("p_content") %><asp:LinkButton ID="LinkButton1" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick='<%#"if (!confirm(\"确定要删除吗？\")) return false;"%>' CssClass="link_btn0" runat="server">删除</asp:LinkButton></li></ItemTemplate></asp:Repeater></ul></div></td>
              </tr>            
            </div>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">摆放位置：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_weizhi" type="text" id="cn_weizhi" size="4" runat="server" class="input"/></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">商品附件：</td>
              <td colspan="6" bgcolor="#FFFFFF"><iframe id="ifm" src="../../upload/upfile.aspx?cid=<%=cid %>" frameborder="0" scrolling="auto" height="22px" width="100%" onload="iFrameHeight()"></iframe></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">详情/备注：</td>
              <td colspan="6" bgcolor="#FFFFFF"><textarea name="cn_content" rows="3" style="width:99.5%" id="cn_content" runat="server" class="textarea" ></textarea></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">使用人：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_linkman" type="text" id="cn_linkman" size="3" runat="server" class="input"/></td>
            </tr>
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">联系电话：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_mobile" type="text" id="cn_mobile" size="4" runat="server" class="input"/></td>
            </tr>            
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">操作员：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="" type="text" id="cn_author" size="4" runat="server" class="input"/></td>
            </tr>    
            <tr style="display:none">
              <td align="right" bgcolor="#FFFFFF">登记时间：</td>
              <td colspan="6" bgcolor="#FFFFFF"><input name="cn_time" type="text" id="cn_time" runat="server" class="input"/></td>
            </tr>        
          </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
<%--日期插件--%>
<script type="text/javascript" src="../date/laydate.dev.js"></script>
<script type="text/javascript">
    laydate({
        elem: '#p_settime'
    });
    laydate({
        elem: '#ruku_date'
    });
</script>