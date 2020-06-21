<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugaixinxi.aspx.cs" Inherits="student_xiugaixinxi" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/xadmin.css" rel="stylesheet" />
    <style>
        table{
           border:0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size:20px;color:darkcyan;">修改个人信息</p>
            <table class="layui-table" border="0">
                <tr>
                    <td>账号：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>姓名：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>电话号码</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>居住宿舍：</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                            <asp:Button ID="Button1" runat="server" Text="确认" class="layui-btn" OnClick="Button1_Click"/>                        
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
