<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Eshop.Home.order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .order-section {
            font-size: 12px;
        }

            .order-section .list-head {
                text-align: center;
                font-size: 13px;
                font-weight: bold;
                border-bottom: 1px solid #e0e0e0;
                margin-bottom: 1rem;
                height: 3rem;
                line-height: 3rem;
            }

            .order-section .order-items-head {
                height: 2rem;
                line-height: 2rem;
                background-color: #dfe6e9;
            }

            .order-section .order-items-footer {
                text-align: center;
                border: 1px solid #e0e0e0;
                border-top: none;
            }

            .order-section .table-item {
                margin-bottom: 1rem;
            }

            .order-section .commodity {
                padding-top: 1rem;
            }

        .text-align-center {
            align-self: center;
        }

        .font-bold {
            font-weight: bold;
        }
        .close:hover{
            cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section class="order-section">
        <div class="container">
            <div class="row list-head">
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-md-8">宝贝</div>
                        <div class="col-md-2">价格</div>
                        <div class="col-md-2">数量</div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-2">实付款</div>
                        <div class="col-md-5">交易状态</div>
                        <div class="col-md-5">操作</div>
                    </div>
                </div>
            </div>
            <asp:Repeater ID="orderRepeater" runat="server" OnItemDataBound="orderRepeater_ItemDataBound">
                <ItemTemplate>
                    <div class="row table-item">
                        <div class="col-md-12">
                            <div class="row order-items-head">
                                <div class="col-md-2">
                                    <span><%# Eval("OrderDate","{0:d}") %></span>
                                </div>
                                <div class="col-md-3">
                                    订单号: <asp:Label Text='<%#Eval("OrderId") %>' runat="server" ID="orderID" />
                                </div>
                                <div class="col-md-1 offset-md-6 text-align-center">
                                    <!--
                                    <img src="./images/delete.svg" class="close" alt="">
                                    -->
                                    <asp:LinkButton Text="x" runat="server" ID="deleteItem"  CssClass="close" CommandArgument='<%#Eval("OrderId") %>' OnCommand="deleteItem_Command" />
                                </div>
                            </div>
                            <div class="row order-items-footer">
                                <div class="col-md-7">
                                    <asp:Repeater ID="commodityRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="row">
                                        <div class="col-md-8 text-left commodity">
                                            <img class="float-left" src='<%#Eval("Picture") %>' width="80" height="80">
                                            <span><%#Eval("Name") %></span>
                                        </div>
                                        <div class="col-md-2 text-align-center">
                                            ￥<span><%#Eval("totalPrice") %></span>
                                        </div>
                                        <div class="col-md-2 text-align-center">
                                            <span><%#Eval("amount") %></span>
                                        </div>
                                    </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-md-5 text-align-center">
                                    <div class="row">
                                        <div class="col-md-2">
                                            ￥<span class="font-bold"><%#Eval("Total") %></span>
                                        </div>
                                        <div class="col-md-5"><%#Eval("Status").ToString() == "0"?"待支付":"已支付" %></div>
                                        <div class="col-md-5">
                                            <span>评论</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>
