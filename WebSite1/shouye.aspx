﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shouye.aspx.cs" Inherits="shouye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    

    <style type="text/css">
        body {
        
        background-color:#eff3f6;
        }
        #daohangtiao{
            
             margin-top:30px;
             margin-left:-7px;
             background-color:#fff;
             width:101%;
             height:50px;
             position:relative;
        }
        #daohang div {
        float:left;
        margin-left:100px;
        margin-top:10px;
        
        }
        #biaozhi {
        margin-left:90px;
        margin-top:12px;
        position:relative;
        position:absolute;
        }
        #daohang {
        margin-left:204px;
        margin-top:4px;
        position:absolute;
        }
        
        #touxiang {
        margin-left:1180px;
        margin-top:-30px;
        position:relative;
        
        }
        #Literal1 {
        margin-left:10px;
        margin-top:10px;

        }
        #Image2 {
        margin-left:-40px;
        margin-top:-4px;
        width:30px;
        height:30px;
        position:absolute;
        
        }
        #Image1 {
        margin-left:10px;
        margin-top:-3px;
        position:absolute;
        width:50px;
        height:50px;
        }
        #Label6 {
        margin-left:75px;
        margin-top:5px;
        position:absolute;
        }
        #Label7 {
        margin-left:75px;
        margin-top:22px;
        position:absolute;
        }
        #Label8 {
        font-size:20px;
        }
        #center {
        /*border:2px solid #ff0000;*/
        background-color:#fff;
        margin-left:80px;
        margin-top:20px;
        position:relative;
        height:150px;
        width:60%;
        }
        #p2 {
        margin-left:348px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        }
        #Image4 {
        margin-left:20px;
        margin-top:25px;
        position:absolute;
         width:50px;
        height:50px;
        }
        #Label14 {
        margin-left:100px;
        margin-top:26px;
        position:absolute;
        }
        #Label15 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #p1 {
        margin-left:75px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        } 
        #Image3 {
        left:23px;
        margin-top:23px;
        position:absolute;
        width:50px;
        height:50px;
        }
        #Label12 {
        margin-left:90px;
        margin-top:25px;
        position:absolute;
        }
        #Label13 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #p3 {
        margin-left:622px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        } 
        #Image5 {
        margin-left:15px;
        margin-top:25px;
        position:absolute;
        width:50px;
        height:50px;
        }
        #Label16 {
        margin-left:102px;
        margin-top:25px;
        position:absolute;
        }
        #Label17 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #fabu {
        background-color:#fff;
        margin-left:80px;
        margin-top:55px;
        position:relative;
        height:450px;
        width:60%;
        }
        #Image6 {
        width:200px;
        height:150px;
        position:absolute;
        margin-left:350px;
        margin-top:150px;
        }
        #Button1 {
        position:absolute;
        margin-left:410px;
        margin-top:320px;
        }
        #Label9 {
        margin-left:82px;
        margin-top:20px;
        position:absolute;
        }
        #Label10 {
        margin-left:160px;
        margin-top:20px;
        position:absolute;
        }
        #zhiweifabu {
        position:absolute;
        right:180px;
        top:70px;
        width:20%;
        height:300px;
        background-color:#fff;
        }
        #Label11 {
        margin-left:120px;
        margin-top:20px;
        position:absolute;
        }
        #Button2 {
        position:absolute;
        margin-left:118px;
        margin-top:65px;
        background:white;
        border-style:none;
        }
        #Button3 {
        position:absolute;
        margin-left:118px;
        margin-top:115px;
        background:white;
        border-style:none;
        }
        #Button4 {
        position:absolute;
        margin-left:110px;
        margin-top:165px;
        background:white;
        border-style:none;
        }
        #shengyubaoming {
        position:absolute;
        right:180px;
        top:400px;
        width:20%;
        height:150px;
        background-color:#fff;
        
        }
        #Label18 {
        margin-left:120px;
        margin-top:30px;
        position:absolute;
        }
        #Label19 {
        margin-left:135px;
        margin-top:60px;
        position:absolute;
        }
        #Image7{
        margin-left:170px;
        margin-top:57px;
        position:absolute;
        width:30px;
        height:30px;
        }



        .auto-style1 {
            bottom: 210px;
        }
        .auto-style2 {
            left: 0px;
            top: -2px;
        }
        .auto-style3 {
            right: 64px;
        }
        .auto-style4 {
            margin-bottom: 0px;
        }



        .auto-style5 {
            left: 1px;
            top: -3px;
        }



    </style>
    <link href="css/xadmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="daohangtiao">
            <div id="biaozhi">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/标志图.jpg" />
                <asp:Label ID="Label8" runat="server" Text="勤工助学"></asp:Label>
            </div>
            <div id="daohang">
                <div>
                     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/shouye.aspx">首页</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/zhiweiguanli.aspx">职位管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/jianliguanli.aspx">简历管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/message.aspx">消息</asp:LinkButton>
                </div>   
            </div>
            <div id="touxiang">
                <asp:ImageButton ID="Image1" runat="server"  ImageUrl="~/image/头像.png" OnClick="Image1_Click" />
                <asp:Label ID="Label6" runat="server" Text="18382908734(未实名)"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="未绑定公司"></asp:Label>
            </div>
        </div>
        <div id="center">
            <div id="p1"> 
                <asp:ImageButton ID="Image3" runat="server" ImageUrl="~/image/baoming.png" CssClass="auto-style3" OnClick="Image3_Click" />
                <asp:Label ID="Label12" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="新报名" style="height: 20px; width: 91px"></asp:Label>
            </div>
            <div id="p2">
                <asp:ImageButton ID="Image4" runat="server" ImageUrl="~/image/gangwei.png" CssClass="auto-style5" OnClick="Image4_Click" />
                <asp:Label ID="Label14" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="在招职位"></asp:Label>
            </div>
            <div id="p3">
                <asp:ImageButton ID="Image5" runat="server" ImageUrl="~/image/消息.png" OnClick="Image5_Click" />
                <asp:Label ID="Label16" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="未读消息" CssClass="auto-style4"></asp:Label>
            </div>
        </div>
       <asp:Label ID="Label9" runat="server" Text="新报名"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="在招兼职"></asp:Label>
        <div id="fabu">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/image/发布兼职.png" CssClass="auto-style2" />
            <asp:Button ID="Button1" runat="server" Text="发布兼职" CssClass="auto-style2" OnClick="Button1_Click" />
        </div>
         <div id="zhiweifabu">
             <asp:Label ID="Label11" runat="server" Text="职位发布"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="发布兼职" OnClick="Button2_Click" CssClass="auto-style1" />
            <asp:Button ID="Button3" runat="server" Text="发布实习" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="发布小任务" OnClick="Button4_Click" />
        </div>
        <div id="shengyubaoming">
            
            <asp:Label ID="Label18" runat="server" Text="剩余报名单"></asp:Label>
            <asp:Label ID="Label19" runat="server" Text="0份"></asp:Label>
        </div>
    </div>
    </form>
    <script src="layui.js"></script>
</body>
</html>
