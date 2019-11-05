<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="boughtlist31.aspx.cs" Inherits="eshop31.myhome.boughtlist31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <p>
    已购商品</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MerId" DataSourceID="SqlDataSource1" EnableModelValidation="True" GridLines="Horizontal" Height="183px" Width="100%">
    <Columns>
        <asp:BoundField DataField="MerId" HeaderText="商品编号" ReadOnly="True" SortExpression="MerId" />
        <asp:BoundField DataField="MerName" HeaderText="商品名称" SortExpression="MerName" />
        <asp:BoundField DataField="Price" HeaderText="商品价格" SortExpression="Price" />
        <asp:BoundField DataField="SPrice" HeaderText="E价格" SortExpression="SPrice" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" SelectCommand="SELECT DISTINCT c.MerName, c.MerId, c.Price, c.SPrice, c.Picture FROM orderDetail INNER JOIN orders ON orderDetail.OrderId = orders.OrderId AND orders.MemberId = @merberid INNER JOIN merchandisc AS c ON orderDetail.MerId = c.MerId">
    <SelectParameters>
        <asp:SessionParameter Name="merberid" SessionField="userid" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
