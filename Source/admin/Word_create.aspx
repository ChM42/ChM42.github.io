<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Word_create.aspx.cs" Inherits="admin_Word_create" %>

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


		<div class="formtitle"><span>添加文章</span></div>
    
    <table style="margin-bottom:10px;">
        <tr><td>标题&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="titl" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>作者&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="writer" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr></table>
        <table style="margin-bottom:10px;">
        <tr><td style=" font-size:15px;">大类&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="height:15px;">
            <asp:DropDownList ID="nava" runat="server" AutoPostBack="True" OnSelectedIndexChanged="nava_SelectedIndexChanged" >
            <asp:ListItem Value="1">学院概况</asp:ListItem>
            <asp:ListItem Value="2">机构设置</asp:ListItem>
            <asp:ListItem Value="3">通知公告</asp:ListItem>
            <asp:ListItem Value="4">师资队伍</asp:ListItem>
            <asp:ListItem Value="5">人才培养</asp:ListItem>           
           <asp:ListItem Value="6">科学研究</asp:ListItem>
           <asp:ListItem Value="7">招生就业</asp:ListItem>
            </asp:DropDownList></td></tr>
        <tr ><td style=" font-size:15px;">小类&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="height:15px;">
            <asp:DropDownList ID="nav1" runat="server" 
                 AutoPostBack="True" OnSelectedIndexChanged="nav1_SelectedIndexChanged" >
            <asp:ListItem Value="1">学院简介</asp:ListItem>
            <asp:ListItem Value="2">学院文化</asp:ListItem>
            <asp:ListItem Value="3">历史沿革</asp:ListItem>
            </asp:DropDownList></td></tr>         
    </table>
        
        <asp:Label ID="Label1" runat="server" Text="内容">内容</asp:Label><br />
        <textarea id="content1" cols="100" rows="8" style="width:500px;height:200px;visibility:hidden;" runat="server"></textarea>
        <div class="tipbtn"></div><asp:Button ID="Button1" runat="server" Text="添加" class="sure" OnClick="Button1_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="取消" class="cancel" OnClick="Button2_Click" />
    </form>
</body>
</html>
