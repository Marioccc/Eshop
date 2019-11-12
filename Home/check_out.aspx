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


                /*修改卡片样式*/
                .background-cover {
            position: fixed;
            z-index: 10;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-color: #000;
            opacity: 0.5;
        }

        .address-card {
            position: fixed;
            z-index: 20;
            height: 60%;
            width: 30%;
            left: 50%;
            top: 40%;
            transform: translate(-50%,-50%);
            background-color: white;
        }

            .address-card .model-head {
                padding: 1rem;
            }

            .address-card .model-row {
                margin: 1rem 0;
            }

            .address-card .select-row {
                margin: 0.5rem 0;
            }

            .address-card .model-bottom {
                padding: 1rem;
            }

            .address-card .btn {
                width: 100%;
            }

            .address-card .close:hover {
                cursor: pointer;
            }

            .address-card .detail-address {
                resize: none;
            }

        .disapper {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light">
        <div class="container">
            <h3 class="padding-top-bottom">收货地址</h3>
            <div class="row">
                <div class="col-md-5">
                    <div class="address">
                        <asp:Label Text='' Visible="false" runat="server" ID="contactID" />
                        <p runat="server" id="address_name" class="address_name"></p>
                        <p runat="server" id="address_phone" class="address_phone"></p>
                        <div>
                            <span runat="server" class="address_province" id="address_province"></span>
                            <span runat="server" class="address_city" id="address_city"></span>
                            <span runat="server" class="address_area" id="address_area"></span>
                            <span runat="server" class="address_detail" id="address_detail"></span>
                        </div>
                        <p>
                            <span runat="server" id="address_zip" class="address_zip"></span>
                            <span class="price float-right modify-address">修改</span>
                        </p>
                    </div>
                </div>
            </div>
            <h3 class="padding-top-bottom">商品</h3>
            <div class="cartNum">
                <asp:Repeater ID="cartList" runat="server">
                    <ItemTemplate>
                        <div class="row list">
                            <div class="col-md-8">
                                <img src='<%#Eval("Picture") %>' width="40" height="40">
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
                            <asp:HiddenField ID="Total_price" runat="server" Value="" />
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row padding-top-bottom line">
                <div class="col-md-3 offset-md-9">
                    <asp:Button Text="返回购物车" runat="server" class="btn btn-light" ID="backToCart" OnClick="backToCart_Click" />
                    <asp:Button Text="立即下单" runat="server" class="btn btn-danger" ID="commit" OnClick="commit_Click" />
                </div>
            </div>
        </div>
    </section>


    <div class="background-cover disapper"></div>
    <div class="address-card disapper card-add">
        <div class="container">
            <div class="row bg-light model-head">
                <div class="col-md-8">
                    <h5>修改收货地址</h5>
                </div>
                <div class="col-md-4">
                    <span class="close model-close">&times;</span>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-6">
                    <input type="text" class="form-control" placeholder="姓名" runat="server" id="name">
                </div>
                <div class="col-md-6">
                    <input type="text" class="form-control" placeholder="手机号" runat="server" id="phone">
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <div data-toggle="distpicker">
                        <select data-province="---- 选择省 ----" class="custom-select select-row chooseProvince" runat="server" id="chooseProvince"></select>
                        <select data-city="---- 选择市 ----" class="custom-select select-row chooseCity" runat="server" id="chooseCity"></select>
                        <select data-district="---- 选择区 ----" class="custom-select select-row chooseArea" runat="server" id="chooseArea"></select>
                        <asp:HiddenField runat="server" ID="province" Value="" />
                        <asp:HiddenField runat="server" ID="city" Value="" />
                        <asp:HiddenField runat="server" ID="district" Value="" />
                    </div>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <textarea class="form-control detail-address" id="addressDetail" rows="3" placeholder="详细地址" runat="server"></textarea>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <input type="text" class="form-control" placeholder="邮政编码" runat="server" id="zip">
                </div>
            </div>
            <div class="bg-light row model-bottom">
                <div class="col-md-6">
                    <button type="button" class="btn btn-danger model-close">取消</button>
                </div>
                <div class="col-md-6">
                    <asp:Button Text="保存" runat="server" class="btn btn-info" ID="modify_Info" OnClick="modify_Info_Click" />
                </div>
            </div>
        </div>
    </div>


    <script src="./js/distpicker.js"></script>
    <script>
        let modelCard = $(".card-add");
        let cover = $(".background-cover");
        $(".modify-address").click(function () {
            cover.fadeToggle();
            modelCard.fadeToggle();

            $("#ContentPlaceHolder1_name").val($(".address_name").text());
            $("#ContentPlaceHolder1_phone").val($(".address_phone").text());
            $("#ContentPlaceHolder1_zip").val($(".address_zip").text());
        })
        $(".model-close").click(function () {
            closeModel();
        })
        function closeModel() {
            modelCard.fadeToggle();
            cover.fadeToggle();
        }

        $("#ContentPlaceHolder1_chooseProvince").change(function () {
            let value = $('#ContentPlaceHolder1_chooseProvince').distpicker()[0].value;
            $("#ContentPlaceHolder1_province").val(value);
        })

        $("#ContentPlaceHolder1_chooseCity").change(function () {
            let value = $('#ContentPlaceHolder1_chooseCity').distpicker()[0].value;
            $("#ContentPlaceHolder1_city").val(value);
        })

        $("#ContentPlaceHolder1_chooseArea").change(function () {
            let value = $('#ContentPlaceHolder1_chooseArea').distpicker()[0].value;
            $("#ContentPlaceHolder1_district").val(value);
        })

        let cartNum = $(".list").length;
        // 计算结算商品数量
        $(".num").text(cartNum);

        //计算商品总价
        let totalPrice = 0;
        $(".pre-item-price").each(function () {
            totalPrice += +($(this).text());
        })
        $(".totalPrice").text(totalPrice);
        totalPrice += +($(".post-fee").text());
        $(".payPrice").text(totalPrice);
        $("#ContentPlaceHolder1_Total_price").val(totalPrice);
    </script>

</asp:Content>
