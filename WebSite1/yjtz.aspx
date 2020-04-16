<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yjtz.aspx.cs" Inherits="yjtz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin:0px;
            border:0px;
            list-style:none;
        }
        .content{
             width:800px;
           height:500px;
           background:white;
          border:1px solid;
          position:relative;
        }
        a:link{
            color:aqua;
        }
        a:visited{
            color:aqua;
        }
        .wz{
            margin:10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="content">
                <div class="wz">
                    <p>邮件通知</p>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="绑定数据后，我们将通过邮件实时通知候选人名单" ForeColor="Gray"  Font-Size="15px"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="*" ForeColor="red"></asp:Label><asp:Label ID="Label2" runat="server" Text="输入邮箱"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#999966" Width="207px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="19px" OnTextChanged="TextBox1_TextChanged">输入邮箱，如12345@email.com</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="格式不正确" ForeColor="Red" ValidationExpression="/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="发布验证邮件" BackColor="#66FF66" Height="27px" Width="202px" />
                    <br />
                    <br />
                    <a href="#">咨询客服</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
