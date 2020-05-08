using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhiweiguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindfab();
    }

    public void bindfab()
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["admin"] != null)
        {
            jobDetail.M_LoginId = Session["admin"].ToString();
        }
        Panel1.Visible = false;
        DataSet ds = BLL.ManagerBusiness.selectJob(jobDetail);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void Label3_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanlishixi.aspx");
    }
}