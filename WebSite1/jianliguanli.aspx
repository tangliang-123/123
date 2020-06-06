<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jianliguanli.aspx.cs" Inherits="jianliguanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
<style type="text/css">
    *{
        text-decoration:none;
    }
        body {
        
        background-color:#eff3f6;
        }
        #daohangtiao{
            
             margin-top:30px;
             margin-left:-7px;
             background-color:#fff;
             width:101%;
             height:50px;
             position:relative;


        }
        #daohang div {
        float:left;
        margin-left:100px;
        margin-top:10px;
        
        }
        #biaozhi {
        margin-left:90px;
        margin-top:12px;
        position:relative;
        position:absolute;
        }
        #daohang {
        margin-left:204px;
        margin-top:4px;
        position:absolute;
        }
        
        #touxiang {
        margin-left:1180px;
        margin-top:-30px;
        position:relative;
        
        }
        #Literal1 {
        margin-left:10px;
        margin-top:10px;

        }
        #Image2 {
        margin-left:-40px;
        margin-top:-4px;
        width:30px;
        height:30px;
        position:absolute;
        
        }
        #Image1 {
        margin-left:10px;
        margin-top:-3px;
        position:absolute;
        width:50px;
        height:50px;
        }
        #Label6 {
        margin-left:75px;
        margin-top:5px;
        position:absolute;
        }
        #Label7 {
        margin-left:75px;
        margin-top:22px;
        position:absolute;
        }
        #Label8 {
        font-size:20px;
        }
        #zhiweiguanli {
        position:absolute;
        width:13%;
        height:200px;
        left:85px;
        top:75px;
        background-color:#fff;
        
        }
        #Label9 {
        margin-left:65px;
        margin-top:30px;
        position:absolute;
        }
        #Label10 {
        margin-left:80px;
        margin-top:75px;
        position:absolute;
        }
        #Label11 {
        margin-left:80px;
        margin-top:115px;
        position:absolute;
        }
        #Label12 {
        left:345px;
        top:85px;
        position:absolute;
        color:black;
        }
        #Label13 {
        left:455px;
        top:85px;
        position:absolute;
        color:black;
        }
        #Label14 {
        left:565px;
        top:85px;
        position:absolute;
        color:black;
        }
        #Label15 {
        left:675px;
        top:85px;
        position:absolute;
        color:black;
        }

    #fabujianzhi {
        position: absolute;
        width: 70%;
        height: 45px;
        left: 345px;
        top: 130px;
        background-color: #00CCFF;
    }
    #Label17 {
        position: absolute;
        left: 45px;
        top: 12px;
    }
        #Button2 {
        right:20px;
        top:10px;
        position:absolute;
        color:white;
        border-color:white;
        }
        #jilu {
        position:absolute;
        width:70%;
        height:510px;
        left:345px;
        top:190px;
        background-color:#fff;
        
        }
        #Button1{
        position:absolute;
        left:520px;
        top:445px;
        color:white;
        background-color:mediumspringgreen;
            }
        #Image3 {
        position:absolute;
        left:450px;
        top:280px;
        width:200px;
        height:150px;
        }
        #Label16 {
        position:absolute;
        left:10px;
        top:10px;

        }
        #Label18 {
        position:absolute;
        left:325px;
        top:10px;
        }
        #Label19 {
        position:absolute;
        left:615px;
        top:10px;
        }
        #Label20 {
        position:absolute;
        left:10px;
        top:90px;
        }
        #Label21 {
        position:absolute;
        left:10px;
        top:105px;
        }
        #Button3{
        position:absolute;
        left:100px;
        top:90px;
        color:white;
        background-color:mediumspringgreen;
        width:60px;
            }
        #Button4{ 
        position:absolute;
        left:180px;
        top:90px;
        color:white;
        background-color:mediumspringgreen;
        width:70px;
            }
        #Button5{
        position:absolute;
        left:270px;
        top:90px;
        color:white;
        background-color:mediumspringgreen;
        width:70px;
            }
        #Button6{
        position:absolute;
        left:100px;
        top:160px;
        color:white;
        background-color:mediumspringgreen;
        width:100px;
            }
        #Button7{
        position:absolute;
        left:215px;
        top:160px;
        color:white;
        background-color:mediumspringgreen;
        width:100px;
            }
        #Button8{
        position:absolute;
        left:330px;
        top:160px;
        color:white;
        background-color:mediumspringgreen;
        width:120px;
            }
        #DropDownList1 {
        position:absolute;
        width:160px;
        left:88px;
        top:12px;
        }
        #DropDownList2 {
        position:absolute;
        width:160px;
        left:380px;
        top:12px;
        }
        #DropDownList3 {
        position:absolute;
        width:160px;
        left:715px;
        top:12px;
        }
        #CheckBox1 {
        position:absolute;
        left:10px;
        top:165px;
        }
        #TextBox1 {
        position:absolute;
        width:230px;
        right:60px;
        top:165px;
        }
    .auto-style1 {
        left: 520px;
        top: 445px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="daohangtiao">
            <div id="biaozhi">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/标志图.jpg" />
                <asp:Label ID="Label8" runat="server" Text="勤工助学"></asp:Label>
            </div>
            <div id="daohang">
                <div>
                     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/shouye.aspx">首页</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/zhiweiguanli.aspx">职位管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/jianliguanli.aspx">简历管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/message.aspx">消息</asp:LinkButton>
                </div>  
            </div>
            <div id="touxiang">
                <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/头像.png" />
                <asp:Label ID="Label6" runat="server" Text="18382908734(未实名)"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="未绑定公司"></asp:Label>
            </div>
        </div>
        <div id="zhiweiguanli">
            <asp:Label ID="Label9" runat="server" Text="职位管理"></asp:Label>
            <asp:Button ID="Label10" runat="server" Text="兼职" BackColor="White" BorderStyle="None" OnClick="Label10_Click"></asp:Button>
            <asp:Button ID="Label11" runat="server" Text="实习" BackColor="White" BorderStyle="None" OnClick="Label11_Click"></asp:Button>
        </div>
        <asp:Linkbutton ID="Label12" runat="server" Text="待录取0" PostBackUrl="~/jianliguanli.aspx"></asp:Linkbutton>
        <asp:Linkbutton ID="Label13" runat="server" Text="待结算0" PostBackUrl="~/jianliguanli_jesuan.aspx"></asp:Linkbutton>
        <asp:Linkbutton ID="Label14" runat="server" Text="已完成" PostBackUrl="~/jianliguanli_yiwancheng.aspx"></asp:Linkbutton>
        <asp:Linkbutton ID="Label15" runat="server" Text="待支付订单0" PostBackUrl="~/jianliguanli_zhifu.aspx"></asp:Linkbutton>
        <div id="fabujianzhi">
            <asp:Label ID="Label17" runat="server" Text="您还没有发布职位哦"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="发布兼职" BackColor="#00CCFF" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button2_Click" />
        </div>
        <div id="jilu">
            <asp:Label ID="Label16" runat="server" Text="全部岗位"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:Label ID="Label18" runat="server" Text="性别"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <asp:Label ID="Label19" runat="server" Text="排序方式"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
            <asp:Label ID="Label20" runat="server" Text="筛选条件"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="不限" />
            <asp:Button ID="Button4" runat="server" Text="有留言" />
            <asp:Button ID="Button5" runat="server" Text="有备注" />
            <asp:Label ID="Label21" runat="server" Text="可多选"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server"/>
            <asp:Button ID="Button6" runat="server" Text="批量录取" />
            <asp:Button ID="Button7" runat="server" Text="批量放弃" />
            <asp:Button ID="Button8" runat="server" Text="导出报名记录" />
            <asp:TextBox ID="TextBox1" runat="server" Text="请输入应聘者的姓名或手机号"></asp:TextBox>

            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Button ID="Button1" runat="server" Text="发布兼职" CssClass="auto-style1" OnClick="Button1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
