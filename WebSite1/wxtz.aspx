<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wxtz.aspx.cs" Inherits="wxtz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/xadmin.css" rel="stylesheet" />
    <style type="text/css">
         *{
            margin:0px;
            border:0px;
            list-style:none;
            text-decoration:none;
        }
        .content{
             width:800px;
           height:500px;
           background:white;
           text-align:center;
          border:1px solid;
        }
        .wz{
            position:absolute;
            top:50px;
            left:300px;
        }
       .p2{
           font-size:14px;
           color:gray;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="content">
                <div class="wz">
                    <span class="p1">开启微信通知</span><br/><br/>
                    <span class="p2">用微信扫一扫，关注公众号</span>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
