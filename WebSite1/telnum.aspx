<%@ Page Language="C#" AutoEventWireup="true" CodeFile="telnum.aspx.cs" Inherits="telnum" %>

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
            //border:1px solid black;
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
            background-color:white;
            margin-top:10px;
            margin-left:10px;
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
            margin-bottom:30px;
        }
        .p8{
            margin-top:40px;
            margin-bottom:25px;
        }
       #LinkButton1,#LinkButton2,#LinkButton3,#LinkButton4,#LinkButton5
       ,#LinkButton6,#LinkButton7,#LinkButton8,#LinkButton9,#LinkButton10,#LinkButton11{
           text-decoration:none;
       }
        .auto-style1 {
            width: 60px;
            height: 26px;
        }
    </style>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

        $(function () {

            $("#imageCode2").click(function () {
                $("#imageCode2").attr("src", function () {
                    return "Handler.ashx?a=" + new Date().getMilliseconds();
                })
            })
        })

    </script>
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
                    <p class="p4">
                        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" ForeColor="Black" PostBackUrl="~/mima.aspx" CausesValidation="False">修改密码</asp:LinkButton></p>
                    <p class="p4" style="color:aqua;">修改手机号</p>
                    <p class="p4">
                        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/wxtz.aspx">微信通知</asp:LinkButton></p>
                    <p class="p4">
                        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" CausesValidation="False" PostBackUrl="~/yjtz.aspx">邮件通知</asp:LinkButton></p>
                </div>
            </div>
            <div class="right">
                <div class="xgmm">
                    <p class="p5">修改手机号</p>
                </div>
                <div class="xg">
                    <p class="p7">原手机号码:<asp:Literal ID="Literal1" runat="server" Text="18783920361"></asp:Literal></p>
                    <p class="p8">新手机号码</p>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="242px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                    <p class="p8">验证码</p>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="244px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                    <img alt="" src="Handler.ashx" class="auto-style1" id="imageCode2" />
                    <p class="p8" style="margin-left:45px;"><asp:Button ID="Button1" runat="server" Text="保存" Height="27px" Width="95px" OnClick="Button1_Click" /></p>
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
