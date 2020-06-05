using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jianliguanli_yiwancheng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
    }
    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanlishixi.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }
}