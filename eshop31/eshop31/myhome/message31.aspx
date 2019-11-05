<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="message31.aspx.cs" Inherits="eshop31.myhome.message31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        我的评论</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color:aliceblue">
                          
                       <asp:Label ID="MerIdLabel" runat="server" Text='<%# Eval("MerId") %>' />
                      <asp:HyperLink ID="hl_productname" runat="server" NavigateUrl='<%# Eval("MerId", "../detail.aspx?id={0}") %>'
                                Text='<%# Eval("MerName") %>'></asp:HyperLink>
                      
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="MessageId" DataSourceID="SqlDataSource1" Width="100%">
                            <ItemTemplate>
                                等级:
                                <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                                <br />
                                主题:
                                <asp:Label ID="topicLabel" runat="server" Text='<%# Eval("topic") %>' />
                                <br />
                                内容:
                                <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
                                <br />
                                时间:
                                <asp:Label ID="DateLineLabel" runat="server" Text='<%# Eval("DateLine") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;
<br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" SelectCommand="SELECT Message.* FROM Message WHERE (MerId = @Merid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="MerIdLabel" Name="Merid" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" SelectCommand="SELECT DISTINCT Message.MerId, merchandisc.MerName, merchandisc.Picture FROM Message INNER JOIN merchandisc ON Message.MerId = merchandisc.MerId WHERE (Message.MemberId = @memberid)">
        <SelectParameters>
            <asp:SessionParameter Name="memberid" SessionField="userid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>