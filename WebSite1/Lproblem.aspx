<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lproblem.aspx.cs" Inherits="Lproblem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            list-style:none;
        }
        .container{
            //border:1px solid black;
            width:100%;
            height:720px;
            margin:0 auto;
            background-color:ghostwhite;
        }
        .nav{
            //border:1px solid black;
            width:1200px;
            height:50px;
            margin:0 auto;
            background-color:white;
        }
        .logo{
            width:150px;
            height:50px;
            //border:1px solid black;
            float:left;
            margin-right:70px;
        }
        .ulli{
            width:600px;
            height:50px;
           // border:1px solid black;
            float:left;
        }
        /*ul{
            width:500px;
            height:50px;
            float:right;
            border:1px solid black;
        }*/
        li{
            margin-right:30px;
            height:50px;
            line-height:50px;
            float:left;
        }
        .p1{
            font-size:20px;
            float:right;
            margin-top:15px;
        }
        .toux{
            margin-left:60px;
            //border:1px solid black;
            float:left;
            width:200px;
            height:50px;
        }
        .main{
            //border:1px solid black;
            width:1200px;
            height:600px;
            margin:0 auto;
        }
        .L {
            width:200px;
            height:470px;
            //border:1px solid black;
            float:left;
            margin-top:10px;
        }
        .lefts{
            //border:1px solid black;
            background-color:white;
            width:200px;
            height:220px;
            margin-bottom:10px;
        }
        .leftx{
            //border:1px solid black;
            width:200px;
            height:240px;
            background-color:white;
        }
        .p2{
            text-align:center;
            padding-top:10px;
        }
        .p3{
            text-align:center;
            padding-top:40px;
            margin-bottom:30px;
        }
        .p4{
            text-align:center;
        }
        .p5{
            margin-top:30px;
            text-align:center;
        }
        .right{
            //border:1px solid black;
            float:left;
            width:950px;
            height:470px;
            margin-left:10px;
        }
        .s{
            //border:1px solid black;
            width:990px;
            height:50px;
            background-color:white;
            margin-top:10px;
        }
        .p6{
            height:50px;
            line-height:50px; 
            float:left;
        }
        .p7{
            height:50px;
            line-height:50px; 
            float:right;
        }
        .x{
            //border:1px solid black;
            width:990px;
            height:400px;
            background-color:white;
            margin-top:14px;
        }
        .p8{
            width:900px;
            height:50px;
            margin-bottom:30px;
            text-align:center;
        }
        .xx{
            width:950px;
            height:50px;
            //border:1px solid black;
            padding-top:200px;
            text-align:center;
        }
        .jl{
            margin-top:100px;
            width:900px;
            height:30px;
            //border:1px solid black;
         }
        #LinkButton1,#LinkButton2,#LinkButton3,#LinkButton4,#LinkButton5
       ,#LinkButton6,#LinkButton7{
           text-decoration:none;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="nav">
            <div class="logo">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.jpg" Height="43px" Width="64px" />
                <p class="p1">助学社</p>
            </div>
            <div class="ulli">
               <ul>
                  <li>
                      <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" PostBackUrl="~/shouye.aspx">首页</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" PostBackUrl="~/zhiweiguanli.aspx">职位管理</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" PostBackUrl="~/jianliguanli.aspx">简历管理</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black">青团宝</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="aqua" PostBackUrl="~/Lproblem.aspx">小任务</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" PostBackUrl="~/message.aspx">消息</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="Black" PostBackUrl="~/zhaopin.aspx">加速招聘</asp:LinkButton></li>
              </ul>
            </div>
            <div class="toux">
                <img src="images/tx.png" />
                <asp:Label ID="Label1" runat="server" Text="Label">18783920361</asp:Label>
            </div>
        </div>
        <div class="main">
        <div class="L">
         <div class="lefts">
            <p class="p2">任务管理</p>
            <p class="p2">待发布 <asp:Label ID="Label2" runat="server" Text="Label">0</asp:Label></p>
            <p class="p2">进行中 <asp:Label ID="Label3" runat="server" Text="Label">0</asp:Label></p>
            <p class="p2">暂停中 <asp:Label ID="Label4" runat="server" Text="Label">0</asp:Label></p>
            <p class="p2">已结束 <asp:Label ID="Label5" runat="server" Text="Label">0</asp:Label></p>
            <p class="p2">建议修改 <asp:Label ID="Label6" runat="server" Text="Label">0</asp:Label></p>
         </div>
            <div class="leftx">
                <p class="p3">小任务客服</p>
                <p class="p4">工作日在线时间</p>
                <p class="p4">9:00-18:00</p>
                <p class="p5">
                    <asp:Button ID="Button1" runat="server" Text="在线联系" />

                </p>
            </div>
        </div>
        <div class="right">
            <div class="s">
                <p class="p6"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
                    <asp:Button ID="Button2" runat="server" Text="搜索" /></p>
                <p class="p7"><asp:Button ID="Button3" runat="server" Text="发布任务" /></p>
            </div>
            <div class="x">
                <asp:GridView ID="GridView1" runat="server" Height="170px" Width="631px"></asp:GridView>
                <div class="xx">
                <p>
                    <asp:Label ID="Label7" runat="server" Text="暂无数据"></asp:Label></p>
                    </div>
                <div class="jl">
                    <p class="p8">共<asp:Label ID="Label8" runat="server" Text="0"></asp:Label>条记录  
                        <asp:Button ID="Button4" runat="server" Text="上一页" />
                        <asp:Button ID="Button5" runat="server" Text="下一页" />
                    </p>
                </div>
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
