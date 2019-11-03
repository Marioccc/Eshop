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
                <div class="row bottom-line">
                    <div class="col-md-2">
                        <img src="./images/good.svg" alt="evaluation img" width="40" />
                    </div>
                    <div class="col-md-5">
                        <p>此用户没有填写评价</p>
                        <p class="time">[2019-2-11 09:22:12]</p>
                    </div>
                    <div class="col-md-2">
                        <span>商家</span>
                        <span>太初网络充值专营店</span>
                    </div>
                    <div class="col-md-3">
                        <span>四川移动20元 移动话费 自动充值 直充快充 快速到账</span>
                        <p class="price">20.0元</p>
                    </div>
                </div>
                <div class="row bottom-line">
                    <div class="col-md-2">
                        <img src="./images/bad.svg" alt="evaluation img" width="40" />
                    </div>
                    <div class="col-md-5">
                        <p>此用户没有填写评价</p>
                        <p class="time">[2019-2-11 09:22:12]</p>
                    </div>
                    <div class="col-md-2">
                        <span>商家</span>
                        <span>太初网络充值专营店</span>
                    </div>
                    <div class="col-md-3">
                        <span>四川移动20元 移动话费 自动充值 直充快充 快速到账</span>
                        <p class="price">20.0元</p>
                    </div>
                </div>
                <div class="row bottom-line">
                    <div class="col-md-2">
                        <img src="./images/good.svg" alt="evaluation img" width="40" />
                    </div>
                    <div class="col-md-5">
                        <p>此用户没有填写评价</p>
                        <p class="time">[2019-2-11 09:22:12]</p>
                    </div>
                    <div class="col-md-2">
                        <span>商家</span>
                        <span>太初网络充值专营店</span>
                    </div>
                    <div class="col-md-3">
                        <span>四川移动20元 移动话费 自动充值 直充快充 快速到账</span>
                        <p class="price">20.0元</p>
                    </div>
                </div>
                <div class="row bottom-line">
                    <div class="col-md-2">
                        <img src="./images/medium.svg" alt="evaluation img" width="40" />
                    </div>
                    <div class="col-md-5">
                        <p>此用户没有填写评价</p>
                        <p class="time">[2019-2-11 09:22:12]</p>
                    </div>
                    <div class="col-md-2">
                        <span>商家</span>
                        <span>太初网络充值专营店</span>
                    </div>
                    <div class="col-md-3">
                        <span>四川移动20元 移动话费 自动充值 直充快充 快速到账</span>
                        <p class="price">20.0元</p>
                    </div>
                </div>
            </div>
</asp:Content>
