<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="updatepro31.aspx.cs" Inherits="eshop31.myhome.updatepro31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .title_bar
        {
            width: 900px;
            padding-left: 30px;
            margin-top: 20px;
            text-align :left ;
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
            width: 680px;
            margin-top: 5px;
            padding-left: 30px;
            float: left;
         height: 821px;
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
            height:30px;
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
            height: 25px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
用户资料修改
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="reg_content">
        <div class="form_row">
            <asp:Label ID="lblUser" runat="server" Text="您的用户名：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server" CssClass="row_input ">test</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUser" CssClass="error" ErrorMessage="*必填项"></asp:RequiredFieldValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblPassword" runat="server" Text="请设置密码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="row_input " 
                TextMode="Password">test</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                CssClass="error" ErrorMessage="*必填项" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblRePassword" runat="server" Text="确认密码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtRePassword" runat="server" CssClass="row_input " TextMode="Password">test</asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                CssClass="error" ErrorMessage="！二次输入密码不一致"></asp:CompareValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblSex" runat="server" Text="性　　别：" CssClass="row_lbl"></asp:Label>
            <asp:RadioButtonList ID="radlSex" runat="server" CssClass="row_input " RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <div class="form_row">
            <asp:Label ID="Label1" runat="server" Text="出生年月：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtBirth" runat="server" CssClass="row_input " 
                >test</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtBirth" CssClass="error" ErrorMessage="格式（YYYY-MM-DD）" 
                ValidationExpression="\d{4}-\d{2}-\d{2}" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="error" 
                ErrorMessage="日期设置错误" ControlToValidate="txtBirth" Display="Dynamic" 
                MaximumValue="2012-02-29" MinimumValue="1900-01-01" Type="Date"></asp:RangeValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblEducation" runat="server" Text="学　　历：" CssClass="row_lbl"></asp:Label>
            <asp:DropDownList ID="dropEducation" runat="server" CssClass="row_input ">
                <asp:ListItem>大专</asp:ListItem>
                <asp:ListItem>本科</asp:ListItem>
                <asp:ListItem>硕士</asp:ListItem>
                <asp:ListItem>博士</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form_row">
            <asp:Label ID="lblAddress" runat="server" Text="联系地址：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="row_input ">test</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblCall" runat="server" Text="联系电话：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtCall" runat="server" CssClass="row_input " 
              >13678987890</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtCall" CssClass="error" ErrorMessage="电话号码格式不正确" 
                ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{11}"></asp:RegularExpressionValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="Label2" runat="server" Text="邮政编码：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtZip" runat="server" CssClass="row_input ">215104</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtZip" CssClass="error" ErrorMessage="邮政编码不正确" 
                ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblEmail" runat="server" Text="电子邮箱：" CssClass="row_lbl"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="row_input ">hux@siit.cn</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtEmail" CssClass="error" ErrorMessage="EMail格式不正确" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblAttention" runat="server" Text="头像修改：" CssClass="row_lbl"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <div class="form_row" style="height:207px; text-align:center">        
            <asp:Image ID="Image1" runat="server" Height="211px" Width="292px" />
        </div>
        <div class="form_row">
            <asp:Button ID="btnReg" runat="server" Text="确定修改" CssClass="btn" 
                OnClick="btnReg_Click" Height="26px" Width="93px" />
        </div>
    </div>


</asp:Content>