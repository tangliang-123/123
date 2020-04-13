<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanlishixi.aspx.cs" Inherits="zhiweiguanlishixi" %>

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
        top: -2px;
        left: 0px;
        }
        #fabushixi {
        position:absolute;
        left:345px;
        top:75px;
        border-bottom:1px solid #c7bcbc;
        background-color:#eff3f6;
        width:70%;
        height:50px;
        }
        #Label12 {
        left:0px;
        top:20px;
        position:absolute;
        }
        #Label13 {
        left:105px;
        top:20px;
        position:absolute;
        }
        
        #Button1 {
        right:0px;
        top:20px;
        position:absolute;
        color:white;
        background-color:#00CCFF;
        width:90px;
        height:30px;

        }
        
        #jilu {
        position:absolute;
        width:70%;
        height:555px;
        left:345px;
        top:140px;
        background-color:#fff;
       
        }
        #Label18{
        position:absolute;
        left:520px;
        top:330px;
            }
        #Image3 {
        position:absolute;
        left:450px;
        top:170px;
        width:200px;
        height:150px;
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
                     <asp:Label ID="Label1" runat="server" Text="首页"></asp:Label>
                </div>
                <div>
                    <asp:Button ID="Label2" runat="server" Text="职位管理" BackColor="White" BorderStyle="None"></asp:Button>
                </div>
                <div>
                    <asp:Button ID="Label3" runat="server" Text="简历管理" BackColor="White" BorderStyle="None" OnClick="Label3_Click"></asp:Button>
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Text="消息"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label5" runat="server" Text="招聘"></asp:Label>
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
        <div id="fabushixi">
            <asp:Label ID="Label12" runat="server" Text="招聘中0"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="暂停中0"></asp:Label>
            
            <asp:Button ID="Button1" runat="server" Text="发布兼职" BorderStyle="None" OnClick="Button1_Click" />
        </div>
       
        <div id="jilu">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Label ID="Label18" runat="server" Text="暂无记录"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
