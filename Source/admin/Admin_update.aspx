<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_update.aspx.cs" Inherits="admin_Admin_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">

    
    <div class="formbody">
    
    <div class="formtitle"><span>添加用户</span></div>
    
    <table class="forminfo">
        <tr><td>用户名</td><td><asp:TextBox ID="username" runat="server" class="dfinput" Enabled="False"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>密码</td><td><asp:TextBox ID="pwd1" runat="server" class="dfinput"></asp:TextBox></td><td>
            &nbsp;</td></tr>
        <tr><td>确认密码</td><td><asp:TextBox ID="pwd2" runat="server" class="dfinput"></asp:TextBox></td><td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="确认密码要与密码一致" ControlToCompare="pwd1" 
                ControlToValidate="pwd2"></asp:CompareValidator></td></tr>
        <tr class="tipbtn">
            <td >
                <asp:Button ID="Button1" runat="server" Text="添加" class="sure" onclick="Button1_Click" />
            </td>
            <td> &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="取消" class="cancel" onclick="Button2_Click" />
            </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
