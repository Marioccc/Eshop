<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Eshop.Home.order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .order-section {
            font-size: 14px;
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
        .evaluation:hover{
            cursor:pointer;
        }
        .evaluation-normal{
            opacity:0.3;
        }
        .evaluation-opacity{
            opacity:1;
        }
        .evaluation-normal:hover{
            cursor:pointer;
        }
        .margin-left-1{
            margin-left:1rem;
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
            width: 20%;
            left: 50%;
            top: 40%;
            transform: translate(-50%,-50%);
            background-color: white;
        }
        .address-card .container{
            display:flex;
            flex-direction:column;
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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section class="order-section">
        <div class="container">
            <div class="row list-head">
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-md-6">宝贝</div>
                        <div class="col-md-2">价格</div>
                        <div class="col-md-2">数量</div>
                        <div class="col-md-2">操作</div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-6">实付款</div>
                        <div class="col-md-6">交易状态</div>
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
                                <div class="col-md-4">
                                    订单号: <asp:Label Text='<%#Eval("OrderId") %>' runat="server" ID="orderID" />
                                </div>
                                <div class="col-md-1 offset-md-5 text-align-center">
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
                                        <div class="col-md-6 text-left commodity d-flex">
                                            <img class="float-left" src='<%#Eval("Picture") %>' width="80" height="80">
                                            <span class="margin-left-1"><%#Eval("Name") %></span>
                                        </div>
                                        <div class="col-md-2 text-align-center">
                                            ￥<span><%#Eval("totalPrice") %></span>
                                        </div>
                                        <div class="col-md-2 text-align-center">
                                            <span><%#Eval("amount") %></span>
                                        </div>
                                         <div class="col-md-2 text-align-center">
                                             <asp:LinkButton Text="评论"    Visible=' <%#Eval("evaluationID").ToString()=="-1"? true:false %>'  runat="server" class="evaluation" ID="evaluationBtn"  OnCommand="evaluationBtn_Command" CommandArgument='<%#Eval("Id") %>' CommandName='<%#Eval("orderID") %>' OnClientClick=" closeModel()" />
                                        </div>
                                    </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-md-5 text-align-center">
                                    <div class="row">
                                        <div class="col-md-6">
                                            ￥<span class="font-bold"><%#Eval("Total") %></span>
                                        </div>
                                        <div class="col-md-6"><%#Eval("Status").ToString() == "0"?"待支付":"已支付" %></div>
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
    

    <div class="background-cover disapper"></div>
    <div class="address-card disapper card-add">
        <div class="container">
            <div class="row bg-light model-head">
                <div class="col-md-8">
                    <h5>商品评价</h5>
                    <asp:Label Text="" runat="server" ID="commodityID" Visible="false" />
                    <asp:Label Text="" runat="server" ID="orderID" Visible="false"  />
                </div>
                <div class="col-md-4">
                    <span class="close model-close">&times;</span>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-4 evaluation-normal">
                    <asp:HiddenField ID="goodEvaluation" runat="server" Value="0" />
                    <img src="./images/good.svg" alt="good "  width="50"/>
                    完美
                </div>
                <div class="col-md-4 evaluation-normal">
                    <asp:HiddenField ID="mediumEvaluation" runat="server" Value="0" />
                    <img src="./images/medium.svg" alt="medium " width="50" />
                    一般
                </div>
                <div class="col-md-4 evaluation-normal">
                    <asp:HiddenField ID="badEvaluation" runat="server" Value="0" />
                    <img src="./images/bad.svg" alt="bad " width="50" />
                    差
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <textarea class="form-control detail-address" id="feeling" rows="3" placeholder="说下你的使用感受吧" runat="server"></textarea>
                </div>
            </div>
            <div class="bg-light row model-bottom">
                <div class="col-md-6">
                    <button type="button" class="btn btn-danger model-close">取消</button>
                </div>
                <div class="col-md-6">
                    <asp:Button Text="提交" runat="server" class="btn btn-info" ID="modifyInfo"  OnClick="modifyInfo_Click" />
                </div>
            </div>
        </div>
    </div>
    
    <script>
        $(".evaluation-normal").click(function () {
            $(".evaluation-normal").removeClass("evaluation-opacity");
            $(this).addClass("evaluation-opacity");

            $("#ContentPlaceHolder1_ContentPlaceHolder1_goodEvaluation").val("0");
            $("#ContentPlaceHolder1_ContentPlaceHolder1_mediumEvaluation").val("0");
            $("#ContentPlaceHolder1_ContentPlaceHolder1_badEvaluation").val("0");
            this.childNodes[1].value = "1";
        })

        let modelCard = $(".card-add");
        let cover = $(".background-cover");

        /*
        $(".evaluation").click(function () {    
            cover.fadeToggle();
            modelCard.fadeToggle();
        })
        */
        $(".model-close").click(function () {
            closeModel();
        })
        function closeModel() {
            modelCard.fadeToggle();
            cover.fadeToggle();
        }
    </script>
</asp:Content>
