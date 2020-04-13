<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dengluzuce.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

body { background-image: url(image/denglu.png);

}
#Panel1 {
    margin:100px auto ;

        }
        #Button1 {
        margin-left:20%;
        }
        #Button2 {
        margin-left:20%;
        }
        #TextBox1 {
        margin-left:25%;
        }
        #TextBox2 {
        margin-left:25%;
        }
        #Button3 {
        margin-left:35%;
        }
        #Label1 {
        margin-left:30%;
        }
        



      

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="316px" Width="380px" BackColor="#CACACA">
            <br />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="密码登陆" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="验证码登陆" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="登陆" BackColor="Aqua" ForeColor="White"  OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="没有账号？"></asp:Label>
            <asp:Button ID="Button4" runat="server" Text="立即注册" BorderWidth="0px" OnClick="Button4_Click" />
        </asp:Panel>

    
    </div>
    </form>
    <p>
    </p>
</body>
</html>
