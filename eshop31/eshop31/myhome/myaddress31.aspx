<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="myaddress31.aspx.cs" Inherits="eshop31.myhome.myaddress31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <p>
        常用收货地址</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_frame">
        <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1"
            Width="100%" onitemcommand="DataList1_ItemCommand" 
            DataKeyField="ContactId" ondeletecommand="DataList1_DeleteCommand">
           
            <EditItemTemplate>
                <div class="content_frame">
                    <div style="margin: 5px 0 5px 0;">
                        修改收货地址： 
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label5" runat="server" CssClass=" leftlabel" Text="收货人"></asp:Label>
                        <asp:TextBox ID="txtAddressee" runat="server" CssClass="rightInput " 
                            Text ='<%# Eval("Addressee") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label6" runat="server" CssClass=" leftlabel" Text="地址"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("address") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label7" runat="server" CssClass=" leftlabel" Text="邮政编码"></asp:Label>
                        <asp:TextBox ID="txtZip" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("zip") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label8" runat="server" CssClass=" leftlabel" Text="电话号码"></asp:Label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("phone") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="leftlabel" 
                            Text="设为默认地址" />
                        <asp:Button ID="Button2" runat="server" style="text-align: center" Text="保存" 
                            Width="54px" CommandArgument ='<%# Eval("ContactId") %>' 
                            CommandName="save" />
                    </div>
                </div>
            </EditItemTemplate>
           
            <HeaderTemplate>
                <div style="margin: 5px 0 5px 0;">
                    现有收货地址：
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="datalist_item ">
                    <div class="datalist_item_row">
                        ■ <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>'  Width ="95%"/>
                    </div>
                    <div class="datalist_item_row">
                        <asp:Button ID="btnEdit" runat="server" Text="修改" Width="50px" 
                            CommandName="edit" onclick="btnEdit_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="删除" Width="50px" 
                            CommandName="delete" />
                    </div>
                </div>
            </ItemTemplate>
             
        </asp:DataList>
    </div>
    <div class="content_frame">
        <div style="margin: 5px 0 5px 0;">
            新增/修改收货地址：
        </div>
        <div class="form_row ">
            <asp:Label ID="Label9" runat="server" Text="收货人" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtAddrssee" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
         <div class="form_row ">
            <asp:Label ID="Label10" runat="server" Text="地址" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
         <div class="form_row ">
            <asp:Label ID="Label11" runat="server" Text="邮政编码" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtZip" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
         <div class="form_row ">
            <asp:Label ID="Label12" runat="server" Text="电话号码" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
        <div class="form_row ">
            <asp:CheckBox ID="chkDefault" runat="server" Text="设为默认地址" 
                CssClass="leftlabel"  />
            <asp:Button ID="Button3" runat="server"  
                style="text-align: center" Text="保存" Width="54px" 
                onclick="Button3_Click" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
        SelectCommand="SELECT Addressee + ',' + address + ',' + phone + ',' + zip AS contact, ContactId, MemberId, Addressee, address, phone, zip FROM contact WHERE (MemberId = @memberid)">
        <SelectParameters>
            <asp:SessionParameter Name="memberid" SessionField="userid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>