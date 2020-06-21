<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhiweiguanli.aspx.cs" Inherits="admin_zhiweiguanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>工作岗位</title>
     <link rel="stylesheet" href="../css/font.css"/>
     <link rel="stylesheet" href="../css/xadmin.css"/>
     <script src="../lib/layui/layui.js" charset="utf-8"></script>
     <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
  <div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="index.aspx">首页</a>
                <a>
                    <cite>导航元素</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" runat="server">
                                <div class="layui-input-inline layui-show-xs-block">
                                </div>
             <%------------------功能按钮区第1部分：角色分类---商家/助学管理员----------%>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input type="text" id="cxType" name="username" placeholder="请输查询工作岗位名" autocomplete="off" class="layui-input" runat="server"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <%--<button class="layui-btn" lay-submit="" lay-filter="sreach">
                                        <i class="layui-icon">&#xe615;</i></button>--%>
                                </div>
                                 <asp:Button ID="search" CssClass="layui-btn" runat="server" Text="搜索" lay-submit="" lay-filter="sreach" OnClick="search_Click"/>
                            
                            </form>
                        </div>
                        <div class="layui-card-header">
                 <%------------------功能按钮区第2部分：角色分类---商家/助学管理员----------%>
                            <button class="layui-btn layui-btn-danger">
                                <i class="layui-icon"></i>暂停工作岗位</button>
                             <button class="layui-btn layui-btn-danger" onclick="delAll(<%# Eval("JobID") %>)">
                                 <i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加岗位','./Jobadd.aspx',800,600)">
                                <i class="layui-icon"></i>添加岗位</button></div>
                
                 <%---------------------数据呈现：表格区---------------------%>
                 <div class="layui-card-body layui-table-body layui-table-main">
                    <asp:Repeater ID="rpTest" runat="server">
                         <%--------asp:Repeater数据：Repeater控件和DataList控件，可用来一次显示一组数据项。如可以用其显示一个数据表中的所有记录-------%>
                         <%---------Repeater控件完全由模板驱动，提供了最大的灵活性，可以任意设置它的输出格式-----------%>
                         
                         <HeaderTemplate>
                              <%---------------------表头：对页眉进行格式设置---------------------%>
                           <table class="layui-table layui-form">
                            <tr>
                              <th>
                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                              </th>
                              <th>岗位ID</th>
                              <th>岗位发布者</th>
                              <th>岗位名</th>
                              <th>单价</th>
                              <th>岗位类型</th>
                              <th>简介</th>
                              <th>状态</th>
                              <th>发布时间</th>
                              <th>操作</th>
                       
                        </HeaderTemplate>
                         <%---------------------对每一个数据项进行格式设置 (必须的添加项)设置---------------------%>
                         <ItemTemplate>
                           <tr>
                            <td>
                                <input value="<%# Eval("ID") %>" class="bb" type="checkbox" name="id" lay-skin="primary" > 
                            </td>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("J_LoginId") %></td>
                            <td><%# Eval("J_name") %></td>
                            <td><%# Eval("J_Salary") %></td>
                            <td><%# Eval("J_Category") %></td>
                            <td><%# Eval("J_Portray") %></td>
                            <td><%# Eval("J_state") %></td>  
                            <td><%# Eval("To_release_time") %></td>

                            <%---------------------操作列：数据项项操作设置（针对不同角色设置不同操作角色分类提供功能---商家/助学管理员）---------------------%>
                            <td class="td-manage">    
                               <a title="编辑岗位状态" onclick="xadmin.open('修改岗位状态','../xiugaigangweizhuangtai.aspx?id=<%# Eval("ID") %>',457,650)" href="javascript:;">
                                <i class="layui-icon">&#xe631;</i></a>

                               <a title="修改岗位信息" onclick="xadmin.open('编辑工作岗位信息','../EditManager.aspx?id=<%# Eval("ID") %>',450,400)"  href="javascript:;">
                                <i class="layui-icon">&#xe643;</i> </a>

                                <a title="删除" onclick="Jobdel(this,'<%# Eval("ID") %>')" href="javascript:;" class="delete">
                                <i class="layui-icon">&#xe640;</i> </a>

                               <a title="查看岗位详情" onclick="xadmin.open('查看岗位状态','../Default2.aspx?id=<%# Eval("ID") %>',457,650)" href="javascript:;">
                                <i class="layui-icon">&#xe631;</i></a>


                            </td>
                           </tr>                     
                         </ItemTemplate>
                        <FooterTemplate>
                         </table>   
                        </FooterTemplate>
           </asp:Repeater>
   </div>          
                 <div class="layui-card-body " style="left: 0px; top: 0px">
                <div class="page">
                     <div>
                       <a class="prev" href="">&lt;&lt;</a>
                         <span class="current">1</span>
                            <a class="num" href="">2</a>
                               <a class="num" href="">3</a>
                                  <a class="next" href="">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
            
            </div>
        </div>
     </div>
</div>
</body>


 <script>
     //layui.use(['laydate', 'form'], function () {
     //    var laydate = layui.laydate;
     //    var form = layui.form;


     //    // 监听全选
     //    form.on('checkbox(checkall)', function (data) {

     //        if (data.elem.checked) {
     //            $('tbody input').prop('checked', true);
     //        } else {
     //            $('tbody input').prop('checked', false);
     //        }
     //        form.render('checkbox');
     //    });

     //    //执行一个laydate实例
     //    laydate.render({
     //        elem: '#start' //指定元素
     //    });

     //    //执行一个laydate实例
     //    laydate.render({
     //        elem: '#end' //指定元素
     //    });


     //});
        /*工作岗位删除*/
        function Jobdel(obj, id) {
            layer.confirm('确认要删除吗？', function (index) {
                //ajax传值
                $.ajax({
                    type: "post",
                    url: "zhiweiguanli.aspx/deleteByID",
                    data: "{ID:'" + id + "'}",
                    contentType: "application/json;charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == true) {
                            //发异步删除数据
                            $(obj).parents("tr").remove();
                            layer.msg('已删除!', { icon: 1, time: 1000 });
                        }
                        else if (data.d == false) {
                            //发异步删除数据
                            $(obj).parents("tr").remove();
                            layer.msg('已删除!', { icon: 2, time: 1000 });
                        }
                    },
                    error: function (e) {
                        alter("错误是:" + e.responseText);
                    }
                });
            });
        }
        //

    </script>
</html>
