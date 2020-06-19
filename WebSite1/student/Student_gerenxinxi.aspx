<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_gerenxinxi.aspx.cs" Inherits="student_Student_gerenxinxi" %>

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
        .top{
            width:200px;
            height:100px;
            background:white;
            text-align:center;
            margin-left:150px;
            margin-top:100px;
        }

        .button{
            width:200px;
            height:150px;
            background:white;
            text-align:center;
            margin-left:150px;
            margin-top:50px;
        }
      .left-nav  span{
            display:block;
            padding-top:20px;
        }
        .left-nav{
            width:350px;
        }

        iframe{
            background:white;
            width:550px;
            height:450px;
            position:absolute;
            top:155px;
            right:300px;
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
        </div>
        <div>
             <div class="left-nav">
                <div class="top">
                    <span><a href="stu_gerenxinxi.aspx" target="iframe">个人信息</a></span>
                    <span><a href="Stu_xiugaimima.aspx" target="iframe">修改密码</a></span>
                </div>
                <div class="button">
                    <span><a href="stu_gerenjianli.aspx" target="iframe" runat="server" id="grjl">个人简历</a></span>
                    <span><a href="stu_wodejianzhi.aspx" target="iframe">我的兼职</a></span>
                    <span><a>退出登录</a></span>                  
                </div>
            </div>
            <div>
                <iframe src="zanwujilu.aspx" frameborder="0" scrolling="no" name="iframe" id="myframe" runat="server">

                </iframe>
            </div>
        </div>
        
    </form>
        <script>
        
            
            function changesrc() {
                document.getElementById("myframe").src = "./stu_gerenjianli.aspx";
                
            }
        

        </script>

</body>
</html>
