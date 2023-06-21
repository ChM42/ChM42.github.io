<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Meet_create.aspx.cs" Inherits="admin_Meet_create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="css/style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <link href="editor/themes/default/default.css" rel="stylesheet" />
    <link href="editor/plugins/code/prettify.css" rel="stylesheet" />
    <script src="editor/kindeditor-all.js"></script>
    
    <script src="editor/lang/zh-CN.js"></script>
    <script src="editor/kindeditor-all-min.js"></script>
    <script src="editor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
                cssPath: 'editor/plugins/code/prettify.css',
                uploadJson: 'editor/asp.net/upload_json.ashx',
                fileManagerJson: 'editor/asp.net/file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
    </script>
</head>
<body>
    <form id="form1" runat="server">


		<div class="formtitle"><span>添加会议</span></div>
    
    <table style="margin-bottom:10px;">
        <tr><td>会议名称&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="titl" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>报告人&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="writer" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>会议时间&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="me_time" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>会议地点&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="me_add" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
    </table>
 
        <asp:Label ID="Label1" runat="server" Text="内容">内容</asp:Label><br />
        <textarea id="content1" cols="100" rows="8" style="width:500px;height:200px;visibility:hidden;" runat="server"></textarea>
        <div class="tipbtn"></div><asp:Button ID="Button1" runat="server" Text="添加" class="sure" OnClick="Button1_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="取消" class="cancel" OnClick="Button2_Click" />
    </form>
</body>
</html>
