<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

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
                        <h3><%#Eval("mess_title") %></h3>
                        <h4><%#Eval("mess_time","{0:d}") %>&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("mess_writer") %> &nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("mess_cnt") %></h4>
                        <p><%#Eval("mess_data") %></p>
                                                  
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
</asp:Content>

