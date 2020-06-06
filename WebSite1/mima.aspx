<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mima.aspx.cs" Inherits="mima" %>

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
        .main{
            //border:1px solid black;
            width:1200px;
            height:600px;
            margin:0 auto;
        }
        .left{
            //border:1px solid black;
            width:240px;
            height:500px;
            float:left;
            margin-top:10px;
        }
        .lefts{
            //border:1px solid black;
            width:240px;
            height:150px;
            background-color:white;
        }
        .leftx{
           // border:1px solid black;
            width:240px;
            height:300px;
            margin-top:20px;
            background-color:white;
        }
        .right{
            //border:1px solid black;
            width:950px;
            height:595px;
            float:left;
            margin-top:10px;
            margin-left:10px;
            background-color:white;
        }
        .p2{
            text-align:center;
            padding-top:25px;
        }
        .p3{
            text-align:center;
            padding-top:25px;
            margin-bottom:39px;
        }
        .p4{
            text-align:center;
            margin-top:27px;
            margin-bottom:20px;
        }
        .xgmm{
            //border:1px solid black;
            width:845px;
            height:80px;
            margin-top:20px;
            margin-left:30px;
        }
        .p5{
            font-size:22px;
            float:left;
        }
        .p6{
            float:right;
        }
        .xg{
            //border:1px solid black;
            width:860px;
            height:400px;
            margin-top:20px;
            margin-left:30px;
        }
        .p7{
            margin-top:30px;
        }
        .p8{
            margin-top:20px;
            margin-bottom:15px;
        }
        #LinkButton1,#LinkButton2,#LinkButton3,#LinkButton4,#LinkButton5
       ,#LinkButton6,#LinkButton7,#LinkButton8,#LinkButton9,#LinkButton10,#LinkButton11,#LinkButton12{
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
                <div class="lefts">
                    <p class="p2">个人信息</p>
                    <p class="p2">
                        <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" PostBackUrl="~/xinxi.aspx" CausesValidation="False">我的公司</asp:LinkButton></p>
                </div>
                <div class="leftx">
                    <p class="p3">其他设置</p>
                    <p class="p4" style="color:aqua;">修改密码 </p> 
                    <p class="p4"><asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" ForeColor="Black" PostBackUrl="~/telnum.aspx" OnClick="LinkButton1_Click" CausesValidation="False">修改手机号</asp:LinkButton></p></p>
                    <p class="p4">
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/gexinxi.aspx">微信通知</asp:LinkButton></p>
                    <p class="p4">
                        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/gexinxi.aspx">邮件通知</asp:LinkButton></p>
                </div>
            </div>
            <div class="right">
                <div class="xgmm">
                    <p class="p5">修改密码</p>
                    <p class="p6"><asp:LinkButton ID="LinkButton12" runat="server" CausesValidation="False" OnClick="LinkButton12_Click">注销账号&gt;</asp:LinkButton></p>
                </div>
                <div class="xg">
                    <p class="p7">原始密码修改</p>
                    <p class="p8">原密码</p>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="242px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                    <p class="p8">新密码</p>
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                    <p class="p8">确认密码</p>
                    <asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="239px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*两次密码输入不一致！" ForeColor="Red"></asp:CompareValidator>
                    <p class="p8" style="margin-left:45px;"><asp:Button ID="Button1" runat="server" Text="保存" Height="27px" Width="95px" OnClick="Button1_Click" /></p>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
