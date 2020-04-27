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
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Manager manager = new Manager();
        if(Session["admin"]!=null)
            manager.M_LoginId = Session["admin"].ToString();
        manager.M_Password = TextBox2.Text;
        string password = TextBox1.Text;
        if (BLL.ManagerBusiness.Upadamima(manager, password))
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