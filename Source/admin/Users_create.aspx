<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users_create.aspx.cs" Inherits="admin_Users_create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
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

    
    <div class="formbody">
    
    <div class="formtitle"><span>添加用户</span></div>
    
    <table class="forminfo">
        <tr><td>用户名</td><td><asp:TextBox ID="useruser" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>密码</td><td><asp:TextBox ID="pwd1" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>确认密码</td><td><asp:TextBox ID="pwd2" runat="server" class="dfinput"></asp:TextBox></td><td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="确认密码要与密码一致" ControlToCompare="pwd1" 
                ControlToValidate="pwd2"></asp:CompareValidator></td></tr>
        <tr><td>姓名</td><td><asp:TextBox ID="username" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>性别</td><td><asp:TextBox ID="usersex" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="奖惩情况">奖惩情况</asp:Label><br />
        <textarea id="content1" cols="100" rows="8" style="width:500px;height:200px;visibility:hidden;" runat="server"></textarea>
        <div class="tipbtn"></div><asp:Button ID="Button1" runat="server" Text="添加" class="sure" OnClick="Button1_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="取消" class="cancel" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
