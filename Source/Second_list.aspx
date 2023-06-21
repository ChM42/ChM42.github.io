<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Second_list.aspx.cs" Inherits="Second_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="CSS/List.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="con_list">
            <div id="con_left">
                <h3><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate><ul></HeaderTemplate>
                    <ItemTemplate>
                        <li><a href='Second_list.aspx?nav_id=<%#Eval("nav_id")%>&navi_id=<%#Eval("navi_id")%>'><%#Eval("navi_nav")%></a></li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </div>
            <div id="con_right">
                <div id="cor_top">
                    <h6>当前位置：<a href="Default.aspx">首页</a>
                        |<a>
                            <asp:LinkButton ID="nav_navga" runat="server" OnClick="nav_navga_Click">
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </asp:LinkButton>
                         </a>
                        
                        |<a><asp:Label ID="Label3" runat="server" Text=""></asp:Label></a>
                    </h6>
                </div>
                <div class="line"></div>
                <div id="cor_txt">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <HeaderTemplate><ul></HeaderTemplate>
                        <ItemTemplate>
                            <li><a href='detail.aspx?nav_id=<%#Eval("nav_id")%>&nav1_id=<%#Eval("navi_id")%>&mess_id=<%#Eval("mess_id")%>'><%#Eval("mess_title").ToString().Length > 11 ? Eval("mess_title").ToString().Substring(0, 10) + "..." : Eval("mess_title")%></a><span><%#Eval("mess_time","{0:d}") %></span></li>                      
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </div>
                <div id="page">
                    <table>
                        <tr>
                            <td>当前页码为：<asp:Label ID="current_page" runat="server" Text="1"></asp:Label></td>
                            <td>总页码为：<asp:Label ID="count_page" runat="server" Text=""></asp:Label></td>
                            <td><asp:LinkButton ID="first_page" runat="server" OnClick="first_page_Click">首页</asp:LinkButton></td>
                            <td><asp:LinkButton ID="front_page" runat="server" OnClick="front_page_Click" >上一页</asp:LinkButton></td>
                            <td><asp:LinkButton ID="next_page" runat="server" OnClick="next_page_Click" >下一页</asp:LinkButton></td>
                            <td><asp:LinkButton ID="last_page" runat="server" OnClick="last_page_Click">尾页</asp:LinkButton></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
</asp:Content>

