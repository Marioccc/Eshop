<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="eshop201702845.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
/*--------页面框架--------*/
.login_frame
{
border:medium solid #F1F1F1;
width:99%;
float:left;
text-align:center;
}
/*--------行样式设置--------*/
.form_row
{
 padding:10px 0px 10px 120px;
 width:651px;
 clear:both;
 }
/*--------标题样式--------*/
.login_head
{
   margin:20px 0px 20px 20px;
   letter-spacing:7pt;
   color:#003366;
   font-size:large;
   font-family:黑体;
   font-weight:bold;
}

/*--------标签样式--------*/
.leftlabel
{
    padding:4px 45px 0px 80px;
 width:100px;
 font-size:12px;
 color:#333333;
 text-align:right;
 float:left;
 
 }
/*--------输入框样式--------*/
.rightInput
{
    border:1px solid #DFDFDF;
    float:left;
    padding-left:10px;
    width :200px;
    
    
    }
.centent
{
    width:500px;
    float:right;
    
    
    
    }

/*--------按钮样式--------*/
.loginbth
{
    color:#497825;
    font-weight:bold;
    border:1px solid #CCCFD3;
    background-color:#FFFFFF ;
    margin-left:80px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login_head">&nbsp;用户登录</div>
<div class="login_frame">
<div class="form_row">
    <asp:Label ID="lb1Username" runat="server" Text="用户名" CssClass="leftlabel"></asp:Label>
    <asp:TextBox ID="txtAccount" runat="server" CssClass="rightInput"></asp:TextBox>
    </div>
<div class="form_row">
    <asp:Label ID="lblPassword" runat="server" Text="密码" CssClass="leftlabel"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="rightInput" TextMode="Password"></asp:TextBox>
</div>
<div class="form_row">
    <asp:Label ID="lblCheck" runat="server" Text="验证码" CssClass="leftlabel"></asp:Label>
    <img src="checkcode.aspx" alt="Alternate Text" />
    <asp:TextBox ID="txtCheck" runat="server" CssClass="rightInput"></asp:TextBox>
    </div>
    
<div class="form_row">
    <asp:Button ID="btnLogin" runat="server" Text="登录" CssClass="loginbth" 
        onclick="btnLogin_Click" />
    <asp:Button ID="btnReg" runat="server" Text="立即注册" CssClass="loginbth" 
        onclick="btnReg_Click1" />
</div>
</div>
</asp:Content>
