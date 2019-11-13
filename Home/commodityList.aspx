<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="commodityList.aspx.cs" Inherits="Eshop.Home.commodityList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section .card-box{
            display:flex;
            padding:0;
            flex-wrap:wrap;
        }
         .card-list{
            margin:2rem;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light">
        <div class="container card-box">    
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                     <div class="card-list">
                            <a href="commodityInfo.aspx?id=<%#Eval("Id") %>">
                                <div class="card">
                                    <img src="<%#Eval("Picture") %>" class="card-img-top" style="width: 200px; height: 200px;">
                                    <div class="card-body text-center" style="width:200px;">
                                        <p class="font-weight-bold"><%#Eval("Name") %></p>
                                        <p class="font-weight-lighter"><%#Eval("title") %></p>
                                        <div class="price">
                                            <span><%#Eval("Price") %>元</span><span class="text-discount"><%#Eval("SPrice") %>元</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
</asp:Content>
