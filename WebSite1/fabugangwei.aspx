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
        height:700px;
        
        margin-left:185px;
        margin-top:30px;
        background-color:white;
        
        }
        
        #fabugangwei {
        width:74%;
        height:60px;
        background-color:#fafafa;
        position:absolute;
        text-align:center;
        line-height:60px;
        
        }
        #zhaopinxinxi{
        border:1px solid red;
        position:absolute;
        width:40%;
        margin-top:65px;
        padding: 30px 260px;
        
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
    #gongzuoneiron {
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
    width: 78%;
    vertical-align: bottom;
    font-size: 14px;
    margin-left: 130px;
    height: 264px;
    line-height: 40px;
    position: relative;
    
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
    position:absolute;
    margin-top:22px;
    }
    #jieshourenshu {
    margin-bottom:22px;
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
                     <asp:Label ID="Label1" runat="server" Text="首页"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="职位管理"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label3" runat="server" Text="简历管理"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Text="消息"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label5" runat="server" Text="招聘"></asp:Label>
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
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" Text="内容模板" />
                    </div>
                    <div id="jieshourenshu">

                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                    <div id="gonzuoxingzhi">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
                    </div>
                    <div id="xinzhibaochou">
                        <asp:Label ID="Label13" runat="server" Text="Label">薪资报酬</asp:Label>
                    </div>
                    <div id="jiebenxinzi">
                        <asp:Label ID="Label14" runat="server" Text="Label">基本薪资</asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server"></asp:RadioButtonList>
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server"></asp:RadioButtonList>
                    </div>
                    <div id="jiesuanfangshi">
                        <asp:Label ID="Label16" runat="server" Text="Label">结算方式</asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server"></asp:RadioButtonList>
                    </div>
                    <div id="tichengfuli">
                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div id="shijiandidian">
                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div id="renyuanyaoqiu">
                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div id="qitashizhi">
                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div id="shangyibu">
                    <asp:Button ID="Button1" runat="server" Text="上一步" />
                </div>
                <div id="fabujian">
                    <asp:Button ID="Button2" runat="server" Text="发布兼职" />
                </div>
                 




            
        
            
            </div>
        </div>
    </form>
</body>
</html>
