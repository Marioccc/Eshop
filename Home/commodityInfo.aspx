<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="commodityInfo.aspx.cs" Inherits="Eshop.Home.commodityInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    section{
        padding-top: 2rem;
        border-top: 1px solid #e0e0e0 ;
        margin-bottom:3.4rem;
    }
    .address{
        border: 1px solid #e0e0e0;
        height: 5rem;
        line-height: 5rem;
        margin: 1.3rem 0;
    }
    .address img,.address p{
        display: inline-block;
    }
    .address img{
        margin: 0 .5rem;
    }
    .address .modifAddress{
        margin: 0 1rem;
    }


    .depict{
        color: #b0b0b0;
    }
    h4{
        font-size: 2.4rem;
    }
    .owner{
        font-weight: 600;
    }

    .capacity{
        height: 5rem;
        line-height: 5rem;
        border: 1px solid #ff6700;
        text-align: center;
        margin: 2rem 0;
    }
    .capacity p{
        font-size: 2rem;
        color: #ff6700;
    }
    .modifAddress:hover,.capacity:hover{
        cursor: pointer;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="./images/commodity.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-md-6">
                    <h3>高速无线充电套装</h3>
                    <p class="depict">快速无线闪充 / 独立静音风扇 / Qi充电标准 / 安全充电</p>
                    <p class="price owner">官方自营</p>
                    <h4 class="price">199元</h4>
                    <div class="address">
                        <img src="./images/位置.svg" alt="">
                        <p>四川省 绵阳市 游仙区 游仙镇<span class="price modifAddress">修改</span></p>
                    </div>
                    <p>选择颜色</p>
                    <div class="capacity">
                        <p>白色</p>
                    </div>
                    <button type="button" class="btn btn-danger btn-lg btn-block">加入购物车</button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
