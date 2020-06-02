<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugaigangweizhuangtai.aspx.cs" Inherits="xiugaigangweizhuangtai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="CheckBoxList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>暂停</asp:ListItem>
                <asp:ListItem>审核通过</asp:ListItem>
                <asp:ListItem>审核驳回</asp:ListItem>
                <asp:ListItem>已结束</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
