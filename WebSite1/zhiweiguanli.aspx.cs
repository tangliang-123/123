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
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
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

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["admin"] != null)
        {
            jobDetail.M_LoginId = Session["admin"].ToString();
        }
        string departID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        jobDetail.ID = Convert.ToInt32(departID);
        //Utility.JavaScript.Alert(jobDetail.ID.ToString(), this);
        if(BLL.ManagerBusiness.DropJob(jobDetail))
        {
            Utility.JavaScript.Alert("删除成功", this);
            bindfab();
        }
        else
        {
            Utility.JavaScript.Alert("删除失败", this);
        }
    }
}