<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resources.aspx.cs" Inherits="admin_Resources" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<script src="static/js/JQuery2.1.4.js"></script>
    <link rel="stylesheet" href="static/css/components.css"/>
    <script src="static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/bootstrap.css"/>
    <link rel="stylesheet" href="static/css/plugins.css"/>
    <link rel="stylesheet" href="static/css/main.css"/>
    <link rel="stylesheet" href="static/css/themes.css"/>
    <script src="static/js/laydate.js"></script>
    <script src="static/js/layer.js"></script>
</head>

<body>
    <form runat="server">
    <div id="body">
        <ol class="breadcrumb">
            <li class="active"><a href="#">系统</a></li>
            <li>资源</li>
        </ol>
        <div class="barboxs">
             <asp:Button ID="Button2" runat="server" Text="删除" class="btn btn-danger pull-left ml10" data-toggle="tooltip" title="" data-placement="right" OnClick="Button2_Click"/>
            
        </div>
        <div class="tablebox">
            <table class="table table-bordered table-hover">
                
                    <tr>
                        <td class="text-center" width="50"><input type="button" value="全选" onclick="setAll()" />
                        </td>
                        <td class="text-center" width="50"><input type="button" value="全不选" onclick="setNo()" />
                        </td>
                        <td class="text-center">ID</td>
                        <td>会议名称</td>
                  
                        <td>打开方式</td>
                        
                        <td>发布日期</td>
                        <td class="cell-small text-center"><i class="fa fa-bolt"></i> 操作</td>
                    </tr>
               

                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td></td>
                        <td class="text-center"><input type="checkbox" class="qx" name='ckbName' value='<%#Eval("re_id")%>' /></td>
                        <td class="cell-small text-center"><%#Eval("re_id")%></td>
                        <td><a href="javascript:void(0)"><%#Eval("re_title")%></a></td>
                        <td>下载本地</td>
                        <td><%#Eval("re_time")%></td>
                        <td class="text-center">
                            <div class="btn-group">
                                <asp:Button ID="Button1" runat="server" Text="修改" class="btn btn-xs btn-success" OnClick="Button1_Click"/>                             
                            </div>
                        </td></tr>
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
