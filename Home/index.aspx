<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Eshop.frontend.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .left-time{
            margin-top:1.7rem;
        }
        .phone .col-md-12{
            display:flex;
            flex-wrap:wrap;
            justify-content: space-around;
        }
        .phone .col-md-12 .shop-card{
            margin:0.5rem;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <img src="./images/banner_01.jpg" class="img-fluid" alt="Redmi Note8">
            </div>
            <div class="row padding-top-bottom d-none d-sm-flex">
                <div class="col-md-3 home-list">
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <img src="./images/home_pro1.jpg" class="img-fluid imgBox" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <img src="./images/home_pro2.jpg" class="img-fluid imgBox" alt="">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <img src="./images/home_pro3.jpg" class="img-fluid imgBox" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-light">
        <div class="container">
            <h3 class="padding-top-bottom">闪购</h3>
            <div class="row">
                <div class="col-md-3 shopping-color">
                    <div class="row row-center">
                        <div class="text-center shop-margin-top">
                            <h3 class="">14:00场</h3>
                            <img class="" src="./images/闪电.svg" width="110px" alt="">
                            <p class="left-time padding-top-bottom">
                                抢购中
                            </p>
                        </div>
                    </div>
                </div>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="col-md-9">
                    <ContentTemplate>
                        <div class="row">
                            <asp:Repeater ID="discountList" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="row shop-card">

                                            <a href="commodityInfo.aspx?id=<%#Eval("Id") %>">
                                                <div class="card">
                                                    <img src="<%#Eval("Picture") %>" class="card-img-top" style="width: 230px; height: 230px;">
                                                    <div class="card-body text-center">
                                                        <p class="font-weight-bold"><%#Eval("Name") %></p>
                                                        <p class="font-weight-lighter"><%#Eval("title") %></p>
                                                        <div class="price">
                                                            <span><%#Eval("Price") %>元</span><span class="text-discount"><%#Eval("SPrice") %>元</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Timer ID="Timer1" runat="server" Interval="3000"></asp:Timer>
                        
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
            <div class="row padding-top-bottom">
                <img src="./images/solt_01.jpg" class="img-fluid" alt="">
            </div>
        </div>
    </section>
    <section class="bg-light phone">
        <div class="container clearPadding">
            <h3>热销</h3>
            <div class="row shop-card">
                <div class="col-md-12 phone-col-margin">
                    <asp:Repeater ID="hot_list" runat="server">
                        <ItemTemplate>
                            <div class="shop-card">
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
            </div>
        </div>
    </section>
</asp:Content>
