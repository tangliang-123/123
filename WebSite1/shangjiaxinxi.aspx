<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangjiaxinxi.aspx.cs" Inherits="shangjiaxinxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Panel1 {
            margin-left:10%;
            margin-top:5%;

        }
        #Panel2 {
            margin-left:10%;
            margin-top:2%;
        }
        #Panel3 {
            margin-left:30%;
            margin-top:-28%;
        }

        #Label1 {
        margin-left:2%;
        }
         #Label2 {
        margin-left:5%;
        }
         #Label3 {
        margin-left:5%;
        }
         #Label4 {
        margin-left:5%;
        }
         #Label5 {
        margin-left:5%;
        }
         #Label6 {
        margin-left:10%;
        }
         #Label7 {
        margin-left:20%;
        }
         #Label8 {
        margin-left:10px auto;
        }
        #Label9 {
            margin-left: 20%;
        }
         #Label10{
            margin-left: 20%;
        }
        #Label11 {
        margin-left:20%;
        }
                #Label12 {
        margin-left:20%;
        }
                #Label13 {
        margin-left:20%;
        }
                #Label14 {
        margin-left:20%;
        }
                #Label15 {
        margin-left:20%;
        }
                #Label16 {
        margin-left:20%;
        }
                #Label17{
        margin-left:20%;
        }
                #Label18 {
        margin-left:20%;
        }
                #Label19{
        margin-left:20%;
        }
                #Label20 {
        margin-left:20%;
        }
                #Label21 {
        margin-left:20%;
        }
                #Label22 {
        margin-left:20%;

        }
                #Label23 {
        margin-left:20%;

        }
                #Label24 {
        margin-left:20%;

        }
                #Label25 {
        margin-left:20%;

        }
                #Label26{
        margin-left:20%;

        }


        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="勤工助学"></asp:Label><asp:Label ID="Label2" runat="server" Text="首页"></asp:Label><asp:Label ID="Label3" runat="server" Text="职位筛选"></asp:Label><asp:Label ID="Label4" runat="server" Text="简历管理"></asp:Label><asp:Label ID="Label5" runat="server" Text="账号管理"></asp:Label><asp:Label ID="Label6" runat="server" Text="消息"></asp:Label><asp:Label ID="Label7" runat="server" Text="个人信息"></asp:Label>
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="111px" Width="224px" BackColor="#F4F4F4">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="个人信息"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="301px" Width="226px" BackColor="#F4F4F4">
            &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="其他设置"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="修改密码"></asp:Label>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label11" runat="server" Text="修改手机号"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="微信通知"></asp:Label>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label13" runat="server" Text="邮件通知"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="299px" Width="709px" BackColor="#F4F4F4">
            <br />
            <br />
            <asp:Label ID="Label20" runat="server" Text="基本设置"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="头像"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="姓名"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="张三"></asp:Label><asp:Label ID="Label25" runat="server" Text="未认证"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="手机号"></asp:Label>&nbsp;&nbsp; <asp:Label ID="Label19" runat="server" Text="1554654574"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label21" runat="server" Text="工号"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:Label ID="Label22" runat="server" Text="365214"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label23" runat="server" Text="工作区域"></asp:Label>&nbsp; <asp:Label ID="Label24" runat="server" Text="未填写"></asp:Label><asp:Label ID="Label26" runat="server" Text="编辑"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
