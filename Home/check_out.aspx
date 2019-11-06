<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="check_out.aspx.cs" Inherits="Eshop.Home.check_out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: "微软雅黑";
        }

        ul {
            list-style: none;
        }

        section {
            padding: 2rem 0;
        }

            section .container {
                background-color: white;
                padding: 1.5rem 3rem;
            }

            section .btn-light {
                margin-right: 1.5rem;
                background-color: #ecf0f1;
                color: #bdc3c7;
            }

            section .address {
                padding-left: 2rem;
                padding-top: 1rem;
                border: 1px solid #e0e0e0;
            }

            section .line {
                border-top: 1px solid #e0e0e0;
            }

            section .list {
                margin: 1.6rem 0;
                border-bottom: 1px solid #e0e0e0;
            }

            section .price-detail {
                text-align: right;
            }

                section .price-detail li {
                    margin: 1rem 0;
                }

            section .vertical-center {
                align-items: center;
            }

            section .float-right {
                float: right;
            }

            section .modify-address {
                margin-right: 1.3rem;
            }

                section .modify-address:hover {
                    cursor: pointer;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light">
        <div class="container">
            <h3 class="padding-top-bottom">收货地址</h3>
            <div class="row">
                <div class="col-md-5">
                    <asp:Repeater ID="contactList" runat="server">
                        <ItemTemplate>
                            <div class="address">
                                <p><%#Eval("Addressee") %></p>
                                <p><%#Eval("phone") %></p>
                                <p><%#Eval("address") %></p>
                                <p>
                                    <span>XXXXXXXX</span>
                                    <span class="price float-right modify-address">修改</span>
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <h3 class="padding-top-bottom">商品</h3>
            <div class="cartNum">
                <asp:Repeater ID="cartList" runat="server">
                    <ItemTemplate>
                        <div class="row list">
                    <div class="col-md-8">
                        <img src='<%#Eval("Picture") %>'  width="40" height="40">
                        <span><%#Eval("Name") %></span>
                    </div>
                    <div class="col-md-3">
                        <span><%#Eval("Price") %>元 X <%#Eval("Amount") %></span>
                    </div>
                    <div class="col-md-1"> 
                        <span class="price"><span class="pre-item-price"><%#Eval("totalPrice") %></span>元</span>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="row padding-top-bottom vertical-center">
                <div class="col-md-2">
                    <h3>配送方式</h3>
                </div>
                <div class="col-md-10">
                    <span class="price">快递配送（运费 10 元）</span>
                </div>
            </div>
            <div class="row padding-top-bottom vertical-center">
                <div class="col-md-2">
                    <h3>发票</h3>
                </div>
                <div class="col-md-10">
                    <span class="price">电子发票 个人 商品明细</span>
                </div>
            </div>
            <div class="row price-detail">
                <div class="col-md-3 offset-md-9">
                    <ul>
                        <li>
                            <span>商品件数：</span>
                            <span class="price"><span class="num">0</span>件</span>
                        </li>
                        <li>
                            <span>商品总价：</span>
                            <span class="price"><span class="totalPrice">0</span>元</span>
                        </li>
                        <li>
                            <span>活动优惠：</span>
                            <span class="price">-0元</span>
                        </li>
                        <li>
                            <span>优惠券抵扣：</span>
                            <span class="price">-0元</span>
                        </li>
                        <li>
                            <span>运费：</span>
                            <span class="price"><span class="post-fee">10</span>元</span>
                        </li>
                        <li>
                            <span>应付总额：</span>
                            <span class="price"><span class="payPrice">0</span>元</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row padding-top-bottom line">
                <div class="col-md-3 offset-md-9">
                    <asp:Button Text="返回购物车" runat="server"  class="btn btn-light" ID="backToCart" OnClick="backToCart_Click" />
                    <button type="button" class="btn btn-danger">立即下单</button>
                </div>
            </div>
        </div>
    </section>

    <script>
        let cartNum = $(".list").length;
        // 计算结算商品数量
        $(".num").text(cartNum);  
        //计算商品总价
        let totalPrice = 0;
        $(".pre-item-price").each(function () {
            totalPrice += +($(this).text());
        })
        $(".totalPrice").text(totalPrice);
        totalPrice -= +($(".post-fee").text());
        $(".payPrice").text(totalPrice);
    </script>
</asp:Content>
