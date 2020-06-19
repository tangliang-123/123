<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stu_xiaoxi.aspx.cs" Inherits="student_Stu_xiaoxi" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/theme3693.min.css" rel="stylesheet" />
    <style>
        *{
            color:black;
            text-decoration:none;
        }
        nav{
            height:50px;
            line-height:50px;
            position:relative;
        }
        #LinkButton1{
            margin-left:110px;
        }
         #LinkButton1, #LinkButton2, #LinkButton3, #LinkButton4{
             margin-right:50px;
         }
        #LinkButton5 {
            position: absolute;
            right: 100px;
        }

         #tongzhi {
            width:200px;
            height:500px;
            float:left;
            margin-left:150px;
            margin-top:20px;
            background:white;
        }

        #xiaoxi {
            width:850px;
            height:500px;
            float:left;
            margin-top:20px;
            margin-left:10px;
            background:white;
        }
         #p1 {
            width:80px;
            height:50px;
            line-height:50px;
            background:white;
            float:left;
            margin-top:5px;
            margin-left:10px;
        }

        #img1,#img2{

            float:left;
        }

        #img2 {
            margin-top:13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="layui-nav">
                <nav>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/student/Student_Default.aspx">首页</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/student/Student_gerenxinxi.aspx?myiframe=stu_gerenjianli.aspx">个人简历</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/student/xunzhaojianzhi.aspx">寻找兼职</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/student/Stu_xiaoxi.aspx">消息</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/student/Student_gerenxinxi.aspx?myiframe=stu_gerenxinxi.aspx">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </asp:LinkButton>
                </nav>
            </div>
            <div id="tongzhi">
            <img src="../image/系统通知.png" id="img1" />
            <p id="p1">系统通知</p>
            <img id="img2" src="../image/jiantou.png" />
        </div>
        <div id="xiaoxi">

        </div>
        </div>
    </form>
</body>
</html>
