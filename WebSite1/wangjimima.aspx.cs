using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class wangjimima : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id= Request.QueryString["user"];
        if(!IsPostBack)
        {
            TextBox1.Text = id;
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        Permission permission = new Permission();
        manager.M_LoginId = id;
        manager.M_Password = TextBox2.Text;
        permission.P_Account = id;
        permission.P_Password = TextBox2.Text;
        if (BLL.ManagerBusiness.wangjiMima(manager) && BLL.ManagerBusiness.UpdateQuanxian(permission))
            Response.Write("<script>window.opener=null;window.close();</script>");
    }
}