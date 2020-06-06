using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhiweiguanlishixi_jssx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }

    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanlishixi.aspx");
    }
}