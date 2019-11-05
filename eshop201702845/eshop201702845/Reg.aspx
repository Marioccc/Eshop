<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true"
    CodeBehind="Reg.aspx.cs" Inherits="eshop201702845.Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title_bar
        {
            width: 900px;
            padding-left: 30px;
            margin-top: 20px;
            text-align: left;
        }
        
        .title_content
        {
            width: 500px;
            border-bottom-style: solid;
            border-bottom-width: thin;
            border-bottom-color: #C0C0C0;
            font-family: 黑体;
            font-weight: bold;
            font-size: large;
            color: #339933;
            text-align: left;
            letter-spacing: 3pt;
        }
        
        .reg_content
        {
            width: 600px;
            margin-top: 5px;
            padding-left: 30px;
            float: left;
        }
        
        .span_font
        {
            color: #808080;
            margin-left: 15px;
            font-size: small;
        }
        
        .form_row
        {
            padding: 10px 0px 10px 0px;
            width: 600px;
            clear: both;
        }
        
        .row_lbl
        {
            padding: 4px 15px 0px 0px;
            width: 120px;
            font-size: 12px;
            color: #333333;
            text-align: right;
            float: left;
        }
        
        .row_input
        {
            border: 1px solid #DFDFDF;
            width: 180px;
            height: 18px;
            float: left;
        }
        
        .reg_right
        {
            width: 230px;
            height: 150px;
            float: right;
            padding: 10px 0px 0px 20px;
            text-align: left;
            font-size: 14px;
            border-left-style: dotted;
            border-left-width: thin;
            border-left-color: #CCCCCC;
        }
        
        .btn
        {
            height: 27px;
            width: 70px;
            color: #497825;
            font-weight: bold;
            border: 1px solid #CCCFD3;
            background-color: #FFFFFF;
            margin-left: 100px;
        }
        
        .error
        {
            width: 120px;
            float: left;
            font-size: 12px;
            text-align: left;
            padding: 4px 5px 0 10px;
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title_bar">
        <div class="title_content">
            <span>|注册通行证</span>
        </div>
        <span class="span_font">简化您的购物流程，让您买的更方便，更安全。</span>
    </div>
    <div class="reg_content">
        <div class="form_row">
            <asp:Label ID="lblUser" runat="server" Text="您的用户名：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtAccount" runat="server" CssClass="row_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBirth"
                ErrorMessage="*必填" CssClass="error"></asp:RequiredFieldValidator></div>
        <div class="form_row">
            <asp:Label ID="lblPassword" runat="server" Text="请设置密码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" CssClass="row_input" TextMode="Password">test</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*必填"
                CssClass="error" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblRePassword" runat="server" Text="确认密码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtRePwd" runat="server" CssClass="row_input" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                ControlToValidate="txtRePwd" CssClass="error" ErrorMessage="！两次输入密码不一致"></asp:CompareValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblSex" runat="server" Text="性别：" CssClass="row_lbl"></asp:Label>
            <asp:RadioButtonList ID="rdolSex" runat="server" CssClass="row_input" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form_row">
            <asp:Label ID="Label1" runat="server" Text="出生年月：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtBirth" runat="server" CssClass="row_input"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBirth"
                CssClass="error" Display="Dynamic" ErrorMessage="格式（YYYY-MM-DD）" ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBirth"
                CssClass="error" Display="Dynamic" ErrorMessage="日期设置错误" MaximumValue="2012-02-19"
                MinimumValue="1990-01-01" Type="Date"></asp:RangeValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblEducation" runat="server" Text="学历：" CssClass="row_lbl"></asp:Label>
            <asp:DropDownList ID="ddlEdu" runat="server" CssClass="row_input">
                <asp:ListItem>大专</asp:ListItem>
                <asp:ListItem>本科</asp:ListItem>
                <asp:ListItem>硕士</asp:ListItem>
                <asp:ListItem>博士</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form_row">
            <asp:Label ID="lblAddress" runat="server" Text="联系地址：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="row_input"></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblCall" runat="server" Text="联系电话：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtTel" runat="server" CssClass="row_input">13678987890</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="Label2" runat="server" Text="邮政编码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtPostcode" runat="server" CssClass="row_input" >215104</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblEmail" runat="server" Text="电子邮箱：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="row_input">abc@siit.cn</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblAttention" runat="server" Text="关注产品类型" CssClass="row_lbl"></asp:Label>
            <asp:CheckBoxList ID="chlAttention" runat="server" RepeatColumns="3">
                <asp:ListItem>手机</asp:ListItem>
                <asp:ListItem>摄像机</asp:ListItem>
                <asp:ListItem>数码相机</asp:ListItem>
                <asp:ListItem>数字家电</asp:ListItem>
                <asp:ListItem>笔记本</asp:ListItem>
                <asp:ListItem>高清播放机</asp:ListItem>
                <asp:ListItem>平板电脑</asp:ListItem>
                <asp:ListItem>电子书</asp:ListItem>
                <asp:ListItem>GPS</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div class="form_row">
            <asp:Button ID="btnReg" runat="server" Text="完成注册" OnClick="btnReg_Click" Width="103px"
                CssClass="btn" />
            <asp:Button ID="btnReset" runat="server" Text="重置" CssClass="btn" />
        </div>
        <div class="form_row">
        </div>
    </div>
    <div class="reg_right">
        <div>
            已经拥有帐户?
        </div>
    </div>
</asp:Content>
