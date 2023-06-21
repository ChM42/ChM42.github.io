<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resources_create.aspx.cs" Inherits="admin_Resources_create" %>

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

</head>
<body>
    <form id="form1" runat="server">


		<div class="formtitle"><span>添加资源</span></div>
    
    <table style="margin-bottom:10px;">
        <tr><td>资源名称&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="titl" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>下载链接&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:TextBox ID="r_href" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
    </table>
 <div class="tipbtn"></div><asp:Button ID="Button1" runat="server" Text="添加" class="sure" OnClick="Button1_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="取消" class="cancel" OnClick="Button2_Click" />
        
    </form>
</body>
</html>
