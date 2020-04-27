<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jianliguanlishixi.aspx.cs" Inherits="jianliguanlishixi" %>

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
        #zhiweiguanli {
        position:absolute;
        width:13%;
        height:200px;
        left:85px;
        top:75px;
        background-color:#fff;
        
        }
        #Label9 {
        margin-left:65px;
        margin-top:30px;
        position:absolute;
        }
        #Label10 {
        margin-left:80px;
        margin-top:75px;
        position:absolute;
        }
        #Label11 {
        margin-left:80px;
        margin-top:115px;
        position:absolute;
        }
        #Label12 {
        left:345px;
        top:85px;
        position:absolute;
        }
        #Label13 {
        left:443px;
        top:85px;
        position:absolute;
        }
        #Label14 {
        left:565px;
        top:85px;
        position:absolute;
        }
       
       
        #jilu {
        position:absolute;
        width:70%;
        height:200px;
        left:345px;
        top:130px;
        background-color:#fff;
        
        }
        #Button1{
        position:absolute;
        left:520px;
        top:260px;
        
        
        }
        #Image3 {
        position:absolute;
        left:450px;
        top:90px;
        width:200px;
        height:150px;
        }
        #Label16 {
        position:absolute;
        left:10px;
        top:85px;

        }
        
        #Label20 {
        position:absolute;
        left:10px;
        top:35px;
        }
        #Label21 {
        position:absolute;
        left:10px;
        top:135px;
        }
        #Button3{
        position:absolute;
        left:100px;
        top:85px;
        background-color:white;
        border-style:none;
        color:aqua;
        }
        #Button4{ 
        position:absolute;
        left:100px;
        top:35px;
        background-color:white;
        border-style:none;
        color:aqua;
        }
        #Button5{
        position:absolute;
        left:175px;
        top:35px;
        background-color:white;
        border-style:none;
        }
        #Button6{
        position:absolute;
        left:175px;
        top:85px;
        background-color:white;
        border-style:none;
        }
        #Button7{
        position:absolute;
        left:250px;
        top:85px;
        background-color:white;
        border-style:none;
        }
        #Button8{
        position:absolute;
        left:100px;
        top:135px;
        background-color:white;
        border-style:none;
        color:aqua;
        }
        #Button2{
        position:absolute;
        left:175px;
        top:135px; 
        background-color:white;
        border-style:none;
        }
        #Button9{
        position:absolute;
        left:250px;
        top:135px; 
        background-color:white;
        border-style:none;
        }
        #Button10{
        position:absolute;
        left:325px;
        top:135px; 
        background-color:white;
        border-style:none;
        }
        #zanwu {
        width:70%;
        height:350px;
        position:absolute;
        background-color:#fff;
    
        left:345px;
        top:355px;
        }
        
       
        
    </style>
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
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/xiaoxi.aspx">消息</asp:LinkButton>
                </div>
                <div>
                   <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/zhaopin.aspx">招聘</asp:LinkButton>
                </div>   
            </div>
            <div id="touxiang">
                <asp:ImageButton ID="Image1" runat="server"  ImageUrl="~/image/头像.png" OnClick="Image1_Click" />
                <asp:Label ID="Label6" runat="server" Text="18382908734(未实名)"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="未绑定公司"></asp:Label>
            </div>
        </div>
        <div id="zhiweiguanli">
            <asp:Label ID="Label9" runat="server" Text="职位管理"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="兼职"></asp:Label>
            <asp:Label ID="Label11" runat="server" Text="实习"></asp:Label>
        </div>
        <asp:Label ID="Label12" runat="server" Text="待处理0"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="已安排面试0"></asp:Label>
        <asp:Label ID="Label14" runat="server" Text="不合适简历"></asp:Label>
        
       
        <div id="jilu">
            <asp:Label ID="Label16" runat="server" Text="性别要求"></asp:Label>
            
            <asp:Label ID="Label20" runat="server" Text="筛选条件"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="不限" />
            <asp:Button ID="Button4" runat="server" Text="全部" />
            <asp:Button ID="Button5" runat="server" Text="有备注" />
            <asp:Label ID="Label21" runat="server" Text="学历要求"></asp:Label>
            <asp:Button ID="Button6" runat="server" Text="男生" />
            <asp:Button ID="Button7" runat="server" Text="女生" />
            <asp:Button ID="Button8" runat="server" Text="不限" />
            <asp:Button ID="Button2" runat="server" Text="大专" />
            <asp:Button ID="Button9" runat="server" Text="本科" />
            <asp:Button ID="Button10" runat="server" Text="硕士" />
            
        </div>
        <div id="zanwu">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Label ID="Button1" runat="server" Text="暂无简历" />

        </div>
    </div>    </form>
</body>
</html>
