using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shouye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
    }

    protected void Label2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanli.aspx");
    }

    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("mima.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanlishixi.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Lproblem.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }

    protected void Image3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("zhiweiguanli.aspx");
    }

    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("message.aspx");
    }
}