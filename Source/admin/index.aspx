<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理</title>
    <link rel="stylesheet" href="static/css/components.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/plugins.css">
    <link rel="stylesheet" href="static/css/main.css">   
    <link rel="stylesheet" href="static/css/themes.css">
    <script src="static/js/JQuery2.1.4.js"></script>
    <script src="static/js/layer.js"></script>
</head>


<body>
    <form runat="server">
   <div id="system">
        <header>
            <div class="left">
                <a href="">
                    <i class="gi gi-leaf"></i>  <small></small>
                </a>
            </div>
            <div class="right">
                <span style="color:#ffffff;">欢迎
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                <a href="../Default.aspx" title="前台">
                    <i class="fa fa-globe"></i>
                </a>
                <a  href="Login_Admin.aspx" title="退出">
                    <i class="fa fa-power-off"></i>
                </a>
            </div>
        </header>
        <section class="body">
            <div class="left">
                <div class="navbar">
                    
                    <dl>
                        <dt><i class="fa fa-fw fa-file-word-o"></i> <span>文档管理</span></dt>
                        <dd>
                            <div class='li'>
                                <a href="Word.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>文档列表</span></a>
                            </div>
                            <div class='li'>
                                <a href="Word_create.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>创建文档</span></a>
                            </div>
                           
                        </dd>
                    </dl>
                  
                    <dl>
                        <dt><i class="fa fa-fw fa-tags"></i> <span>会议报告</span></dt>
                        <dd>
                            <div class='li'>
                                <a href="Meet.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>报告列表</span></a>
                            </div>
                            <div class='li'>
                                <a href="Meet_create.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>创建报告</span></a>
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><i class="fa fa-fw fa-image"></i> <span>资源管理</span></dt>
                        <dd>
                            <div class='li'>
                                <a href="Resources.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>资源列表</span></a>
                            </div>
                            <div class='li'>
                                <a href="Resources_create.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>新的资源</span></a>
                            </div>
                        </dd>
                    </dl>
                    

                    <dl>
                        <dt><i class="fa fa-fw fa-users"></i> <span>用户管理</span></dt>
                        <dd>
                            <div class='li'>
                                <a href="Users_create.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>添加用户</span></a>
                                <a href="Admin_create.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>添加管理员</span></a>
                                <a href="Users.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>用户列表</span></a>
                                <a href="Admin_update.aspx" target="rightiframe"><i class="fa fa-fw fa-angle-right"></i><span>更改密码</span></a>
                            </div>
                        </dd>
                    </dl>                                                          
                </div>
            </div>
            <div class="right">
                <iframe src="" frameborder="0" id="rightiframe" name="rightiframe"></iframe>
            </div>
        </section>
        <div class="rightmask"></div>
   </div>

   <script>
       $('.navbar dl dt').click(function () {
           if (!$(this).siblings('dd').hasClass('active')) {
               $('.navbar dl dd').removeClass('active');
               $(this).siblings('dd').removeClass('active');
               $(this).siblings('dd').addClass('active');
           } else {
               $('.navbar dl dd').removeClass('active');
               $(this).siblings('dd').removeClass('active');
           }

           if (!$(this).hasClass('activeTop')) {
               $('.navbar dl dt').removeClass('activeTop');
               $(this).removeClass('activeTop');
               $(this).addClass('activeTop');
           } else {
               $('.navbar dl dt').removeClass('activeTop');
               $(this).removeClass('activeTop');
           }
       })

       $('.navbar .li a').click(function () {
           $('.navbar .li a').removeClass('activelinks');
           $(this).addClass('activelinks');
       })

       $('.body .left').hover(function () {
           $('.rightmask').addClass('show');
       }, function () {
           $('.rightmask').removeClass('show');
       })
   </script>
        </form>
</body>
</html>

