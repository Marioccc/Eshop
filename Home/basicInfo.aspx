<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="basicInfo.aspx.cs" Inherits="Eshop.Home.basicInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section .info-left {
            width: 80px;
            float: left;
            margin-top: 6rem;
            margin-left: 10rem;
            text-align: center;
        }

        section .info-right {
            float: left;
            margin-left: 12rem;
            margin-top: 6rem;
        }

        #ContentPlaceHolder1_ContentPlaceHolder1_userImg {
            margin-bottom: 1rem;
            border-radius: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info-left">
        <img src="./images/default.png" alt="user Img" runat="server" id="userImg" style="width: 80px; height: 80px;" />
        <a href="#" class="imgChangeBtn">更换头像</a>
        <input type="file" name="name" id="upload" runat="server" hidden />
    </div>
    <div class="info-right">
        <h2>用户资料</h2>
        <p>姓名：张三</p>
        <p>性别：男</p>
        <p>收货地址：四川省广元市</p>
        <p>联系电话：12726112211</p>
        <button type="button" class="btn btn-primary">修改信息</button>
    </div>
    <script>
        document.querySelector(".imgChangeBtn").addEventListener("click", function () {
            document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_upload").click();
        })
        document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_upload").addEventListener("change", function () {
            var url;
            url = window.URL.createObjectURL(document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_upload").files.item(0));
            var imgPre = document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_userImg");
            imgPre.src = url;
        })
    </script>
</asp:Content>
