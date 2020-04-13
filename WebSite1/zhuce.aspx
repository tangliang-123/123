<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Panel2 {
        margin-left:45%;
        }
        div {
        margin:100px auto;
        }
        body {
         background-image: url(image/denglu.png);
        }
        #TextBox1 {
        margin-left:30%;
        }
        #TextBox2 {
            margin-left: 30%;
        }
        #TextBox3 {
            margin-left: 30%;
        }
        #Button1 {
            margin-left: 35%;
        }
        #Label1 {
        margin-left:30%;
        }
        


    </style>
</head>
<body >
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    <div style="height: 361px; width: 512px">
    
        <asp:Panel ID="Panel2" runat="server" Height="320px" Width="404px" BackColor="#D7D7D7">
            <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ForeColor="#999966">手机号</asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ForeColor="#999966" >图片验证码</asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" ForeColor="#999966">验证码</asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="下一步" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="已有账号"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="立即登录" OnClick="Button2_Click" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
