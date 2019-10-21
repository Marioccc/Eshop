<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/Info.Master" AutoEventWireup="true" CodeBehind="userInfo.aspx.cs" Inherits="Eshop.frontend.userInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section .userImg{
            float:left;
            margin-left:200px;
            margin-top:210px;
            text-align:center;
        }
        section .userImg img{
            display:block;
            border-radius:50%;
            margin-bottom:20px;
        }
        section .userImg a{
            color:blue;
        }
         section .Info{
            float:right;
            width:200px;
            height:100%;
            margin-right:330px;
            margin-top:100px;
        }
         section .Info p{
             margin:30px 0;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section">
        <div class="userImg">
            <img src="./images/userIcon/default.png" alt="user Img"  runat="server"  id="userImg" style="width: 80px; height: 80px;" />
            <a href="#" class="imgChangeBtn" >更换头像</a>
            <input type="file" name="name"   id="upload"  runat="server" hidden />
        </div>
        <div class="Info">
            <h2>用户资料</h2>
            <p>姓名：张三</p>
            <p>性别：男</p>
            <p>收货地址：四川省广元市</p>
            <p>联系电话：12726112211</p>
            <asp:Button Text="确认更改" runat="server" class="layui-btn layui-btn-fluid"  ID="submitBtn" OnClick="submitBtn_Click"  />
        </div>
    </div>
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
