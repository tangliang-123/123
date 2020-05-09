<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fabugangwei.aspx.cs" Inherits="fabugangwei" %>

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
        #fabu2{
        width:75%;
       // height:7px;
        
        margin-left:185px;
        margin-top:30px;
        background-color:white;
        
        }
        
        #fabugangwei {
        width:75%;
        height:60px;
        background-color:#fafafa;
        position:absolute;
        text-align:center;
        line-height:60px;
        
        }
        #zhaopinxinxi{
        //border:1px solid red;
        position:absolute;
        width:45%;
        margin-top:60px;
        padding: 30px 230px;
        background-color:white;
        
        }
        #jibenxinxi {
        
        margin-bottom:22px;
        margin-top:30px;
        
        }
    #Label10 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }

    #gangweibiaoti {
    margin-bottom:22px;
    }
    #Label11 {
    color: #666;
    text-align: left;
    }
    #Label11:before {
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #TextBox1 {
    -webkit-appearance: none;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:60px;
    }
    #gonzuoneiron {
    margin-bottom:22px;

    }
    #Label12 {
    color: #666;
    text-align: left;
    
    }
    #Label12:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #TextBox2{
    position:absolute;
    display: inline-block;
    width: 75%;
    vertical-align: bottom;
    font-size: 14px;
    margin-left: 80px;
    height: 264px;
    line-height: 40px;
    position:relative;
    margin-top:-25px;
    margin-left:140px;
    border-radius: 4px;
    padding:0 15px;
    border-color:red;
    }
    #neiron {
    display: flex;
    justify-content: flex-end;
    margin-top: 16px;
    position:relative;
    }
    #Button3 {
    display: inline-block;
    line-height: 1;
    white-space: nowrap;
    cursor: pointer;
    background: #fff;
    border: 1px solid #e8e8e8;
    border-color: #e8e8e8;
    color: #606266;
    -webkit-appearance: none;
    text-align: center;
    box-sizing: border-box;
    outline: none;
    margin: 0;
    transition: .1s;
    font-weight: 500;
    -moz-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
    padding: 12px 20px;
    font-size: 14px;
    border-radius: 4px;
    right:260px;
    position:relative ;
    margin-top:0px;
    margin-right:-257px;
    }
    #jieshourenshu {
    margin-bottom:22px;
    }
    #Label1 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label1:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #TextBox3 {
   -webkit-appearance: none;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    //margin-left:30px;
    }
    #gonzuoxingzhi {
    margin-bottom:22px;
    }
    #Label2 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label2:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #DropDownList1 {
    
    
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #1ecdb9;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:32px;
    }

    #xinzhibaochou{
    margin-bottom:22px;
    }
    #Label13 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }
    #jiebenxinzi {
    margin-bottom:22px;
    }
    #Label14 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label14:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #Label15 {
    background-color: #f5f7fa;
    color: #909399;
    vertical-align: middle;
    display: table-cell;
    position: absolute;
    border: 1px solid #e8e8e8;
    border-radius: 4px;
    padding: 0 20px;
    width: 15px;
    white-space: nowrap;
    height:38px;
    line-height:38px;
    margin-left:280px;
    margin-top:-40px;
    text-align:center;
    }
    #TextBox4 {
    -webkit-appearance: none;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 140px;
    margin-left:32px;
    
    }
    #DropDownList2 {
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    //display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 140px;
    margin-left:58px;
    margin-top:-1px;
    position:absolute;
    }

    #jiesuanfangshi{
    margin-bottom:22px;
    }
    #Label16 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label16:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #DropDownList3 {
    
    
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #1ecdb9;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:32px;
    }
    #tichengfuli {
    margin-bottom:22px;
    }
    
    .p1 {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px dashed;
    border-top: 4px solid\9;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
    cursor: pointer;
    }
    #Label17 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }
    #xaila {
    
    margin-top:22px;
    height:111px;
    display:none;
    }
    #Label3 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #Label4 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #TextBox5 {
    -webkit-appearance: none;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:98px;
    margin-top:5px;
    }
    #DropDownList4 {
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #1ecdb9;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:98px;
    }
    #labe {
    margin-top:22px;
    }
    #shijiandidian {
    margin-bottom:22px;
    }
    #shijian {
    
    margin-top:22px;
    height:160px;
    display:none;
    }
    #Label5{
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label5:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #Label21 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label21:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #Label22 {
    color: #666;
    text-align: left;
    margin-right:28px;
    }
    #Label22:before{
    content: "*";
    color: #e6322d;
    margin-right: 4px;
    }
    #shij {
    margin-top:22px;
    }
    #DropDownList5 {
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #1ecdb9;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:32px;
    }
    #DropDownList6 {
    
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 140px;
    margin-left:32px;
    }
    #DropDownList7 {
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    //display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 140px;
    margin-left:58px;
    margin-top:-1px;
    position:absolute;
    }
    #Label23 {
    
    color: #0b0b0b;
    vertical-align: middle;
    display: table-cell;
    position: absolute;
    
    border-radius: 4px;
    padding: 0 20px;
    width: 15px;
    white-space: nowrap;
    height:38px;
    line-height:38px;
    margin-left:280px;
    margin-top:-40px;
    text-align:center;
    }
    #TextBox6 {
    -webkit-appearance: none;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 543px;
    margin-left:32px;
    }
    .p2 {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px dashed;
    border-top: 4px solid\9;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
    cursor: pointer;
    }
    #Label18 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }
    #renyuanyaoqiu {
    margin-bottom:22px;
    }
    #yaoqiu {
    margin-top:22px;
    height:222px;
    display:none;
    }
    #yao {
    margin-top:22px;
    }
    #Label24 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #Label25 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #Label26 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #Label27 {
    vertical-align: middle;
    float: left;
    font-size: 14px;
    color: #606266;
    line-height: 40px;
    padding: 0 12px 0 0;
    box-sizing: border-box;
    }
    #DropDownList8 {
     
    

     background-color: #fff;
    background-image: none;
    border-radius: 4px;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
    color: #606266;
    //display: inline-block;
    font-size: inherit;
    height: 40px;
    line-height: 40px;
    outline: none;
    padding: 0 15px;
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 300px;
    margin-left:32px;
    
    }
    #RadioButtonList1 {
    line-height: 40px;
    position: relative;
    font-size: 14px;
        top: 0px;
        left: 0px;
        height: 22px;
    }
    #RadioButtonList2 {
    line-height: 40px;
    position: relative;
    font-size: 14px;
        top: 0px;
        left: 0px;
        height: 22px;
    }
    #RadioButtonList3 {
   line-height: 40px;
    position: relative;
    font-size: 14px;
        top: 0px;
        left: 0px;
        height: 22px;
    }

    .p3 {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px dashed;
    border-top: 4px solid\9;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
    cursor: pointer;
    }
    #Label19 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }
    #qitashizhi {
    margin-bottom:22px;
    }
    .p4 {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px dashed;
    border-top: 4px solid\9;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
    cursor: pointer;
    }
    #Label20 {
    
    height: 24px;
    line-height: 24px;
    border-left: 4px solid #1ecdb9;
    padding: 0;
    padding-left: 8px;
    color: #354052;
    }
    #shangyibu {
    margin-bottom:300px;
    position:relative;
    }
    #Button1 {
     width: 160px;
    line-height: 1;
    padding: 12px 20px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    font-size: 16px;
    background-color: #fff;
    border: 1px solid #dfe3e9;
    border-radius: 4px;
    color: #3c4858;
    vertical-align: middle;
     position:absolute;
    left:160px;
    top:75px;
    }
    
    #Button2 {
    margin: 0 16px;
    background-color: #1ecdb9;
    color: #fff;
    border: 1px solid #31dccd;
    width: 160px;
    line-height: 1;
    padding: 12px 20px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    font-size: 16px;
    position:absolute;
    left:320px;
    top:75px;
   
    border-radius: 4px;
    
    vertical-align: middle;
    }
    .action  {
				display: block;
			}
        .auto-style1 {
        right: 162px;
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
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/xiaoxi.aspx">消息</asp:LinkButton>
                </div>
                <div>
                   <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/zhaopin.aspx">招聘</asp:LinkButton>
                </div>   
            </div>
            <div id="touxiang">
                <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/头像.png" />
                <asp:Label ID="Label6" runat="server" Text="18382908734(未实名)"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="未绑定公司"></asp:Label>
            </div>
            </div>
            <div id="fabu2">
                <div id="fabugangwei">
                    <asp:Label ID="Label9" runat="server" Text="Label">发布岗位</asp:Label>
                </div>
                <div id="zhaopinxinxi">
                    <div id="jibenxinxi">
                        <asp:Label ID="Label10" runat="server" Text="基本信息"></asp:Label>
                    </div>
                    <div id="gangweibiaoti">
                        <asp:Label ID="Label11" runat="server" Text="Label">岗位标题</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div id="gonzuoneiron">
                        <asp:Label ID="Label12" runat="server" Text="Label">工作内容</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <div id="neiron">
                            <asp:Button ID="Button3" runat="server" Text="内容模板" />
                        </div>
                        
                    </div>
                    <div id="jieshourenshu">
                        <asp:Label ID="Label1" runat="server" Text="Label">接受报名人数</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                    <div id="gonzuoxingzhi">
                        <asp:Label ID="Label2" runat="server" Text="Label">工作性质</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>兼职</asp:ListItem>
                            <asp:ListItem>全职</asp:ListItem>
                            <asp:ListItem>兼职+全职</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="xinzhibaochou">
                        <asp:Label ID="Label13" runat="server" Text="Label">薪资报酬</asp:Label>
                    </div>
                    <div id="jiebenxinzi">
                        <asp:Label ID="Label14" runat="server" Text="Label">基本薪资</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:Label ID="Label15" runat="server" Text="Label">元</asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="auto-style1">
                            <asp:ListItem>小时</asp:ListItem>
                            <asp:ListItem>天</asp:ListItem>
                            <asp:ListItem>周</asp:ListItem>
                            <asp:ListItem>月</asp:ListItem>
                            <asp:ListItem>次</asp:ListItem>
                            <asp:ListItem>其他</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="jiesuanfangshi">
                        <asp:Label ID="Label16" runat="server" Text="Label">结算方式</asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                            <asp:ListItem>日结</asp:ListItem>
                            <asp:ListItem>周结</asp:ListItem>
                            <asp:ListItem>月结</asp:ListItem>
                            <asp:ListItem>完工结</asp:ListItem>
                            <asp:ListItem>其他方式</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div id="tichengfuli">
                        <asp:Label ID="Label17" runat="server" Text="Label">提成福利</asp:Label>
                        <span class="p1"></span>
                        <div id="xaila">
                            <asp:Label ID="Label3" runat="server" Text="Label">
                                提成
                            </asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                           <div id="labe">
                                <asp:Label ID="Label4" runat="server" Text="Label">
                                    福利
                                </asp:Label> <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                           </div>
                            
                        </div>

                    </div>
                    <div id="shijiandidian">
                        <asp:Label ID="Label18" runat="server" Text="Label">时间地点</asp:Label>
                        <span class="p2"></span>
                        <div id="shijian">
                            <div id="shij">
                                <asp:Label ID="Label5" runat="server" Text="Label">工作日期</asp:Label>
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                                    <asp:ListItem>周一</asp:ListItem>
                                    <asp:ListItem>周二</asp:ListItem>
                                    <asp:ListItem>周三</asp:ListItem>
                                    <asp:ListItem>周四</asp:ListItem>
                                    <asp:ListItem>周五</asp:ListItem>
                                    <asp:ListItem>周六</asp:ListItem>
                                    <asp:ListItem>周天</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div id="shij">
                                <asp:Label ID="Label21" runat="server" Text="Label">工作时间</asp:Label>
                                <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True"></asp:DropDownList>
                                <asp:Label ID="Label23" runat="server" Text="Label">~</asp:Label>
                                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div id="shij">
                                <asp:Label ID="Label22" runat="server" Text="Label">工作地点</asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div id="renyuanyaoqiu">
                        <asp:Label ID="Label19" runat="server" Text="Label">人员要求</asp:Label>
                        <span class="p3"></span>
                        <div id="yaoqiu">
                            <div id="yao">
                                <asp:Label ID="Label24" runat="server" Text="Label">健康证</asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>需要</asp:ListItem>
                                    <asp:ListItem>无要求</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div id="yao">
                                <asp:Label ID="Label25" runat="server" Text="Label">性别要求</asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>无要求</asp:ListItem>
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div id="yao">
                                <asp:Label ID="Label26" runat="server" Text="Label">学历要求</asp:Label>
                                <asp:DropDownList ID="DropDownList8" runat="server"></asp:DropDownList>
                            </div>
                            <div id="yao">
                                <asp:Label ID="Label27" runat="server" Text="Label">身高要求</asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>不需要</asp:ListItem>
                                    <asp:ListItem>需要</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <div id="qitashizhi">
                        <asp:Label ID="Label20" runat="server" Text="Label">其他设置</asp:Label>
                        <span class="p4"></span>
                    </div>
                    <div id="shangyibu">
                        <asp:Button ID="Button1" runat="server" Text="上一步" />
                        <asp:Button ID="Button2" runat="server" Text="发布兼职" OnClick="Button2_Click" />
                    </div>
                    
                </div>
                
                 




            
        
            
            </div>
        </div>
    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
		<script>
            $(function () {
                
                $(".p1").click(function() {
                    $("#xaila").slideToggle("action");
				});
            })
            $(function () {

                $(".p2").click(function () {
                    $("#shijian").slideToggle("action");
                });
            })

            $(function () {

                $(".p3").click(function () {
                    $("#yaoqiu").slideToggle("action");
                });
            })
        </script>
</body>
</html>
