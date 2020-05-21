<%@ Page Title="" Language="C#" MasterPageFile="~/zhiweiguanlimubanye.master" %>

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
         
        #jilu {
        position:absolute;
        width:70%;
        height:180px;
        left:345px;
        top:190px;
        background-color:#fff;
        }
        #ContentPlaceHolder1_Label1{
            margin:10px 20px 15px;
            display:block;
        }
         #ContentPlaceHolder1_Label2{
             width:60px;
             height:30px;
             text-align:center;
             line-height:30px;
            margin:10px 20px 15px;
            display:inline-block;
        }
         #ContentPlaceHolder1_Label3{
             width:80px;
             height:30px;
             text-align:center;
             line-height:30px;
            display:inline-block;
            
        }
         #c_right{
             float:right;
             position:absolute;
             top:20px;
             right:20px;
         }

          #ContentPlaceHolder1_Label4{
            position:absolute;
           right:210px;
            display:inline-block;
            text-align:center;
            font-size:22px;
        }
          #ContentPlaceHolder1_Label5{
            position:absolute;
           right:110px;
            display:inline-block;
             text-align:center;
             font-size:22px;
        }
          #ContentPlaceHolder1_Label8{
               width:50px;
           position:absolute;
           right:90px;
            display:inline-block;
             text-align:center;
        }
          #ContentPlaceHolder1_Label6{
            position:absolute;
           right:20px;
            display:inline-block;
            font-size:22px;
        }
        #ContentPlaceHolder1_Label9 {
             width:50px;
   
            display: inline-block;
            text-align: center;
        }
        #ContentPlaceHolder1_Label7 {
            width: 50px;
            position: absolute;
            right: 190px;
            display: inline-block;
            text-align: center;
        }
        .foot{
            position:absolute;
            right:30px;
        }
        .gengduo{
            list-style-type:none;
            color:black;
        }
    </style>
    <div>
        <div class="c_left">
            <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
            <br />

            <asp:Label ID="Label2" runat="server" Text="已结束" BackColor="LightGray"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="会员岗位" BackColor="#FFFFC6" ForeColor="#F7D04F"></asp:Label>
        </div>
        <div id="c_right">

            <asp:Label ID="Label4" runat="server" Text="0" ></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="0" ></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="0" ></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="访客" ></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="报名" ></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="录取" ></asp:Label>
        </div>
        <hr />
        <div class="foot">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="gengduo" >更多</asp:LinkButton>
            <asp:Button ID="Button1" runat="server" Text="实名认证" />
        </div>
    </div>
</asp:Content>

