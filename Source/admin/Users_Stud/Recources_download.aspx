<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recources_download.aspx.cs" Inherits="admin_Users_Stud_Recources_download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理</title>
    <link rel="stylesheet" href="../static/css/components.css">
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/plugins.css">
    <link rel="stylesheet" href="../static/css/main.css">   
    <link rel="stylesheet" href="../static/css/themes.css">
    <script src="../static/js/JQuery2.1.4.js"></script>
    <script src="../static/js/layer.js"></script>
</head>

<body>
    <form runat="server">
    <div id="body">
        <ol class="breadcrumb">
            <li class="active"><a href="#">系统</a></li>
            <li>资源下载</li>
        </ol>
        <div class="tablebox">
            <table class="table table-bordered table-hover">
                
                    <tr>
                        <td class="text-center">ID</td>
                        <td>资源名称</td>
                        <td>发布日期</td>                      
                    </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                        <td class="cell-small text-center"><%#Eval("re_id")%></td>
                        <td><a href='<%#Eval("re_href")%>'><%#Eval("re_title")%></a></td>
                        <td><%#Eval("re_time")%></td></tr>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater><br />
                
           </table>
        </div>

        <div style="width:600px;margin:10px 200px">
                <table>
                    <tr>
                        <td>当前页码为： </td> <td><asp:Label ID="current_page" runat="server" Text="1"></asp:Label></td>
                        <td>总页码为： </td> <td><asp:Label ID="count_page" runat="server" Text=""></asp:Label></td>
                        <td><asp:LinkButton ID="first_page" runat="server" OnClick="first_page_Click" >首页</asp:LinkButton></td>
                        <td><asp:LinkButton ID="front_page" runat="server" OnClick="front_page_Click" >上一页</asp:LinkButton></td>
                        <td><asp:LinkButton ID="next_page" runat="server" OnClick="next_page_Click"  >下一页</asp:LinkButton></td>
                        <td><asp:LinkButton ID="last_page" runat="server" OnClick="last_page_Click"  >尾页</asp:LinkButton></td>
                    </tr>
                </table>
        </div>
        
    </div>

    <script>
        function setAll() {
                         var loves = document.getElementsByName("ckbName");
                         for (var i = 0; i < loves.length; i++) {
                                 loves[i].checked = true;
                
            }
            
        }
        function setNo() {
            var loves = document.getElementsByName("ckbName");
            for (var i = 0; i < loves.length; i++) {
                loves[i].checked = false;

            }

        }  
    </script>
        </form>
</body>
</html>
