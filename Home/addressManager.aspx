<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="addressManager.aspx.cs" Inherits="Eshop.Home.addressManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .address h3{
            margin:2.7rem 0;
            margin-left:.5rem;
        }
        .address .addressList{
            display:flex;
            flex-wrap:wrap;
        }
        .address .addressList .items{
            height:12rem;
            width:31%;
            border:1px solid #e0e0e0;
            margin:.5rem;
        }
        .address .addressList .items .item{
            margin:.2rem 0;
            margin-left:1rem;
        }
        .address .addressList .items .name{
            margin:0.8rem 0;
            margin-left:1rem;
            font-size:1.5rem;
        }
        .address .zip{
            margin-right:5.3rem;
        }
        .address .addItem:hover,
        .address .deleteItem:hover{
            cursor:pointer;
        }
        .address .addItem{
            margin-right:0.4rem;
        }
        .address .add-address{
            text-align:center;
            line-height:12rem;
        }
        .address .add-address:hover{
            cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="address">
        <div class="container">
            <h3>收货地址</h3>
            <div class="addressList">
                
                <div class="items">
                    <p class="name item">陈XX</p>
                    <p class="item">1890***0321</p>
                    <p class="item">四川省 绵阳市 游仙区 游仙镇</p>
                    <p class="item">仙人路一段32号</p>
                    <div class="item">
                        <span class="zip">621022</span>
                        <span class="price addItem">修改</span>
                        <span class="price deleteItem">删除</span>
                    </div>
                </div>

                <div class="items">
                    <p class="name item">陈XX</p>
                    <p class="item">1890***0321</p>
                    <p class="item">四川省 绵阳市 游仙区 游仙镇</p>
                    <p class="item">仙人路一段32号</p>
                    <div class="item">
                        <span class="zip">621022</span>
                        <span class="price addItem">修改</span>
                        <span class="price deleteItem">删除</span>
                    </div>
                </div>

                <div class="items">
                    <p class="name item">陈XX</p>
                    <p class="item">1890***0321</p>
                    <p class="item">四川省 绵阳市 游仙区 游仙镇</p>
                    <p class="item">仙人路一段32号</p>
                    <div class="item">
                        <span class="zip">621022</span>
                        <span class="price addItem">修改</span>
                        <span class="price deleteItem">删除</span>
                    </div>
                </div>

                <div class="items">
                    <p class="name item">陈XX</p>
                    <p class="item">1890***0321</p>
                    <p class="item">四川省 绵阳市 游仙区 游仙镇</p>
                    <p class="item">仙人路一段32号</p>
                    <div class="item">
                        <span class="zip">621022</span>
                        <span class="price addItem">修改</span>
                        <span class="price deleteItem">删除</span>
                    </div>
                </div>

                <div class="items add-address">
                    <asp:Image ImageUrl="./images/add.svg" runat="server" Width="50" />
                </div>

            </div>
        </div>
    </section>



    <div data-toggle="distpicker" hidden>
      <select data-province="---- 选择省 ----"></select>
      <select data-city="---- 选择市 ----"></select>
      <select data-district="---- 选择区 ----"></select>
    </div>
    <script src="./js/distpicker.js"></script>
</asp:Content>
