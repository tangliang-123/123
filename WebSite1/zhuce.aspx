<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{border:0;margin:0;list-style:none;
          font-weight:bold;
        }
       

       
        li{
            float:left;
            margin-right:15px;
        }
        #left{
            margin-top:150px;
            margin-left:120px;   
            color:white;
            float:left;
        }
        .jl{
            margin-bottom:50px;
            margin-left:50px;
        }
        h1{
            margin-bottom:25px;
            margin-left:50px;
        }
        #right{
            background-color:white;
            width:300px;
            height:350px;
            color:black;
            opacity:0.5;
            float:right;
            margin-right:150px;
            margin-top:150px;
        }
        .sj{
            float:left;
            margin-left:30px;
            margin-left:30px;
        }
        .yzm{
            float:right;
            margin-right:30px;
            margin-bottom:30px;
        }
        .head_text{
            margin-top:15px;
        }
        .log_form{
            margin-top:10px;
            margin-left:30px;
            margin-bottom:20px;
        }
        .cut-off{
             margin-top:30px;
             
        }
        .line{
            width:119px;
            height:1px;
            background:#000;
            opacity:0.0961;
            float:left;
            margin-left:10px;
        }
        .center-icon{
            float:left;
            margin-top:-009px;

        }
        .has-account{
            margin-top:20px;
            margin-left:75px;
            float:left;
            text-align:center;
        }
        .blue{
            color:aquamarine;
            cursor:pointer;
        }
        .auto-style1 {
            width: 100%;
            height: 136px;
        }
    </style>
</head>
<body background="image/5.jpg" >
    <form id="form1" runat="server">
        <div id="app">
            
            <div id="content">
                <div id="left">
                    
                    <p class="jl">勤工助学系统</p>
                    <h1 >助学平台</h1>
                    <h5 class="jl">专注为学生兼职打造的平台</h5>
                    
                        <ul>
                            <li>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/pc_new_index_icon1.png" /><br /><br />
                                &nbsp;
                                <span>支付宝小程序</span>
                            </li>
                            
                            <li>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/pc_new_index_icon2.png" /><br /><br />
                                &nbsp;
                                 <span>微信小程序</span>
                            </li>
                            
                            <li>
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/pc_new_index_icon3.png" /><br /><br />
                                &nbsp;
                                <span>手机APP</span>
                            </li>
                            
                        </ul>
                    </div>
                    
                   <div id="right">
                       <div class="log">
                           <div class="head_text">
                           </div><br />
                           <div class="log_form">
                               <table class="auto-style1">
                                   <tr>
                                       <td>&nbsp;<input id="Text1" type="text" value="手机号码" />手机号码</td>
                                   </tr>
                                   <tr>
                                       <td>&nbsp;<input id="Text2" type="text" value="验证码"/>验证码</td>
                                   </tr>
                                   <tr>
                                       <td>&nbsp;</td>
                                   </tr>
                               </table>
                               &nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Button ID="Button1" runat="server" Text="注册" BackColor="Aqua" BorderColor="#6699FF" BorderStyle="Solid" Height="30px" Width="165px" OnClick="Button1_Click" />
                           </div>
                           <div class="cut-off">
                               <div class="line"></div>
                               <div class="center-icon">◯</div>
                               <div class="line"></div>
                           </div>
                           <div class="has-account">
                               <span>已有账号</span> 
                               <span class="blue"><a href="Default.aspx">立即登录</a></span>
                           </div>
                       </div>
                   </div>
                    
            </div>

            <script src="js/jquery-3.4.1.min.js"></script>
            <script type="text/javascript">
                $("#Text1").click(function () {
                    this.value = "";
                })
                $("#Text2").click(function () {
                    this.value = "";
                })
               
            </script>
        </div>
    </form>
</body>
</html>
