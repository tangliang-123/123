﻿<%@ Page Title="" Language="C#" MasterPageFile="~/zhiweiguanlimubanye.master" %>

<script runat="server">

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div id="fabujianzhi">
            <asp:Label ID="Label17" runat="server" Text="你要通过实名认证才能发布兼职哦，快去认证吧"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="实名认证" BackColor="#00CCFF" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style2"  style="
        right:20px;
        top:10px;
        position:absolute;
        color:white;
        border-color:white;
        }"/>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
         #jilu2 {
        width:70%;
        height:555px;
        background-color:#fff;
       position:relative;
        }
         #ContentPlaceHolder1_Label18{
        position:absolute;
        left:520px;
        top:330px;
            }
          #ContentPlaceHolder1_Image3 {
        position:absolute;
        left:450px;
        top:170px;
        width:200px;
        height:150px;
        }
    </style>
    <div id="jilu2">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Label ID="Label18" runat="server" Text="暂无记录"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
        </div>
</asp:Content>

