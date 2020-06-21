<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugaimima.aspx.cs" Inherits="admin_xiugaimima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label">原密码</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label">新密码</asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label">确认密码</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
                    </td>
                    
                </tr>
            </table>
           
            
           
        </div>
    </form>
</body>
</html>
