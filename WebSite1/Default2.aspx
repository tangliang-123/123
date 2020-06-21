<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="color:blue">名称:</td>
                    <td>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">工作性质:</td>
                    <td>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">职位描述:</td>
                    <td>
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">薪资:</td>
                    <td>
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">工作时间:</td>
                    <td>
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">地址:</td>
                    <td>
                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">要求:</td>
                    <td>
                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">结算方式:</td>
                    <td>
                        <asp:Literal ID="Literal8" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">需求人数:</td>
                    <td>
                        <asp:Literal ID="Literal9" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">审核状态:</td>
                    <td>
                        <asp:Literal ID="Literal10" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="color:blue">发布时间:</td>
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
