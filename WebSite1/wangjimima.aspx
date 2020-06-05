<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wangjimima.aspx.cs" Inherits="wangjimima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 56px;
        }
        .auto-style4 {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="layui-table layui-form" style="width: 249px; margin-right: 0">
                <tr>
                    <td class="auto-style1">用户名</td>
                    <td class="auto-style4"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">新密码</td>
                    <td class="auto-style4"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">确认密码</td>
                    <td class="auto-style4"> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="两次密码不一样" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                         <asp:Button ID="Button1" runat="server" Text="确认" class="layui-btn" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>                     
           
        </div>
    </form>
</body>
</html>
