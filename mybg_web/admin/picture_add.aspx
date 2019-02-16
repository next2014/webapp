<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="picture_add.aspx.cs" Inherits="admin_picture_add" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />


    <title>新增资讯</title>
    <script type="text/javascript" charset="utf-8" src="Content/ueditorUTF8/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="Content/ueditorUTF8/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="Content/ueditorUTF8/lang/zh-cn/zh-cn.js"></script>
   

</head>
<body>
    <form runat="server" method='post' enctype="multipart/form-data">
        <div class="page_right_style">
            <div class="type_title" style="text-align:center;">编辑资讯</div>
            <div class="form form-horizontal" id="form-article-add">
                <div class="clearfix cl">
                    <label class="form-label col-2">资讯标题：</label>
                    <div class="formControls col-10">
                        <input type="text" class="input-text" value="" placeholder="" id="name" runat="server"></div>
                </div>
                <div class=" clearfix cl">

                    <div class="Add_p_s">
                        <label class="form-label col-2">作&nbsp;&nbsp;&nbsp;&nbsp;者：</label>
                        <div class="formControls col-2">
                            <input type="text" class="input-text" value="" placeholder="" id="author" runat="server"></div>
                    </div>
                    <div class="Add_p_s">
                        <label class="form-label col-2">来&nbsp;&nbsp;&nbsp;&nbsp;源：</label>
                        <div class="formControls col-2">
                            <input type="text" class="input-text" value="" placeholder="" id="source" runat="server"></div>
                    </div>
                    <div class="Add_p_s">
                        <label class="form-label col-2">点&nbsp;击&nbsp;量：</label>
                        <div class="formControls col-2">
                            <input type="text" class="input-text" value="" placeholder="" id="clicks" runat="server"></div>
                    </div>
                    <div class="Add_p_s">
                        <label class="form-label col-2">发布时间：</label>
                        <div class="formControls col-2">
                            <input runat="server" class="inline laydate-icon" id="start" style="margin-left: 10px;" /></div>
                    </div>

                </div>

                <div class="clearfix cl">
			<label class="form-label col-2">封面图片：</label>

			<input id="file" name="file" type="file" accept="image/*" onchange="imgChange(this);">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
		</div>
                <div class="clearfix cl">
                    <label class="form-label col-2">详细内容：</label>
                    <div class="formControls col-10">
                        <%--				<script id="editor" type="text/plain" style="width:100%;height:400px;"></script> --%>
                        <asp:TextBox ID="txtEditorContents" name="txtEditorContents" runat="server" TextMode="MultiLine" Height="400px" Width="1000px" ClientIDMode="Static"></asp:TextBox>
                    </div>
                </div>

                <div class="clearfix cl">
                    <div class="Button_operation">
                        <%--	<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="icon-save "></i>保存并提交审核</button>
				<button onClick="article_save();" class="btn btn-secondary  btn-warning" type="button"><i class="icon-save"></i>保存草稿</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="保存并提交审核" CssClass="btn btn-primary radius" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="取消" CssClass="btn btn-default radius" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-1.9.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/typeahead-bs2.min.js"></script>
        <script src="assets/layer/layer.js" type="text/javascript"></script>
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="js/lrtk.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/H-ui.js"></script>
        <script type="text/javascript" src="js/H-ui.admin.js"></script>
         <script type="text/javascript">

             //实例化编辑器
             //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
             var ue = UE.getEditor('txtEditorContents');


             function isFocus(e) {
                 alert(UE.getEditor('editor').isFocus());
                 UE.dom.domUtils.preventDefault(e)
             }
             function setblur(e) {
                 UE.getEditor('editor').blur();
                 UE.dom.domUtils.preventDefault(e)
             }
             function insertHtml() {
                 var value = prompt('插入html代码', '');
                 UE.getEditor('editor').execCommand('insertHtml', value)
             }
             function createEditor() {
                 enableBtn();
                 UE.getEditor('editor');
             }
             function getAllHtml() {
                 alert(UE.getEditor('editor').getAllHtml())
             }
             function getContent() {
                 var arr = [];
                 arr.push("使用editor.getContent()方法可以获得编辑器的内容");
                 arr.push("内容为：");
                 arr.push(UE.getEditor('editor').getContent());
                 alert(arr.join("\n"));
             }
             function getPlainTxt() {
                 var arr = [];
                 arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
                 arr.push("内容为：");
                 arr.push(UE.getEditor('editor').getPlainTxt());
                 alert(arr.join('\n'))
             }
             function setContent(isAppendTo) {
                 var arr = [];
                 arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
                 UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
                 alert(arr.join("\n"));
             }
             function setDisabled() {
                 UE.getEditor('editor').setDisabled('fullscreen');
                 disableBtn("enable");
             }

             function setEnabled() {
                 UE.getEditor('editor').setEnabled();
                 enableBtn();
             }

             function getText() {
                 //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
                 var range = UE.getEditor('editor').selection.getRange();
                 range.select();
                 var txt = UE.getEditor('editor').selection.getText();
                 alert(txt)
             }

             function getContentTxt() {
                 var arr = [];
                 arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
                 arr.push("编辑器的纯文本内容为：");
                 arr.push(UE.getEditor('editor').getContentTxt());
                 alert(arr.join("\n"));
             }
             function hasContent() {
                 var arr = [];
                 arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
                 arr.push("判断结果为：");
                 arr.push(UE.getEditor('editor').hasContents());
                 alert(arr.join("\n"));
             }
             function setFocus() {
                 UE.getEditor('editor').focus();
             }
             function deleteEditor() {
                 disableBtn();
                 UE.getEditor('editor').destroy();
             }
             function disableBtn(str) {
                 var div = document.getElementById('btns');
                 var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                 for (var i = 0, btn; btn = btns[i++];) {
                     if (btn.id == str) {
                         UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                     } else {
                         btn.setAttribute("disabled", "true");
                     }
                 }
             }
             function enableBtn() {
                 var div = document.getElementById('btns');
                 var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                 for (var i = 0, btn; btn = btns[i++];) {
                     UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                 }
             }

             function getLocalData() {
                 alert(UE.getEditor('editor').execCommand("getlocaldata"));
             }

             function clearLocalData() {
                 UE.getEditor('editor').execCommand("clearlocaldata");
                 alert("已清空草稿箱")
             }
    </script>
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
