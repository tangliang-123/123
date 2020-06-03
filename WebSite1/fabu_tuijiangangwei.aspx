<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fabu_tuijiangangwei.aspx.cs" Inherits="fabu_tuijiangangwei" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
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
        #zhi {
        position:absolute;
        width:12%;
        height:520px;
        border-radius:4px;
        box-shadow:1px 1px 5px 5px rgba(0,0,0,.06);
        left:350px;
        top:165px;
        z-index:1;
        }
        #LinkButton1 {
        text-align:center;
        position:absolute;
        width:100%;
        height:50px;
        line-height:50px;
        top:0px;
        background-color:#fff;
        border-style:none;
        
        }
        #LinkButton2 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 50px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton3 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 100px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton4 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 150px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton5 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 450px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton6 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 200px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton7 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 400px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton8 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 250px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton9 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 350px;
            background-color: #fff;
            border-style: none;
        }

        #LinkButton10 {
            text-align: center;
            position: absolute;
            width: 100%;
            height: 50px;
            line-height: 50px;
            top: 300px;
            background-color: #fff;
            border-style: none;
        }

        #fabugangwei {
            width: 74%;
            height: 60px;
            background-color: #fafafa;
            position: absolute;
            text-align: center;
            line-height: 60px;
        }

        #Button1 {
            position: absolute;
            bottom: -15px;
            left: 725px;
            text-align: center;
            height: 40px;
            line-height: 40px;
            width: 12%;
            border-style: none;
            background-color: #ccc;
            border-radius: 6px;
            cursor: pointer;
        }



 
#Label10 {
    position: absolute;
    left: 30px;
    top: 35px;
}

#Label11 {
    left: 30px;
    top: 70px;
    position: absolute;
}

#Button {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 30px;
    top: 110px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button21 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 180px;
    top: 110px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button31 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 330px;
    top: 110px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button41 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 30px;
    top: 180px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button51 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 180px;
    top: 180px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button61 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 330px;
    top: 180px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button71 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 30px;
    top: 250px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button81 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 180px;
    top: 250px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button91 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 330px;
    top: 250px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#Button111 {
    background-color: #fff;
    height: 40px;
    line-height: 40px;
    width: 23%;
    left: 30px;
    top: 320px;
    position: absolute;
    border-style: solid;
    border-width: 1px;
}

#zhiwei {
    
    width: 545px;
    height: 520px;
    background-color: #fafafa;
    position: absolute;
    left: 534px;
    top: 165px;
    z-index: 0;
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
                     <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="~/shouye.aspx">首页</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/zhiweiguanli.aspx">职位管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="~/jianliguanli.aspx">简历管理</asp:LinkButton>
                </div>
                <div>
                    <asp:LinkButton ID="LinkButton14" runat="server" PostBackUrl="~/message.aspx">消息</asp:LinkButton>
                </div>
                <div>
                   <asp:LinkButton ID="LinkButton15" runat="server" PostBackUrl="~/Lproblem.aspx">小任务</asp:LinkButton>
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
                 <div id="zhi">
                    <div>
                         <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/fabu_tuijiangangwei.aspx">推荐岗位</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/fabu_wenyuanzhuli.aspx">文员助理</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/fabu_shichangtuiguang.aspx">市场推广</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/fabu_jiajiaopeixun.aspx">家教培训</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/fabu_xianshangjianzhi.aspx">线上兼职</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/fabu_canyinfuwu.aspx">餐饮服务</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/fabu_dianyuandaogou.aspx">店员导购</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/fabu_wuliucangku.aspx">物流仓储</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="~/fabu_zhanhuiyanchu.aspx">展会演出</asp:LinkButton>
                     </div>
                     <div>
                         <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="~/fabu_qita.aspx">其他</asp:LinkButton>
                     </div>
                 </div>




            <div id="zhiwei">
                <asp:Label ID="Label10" runat="server" Text="发布过" ></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="热门岗位"></asp:Label>
                <asp:Button ID="Button" runat="server" Text="派单/拉访"   />
                <asp:Button ID="Button21" runat="server" Text="校园代理"  />
                <asp:Button ID="Button31" runat="server" Text="服务生" />
                <asp:Button ID="Button41" runat="server" Text="外卖配送" />
                <asp:Button ID="Button51" runat="server" Text="见习经理" />
                <asp:Button ID="Button61" runat="server" Text="店员/收银员" Height="43px" Width="133px"  />
                <asp:Button ID="Button71" runat="server" Text="导购" />
                <asp:Button ID="Button81" runat="server" Text="行政/文员" />
                <asp:Button ID="Button91" runat="server" Text="线上推广" />
                <asp:Button ID="Button111" runat="server" Text="扫码推广" />
            </div>  
        
            <asp:Button ID="Button1" runat="server" Text="下一步" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
