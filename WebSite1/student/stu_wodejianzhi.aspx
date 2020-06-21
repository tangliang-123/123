<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_wodejianzhi.aspx.cs" Inherits="student_stu_wodejianzhi" %>

<%@ Register Src="~/user/work.ascx" TagPrefix="uc1" TagName="work" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        hr{
            color:aqua;
            border:2px;
        }
        #work{
            margin-left:20px;
        }
        .fu{
            position:relative;
        }
        .zdykj{
           position:absolute;
           left:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="fu">
            <p style="font-size:25px;color:aqua;">我的兼职</p>
            <hr style="color:aqua;" />
            <div class="zdykj">
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            </div>
            
        </div>
    </form>
</body>
</html>
