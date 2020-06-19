<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugaijianli.aspx.cs" Inherits="student_xiugaijianli" %>

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
            <p style="font-size:20px;color:darkgreen;">修改个人简历</p>
            <table class="layui-table" border="0">
                <tr>
                    <td>姓名：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>电话号码：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>学生住址：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>民族：</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>政治面貌：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>群众</asp:ListItem>
                            <asp:ListItem>团员</asp:ListItem>
                            <asp:ListItem>预备党员</asp:ListItem>
                            <asp:ListItem>党员</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>专业：</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>个人描述：</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Height="43px" MaxLength="500" TextMode="MultiLine" Width="186px"></asp:TextBox></td>
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
