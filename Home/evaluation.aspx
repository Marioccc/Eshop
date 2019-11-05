<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Info.master" AutoEventWireup="true" CodeBehind="evaluation.aspx.cs" Inherits="Eshop.Home.evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section .bottom-line{
            border-bottom: 1px solid #e0e0e0;
        }
        section .list .row{
            margin: 2rem 0;
        }
        section .list .time{
            color:#bdc3c7;
        }
        section .evaluation{
            color:#e74c3c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="padding-top-bottom">我的评价</h3>
            <div class="list">
                <asp:Repeater ID="evaluationList" runat="server">
                    <ItemTemplate>
                        <div class="row bottom-line">
                    <div class="col-md-2">
                        <img src='<%#Eval("grade") %>'   alt="evaluation img" width="40" id="img" runat="server" />
                    </div>
                    <div class="col-md-5">
                        <p id="message" runat="server"><%#Eval("message") %></p>
                        <p class="time" id="time" runat="server">[<%#Eval("time") %>]</p>
                    </div>
                    <div class="col-md-2">
                        <span>商家</span>
                        <span id="merchant" runat="server"><%#Eval("merchant") %></span>
                    </div>
                    <div class="col-md-3">
                        <span id="commodityInfo" runat="server"><%#Eval("commodityInfo") %></span>
                        <p class="price" id="price" runat="server"><%#Eval("commodityPrice") %>元</p>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
</asp:Content>
