<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gerenxinxi.aspx.cs" Inherits="admin_gerenxinxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="T_Num" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFFFFF;color: #284775;">账号:
                    <asp:Label ID="T_NumLabel" runat="server" Text='<%# Eval("T_Num") %>' />
                    <br />
                    密码:
                    <asp:Label ID="T_PasswordLabel" runat="server" Text='<%# Eval("T_Password") %>' />
                    <br />
                    电话号码:
                    <asp:Label ID="T_NumberLabel" runat="server" Text='<%# Eval("T_Number") %>' />
                    <br />
                    邮箱:
                    <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    <br />
                    工作时间:
                    <asp:Label ID="Working_timeLabel" runat="server" Text='<%# Eval("Working_time") %>' />
                    <br />
                    姓名:
                    <asp:Label ID="T_NameLabel" runat="server" Text='<%# Eval("T_Name") %>' />
                    <br />
                    性别:
                    <asp:Label ID="T_SexLabel" runat="server" Text='<%# Eval("T_Sex") %>' />
                    <br />
                    民族:
                    <asp:Label ID="T_NationLabel" runat="server" Text='<%# Eval("T_Nation") %>' />
                    <br />
                    职称:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #999999;">账号:
                    <asp:Label ID="T_NumLabel1" runat="server" Text='<%# Eval("T_Num") %>' />
                    <br />
                    密码:
                    <asp:TextBox ID="T_PasswordTextBox" runat="server" Text='<%# Bind("T_Password") %>' />
                    <br />
                    电话号码:
                    <asp:TextBox ID="T_NumberTextBox" runat="server" Text='<%# Bind("T_Number") %>' />
                    <br />
                    邮箱:
                    <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                    <br />
                    工作时间:
                    <asp:TextBox ID="Working_timeTextBox" runat="server" Text='<%# Bind("Working_time") %>' />
                    <br />
                    姓名:
                    <asp:TextBox ID="T_NameTextBox" runat="server" Text='<%# Bind("T_Name") %>' />
                    <br />
                    性别:
                    <asp:TextBox ID="T_SexTextBox" runat="server" Text='<%# Bind("T_Sex") %>' />
                    <br />
                    民族:
                    <asp:TextBox ID="T_NationTextBox" runat="server" Text='<%# Bind("T_Nation") %>' />
                    <br />
                    职称:
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>未返回数据。</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">账号:
                    <asp:TextBox ID="T_NumTextBox" runat="server" Text='<%# Bind("T_Num") %>' />
                    <br />
                    密码:
                    <asp:TextBox ID="T_PasswordTextBox" runat="server" Text='<%# Bind("T_Password") %>' />
                    <br />
                    电话号码:
                    <asp:TextBox ID="T_NumberTextBox" runat="server" Text='<%# Bind("T_Number") %>' />
                    <br />
                    邮箱:
                    <asp:TextBox ID="E_mailTextBox" runat="server" Text='<%# Bind("E_mail") %>' />
                    <br />
                    工作时间:
                    <asp:TextBox ID="Working_timeTextBox" runat="server" Text='<%# Bind("Working_time") %>' />
                    <br />
                    姓名:
                    <asp:TextBox ID="T_NameTextBox" runat="server" Text='<%# Bind("T_Name") %>' />
                    <br />
                    性别:
                    <asp:TextBox ID="T_SexTextBox" runat="server" Text='<%# Bind("T_Sex") %>' />
                    <br />
                    民族:
                    <asp:TextBox ID="T_NationTextBox" runat="server" Text='<%# Bind("T_Nation") %>' />
                    <br />
                    职称:
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #E0FFFF;color: #333333;">账号:
                    <asp:Label ID="T_NumLabel" runat="server" Text='<%# Eval("T_Num") %>' />
                    <br />
                    密码:
                    <asp:Label ID="T_PasswordLabel" runat="server" Text='<%# Eval("T_Password") %>' />
                    <br />
                    电话号码:
                    <asp:Label ID="T_NumberLabel" runat="server" Text='<%# Eval("T_Number") %>' />
                    <br />
                    邮箱:
                    <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    <br />
                    工作时间:
                    <asp:Label ID="Working_timeLabel" runat="server" Text='<%# Eval("Working_time") %>' />
                    <br />
                    姓名:
                    <asp:Label ID="T_NameLabel" runat="server" Text='<%# Eval("T_Name") %>' />
                    <br />
                    性别:
                    <asp:Label ID="T_SexLabel" runat="server" Text='<%# Eval("T_Sex") %>' />
                    <br />
                    民族:
                    <asp:Label ID="T_NationLabel" runat="server" Text='<%# Eval("T_Nation") %>' />
                    <br />
                    职位:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">账号:
                    <asp:Label ID="T_NumLabel" runat="server" Text='<%# Eval("T_Num") %>' />
                    <br />
                    密码:
                    <asp:Label ID="T_PasswordLabel" runat="server" Text='<%# Eval("T_Password") %>' />
                    <br />
                    电话号码:
                    <asp:Label ID="T_NumberLabel" runat="server" Text='<%# Eval("T_Number") %>' />
                    <br />
                    邮箱:
                    <asp:Label ID="E_mailLabel" runat="server" Text='<%# Eval("E_mail") %>' />
                    <br />
                    工作时间:
                    <asp:Label ID="Working_timeLabel" runat="server" Text='<%# Eval("Working_time") %>' />
                    <br />
                    姓名:
                    <asp:Label ID="T_NameLabel" runat="server" Text='<%# Eval("T_Name") %>' />
                    <br />
                    性别:
                    <asp:Label ID="T_SexLabel" runat="server" Text='<%# Eval("T_Sex") %>' />
                    <br />
                    民族:
                    <asp:Label ID="T_NationLabel" runat="server" Text='<%# Eval("T_Nation") %>' />
                    <br />
                    职位:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [T_StuAdmin] WHERE [T_Num] = @T_Num" InsertCommand="INSERT INTO [T_StuAdmin] ([T_Num], [T_Password], [T_Number], [E_mail], [Working_time], [T_Name], [T_Sex], [T_Nation], [Post]) VALUES (@T_Num, @T_Password, @T_Number, @E_mail, @Working_time, @T_Name, @T_Sex, @T_Nation, @Post)" SelectCommand="SELECT * FROM [T_StuAdmin] WHERE ([T_Num] = @T_Num)" UpdateCommand="UPDATE [T_StuAdmin] SET [T_Password] = @T_Password, [T_Number] = @T_Number, [E_mail] = @E_mail, [Working_time] = @Working_time, [T_Name] = @T_Name, [T_Sex] = @T_Sex, [T_Nation] = @T_Nation, [Post] = @Post WHERE [T_Num] = @T_Num">
                <DeleteParameters>
                    <asp:Parameter Name="T_Num" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="T_Num" Type="String" />
                    <asp:Parameter Name="T_Password" Type="String" />
                    <asp:Parameter Name="T_Number" Type="String" />
                    <asp:Parameter Name="E_mail" Type="String" />
                    <asp:Parameter Name="Working_time" Type="String" />
                    <asp:Parameter Name="T_Name" Type="String" />
                    <asp:Parameter Name="T_Sex" Type="Object" />
                    <asp:Parameter Name="T_Nation" Type="String" />
                    <asp:Parameter Name="Post" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="T_Num" SessionField="adminlogin" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="T_Password" Type="String" />
                    <asp:Parameter Name="T_Number" Type="String" />
                    <asp:Parameter Name="E_mail" Type="String" />
                    <asp:Parameter Name="Working_time" Type="String" />
                    <asp:Parameter Name="T_Name" Type="String" />
                    <asp:Parameter Name="T_Sex" Type="Object" />
                    <asp:Parameter Name="T_Nation" Type="String" />
                    <asp:Parameter Name="Post" Type="String" />
                    <asp:Parameter Name="T_Num" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
