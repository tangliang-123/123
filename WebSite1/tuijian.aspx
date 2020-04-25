<%@ Page Title="" Language="C#" MasterPageFile="~/fabugangwei.master" AutoEventWireup="true" CodeFile="tuijian.aspx.cs" Inherits="tuijian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        #zhiwei {
        border:1px solid #ff0000;
        width:545px;
        height:520px;
        background-color:#fafafa;
        position:absolute;
        left:534px;
        top:165px;
        z-index:0;
        
        }
       

    </style>
    
    <div id="zhiwei">
        <asp:Label ID="Label1" runat="server" Text="发布过"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="热门岗位"></asp:Label>
        <asp:Button ID="Button" runat="server" Text="派单/拉访" />
        <asp:Button ID="Button21" runat="server" Text="校园代理" />
        <asp:Button ID="Button31" runat="server" Text="服务生" />
        <asp:Button ID="Button41" runat="server" Text="外卖配送" />
        <asp:Button ID="Button51" runat="server" Text="见习经理" />
        <asp:Button ID="Button61" runat="server" Text="店员/收银员" Height="43px" Width="133px"  />
        <asp:Button ID="Button71" runat="server" Text="导购" />
        <asp:Button ID="Button81" runat="server" Text="行政/文员" />
        <asp:Button ID="Button91" runat="server" Text="线上推广" />
        <asp:Button ID="Button111" runat="server" Text="扫码推广" />
    </div>
</asp:Content>

