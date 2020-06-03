<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                               <div class="sj">密码登录</div>
                           </div><br />
                           <div class="log_form">
                               <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="167px" BorderColor="#003300" BorderStyle="Solid" BackColor="#FFFFCC"></asp:TextBox>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入手机号/学号" ForeColor="Red"></asp:RequiredFieldValidator>
                               <br />
                               <br />
                               <br />
                               <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="167px" BorderColor="#003300" BorderStyle="Solid" BackColor="#FFFFCC"></asp:TextBox>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                               <br />
                               <br />
                               <asp:Button ID="Button1" runat="server" Text="登录" BackColor="Aqua" BorderColor="#6699FF" BorderStyle="Solid" Height="30px" Width="165px" OnClick="Button1_Click" />
                           </div>
                           <div class="cut-off">
                               <div class="line"></div>
                               <div class="center-icon">◯</div>
                               <div class="line"></div>
                           </div>
                           <div class="has-account">
                               <span>没有帐号?</span> 
                               <span class="blue"><a href="zhuce.aspx">立即注册</a></span>
                           </div>
                       </div>
                   </div>
                    
            </div>

            <script src="js/jquery-3.4.1.min.js"></script>
            <script type="text/javascript">
                document.querySelector("#app > div:nth-child(1) > section > section.about_bg_box > div.login-frame.normal-height")
            </script>
        </div>
    </form>
</body>
</html>
