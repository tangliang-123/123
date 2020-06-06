<%@ Control Language="C#" AutoEventWireup="true" CodeFile="jianli.ascx.cs" Inherits="user_WebUserControl" %>
<style type="text/css">
    .auto-style11 {
        position: relative;
        left: 40px;
        top: 10px;
        width: 1000px;
        height: 150px;
        z-index:99;
        margin-bottom:10px;
        background-color:aquamarine
        
    }
    .auto-style2 {
        position: absolute; 
        left: 30px;
        top: -50px;
        height: 30px;
        cursor: pointer;
        border-style:none;
        background-color:aquamarine
    }
    .auto-style3 {
        position: absolute;
        cursor: pointer;
        left: 30px;
        top: -420px;
        height: 30px;
         border-style:none;
        background-color:aquamarine
    }
    .auto-style4 {
        position: absolute;
        left: -5px;
        top: -75px;
        background-color:aquamarine
        
    }
    .auto-style5 {
        position: absolute;
        left: -179px;
        top: -40px;
        height: 93px;
        width: 435px;
        
        background-color:aquamarine
    }
    .auto-style6 {
        position: absolute;
        left: 200px;
        top: 20px;
        height: 22px;
        background-color:aquamarine
    }
    .auto-style7 {
        position:absolute;
        left:20px;
        top:60px;
       
    }
    .auto-style12 {
        position: relative;
        left: 40px;
        top: -150px;
        width: 1000px;
        height: 300px;
        margin-bottom:10px;
        z-index:999;
        background-color:aquamarine
    }
    .auto-style8 {
        position:absolute;
        left:40%;
        top:50px;
       
    }
    .auto-style9 {
        position:absolute;
        left:40%;
        top:100px;
       
    }
    .auto-style10 {
        position:absolute;
        left:40%;
        top:150px;
       
    }
    .auto-style14 {
        position:absolute;
        left:40%;
        top:200px;
       
    }
    .auto-style15 {
        position:absolute;
        left:50%;
        top:250px;
        cursor: pointer;
        border-style:none;
        background-color:aquamarine
       
    }
    .auto-style16 {
        position:absolute;
        left:55%;
        top:50px;
       
    }
    .auto-style17 {
        position:absolute;
        left:55%;
        top:100px;
       
    }
    .auto-style18 {
        position:absolute;
        left:55%;
        top:150px;
       
    }
    .auto-style19 {
        position:absolute;
        left:55%;
        top:200px;
       
    }
    .auto-style13 {
        position: relative;
        left: 40px;
        top: -150px;
        width: 1000px;
        height: 480px;
        margin-bottom:10px;
        z-index:999;
        background-color:aquamarine;
        
    }
    .auto-style20 {
        position:absolute;
        left:10%;
        top:50px;
       
    }
    .auto-style22 {
        position:absolute;
        left:10%;
        top:150px;
       
    }
    .auto-style23 {
        position:absolute;
        left:10%;
        top:250px;
       
    }
    .auto-style24 {
        position:absolute;
        left:10%;
        top:350px;
       
    }
    .auto-style25 {
        position:absolute;
        left:60%;
        top:50px;
       
    }
    .auto-style26 {
        position:absolute;
        left:60%;
        top:150px;
       
    }
    .auto-style27 {
        position:absolute;
        left:60%;
        top:250px;
       
    }
    .auto-style28 {
        position:absolute;
        left:60%;
        top:350px;
       
    }
    .auto-style29 {
        position:absolute;
        left:48%;
        top:400px;
        cursor: pointer;
        border-style:none;
        background-color:aquamarine
       
    }
    .auto-style30 {
        position:absolute;
        left:25%;
        top:50px;
       
    }
    .auto-style32 {
        position:absolute;
        left:25%;
        top:150px;
       
    }
    .auto-style33 {
        position:absolute;
        left:25%;
        top:250px;
       
    }
    .auto-style34 {
        position:absolute;
        left:25%;
        top:350px;
       
    }
    .auto-style35 {
        position:absolute;
        left:75%;
        top:50px;
       
    }
    .auto-style36 {
        position:absolute;
        left:75%;
        top:150px;
       
    }
    .auto-style37 {
        position:absolute;
        left:75%;
        top:250px;
       
    }
    .auto-style38 {
        position:absolute;
        left:75%;
        top:350px;
       
    }
</style>
<div id="jianli" style="background-color:aquamarine;border-radius:4px;" class="auto-style11">
    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style7" AutoPostBack="True" />
    <asp:Button ID="Button1" runat="server" Text="学号" Style="margin-left:8%; margin-top:8%; background-color:aquamarine" OnClick="Button1_Click" Width="100px" CssClass="auto-style2"/>
    <asp:Button ID="Button2" runat="server" Text="岗位编号" Style="margin-left:8%; margin-top:50%; " OnClick="Button2_Click" Width="100px" CssClass="auto-style3"/>
    <asp:Label ID="Label1" runat="server" Text="简历信息" Style="margin-left:50%;margin-top:8%;" CssClass="auto-style4"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="信息" Style="margin-left:50%;margin-top:8%;" CssClass="auto-style5"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="申请时间" Style="margin-left:50%;margin-top:8%" CssClass="auto-style6"></asp:Label>


</div>
<div id="xs" runat="server" style="display:none;background-color:aquamarine;border-radius:4px;" class="auto-style12">
    <asp:Label ID="Label4" runat="server" Text="学号" CssClass="auto-style8"></asp:Label>
    <asp:Label ID="Label5" runat="server" Text="姓名" CssClass="auto-style9"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="是否实名" CssClass="auto-style10"></asp:Label>
    <asp:Label ID="Label7" runat="server" Text="电话号码" CssClass="auto-style14"></asp:Label>
    <asp:Label ID="Label17" runat="server" Text="Label" CssClass="auto-style16"></asp:Label>
    <asp:Label ID="Label18" runat="server" Text="Label" CssClass="auto-style17"></asp:Label>
    <asp:Label ID="Label19" runat="server" Text="Label" CssClass="auto-style18"></asp:Label>
    <asp:Label ID="Label20" runat="server" Text="Label" CssClass="auto-style19"></asp:Label>
    <asp:Button ID="Button3" runat="server" Text="关闭"  CssClass="auto-style15" OnClick="Button3_Click"/>
</div>
<div id="gw" runat="server" style="display:none;border-radius:4px;" class="auto-style13">
    <asp:Label ID="Label8" runat="server" Text="岗位名称" class="auto-style20"></asp:Label>
    <asp:Label ID="Label10" runat="server" Text="岗位描述" class="auto-style22"></asp:Label>
    <asp:Label ID="Label11" runat="server" Text="工资" class="auto-style23"></asp:Label>
    <asp:Label ID="Label12" runat="server" Text="工作时间" class="auto-style24"></asp:Label>
    <asp:Label ID="Label13" runat="server" Text="工作地址" class="auto-style25"></asp:Label>
    <asp:Label ID="Label14" runat="server" Text="要求" class="auto-style26"></asp:Label>
    <asp:Label ID="Label15" runat="server" Text="结算方式" class="auto-style27"></asp:Label>
    <asp:Label ID="Label16" runat="server" Text="发布时间" class="auto-style28"></asp:Label>
    <asp:Button ID="Button4" runat="server" Text="关闭" class="auto-style29" OnClick="Button4_Click"/>
    <asp:Label ID="Label21" runat="server" Text="Label" class="auto-style30"></asp:Label>
    <asp:Label ID="Label23" runat="server" Text="Label" class="auto-style32"></asp:Label>
    <asp:Label ID="Label24" runat="server" Text="Label" class="auto-style33"></asp:Label>
    <asp:Label ID="Label25" runat="server" Text="Label" class="auto-style34"></asp:Label>
    <asp:Label ID="Label26" runat="server" Text="Label" class="auto-style35"></asp:Label>
    <asp:Label ID="Label27" runat="server" Text="Label" class="auto-style36"></asp:Label>
    <asp:Label ID="Label28" runat="server" Text="Label" class="auto-style37"></asp:Label>
    <asp:Label ID="Label29" runat="server" Text="Label" class="auto-style38"></asp:Label>
</div>