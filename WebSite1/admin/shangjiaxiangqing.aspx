<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangjiaxiangqing.aspx.cs" Inherits="admin_shangjiaxiangqing" %>

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
                    <td style="color:blue">账号:</td>
                    <td>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">密码:</td>
                    <td>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">身份证号:</td>
                    <td>
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">实名:</td>
                    <td>
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">安全等级:</td>
                    <td>
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">姓名:</td>
                    <td>
                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">地址:</td>
                    <td>
                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">职称:</td>
                    <td>
                        <asp:Literal ID="Literal8" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">性别:</td>
                    <td>
                        <asp:Literal ID="Literal9" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">民族:</td>
                    <td>
                        <asp:Literal ID="Literal10" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">电话号码:</td>
                    <td>
                        <asp:Literal ID="Literal11" runat="server"></asp:Literal>
                    </td>
                </tr>
             </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="关闭" BackColor="#99FFCC" BorderColor="#99CCFF" BorderStyle="Inset" Font-Names="Baskerville Old Face" Height="27px" Width="94px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
