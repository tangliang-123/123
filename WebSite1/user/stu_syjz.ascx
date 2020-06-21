<%@ Control Language="C#" AutoEventWireup="true" CodeFile="stu_syjz.ascx.cs" Inherits="stu_syjz" %>
<style>
    img{
        width:30px;
        height:30px;
    }
    td{
        width:800px;
    }
    .pp{
        width:700px;
        height:150px;
        border:1px solid lime;
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
        background:deepskyblue;
    }
</style>
<div class="pp">
    <p style="color:deepskyblue;">
        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#0099ff"></asp:Label></p>
    <table>
        <tr>
            <td>岗位ID:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td >工资薪水:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td >地址:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="应聘兼职"  CssClass="layui-btn" BorderStyle="None" OnClick="Button1_Click"/></td>
        </tr>
        <tr>
            <td>商家编号:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>需求人数:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>