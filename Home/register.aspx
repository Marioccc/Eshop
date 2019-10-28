<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Eshop.frontend.register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <style>
        body{
            background-color:#f9f9f9;
        }
        main{
            width:65vh;
            margin:0 auto;
            background-color:white;
            padding:10px 20px;
            border-radius:18px;
        }
    </style>
</head>
<body>
        <main id="main" class="site-main main">
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="container container--mini">
                        <img class="img-fluid mx-auto d-block" src="images/logo.jpg" alt="">

                        <form runat="server" name="loginform" id="loginform">
                            <asp:ScriptManager ID="manager" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                                <label for="user_login">用户名</label>
                                 <asp:TextBox runat="server"  required   class="form-control" ID="account" />
                            </div>

                            <div class="form-group">
                                <label for="user_pass">密码</label>
                                <asp:TextBox runat="server"  required   class="form-control" ID="pwd"  TextMode="Password"/> 
                                <ajaxToolkit:PasswordStrength 
                                    ID="passwordS" 
                                    runat="server"
                                    TargetControlID="pwd"
                                    DisplayPosition="RightSide"
                                    StrengthIndicatorType="Text"
                                    PreferredPasswordLength="8"
                                    PrefixText="密码强度："
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
                                <input type="password" id="confirmpwd" onchange="valitepwd()" name="password" required  placeholder="" autocomplete="off" class="form-control" />
                                 <div class="layui-form-mid layui-word-aux" id="pwdtick"></div>
                            </div>

                            <div class="form-group">
                                <label for="user_login">性别</label>
                                 <asp:RadioButton Text="男" runat="server"  GroupName="sex" ID="male"/>
                                 <asp:RadioButton Text="女" runat="server"  GroupName="sex" ID="female"/>
                            </div>

                            <div class="form-group">
                                <label for="user_login">出生日期</label>
                                 <input type="text" class="form-control" id="birthdayDate" runat="server" />
                            </div>

                            
                            <div class="form-group">
                                <label for="user_login">学历</label>
                                 <asp:DropDownList runat="server" ID="education" lay-verify="required">
                                    <asp:ListItem Text="" />
                                    <asp:ListItem Text="大专" />
                                    <asp:ListItem Text="本科" />
                                    <asp:ListItem Text="硕士" />
                                    <asp:ListItem Text="博士" />
                                    <asp:ListItem Text="博士后" />
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="user_login">联系地址</label>
                                 <textarea  placeholder="请输入地址" class="form-control" runat="server" id="address"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="user_login">联系电话</label>
                                 <asp:TextBox runat="server"  required class="form-control" ID="phone" />    
                            </div>

                            <div class="form-group">
                                <label for="user_login">邮政编码</label>
                                 <asp:TextBox runat="server"  required  class="form-control" ID="zip" />    
                            </div>

                            <div class="form-group">
                                <label for="user_login">电子邮箱</label>
                                 <asp:TextBox runat="server"  required  class="form-control" ID="email" />    
                            </div>

                            <div class="form-group">
                                <button type="reset" class="btn btn-primary btn-lg btn-block btnColor" >重置</button>
                                <asp:Button Text="立即提交" runat="server"  class="btn btn-primary btn-lg btn-block btnColor"  OnClick="submit_Click" ID="submit" />
                            </div>
                        </form>
                        <p class="small text-center text-gray-soft">已经拥有一个账户？ <a href="login.aspx">登录</a></p>
                    </div>
                </div>
            </div>
        </section>
    </main>
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
