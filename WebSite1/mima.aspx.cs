using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label1.Text = BLL.ManagerBusiness.returnlogid(manager);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Manager manager = new Manager();
        if(Session["admin"]!=null)
            manager.M_LoginId = Session["admin"].ToString();
        manager.M_Password = TextBox2.Text;
        string password = TextBox1.Text;
        Permission permission = new Permission();
        permission.P_Account = Session["admin"].ToString(); 
        permission.P_Password = TextBox2.Text;
        permission.P_Role = "商家";
        if (BLL.ManagerBusiness.Upadamima(manager, password) && BLL.ManagerBusiness.UpdateQuanxian(permission))
        {
            Utility.JavaScript.Alert("修改密码成功", this);
        }
        else
        {
            Utility.JavaScript.Alert("原始密码输入错误", this);
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("telnum.aspx");
    }

    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        if (Session["admin"] != null)
            manager.M_LoginId = Session["admin"].ToString();
        if (BLL.ManagerBusiness.DeleteManager(manager))
        {
            Utility.JavaScript.AlertAndRedirect("注销成功", "../Default.aspx", this);
        }
        else
        {
            Utility.JavaScript.Alert("注销失败", this);
        }
    }
}