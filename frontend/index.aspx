<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Eshop.frontend.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .banner{
            height:59vh;
        }
        .home_s1{
            height:20vh;
        }
        .home_s1 .channer_list{
            height:20vh;
            width:16vw;
            background-color:#1abc9c;
            float:left;
        }
        .home_s1 .promo_list{
            float:right;
        }
        .home_s1 .box{
            display:inline-block;
            height:20vh;
            width:21vw;
            background-color:#3498db;
        }
        .home_category{
             position:absolute;
             z-index:2;
             height:491px;
             width:261px;
             background-color:rgba(127, 140, 141,0.4);
        }
        .home_category ul{
            padding:20px 0;
        }
         .home_category ul li{
            padding:20px;
            font-size:18px;
            color:white;
        }
         .home_category ul li:hover{
             background-color:#2980b9;
         }
         
       .banner_img{
           position:absolute;
           z-index:1;
       }
       .category_list{
           display:none;
           position:absolute;
           right:155px;
           z-index:2;
           height:491px;
           width:1050px;
           background-color:rgba(127, 140, 241,0.4);
       }
       .home_category ul li:hover > .arrow{
           display:block;
           color:black;
       }
       .arrow{
           float:right;
       }

       .special_price{
           margin-top:30px;
           height:300px;
       }
       .special_price .item_list{
           height:200px;
           background-color:#27ae60;
       }
       .special_price h2{
           margin:20px 0;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner">
        <div class="home_category">
            <ul>
                <li>手机 电话卡<span class="arrow">&gt;</span></li>
                <li>电视<span class="arrow">&gt;</span></li>
                <li>笔记本 平板<span class="arrow">&gt;</span></li>
                <li>家电 插线板<span class="arrow">&gt;</span></li>
                <li>电源 配件<span class="arrow">&gt;</span></li>
            </ul>
        </div>
        <div class="category_list">

        </div>
        <div class="banner_img">
            <img src="./images/banner_01.jpg" alt="Alternate Text" />
        </div>
    </section>

    <section class="home_s1">
        <div class="channer_list"></div>
        <div class="promo_list">
            <ul>
                <li class="box"></li>
                <li class="box"></li>
                <li class="box"></li>
            </ul>
        </div>
    </section>

    <section class="special_price">
        <h2>闪购</h2>
        <div class="item_list">

        </div>
    </section>

    <!--
    <asp:Label Text="" runat="server"  ID="interview"/>
    -->
</asp:Content>
