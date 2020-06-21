<%@ Control Language="C#" AutoEventWireup="true" CodeFile="stu_syjz.ascx.cs" Inherits="stu_syjz" %>
<style>
    img{
        width:30px;
        height:30px;
    }
    td{
        width:400px;
    }
    .pp{
        width:480px;
        height:150px;
        border:1px solid lime;
    }
    table{
        margin-left:10px;
    }
    .layui-btn {
        font-size: 15px;
        height: 30px;
        line-height: 30px;
        padding: 0 10px;
        background:deepskyblue;
    }
</style>
<div class="pp">
    <p style="color:deepskyblue;">兼职名称</p>
    <table>
        <tr>
            <td><img src="../image/sj.jpg" /><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td >工资薪水:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="应聘兼职"  CssClass="layui-btn" BorderStyle="None"/></td>
        </tr>
        <tr>
            <td><img src="../image/dw.jpg" /><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>需求人数:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
</div>