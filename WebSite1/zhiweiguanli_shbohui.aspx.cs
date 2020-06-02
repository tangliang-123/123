using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhiweiguanli_shbohui : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["admin"] != null)
        {
            jobDetail.J_LoginId = Session["admin"].ToString();
        }
        jobDetail.J_state = 3;
        DataSet ds = BLL.ManagerBusiness.selectJobByStata(jobDetail);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        Image3.Visible = true;
        Label18.Visible = true;
        if (ds.Tables != null)
        {
            Image3.Visible = false;
            Label18.Visible = false;
        }
    }
}