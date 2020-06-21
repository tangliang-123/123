<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_frist.aspx.cs" Inherits="admin_stu_frist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>助学社-商家</title>
    <link rel="shortcut icon" href="../images/manager.png"/>
    <link rel="stylesheet" href="../css/font.css" />
    <link rel="stylesheet" href="../css/xadmin.css" />
    <script src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body class="index">
    <form id="form1" runat="server">
        <div class="container">
            <div class="logo">
                <a href="./index.html">助学社-商家</a>
            </div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;" >
                        <input runat="server" type="button" id="AdminName" disabled="disabled" style="border:none;background-color:#222222;color:white;" /></a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','http://jiaowu.scetc.edu.cn/xuesheng/dangan/banji/barcode.asp')">个人信息</a></dd>
                        <dd>
                            <a <%--onclick="xadmin.open('切换帐号','../Default.aspx')"--%> href="../Default.aspx">切换帐号</a></dd>
                        <dd>
                            <asp:LinkButton ID="LinkQuit" runat="server" OnClick="LinkQuit_Click">注销</asp:LinkButton></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="../Apple/Index.aspx">管理员操作首页</a></li>
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="助学工作岗位管理">&#xe726;</i> 职位<cite>管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('助学工作岗位列表','zhiweiguanli.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>助学工作岗位列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="招聘管理">&#xe6b8;</i> <cite>信息管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('商家信息','shangjiaguanli.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>商家信息</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('学生信息','xueshenguanli.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>学生信息</cite></a>
                            </li>
                           
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="订单管理">&#xe723;</i> 个人<cite>管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('个人信息','gerenxinxi.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>个人信息</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('修改密码','xiugaimima.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>修改密码</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i> 消息<cite>管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('工作岗位列表',xueshenguanli.aspx')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>工作岗位列表</cite></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li>
                </ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd>
                    </dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='zhiweiguanli.aspx' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
    </form>
</body>
</html>
