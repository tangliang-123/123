<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gexinxi.aspx.cs" Inherits="gexinxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
    <style type="text/css">
        *{
            margin:0px;
            border:0px;
            list-style:none;
            background-color:gainsboro;
            text-decoration:none;
        }
        li{
            float:left;
            margin-right:80px;
            margin-left:30px;
            background-color:white;              
        }
        
        .navber{
             width:100%;
             height:50px;
             line-height:50px;
            background-color:white;
        }
        .navbar-fixed-top{
           
            position:absolute;
            top:0px;
             position:fixed;
             z-index:1;
        }
       li img{
            width:30px;
            height:30px;
            vertical-align: middle;
        }
       .left_top{
           width:200px;
           height:100px;
           background:white;
           margin-top:80px;
           margin-left:150px;
           text-align:center;
           
       }
       span{
           background:white;
       }
       .left_bottom{
            width:200px;
           height:250px;
           background:white;
          margin-top:20px;
           margin-left:150px;
           text-align:center;
       }
       iframe{
           width:800px;
           height:500px;
           border:1px solid red;
           position:absolute;
           top:80px;
           right:150px;
       }
       a:link{
           color:black;
       }
       a:visited{
           color:black;
       }
       a{
           background:white;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="nav1">
               <nav class="navber navbar-fixed-top" role="navigation">
                   <ul>
                       <li>
                           <img src="image/6.jpg" />&nbsp;
                           勤工助学
                       </li>
                       <li>首页</li>
                       <li>职位管理</li>
                       <li>简历管理</li>
                       <li>小任务</li>
                       <li>消息</li>
                       <li>个人信息</li>
                   </ul>
               </nav>
            </div>
            <div class="content">
                <div class="left">
                    <div class="left_top">
                        <br />
                        <span><a href="gerenxinxi.aspx">个人信息</a></span><br />
                        <br />
                        <span><a href="shouye.aspx">我的公司</a></span>
                    </div>
                    <div class="left_bottom">
                        <br />
                        <span>其他设置</span>
                        <br /><br />
                        <span><a href="mima.aspx" >修改密码</a></span>
                        <br /><br />
                        <span><a href="telnum.aspx">修改手机号</a></span>
                        <br /><br />
                        <span><a href="wxtz.aspx" target="fd">微信通知</a></span>
                        <br /><br />
                        <span><a href="yjtz.aspx" target="fd">邮件通知</a></span>
                    </div>
                </div>
                <div class="right">
                    <iframe src="wxtz.aspx" scrolling="no" name="fd"></iframe>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
