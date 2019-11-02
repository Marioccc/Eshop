<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Site1.Master" AutoEventWireup="true" CodeBehind="userInfo.aspx.cs" Inherits="Eshop.frontend.userInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .nav-list {
            background-color: white;
            height: 67vh;
            margin: 1.8rem 0;
            padding: 2rem;
        }
        section .content{
            background-color: white;
            height: 67vh;
            margin: 1.8rem 0;
        }
        section .info-left{
            width: 80px;
            float: left;
            margin-top: 6rem;
            margin-left: 10rem;
            text-align: center;
        }
        section .info-right{
            float: left;
            margin-left: 12rem;
            margin-top: 6rem;
        }
        #ContentPlaceHolder1_userImg{
            margin-bottom: 1rem;
            border-radius: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-3 nav-list">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home"
                            role="tab" aria-controls="v-pills-home" aria-selected="true">基本资料</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
                            role="tab" aria-controls="v-pills-profile" aria-selected="false">我的订单</a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages"
                            role="tab" aria-controls="v-pills-messages" aria-selected="false">收货地址管理</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings"
                            role="tab" aria-controls="v-pills-settings" aria-selected="false">我的评价</a>
                    </div>
                </div>
                <div class="col-9">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active content" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <div class="info-left">
                                <img src="./images/default.png" alt="user Img"  runat="server"  id="userImg" style="width: 80px; height: 80px;" />
                                <a href="#" class="imgChangeBtn" >更换头像</a>
                                <input type="file" name="name"   id="upload"  runat="server" hidden />
                            </div>
                            <div class="info-right">
                                <h2>用户资料</h2>
                                <p>姓名：张三</p>
                                <p>性别：男</p>
                                <p>收货地址：四川省广元市</p>
                                <p>联系电话：12726112211</p>
                                <button type="button" class="btn btn-primary">修改信息</button>
                            </div>
                        </div>
                        <div class="tab-pane fade content" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            
                        </div>
                        <div class="tab-pane fade content" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">

                        </div>
                        <div class="tab-pane fade content" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        document.querySelector(".imgChangeBtn").addEventListener("click", function () {
            document.getElementById("ContentPlaceHolder1_upload").click();
        })
        document.getElementById("ContentPlaceHolder1_upload").addEventListener("change", function () {
                var url;
                url = window.URL.createObjectURL(document.getElementById("ContentPlaceHolder1_upload").files.item(0));
                var imgPre = document.getElementById("ContentPlaceHolder1_userImg");
                imgPre.src = url;
        })
    </script>
</asp:Content>
