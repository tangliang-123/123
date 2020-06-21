<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_gerenxinxi.aspx.cs" Inherits="student_stu_gerenxinxi" %>

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
            <p style="font-size:25px;color:aqua;">个人信息</p>
            <table class="layui-table" border="0">
                <tr>
                    <td>账号：</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>姓名：</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>电话号码</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>居住宿舍：</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                </tr>                
                <tr>
                    <td colspan="2" style="text-align:center;">
                            <asp:Button ID="Button1" runat="server" Text="修改信息" class="layui-btn" OnClick="Button1_Click"/>                        
                    </td>
                </tr>
            </table>
        </div>
        
    </form>
</body>
</html>