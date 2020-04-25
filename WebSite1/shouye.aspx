<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shouye.aspx.cs" Inherits="shouye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    
</script>
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
        #center {
        /*border:2px solid #ff0000;*/
        background-color:#fff;
        margin-left:80px;
        margin-top:20px;
        position:relative;
        height:150px;
        width:60%;
        }
        #p2 {
        margin-left:348px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        }
        #Image4 {
        margin-left:20px;
        margin-top:25px;
        position:absolute;
         width:50px;
        height:50px;
        }
        #Label14 {
        margin-left:100px;
        margin-top:26px;
        position:absolute;
        }
        #Label15 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #p1 {
        margin-left:75px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        } 
        #Image3 {
        margin-left:35px;
        margin-top:30px;
        position:absolute;
        }
        #Label12 {
        margin-left:90px;
        margin-top:25px;
        position:absolute;
        }
        #Label13 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #p3 {
        margin-left:622px;
        margin-top:22px;
        position:absolute;
        width:20%;
        height:100px;
        } 
        #Image5 {
        margin-left:15px;
        margin-top:25px;
        position:absolute;
        width:50px;
        height:50px;
        }
        #Label16 {
        margin-left:102px;
        margin-top:25px;
        position:absolute;
        }
        #Label17 {
        margin-left:75px;
        margin-top:45px;
        position:absolute;
        }
        #fabu {
        background-color:#fff;
        margin-left:80px;
        margin-top:55px;
        position:relative;
        height:450px;
        width:60%;
        }
        #Image6 {
        width:200px;
        height:150px;
        position:absolute;
        margin-left:350px;
        margin-top:150px;
        }
        #Button1 {
        position:absolute;
        margin-left:410px;
        margin-top:320px;
        }
        #Label9 {
        margin-left:82px;
        margin-top:20px;
        position:absolute;
        }
        #Label10 {
        margin-left:160px;
        margin-top:20px;
        position:absolute;
        }
        #zhiweifabu {
        position:absolute;
        right:180px;
        top:70px;
        width:20%;
        height:300px;
        background-color:#fff;
        }
        #Label11 {
        margin-left:120px;
        margin-top:20px;
        position:absolute;
        }
        #Button2 {
        position:absolute;
        margin-left:118px;
        margin-top:65px;
        }
        #Button3 {
        position:absolute;
        margin-left:118px;
        margin-top:115px;
        }
        #Button4 {
        position:absolute;
        margin-left:110px;
        margin-top:165px;
        }
        #shengyubaoming {
        position:absolute;
        right:180px;
        top:400px;
        width:20%;
        height:150px;
        background-color:#fff;
        
        }
        #Label18 {
        margin-left:120px;
        margin-top:30px;
        position:absolute;
        }
        #Label19 {
        margin-left:135px;
        margin-top:60px;
        position:absolute;
        }
        #Image7{
        margin-left:170px;
        margin-top:57px;
        position:absolute;
        width:30px;
        height:30px;
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
                     <asp:Button ID="Label1" runat="server" Text="首页"></asp:Button>
                </div>
                <div>
                    <asp:Button ID="Label2" runat="server" Text="职位管理" BackColor="White" BorderStyle="None" OnClick="Label2_Click"></asp:Button>
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
                <asp:ImageButton ID="Image1" runat="server"  ImageUrl="~/image/头像.png" OnClick="Image1_Click" />
                <asp:Label ID="Label6" runat="server" Text="18382908734(未实名)"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="未绑定公司"></asp:Label>
            </div>
        </div>
        <div id="center">
            <div id="p1"> 
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/新报名.png" />
                <asp:Label ID="Label12" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="新报名"></asp:Label>
            </div>
            <div id="p2">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/image/新报名2.png" />
                <asp:Label ID="Label14" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="在招职位"></asp:Label>
            </div>
            <div id="p3">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/image/消息.png" />
                <asp:Label ID="Label16" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="未读消息"></asp:Label>
            </div>
        </div>
       <asp:Label ID="Label9" runat="server" Text="新报名"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="在招兼职"></asp:Label>
        <div id="fabu">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/image/发布兼职.png" />
            <asp:Button ID="Button1" runat="server" Text="发布兼职" />
        </div>
         <div id="zhiweifabu">
             <asp:Label ID="Label11" runat="server" Text="职位发布"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="发布兼职" />
            <asp:Button ID="Button3" runat="server" Text="发布实习" />
            <asp:Button ID="Button4" runat="server" Text="发布小任务" />
        </div>
        <div id="shengyubaoming">
            
            <asp:Label ID="Label18" runat="server" Text="剩余报名单"></asp:Label>
            <asp:Label ID="Label19" runat="server" Text="0份"></asp:Label>
            <asp:Image ID="Image7" runat="server"  ImageUrl="#"/>
        </div>
    </div>
    </form>
</body>
</html>
