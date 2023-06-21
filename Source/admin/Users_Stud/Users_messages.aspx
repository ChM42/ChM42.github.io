<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users_messages.aspx.cs" Inherits="admin_Users_Stud_Users_messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="formbody">
    
    <div class="formtitle"><span>修改信息</span></div>
    
    <table class="forminfo">
        <tr><td>用户名：</td>
            <td>
                <asp:Label ID="useruser" runat="server" Text="" class="dfinput"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td>姓名：</td><td><asp:Label ID="username" runat="server" Text="" class="dfinput"></asp:Label></td><td>
            &nbsp;</td></tr>
        <tr><td>性别：</td><td><asp:Label ID="usersex" runat="server" Text="" class="dfinput"></asp:Label></td><td>
            &nbsp;</td></tr>
        <tr><td>奖惩情况：</td><td><asp:Label ID="userinfo" runat="server" Text="" class="dfinput"></asp:Label></td><td>
            &nbsp;</td></tr>
    </table>
        
    </div>
    </form>
</body>
</html>
