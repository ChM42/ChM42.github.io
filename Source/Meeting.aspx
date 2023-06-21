<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Meeting.aspx.cs" Inherits="Meeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/List.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="con_list">
            <div id="con_left">
                <h3>学术报告</h3>
                <ul>
                    <li></li>
                </ul>
            </div>
            <div id="con_right">
                <div id="cor_top">
                    <h6>当前位置：<a href="Default.aspx">首页</a>
                        |<a href="Meeting_list.aspx">学术报告</a>
                    </h6>
                </div>
                <div class="line"></div>
                <div id="cor_txt">
                    <asp:Repeater ID="Repeater2" runat="server">
                    <HeaderTemplate><ul></HeaderTemplate>
                    <ItemTemplate>
                        <h3><%#Eval("meet_title") %></h3>
                        <h4><%#Eval("meet_time","{0:d}") %>&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("meet_writer") %> &nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("meet_cnt") %></h4>
                        <h4><%#Eval("meet_address") %></h4>
                        <p><%#Eval("meet_data") %></p>
                                                  
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
</asp:Content>

