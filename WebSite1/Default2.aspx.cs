using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string jobId = Request.QueryString["ID"];
        JobDetail jobDetail = new JobDetail();
        jobDetail.ID =int.Parse(jobId);
        DataSet ds = BLL.ManagerBusiness.selectJobByID(jobDetail);

        Literal1.Text= ds.Tables[0].Rows[0]["J_name"].ToString();
        Literal2.Text = ds.Tables[0].Rows[0]["J_Category"].ToString();
        Literal3.Text = ds.Tables[0].Rows[0]["J_Portray"].ToString();
        Literal4.Text = ds.Tables[0].Rows[0]["J_Salary"].ToString();
        Literal5.Text = ds.Tables[0].Rows[0]["Working_time"].ToString();
        Literal6.Text = ds.Tables[0].Rows[0]["Position"].ToString();
        Literal7.Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
        Literal8.Text = ds.Tables[0].Rows[0]["Settlement"].ToString();
        Literal9.Text = ds.Tables[0].Rows[0]["Need_number"].ToString();
        Literal10.Text = ds.Tables[0].Rows[0]["J_state"].ToString();
        Literal11.Text = ds.Tables[0].Rows[0]["To_release_time"].ToString();
    }
}