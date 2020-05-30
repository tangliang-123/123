<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanli.aspx.cs" Inherits="zhiweiguanli" %>

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
        #Label12{
            left: 395px;
            top: 85px;
            position: absolute;
        }
        #LinkButton6{
            left: 345px;
            top: 85px;
            position: absolute;
        }
    #LinkButton7 {
        left: 455px;
        top: 85px;
        position: absolute;
    }

    #Label13 {
        left: 510px;
        top: 85px;
        position: absolute;
    }

    #LinkButton8 {
        left: 565px;
        top: 85px;
        position: absolute;
    }

    #Label14 {
        left: 625px;
        top: 85px;
        position: absolute;
    }

    #LinkButton9 {
        left: 675px;
        top: 85px;
        position: absolute;
    }

    #Label15 {
        left: 735px;
        top: 85px;
        position: absolute;
    }

    #LinkButton10 {
        left: 785px;
        top: 85px;
        position: absolute;
    }

    #Label16 {
        left: 855px;
        top: 85px;
        position: absolute;
    }

    #TextBox1 {
        right: 300px;
        top: 85px;
        position: absolute;
    }

    #Button1 {
        right: 110px;
        top: 85px;
        position: absolute;
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
        position:absolute;
        left:45px;
        top:12px;
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


    .auto-style1 {
        left: 0px;
        top: -2px;
        bottom: 104px;
    }


    .auto-style2 {
        right: 20px;
        top: 10px;
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
            <asp:Button ID="Label11" runat="server" Text="实习" BackColor="White" BorderStyle="None" OnClick="Label11_Click"></asp:Button>
        </div>
        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/zhiweiguanli.aspx">招聘中</asp:LinkButton><asp:Label ID="Label12" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/zhiweiguanli_zt.aspx">暂停中</asp:LinkButton><asp:Label ID="Label13" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/zhiweiguanli_end.aspx">已结束</asp:LinkButton><asp:Label ID="Label14" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="~/zhiweiguangli_shz.aspx">审核中</asp:LinkButton><asp:Label ID="Label15" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="~/zhiweiguanli_shbh.aspx">审核驳回</asp:LinkButton><asp:Label ID="Label16" runat="server" Text="0"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Text="请输入兼职名称"></asp:TextBox>
        <div id="fabujianzhi">
            <asp:Label ID="Label17" runat="server" Text="首次发布职位即可获得6份报名单"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="发布兼职" BackColor="#00CCFF" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style2" OnClick="Button2_Click" />
        </div>
        <div id="jilu">
            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" />
                <asp:Label ID="Label18" runat="server" Text="暂无记录"></asp:Label>
            </asp:Panel>
            <asp:SqlDataSource ID="constr" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [ID], [J_name], [J_Category], [J_Portray], [J_Salary], [Working_time], [Position], [Remarks], [Settlement], [Need_number], [J_state], [To_release_time] FROM [JobDetail]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowDeleting="GridView1_RowDeleting" Width="1037px">
                <Columns>
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
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
