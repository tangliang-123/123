<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
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
            //border:1px solid black;
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
        .left{
            //border:1px solid black;
            width:300px;
            height:600px;
            float:left;
            background-color:white;
            margin-top:10px;
        }
        .right{
            //border:1px solid black;
            height:600px;
            width:890px;
            float:left;
            background-color:white;
            margin-left:10px;
            margin-top:10px;
        }
        .main{
            //border:1px solid black;
            width:1200px;
            height:600px;
            margin:0 auto;
        }
        .xx{
            width:100px;
            height:50px;
            margin-top:250px;
            margin-left:300px;
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
                      <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/shouye.aspx">首页</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/zhiweiguanli.aspx">职位管理</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/jianliguanli.aspx">简历管理</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="Black" CausesValidation="False">青团宝</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton9" runat="server" ForeColor="Black" PostBackUrl="~/Lproblem.aspx" CausesValidation="False">小任务</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton10" runat="server" ForeColor="Black" PostBackUrl="~/message.aspx" CausesValidation="False">消息</asp:LinkButton></li>
                  <li>
                      <asp:LinkButton ID="LinkButton11" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/zhaopin.aspx">加速招聘</asp:LinkButton></li>
              </ul>
            </div>
            <div class="toux">
                <img src="images/tx.png" />
                <asp:Label ID="Label1" runat="server" Text="Label">18783920361</asp:Label>
            </div>
        </div>
        <div class="main">
          <div class="left">
              &nbsp;&nbsp;&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;&nbsp;系统通知&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/JT.png" Height="16px" Width="19px" /></p>
          </div>
          <div class="right">
              <div class="xx">
                  <p>
                      <asp:Label ID="Label2" runat="server" Text="暂无消息"></asp:Label></p>
              </div>
          </div>
       </div>
    </div>
    </form>
</body>
</html>
