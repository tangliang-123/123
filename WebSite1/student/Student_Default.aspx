<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Default.aspx.cs" Inherits="student_Student_Default" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="layui-nav">
                <nav>
                    <asp:LinkButton ID="LinkButton1" runat="server">首页</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/student/Student_gerenxinxi.aspx?myiframe=stu_gerenjianli.aspx">个人简历</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server">寻找兼职</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/student/Stu_xiaoxi.aspx">消息</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/student/Student_gerenxinxi.aspx?myiframe=stu_gerenxinxi.aspx">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </asp:LinkButton>
                </nav>
            </div>

        </div>
    </form>
</body>
</html>
