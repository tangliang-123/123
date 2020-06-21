<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zanwujilu.aspx.cs" Inherits="student_zanwujilu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/xadmin.css" rel="stylesheet" />
    <style>
        .tp{
            width:50px;
            height:50px;
            margin:100px auto;
        }
        img
        {
            width:100px;
        }
        .an{
            width:50px;
            height:50px;
             margin:20px auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="tp">
                <img src="../image/无记录.png" />
            </div>
            <div class="an">
                <asp:Button ID="Button1" runat="server" Text="填写简历" CssClass="layui-btn" OnClick="Button1_Click" />
            </div>
            
        </div>
    </form>
</body>
</html>
