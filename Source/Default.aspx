<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--焦点图-->
        <div id="con_top">
            <div id=center>
                <div id="playBox">                    
                    <div class="smalltitle">
                        <ul>
                            <li class="thistitle"></li>
                            <li></li>
                            <li></li>
                            
                        </ul>
                    </div>
                    <ul class="oUlplay">
                        <li><a href="#"><img src="images/Focuschart_1.png" /></a></li>
                        <li><a href="#"><img src="images/Focuschart_2.png" /></a></li>
                        <li><a href="#"><img src="images/Focuschart_3.png" /></a></li>
                        
                    </ul>
                </div>
            </div>
        </div><!--焦点图结束-->
        <div id="con_middle">
            <div id="middle_top">
                <div id="top_left">
                    <div id="mi_tit"><span>学院新闻</span><a href="Second_list.aspx?nav_id=3&navi_id=7">更多>></a></div>
                    <div id="mi_list">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate><ul></HeaderTemplate>
                            <ItemTemplate>
                                <li><a href='detail.aspx?nav_id=<%#Eval("nav_id")%>&nav1_id=<%#Eval("navi_id")%>&mess_id=<%#Eval("mess_id")%>'><%#Eval("mess_title").ToString().Length > 8 ? Eval("mess_title").ToString().Substring(0, 7) + "..." : Eval("mess_title")%></a><span><%#Eval("mess_time","{0:d}") %></span></li>
                        
                            </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div id="top_right">
                    <div id="mi_tit"><span>学院公告</span><a href="Second_list.aspx?nav_id=3&navi_id=8">更多>></a></div>
                    <div id="mi_list">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate><ul></HeaderTemplate>
                            <ItemTemplate>
                                <li><a href='detail.aspx?nav_id=<%#Eval("nav_id")%>&nav1_id=<%#Eval("navi_id")%>&mess_id=<%#Eval("mess_id")%>'><%#Eval("mess_title").ToString().Length > 8 ? Eval("mess_title").ToString().Substring(0, 7) + "..." : Eval("mess_title")%></a><span><%#Eval("mess_time","{0:d}") %></span></li>
                        
                            </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div id="middle_bottom">
                <div id="bottom_left">
                    <div id="mi_tit"><span>科研成果</span><a href="Second_list.aspx?nav_id=6&navi_id=19">更多>></a></div>
                    <div id="mi_list">
                        <asp:Repeater ID="Repeater3" runat="server">
                            <HeaderTemplate><ul></HeaderTemplate>
                            <ItemTemplate>
                                <li><a href='detail.aspx?nav_id=<%#Eval("nav_id")%>&nav1_id=<%#Eval("navi_id")%>&mess_id=<%#Eval("mess_id")%>'><%#Eval("mess_title").ToString().Length > 8 ? Eval("mess_title").ToString().Substring(0, 7) + "..." : Eval("mess_title")%></a><span><%#Eval("mess_time","{0:d}") %></span></li>
                        
                            </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div id="bottom_right">
                    <div id="mi_tit"><span>教学工作</span><a href="Second_list.aspx?nav_id=4&navi_id=12">更多>></a></div>
                    <div id="mi_list">
                       <asp:Repeater ID="Repeater4" runat="server">
                            <HeaderTemplate><ul></HeaderTemplate>
                            <ItemTemplate>
                                <li><a href='detail.aspx?nav_id=<%#Eval("nav_id")%>&nav1_id=<%#Eval("navi_id")%>&mess_id=<%#Eval("mess_id")%>'><%#Eval("mess_title").ToString().Length > 8 ? Eval("mess_title").ToString().Substring(0, 7) + "..." : Eval("mess_title")%></a><span><%#Eval("mess_time","{0:d}") %></span></li>
                        
                            </ItemTemplate>
                            <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div> <div id="Clear_floats"></div><!--清除浮动影响-->
        <div id="con_bottom">
            <div id="bo_tit"><a href="#">学术报告</a></div>
            <div id="bo_list">
                <div id="bolist_left">
                    <div id="date">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div id="txt">
                        <h3><a href="Meeting_list.aspx"><asp:Label ID="l_tit" runat="server" Text=""></asp:Label></a></h3>
                        <p>报告人：<asp:Label ID="l_writer" runat="server" Text=""></asp:Label></p>
                        <p>时间：<asp:Label ID="l_time" runat="server" Text=""></asp:Label></p> 
                    </div>
                </div>
                <div id="bolist_middle">
                    <div id="date">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div id="txt">
                        <h3>
                            <a href="Meeting_list.aspx">
                                <asp:Label ID="m_tit" runat="server" Text=""></asp:Label>
                            </a>
                        </h3>
                        <p>报告人：<asp:Label ID="m_writer" runat="server" Text=""></asp:Label></p>
                        <p>时间：<asp:Label ID="m_time" runat="server" Text=""></asp:Label></p> 
                    </div>
                </div>
                <div id="bolist_right">
                    <div id="date">
                        <h3></h3>
                        <p></p>
                    </div>
                    <div id="txt">
                        <h3><a href="Meeting_list.aspx"><asp:Label ID="r_tit" runat="server" Text=""></asp:Label></a></h3>
                        <p>报告人：<asp:Label ID="r_writer" runat="server" Text=""></asp:Label></p>
                        <p>时间：<asp:Label ID="r_time" runat="server" Text=""></asp:Label></p> 
                    </div>
                </div> <div id="Clear_floats"></div><!--清除浮动影响-->
            </div>
        </div>
</asp:Content>

