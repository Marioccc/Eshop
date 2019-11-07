<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="commodityInfo.aspx.cs" Inherits="Eshop.Home.commodityInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section {
            padding-top: 2rem;
            border-top: 1px solid #e0e0e0;
            margin-bottom: 3.4rem;
        }

        .address {
            border: 1px solid #e0e0e0;
            height: 5rem;
            line-height: 5rem;
            margin: 1.3rem 0;
        }

            .address img, .address p {
                display: inline-block;
            }

            .address img {
                margin: 0 .5rem;
            }

            .address .modifAddress {
                margin: 0 1rem;
            }


        .depict {
            color: #b0b0b0;
        }

        h4 {
            font-size: 2.4rem;
        }

        .owner {
            font-weight: 600;
        }

        .capacity {
            height: 5rem;
            line-height: 5rem;
            border: 1px solid #ff6700;
            text-align: center;
            margin: 2rem 0;
        }

            .capacity p {
                font-size: 2rem;
                color: #ff6700;
            }

            .modifAddress:hover, .capacity:hover {
                cursor: pointer;
            }

        .numOper {
            margin: 2rem 0;
            width:100%;
            height:4rem;
            border: 1px solid #e0e0e0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .numOper .plus,.numOper .minus{
            width:5rem;
            border:none;
            background:none;
            font-size:2rem;
            height:4rem;
            color:#636e72;
        }
        .numOper .plus{
            font-size:2.5rem;
            border-left:1px solid #e0e0e0;
        }
        .numOper .minus{
            border-right:1px solid #e0e0e0;
        }
            .numOper .plus:hover,
            .numOper .minus:hover {
                cursor: pointer;
            }
            .num{
                font-size:2rem;
                color:#7f8c8d;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6">
                            <img src="<%#Eval("Picture") %>" class="img-fluid" alt="">
                        </div>
                        <div class="col-md-6">
                            <h3><%#Eval("Name") %></h3>
                            <p class="depict"><%#Eval("detail") %></p>
                            <p class="price owner"><%#Eval("GoodFacturer") %></p>
                            <h4 class="price"><%#Eval("Price") %>元</h4>

                            </ItemTemplate>
                </asp:Repeater>

                            <div class="address">
                                <img src="./images/位置.svg" alt="">
                                <p>四川省 绵阳市 游仙区 游仙镇<span class="price modifAddress">修改</span></p>
                            </div>
                            <p>选择颜色</p>
                            <div class="capacity">
                                <p>白色</p>
                            </div>

                            <p>选择数量</p>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="numOper">
                                    <ContentTemplate>
                                        <asp:Button Text="一"  runat="server" ID="minus" OnClick="minus_Click" CssClass="minus" />
                                        <asp:Label Text="1" runat="server" ID="nums" CssClass="num" />
                                        <asp:Button Text="+" runat="server" ID="plus" OnClick="plus_Click" CssClass="plus" />
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="plus" />
                                        <asp:AsyncPostBackTrigger ControlID="minus" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            <asp:Button Text="加入购物车" runat="server" class="btn btn-danger btn-lg btn-block" ID="addToCart" OnClick="addToCart_Click" />
                        </div>
                    
            </div>
        </div>
    </section>
</asp:Content>
