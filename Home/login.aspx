<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eshop.frontend.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <style>
        .container h2{
            font-family:sans-serif;
            text-align:center;
            padding-top:10px;
        }
        .val {
            width: 76%;
            display: inline-block;
            margin-right: 0.9rem;
        }
        .valText {
            display: block;
        }

        .btnColor {
            background-color: #3498db;
        }
        .logo img{
            float:left;
            margin:20px;
            padding-left:60px;
        }

        section{
            width:22vw;
            position:absolute;
            top:50%;
            left:70%;
            transform:translate(-40%,-80%);
            border:1px solid #bdc3c7;
            border-radius:10px;
        }
        aside{
            position:absolute;
            bottom:10vh;
            left:10vw;
        }
    </style>
</head>
<body>
    <div class="logo">
        <a href="index.aspx">
            <img class="img-fluid mx-auto d-block" src="images/logo2.jpg" alt="logo" />
        </a>
    </div>
    <aside>
        <img src="./images/deer.png" alt="deer img" />
    </aside>
    <section>
            <div class="container">
                <div class="row">
                    <div class="container container--mini">
                        <h2>登录</h2>
                        <form runat="server" name="loginform" id="loginform">
                            <div class="form-group">
                                <label for="user_login">用户名</label>
                                <asp:TextBox runat="server" ID="name" required lay-verify="required" class="form-control" size="20" TabIndex="1" />
                            </div>
                            <div class="form-group">
                                <label for="user_pass">密码</label>
                                <asp:TextBox runat="server" ID="pwd" required lay-verify="required" TextMode="Password" size="20" class="form-control" TabIndex="2" />
                            </div>
                            <div class="form-group">
                                <label for="user_pass" class="valText">验证码</label>
                                <asp:TextBox runat="server" ID="validate" required lay-verify="required" size="20" class="form-control val" TabIndex="3" />
                                <img src="./Validate.aspx" alt="validateCode" />
                            </div>
                            <div class="form-group">
                                <asp:Button Text="登录" runat="server" ID="submit" OnClick="submit_Click" class="btn btn-primary btn-lg btn-block btnColor" TabIndex="4" />
                            </div>
                        </form>
                        <p class="small text-center text-gray-soft">还没有账户？ <a href="register.aspx">注册</a></p>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>
