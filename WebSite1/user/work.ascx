<%@ Control Language="C#" AutoEventWireup="true" CodeFile="work.ascx.cs" Inherits="user_work" %>
<style>
    img{
        width:30px;
        height:30px;
    }
    td{
        width:150px;
    }
    .pp{
        width:480px;
        height:100px;
        border:1px solid lime;
    }
    table{
        margin-left:10px;
    }
</style>
<link href="../css/xadmin.css" rel="stylesheet" />
<div class="pp">
    兼职名称
    <br />
    <br />
    <table>
        <tr>
            <td><img src="../image/sj.jpg" /><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td >工资薪水:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><img src="../image/dw.jpg" /><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>需求人数:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
</div>