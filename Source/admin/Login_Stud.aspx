<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Stud.aspx.cs" Inherits="admin_Login_Stud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>系统登录</title>
<link rel="stylesheet" href="static/css/components.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/plugins.css">
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="static/css/themes.css">
    <script src="static/js/JQuery2.1.4.js"></script>
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
    <script src="static/js/layer.js"></script>
</head>

<body>
    <div id="login">
        <form runat="server">
        <div class="center">
            <dl>
                <dt><i class="gi gi-leaf"></i>C<span>k</span></dt>
                <dd><span><i class="fa fa-fw fa-user"></i></span><asp:TextBox ID="username" runat="server" ></asp:TextBox></dd>
                <dd><span><i class="fa fa-fw fa-lock"></i></span><asp:TextBox ID="pwd" runat="server"></asp:TextBox></dd>
                <dd><span><i class="fa fa-fw fa-lock"></i></span><asp:TextBox ID="TextBox1" runat="server" class="i-text yzm"></asp:TextBox></dd>
               <dd><div class="ui-form-explain"><asp:Image ID="Image1" runat="server" class="yzm-img" ImageUrl="~/admin/ValidateCode.aspx"/></div></dd>
                <dd><asp:Button ID="Button1" runat="server" class="btn-login" Text="登录" OnClick="Button1_Click" /></dd>
            </dl>
        </div>
    </form>
    </div>
</body>
</html>
