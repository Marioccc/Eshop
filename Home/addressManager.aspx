<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="addressManager.aspx.cs" Inherits="Eshop.Home.addressManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style>
        .address {
            color: #707070;
            font-size:14px;
        }

            .address h3 {
                margin: 2.7rem 0;
                margin-left: .5rem;
                color: #57606f;
                font-weight: 600;
            }

            .address .addressList {
                display: flex;
                flex-wrap: wrap;
                padding-bottom: 2rem;
            }

                .address .addressList .items {
                    height: 13rem;
                    width: 31%;
                    border: 1px solid #e0e0e0;
                    margin: .5rem;
                }

                    .address .addressList .items .item {
                        margin: .6rem 0;
                        margin-left: 1rem;
                    }

                    .address .addressList .items .name {
                        margin: 0.8rem 0;
                        padding-bottom:1.5rem;
                        font-size: 1.5rem;
                    }

                    .address .addressList .items .default {
                        margin: 1rem;
                        float: right;
                    }

            .address .zip {
                margin-right: 5.3rem;
            }
            .address .addItem:hover,
            .address .deleteItem:hover {
                cursor: pointer;
            }

            .address .addItem {
                margin-right: 0.4rem;
            }

            .address .add-address {
                text-align: center;
                line-height: 12rem;
            }

                .address .add-address:hover {
                    cursor: pointer;
                }

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
    <section class="address">
        <div class="container">
            <h3>收货地址</h3>
            <div class="addressList">

                <asp:Repeater ID="addressLists" runat="server">
                    <ItemTemplate>
                        <div class="items">
                            <div class="item">
                                <span class="name"><%#Eval("Addressee") %></span>
                                <span class="default"><%#Eval("DefaultValue").ToString()=="1"?"默认":"" %></span>
                            </div>
                            <p class="item"><%#Eval("phone") %></p>
                            <p class="item"><%#Eval("address") %></p>
                            <p class="item"><%#Eval("detailAddress") %></p>
                            <div class="item">
                                <span class="zip"><%#Eval("zip") %></span>
                            </div>
                            <div class="item float-right" style="margin-right: 1rem;">
                                <span class="price addItem">修改</span>
                                <asp:LinkButton Text="删除" runat="server" ID="delete" OnCommand="delete_Command" class="price deleteItem" CommandArgument='<%#Eval("ContactId") %>' />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="items add-address">
                    <asp:Image ImageUrl="./images/add.svg" runat="server" Width="50" />
                </div>
            </div>
        </div>
    </section>

    <div class="background-cover disapper"></div>
    <div class="address-card disapper card-add">
        <div class="container">
            <div class="row bg-light model-head">
                <div class="col-md-8">
                    <h5>添加收货地址</h5>
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
                        <select data-province="---- 选择省 ----" class="custom-select select-row" runat="server" id="chooseProvince"></select>
                        <select data-city="---- 选择市 ----" class="custom-select select-row" runat="server" id="chooseCity"></select>
                        <select data-district="---- 选择区 ----" class="custom-select select-row" runat="server" id="chooseArea"></select>
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
            <div class="row model-row">
                <div class="col-md-12">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck1" runat="server">
                        <label class="custom-control-label" for="ContentPlaceHolder1_ContentPlaceHolder1_customCheck1">设为默认地址？</label>
                    </div>
                </div>
            </div>
            <div class="bg-light row model-bottom">
                <div class="col-md-6">
                    <button type="button" class="btn btn-danger model-close">取消</button>
                </div>
                <div class="col-md-6">
                    <asp:Button Text="保存" runat="server" class="btn btn-info" ID="saveInfo" OnClick="saveInfo_Click" />
                </div>
            </div>
        </div>
    </div>

    <script src="./js/distpicker.js"></script>
    <script>
        let modelCard = $(".card-add");
        let cover = $(".background-cover");
        $(".add-address").click(function () {
            cover.fadeToggle();
            modelCard.fadeToggle();
        })
        $(".model-close").click(function () {
            closeModel();
        })
        function closeModel() {
            modelCard.fadeToggle();
            cover.fadeToggle();
        }

        $("#ContentPlaceHolder1_ContentPlaceHolder1_chooseProvince").change(function () {
            let value = $('#ContentPlaceHolder1_ContentPlaceHolder1_chooseProvince').distpicker()[0].value;
            $("#ContentPlaceHolder1_ContentPlaceHolder1_province").val(value);
        })

        $("#ContentPlaceHolder1_ContentPlaceHolder1_chooseCity").change(function () {
            let value = $('#ContentPlaceHolder1_ContentPlaceHolder1_chooseCity').distpicker()[0].value;
            $("#ContentPlaceHolder1_ContentPlaceHolder1_city").val(value);
        })

        $("#ContentPlaceHolder1_ContentPlaceHolder1_chooseArea").change(function () {
            let value = $('#ContentPlaceHolder1_ContentPlaceHolder1_chooseArea').distpicker()[0].value;
            $("#ContentPlaceHolder1_ContentPlaceHolder1_district").val(value);
        })
    </script>
</asp:Content>
