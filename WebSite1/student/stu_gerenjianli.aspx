<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_gerenjianli.aspx.cs" Inherits="student_stu_gerenjianli" %>

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
            <p style="font-size:25px;color:aqua;">个人简历</p>
            <table class="layui-table" border="0">
                <tr>
                    <td>姓名：</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>电话号码：</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>学生住址：</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>民族：</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>政治面貌：</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>专业：</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>个人描述：</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                            <asp:Button ID="Button1" runat="server" Text="修改简历" class="layui-btn"/>                        
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
