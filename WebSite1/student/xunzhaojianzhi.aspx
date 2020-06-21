<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xunzhaojianzhi.aspx.cs" Inherits="student_xunzhaojianzhi" %>

<%@ Register Src="~/user/xzjz.ascx" TagPrefix="uc1" TagName="xzjz" %>


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
        #LinkButton5{
           position:absolute;
           right:100px;
        }
        .container2{
            width:820px;
            height:580px;
            background:white;
            margin:10px auto;
            position:relative;
            overflow:scroll;
        }
        #Text1{
            margin:20px 15px;
            border:1px solid #00ff00 ;
        }
        .jz{
            position:absolute;
            right:30px;
            top:20px;
        }
        .zdykj
        {
            position:absolute;
            left:50px;
            top:80px;
            
        }
        /*#Panel1{
             width:800px;
            height:550px;
            background:white;
            overflow:scroll;
        }*/
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
        </div>
        <div class="container2">
            <input id="Text1" type="text" runat="server"/><asp:Button ID="Button1" runat="server" Text="查询" BackColor="Aqua" BorderStyle="None" BorderWidth="50px" />
            <span class="jz"><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#00ff00">历史兼职</asp:HyperLink></span>
            <div class="zdykj">
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            </div>
        </div>
        
    </form>
</body>
</html>
