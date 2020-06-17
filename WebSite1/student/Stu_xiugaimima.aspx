<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stu_xiugaimima.aspx.cs" Inherits="student_Stu_xiugaimima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/xadmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size:25px;color:aqua;">修改密码</p>
            <table class="layui-table" border="0">
                <tr>
                    <td>原始密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>新密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                            <asp:Button ID="Button1" runat="server" Text="修改密码" class="layui-btn layui-btn-danger"/>                        
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
