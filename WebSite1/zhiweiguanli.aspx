<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanli.aspx.cs" Inherits="zhiweiguanli" %>

<%@ Register Src="~/zhiweiguanlikongjian.ascx" TagPrefix="uc1" TagName="zhiweiguanlikongjian" %>


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


    .auto-style3 {
        left: 0px;
        top: 0px;
    }


    .auto-style4 {
        left: 461px;
        top: 157px;
    }


    </style>
    <link href="css/xadmin.css" rel="stylesheet" />
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
            <asp:Button ID="Label10" runat="server" Text="兼职" CssClass="auto-style1" BorderStyle="None" BackColor="White" OnClick="Label10_Click"></asp:Button>
            <asp:Button ID="Label11" runat="server" Text="实习" BackColor="White" BorderStyle="None" OnClick="Label11_Click"></asp:Button>
        </div>
        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/zhiweiguanli.aspx">招聘中</asp:LinkButton><asp:Label ID="Label12" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/zhiweiguanli_zanting.aspx">暂停中</asp:LinkButton><asp:Label ID="Label13" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/zhiweiguanli_end2.aspx">已结束</asp:LinkButton><asp:Label ID="Label14" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="~/zhiweiguanli_shenhezhong.aspx">审核中</asp:LinkButton><asp:Label ID="Label15" runat="server" Text="0"></asp:Label>
        <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="~/zhiweiguanli_shbohui.aspx">审核驳回</asp:LinkButton><asp:Label ID="Label16" runat="server" Text="0"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Text="请输入兼职名称" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click1" />
        <div id="fabujianzhi" class="auto-style3">
            <asp:Label ID="Label17" runat="server" Text="首次发布职位即可获得6份报名单"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="发布兼职" BackColor="#00CCFF" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style2" OnClick="Button2_Click" />
        </div>
        <div id="jilu">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/发布兼职.png" CssClass="auto-style4" />
                <asp:Label ID="Label18" runat="server" Text="暂无记录"></asp:Label>
            </asp:Panel>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:SqlDataSource ID="constr" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [ID], [J_name], [J_Category], [J_Portray], [J_Salary], [Working_time], [Position], [Remarks], [Settlement], [Need_number], [J_state], [To_release_time] FROM [JobDetail]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"  Width="800px" OnRowDeleting="GridView1_RowDeleting"  OnSelectedIndexChanging="GridView1_SelectedIndexChanging1" OnRowDataBound="GridView1_RowDataBound"  >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="岗位ID" />
                    <asp:BoundField DataField="J_name" HeaderText="职位名称" />
                    <asp:BoundField DataField="J_Category" HeaderText="工作性质" />
                    <asp:BoundField DataField="J_Salary" HeaderText="薪资" />
                    <asp:BoundField DataField="Working_time" HeaderText="工作时间" />
                    <asp:BoundField DataField="Position" HeaderText="地址" />
                    <asp:BoundField DataField="Settlement" HeaderText="结算方式" />
                    <asp:BoundField DataField="Need_number" HeaderText="需求人数" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:HyperLinkField Text="详细" DataNavigateUrlFormatString="Default2.aspx?ID={0}"  DataNavigateUrlFields="ID"/>
                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="EditManager.aspx?Id={0}"  Text="修改" />
                   <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="xiugaigangweizhuangtai.aspx?Id={0}" Text="修改岗位状态" />

                </Columns>
            </asp:GridView>
                    <asp:Timer ID="Timer1" runat="server" Interval="500" ></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            
             <%--<div class="layui-card-header">--%>
                 <%------------------功能按钮区第2部分：角色分类---商家/助学管理员----------%>
                           <%-- <button class="layui-btn layui-btn-danger">
                                <i class="layui-icon"></i>暂停工作岗位</button>
                             <button class="layui-btn layui-btn-danger" onclick="delAll(<%# Eval("JobID") %>)">
                                 <i class="layui-icon"></i>修改岗位状态</button>
                            <button class="layui-btn" onclick="window.open('./EditManager.aspx?Id=7','添加岗位','height=400, width=300,top=250,left=350')">
                                <i class="layui-icon"></i>修改</button></div>--%>
            <%--<uc1:zhiweiguanlikongjian runat="server" ID="zhiweiguanlikongjia" />--%>
        </div>
    </div>
    </form>
    <script>
        function Jobdel(obj, id) {
            $.ajax({
                type: "post",
                url: "../Joblist.aspx/getId()",
                data: "{ID:'" + id + "'}",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == true) {
                        //发异步删除数据

                        layer.msg('已修改!', { icon: 1, time: 1000 });
                    }
                    else if (data.d == false) {
                        //发异步删除数据
                        layer.msg('修改失败!', { icon: 2, time: 1000 });
                    }
                },
                error: function (e) {
                    alter("错误是:" + e.responseText);
                }
            });
        }
    </script>
     
</body>
</html>
