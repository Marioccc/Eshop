<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="cartList.aspx.cs" Inherits="Eshop.Home.cartList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .list {
            padding-top: 2rem;
        }

        .table {
            background-color: white;
        }

        .table .numOper {
            height: 2rem;
            width: 5rem;
            border: 1px solid #e0e0e0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .table thead th {
            border: none;
        }

        .table .numOper .plus:hover,
        .table .numOper .minus:hover {
            cursor: pointer;
        }

        .listCount {
            height: 4rem;
            line-height: 4rem;
            background-color: white;
        }

        .listCount .price {
            font-size: 1.5rem;
            margin: 0 .6rem;
        }

        .operation {
            display: flex;
        }
        .recommed{
            padding-bottom: 4rem;
        }
        .recommed h3{
            padding: 2rem 0;
            color: #757575;
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
        }
        .recommed .container .row{
            margin-bottom: 1rem;
            justify-content: space-between;
        }
        .recommed .container .row .row{
            justify-content: center;
        }
        .recommed img{
            width: 230px;
            height: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light list">
        <div class="container">
            <div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">
                                <input type="checkbox" class="check-all">全选
                            </th>
                            <th scope="col">商品名称</th>
                            <th scope="col">单价</th>
                            <th scope="col">数量</th>
                            <th scope="col">小计</th>
                            <th scope="col">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">
                                <input type="checkbox" class="check-item">1
                            </th>
                            <td class="text-truncate">Marwadad</td>
                            <td class="text-truncate">Otto</td>
                            <td class="text-truncate">
                                <div class="numOper">
                                    <img src="./images/plus .svg" class="plus" alt="" width="20px">
                                    <span class="num">1</span>
                                    <img src="./images/minus.svg" class="minus" alt="" width="22px">
                                </div>
                            </td>
                            <td class="per-price">199</td>
                            <td class="operation">
                                <button type="button" class="close" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <input type="checkbox" class="check-item">2
                            </th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>
                                <div class="numOper">
                                    <img src="./images/plus .svg" class="plus" alt="" width="20px">
                                    <span class="num">1</span>
                                    <img src="./images/minus.svg" class="minus" alt="" width="22px">
                                </div>
                            </td>
                            <td class="per-price">21</td>
                            <td class="operation">
                                <button type="button" class="close" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row listCount">
                <div class="col-md-3">共<span class="price total">0</span>件商品,已选择<span class="price choose">0</span>件</div>
                <div class="col-md-3 offset-md-5">合计：<span class="price total-price">0</span>元</div>
                <div class="col-md-1"><button class="btn btn-primary">结算</button></div>
            </div>
        </div>
    </section>
    <section class="bg-light recommed">
        <h3>猜你还喜欢</h3>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                    <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                    <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                    <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row shop-card">
                        <a href="#">
                            <div class="card">
                                <img src="./images/08e0d3e4-63a8-3de4-107a-f6977321f106.jpg" class="card-img-top" alt="...">
                                <div class="card-body text-center">
                                    <p class="font-weight-bold">电饭锅 白色</p>
                                    <p class="font-weight-lighter">智能蒸煮</p>
                                    <div class="price">
                                        <span>1300元起</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        //  计算购物车商品总数
        $(".total").text($(".check-item").length);

        // 更新购物车结算总价函数
        function updateTotalPrice(node,sign) {
            let totalPrice = $(".total-price").text();
            let price = node.parentNode.parentNode.querySelector(".per-price").innerText;
            sign ? $(".total-price").text((+totalPrice) + (+price)) : $(".total-price").text((+totalPrice) - (+price));
        }

        // 点击增加购买商品数量
        $(".plus").click(function () {
            let parrentNode = this.parentNode;
            let num = parrentNode.querySelector(".num").innerText;
            parrentNode.querySelector(".num").innerText = +num + 1;

            if ($(".check-item").prop("checked")) {
                updateTotalPrice(parrentNode, true);
            }
        })
        // 点击减少购买商品数量
        $(".minus").click(function () {
            let parrentNode = this.parentNode;
            let num = parrentNode.querySelector(".num").innerText;
            if (+num > 1)
                parrentNode.querySelector(".num").innerText = +num - 1;

            if ($(".check-item").prop("checked") && (+num) >1 ) {
                updateTotalPrice(parrentNode, false);
            }
        })

        // 选中需要购买的商品
        $(".check-item").change(function () {
            if ($(".check-all").prop("checked") && this.checked==false) $(".check-all").prop("checked", false);

            let chooseNum = $(".choose").text();
            let totalPrice = $(".total-price").text();
            let num = this.parentNode.parentNode.querySelector(".num").innerText;
            let price = this.parentNode.parentNode.querySelector(".per-price").innerText;
            if (this.checked) {
                $(".choose").text(+chooseNum + 1);
                $(".total-price").text( (+totalPrice) + (+price * +num) );
            } else {
                $(".choose").text(+chooseNum - 1);
                $(".total-price").text( (+totalPrice) - (+price * +num) );
            }
        })

        // 商品全选
        $(".check-all").change(function () {
            let box_item = $(".check-item");
            if ($(".check-all").prop("checked")) {
                box_item.prop("checked", true)
                $(".choose").text(0);
                $(".total-price").text(0);
            } else {
                box_item.prop("checked", false);
            }
            box_item.change();
        })
    </script>
</asp:Content>
