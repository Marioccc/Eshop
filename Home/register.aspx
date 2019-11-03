<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Eshop.frontend.register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            width:24vw;
            position:absolute;
            top:50%;
            left:70%;
            transform:translate(-40%,-50%);
            border:1px solid #bdc3c7;
            border-radius:10px;
        }
        aside{
            position:absolute;
            bottom:10vh;
            left:10vw;
        }
        .pwd{
            margin-right:5.5rem;
        }
        #pwdtick{
            display:inline-block;
        }
        .sex{
            margin-right:3rem;
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
                        <h2>注册</h2>
                        <form runat="server" name="loginform" id="loginform">
                            <asp:ScriptManager ID="manager" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                                <label for="user_login">用户名</label>
                                 <asp:TextBox runat="server"  required   class="form-control" ID="account" />
                            </div>

                            <div class="form-group pwd">
                                <label for="user_pass">密码</label>
                                <asp:TextBox runat="server"  required   class="form-control" ID="pwd"  TextMode="Password"/> 
                                <ajaxToolkit:PasswordStrength 
                                    ID="passwordS" 
                                    runat="server"
                                    TargetControlID="pwd"
                                    DisplayPosition="RightSide"
                                    StrengthIndicatorType="Text"
                                    PreferredPasswordLength="8"
                                    PrefixText="强度："
                                    TextCssClass="TextIndicator_TextBox1"
                                    MinimumNumericCharacters="2"
                                    MinimumSymbolCharacters="2"
                                    RequiresUpperAndLowerCaseCharacters="false"
                                    TextStrengthDescriptions="很弱;弱;一般;强;很强"
                                    TextStrengthDescriptionStyles="cssClass1;cssClass2;cssClass3;cssClass4;cssClass5"
                                    CalculationWeightings="50;15;15;20" />
                            </div>

                            <div class="form-group">
                                <label for="user_login">确认密码</label>
                                <div class="layui-form-mid layui-word-aux" id="pwdtick"></div>
                                <input type="password" id="confirmpwd" onchange="valitepwd()" name="password" required  placeholder="" autocomplete="off" class="form-control" />
                            </div>

                            <div class="form-group">
                                <label for="user_login" class="sex">性别</label>
                                <asp:RadioButton Text="男" runat="server" GroupName="sex" ID="male" />
                                <asp:RadioButton Text="女" runat="server" GroupName="sex" ID="female" />
                            </div>

                            <div class="form-group">
                                <label for="user_login">联系电话</label>
                                 <asp:TextBox runat="server"  required class="form-control" ID="phone" />    
                            </div>

                            <div class="form-group">
                                <label for="user_login">联系邮箱</label>
                                 <asp:TextBox runat="server"  required  class="form-control" ID="email" />    
                            </div>

                            <div class="form-group">
                                <asp:Button Text="立即提交" runat="server"  class="btn btn-primary btn-lg btn-block btnColor"  OnClick="submit_Click" ID="submit" />
                            </div>
                        </form>
                        <p class="small text-center text-gray-soft">已经拥有一个账户？ <a href="login.aspx">登录</a></p>
                    </div>
                </div>
            </div>
        </section>
    <script src="./js/jquery-3.4.1.min.js"></script>
    <script>
        function valitepwd() {
            let firstpwd = document.getElementById("pwd").innerHTML;
            let secondpwd = document.getElementById("confirmpwd").innerHTML;
            if (firstpwd != secondpwd) document.getElementById("pwdtick").innerText = "密码输入不一致";
            else document.getElementById("pwdtick").innerText = "密码输入一致";
        }
    </script>
</body>
</html>
