<%@ Control Language="C#" AutoEventWireup="true" CodeFile="xzjz.ascx.cs" Inherits="xzjz" %>
<style>
    img{
        width:30px;
        height:30px;
    }
    td{
        width:150px;
    }
    .pp{
        width:680px;
        height:150px;
        border:1px solid lime;
        border-radius:10px;
        margin:10px auto;

    }
    table{
        margin-left:10px;
    }
    .layui-btn {
        font-size: 15px;
        height: 30px;
        line-height: 30px;
        padding: 0 10px;
        background:#00ff21
    }
    .auto-style1 {
        width: 206px;
    }
</style>
<link href="../css/theme3693.min.css" rel="stylesheet" />
<div class="pp">
    <br />
    <asp:Label ID="Label6" runat="server" Text="Label" Font-Size="20px" ForeColor="#66ccff"></asp:Label>
    <br />
    <br />
    <table>
        <tr>
            <td class="auto-style1">
                商家编号:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <img src="../image/dw.jpg" /><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label" Font-Size="15px" ForeColor="#66ccff"></asp:Label>
                <br />
                已报名
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label" Font-Size="15px" ForeColor="#66ccff"></asp:Label>
                <br />
                已录取
            </td>
            <td >
                工资薪水:<asp:Label ID="Label2" runat="server" Text="Label" Font-Size="15px" ForeColor="#66ccff"></asp:Label>
                <br />
                需求人数:<asp:Label ID="Label5" runat="server" Text="Label" Font-Size="15px" ForeColor="#66ccff"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="应聘兼职" CssClass="layui-btn" BorderStyle="None" ForeColor="#CCFFFF" OnClick="Button1_Click" /></td>
        </tr>
    </table>
</div>