<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="basicInfo.aspx.cs" Inherits="Eshop.Home.basicInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section .info-left {
            width: 100px;
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
        section .user-row{
            margin:2rem 0;
        }
        section .modify-userinfo{
            width:100%;
        }
        section .modify-img-btn{
            width:100%;
            margin-top:1rem;
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
    <div class="info-left">
        <img src="./images/userIcon/default.png" alt="user Img" runat="server" id="userImg" style="width: 80px; height: 80px;" />
        <a href="#" class="imgChangeBtn">选择头像</a>
        <asp:FileUpload ID="fileUpLoadPic" runat="server" hidden /> 
        <div><asp:Button ID="Button1" runat="server" Text="更换" onclick="Button1_Click" CssClass="btn btn-outline-primary modify-img-btn"/></div>
    </div>
    <div class="info-right">
        <h2>用户资料</h2>
        <div class="user-row">用户名：<span class="user-name" runat="server" id="user_name">张三</span></div>
        <div class="user-row">性别：<span class="user-sex" runat="server" id="user_sex">男</span></div>
        <div class="user-row">联系电话：<span class="user-phone" runat="server" id="user_phone">12726112211</span></div>
        <div class="user-row">联系邮箱：<span class="user-email" runat="server" id="user_email">awcc9@gmail.com</span></div>
        <div class="user-row">注册时间：<span id="user_time" runat="server">2017-02-11</span></div>
        <asp:HiddenField ID="user_pwd" runat="server"  />
        <button type="button" class="btn btn-primary modify-userinfo">修改信息</button>
    </div>

     <div class="background-cover disapper"></div>
    <div class="address-card disapper card-add">
        <div class="container">
            <div class="row bg-light model-head">
                <div class="col-md-8">
                    <h5>修改个人信息</h5>
                </div>
                <div class="col-md-4">
                    <span class="close model-close">&times;</span>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <input type="text" class="form-control modify-user-name" placeholder="用户名" runat="server" id="modify_name">
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="male" name="customRadioInline1" class="custom-control-input" runat="server">
                      <label class="custom-control-label" for="ContentPlaceHolder1_ContentPlaceHolder1_male">男</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="female" name="customRadioInline1" class="custom-control-input" runat="server">
                      <label class="custom-control-label" for="ContentPlaceHolder1_ContentPlaceHolder1_female">女</label>
                    </div>
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <input type="text" class="form-control modify-user-phone" placeholder="手机号" runat="server" id="modify_phone">
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    <input type="email" class="form-control modify-user-email" placeholder="邮箱" runat="server" id="modify_email">
                </div>
            </div>
            <div class="row model-row">
                <div class="col-md-12">
                    更改密码
                    <input type="password" class="form-control modify_pwd" placeholder="密码" runat="server" id="modify_pwd">
                </div>
            </div>
            <div class="bg-light row model-bottom">
                <div class="col-md-6">
                    <button type="button" class="btn btn-danger model-close">取消</button>
                </div>
                <div class="col-md-6">
                    <asp:Button Text="保存" runat="server" class="btn btn-info" ID="modifyInfo"  OnClick="modifyInfo_Click" />
                </div>
            </div>
        </div>
    </div>
    <script>
        document.querySelector(".imgChangeBtn").addEventListener("click", function () {
            document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_fileUpLoadPic").click();
        })
        document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_fileUpLoadPic").addEventListener("change", function () {
            var url;
            url = window.URL.createObjectURL(document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_fileUpLoadPic").files.item(0));
            var imgPre = document.getElementById("ContentPlaceHolder1_ContentPlaceHolder1_userImg");
            imgPre.src = url;
        })

        let modelCard = $(".card-add");
        let cover = $(".background-cover");
        $(".modify-userinfo").click(function () {
            cover.fadeToggle();
            modelCard.fadeToggle();

            $(".modify-user-name").val($(".user-name").text());
            if ($(".user-sex").text() == "男") {
                $("#ContentPlaceHolder1_ContentPlaceHolder1_male").prop("checked", "checked");
            } else {
                $("#ContentPlaceHolder1_ContentPlaceHolder1_female").prop("checked", "checked");
            }
            $(".modify-user-phone").val($(".user-phone").text());
            $(".modify-user-email").val($(".user-email").text());
            $(".modify_pwd").val($("#ContentPlaceHolder1_ContentPlaceHolder1_user_pwd").val());
        })
        $(".model-close").click(function () {
            closeModel();
        })
        function closeModel() {
            modelCard.fadeToggle();
            cover.fadeToggle();
        }

    </script>
</asp:Content>
