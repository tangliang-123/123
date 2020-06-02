<%@ Control Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanlikongjian.ascx.cs" Inherits="zhiweiguanlikongjian" %>
<style type="text/css">
    .auto-style1 {
        width: 113px;
    }
    .auto-style2 {
        width: 149px;
    }
    .xiangxi{
        display:none;
    }
    .xiangxi2{
        color:darkgreen;
    }
    .xianshi{
        display:block;
    }
</style>
<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".xiangxi2").click(function () {
            $(".xiangxi").slideToggle(".xianshi");
        })
    })
</script>
<asp:Label ID="Label1" runat="server" Text="职位管理" ForeColor="#00ffff"></asp:Label>
<hr />
<asp:Label ID="Label2" runat="server" Text="职位名称" ForeColor="#00ffff"></asp:Label>
<table>
    <tr>
        <td>兼职名称:</td>
        <td class="auto-style1">
            <%-- 名称 --%>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td>工作时间:</td>
        <td class="auto-style2">
            <%-- 时间 --%>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>人数:</td>
        <td>
            <%-- 人数 --%>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>            
        </td>
        <td>薪水:</td>
        <td>
            <%-- 薪水 --%>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>地址:</td>
        <td colspan="3">
            <%-- 地址 --%>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<span class="xiangxi2">详细</span>
<%-- 
    <asp:BoundField DataField="J_name" HeaderText="职位名称" />
                    <asp:BoundField DataField="J_Category" HeaderText="工作性质" />
                    <asp:BoundField DataField="J_Portray" HeaderText="职位描述" />
                    <asp:BoundField DataField="J_Salary" HeaderText="薪资" />
                    <asp:BoundField DataField="Working_time" HeaderText="工作时间" />
                    <asp:BoundField DataField="Position" HeaderText="地址" />
                    <asp:BoundField DataField="Remarks" HeaderText="要求" />
                    <asp:BoundField DataField="Settlement" HeaderText="结算方式" />
                    <asp:BoundField DataField="Need_number" HeaderText="需求人数" />
                    <asp:BoundField DataField="J_state" HeaderText="审核状态" />
                    <asp:BoundField DataField="To_release_time" HeaderText="发布时间" />
                    <asp:CommandField ShowDeleteButton="True" />
    --%>
<div class="xiangxi">
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
</div>
