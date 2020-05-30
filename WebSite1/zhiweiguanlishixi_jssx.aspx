<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanlishixi_jssx.aspx.cs" Inherits="zhiweiguanlishixi_jssx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
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
        top: -2px;
        left: 0px;
        }
        #fabushixi {
        position:absolute;
        left:345px;
        top:75px;
        border-bottom:1px solid #c7bcbc;
        background-color:#eff3f6;
        width:70%;
        height:50px;
        }
        #LinkButton6 {
        left:0px;
        top:20px;
        position:absolute;
        color:black;
        text-decoration:none;
        }
        #LinkButton7 {
        left:105px;
        top:20px;
        position:absolute;
        color:black;
        text-decoration:none;
        }

    #Button1 {
        right: 0px;
        top: 20px;
        position: absolute;
        color: white;
        background-color: #00CCFF;
        width: 90px;
        height: 30px;
    }

    #jilu {
        position: absolute;
        width: 70%;
        height: 555px;
        left: 345px;
        top: 140px;
        background-color: #fff;
    }
        #Label18{
        position:absolute;
        left:520px;
        top:330px;
            }
        #Image3 {
        position:absolute;
        left:450px;
        top:170px;
        width:200px;
        height:150px;
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
                <div>
                   <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/Lproblem.aspx">小任务</asp:LinkButton>
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
            <asp:Button ID="Label10" runat="server" Text="兼职" CssClass="auto-style1" BorderStyle="None" BackColor="White" OnClick="Label10_Click"></asp:Button>
            <asp:Button ID="Label11" runat="server" Text="实习" BackColor="White" BorderStyle="None" OnClick="Label11_Click" style="height: 17px" ></asp:Button>
        </div>
        <div id="fabushixi">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/zhiweiguanlishixi.aspx">在招实习</asp:LinkButton>
            <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/zhiweiguanlishixi_jssx.aspx">结束实习</asp:LinkButton>
            
            <asp:Button ID="Button1" runat="server" Text="发布兼职" BorderStyle="None" OnClick="Button1_Click"  />
        </div>
       
        <div id="jilu">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Label ID="Label18" runat="server" Text="暂无记录"></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
