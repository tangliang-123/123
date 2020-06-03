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
        string str="";
        Literal1.Text= ds.Tables[0].Rows[0]["J_name"].ToString();
        Literal2.Text = ds.Tables[0].Rows[0]["J_Category"].ToString();
        Literal3.Text = ds.Tables[0].Rows[0]["J_Portray"].ToString();
        Literal4.Text = ds.Tables[0].Rows[0]["J_Salary"].ToString();
        Literal5.Text = ds.Tables[0].Rows[0]["Working_time"].ToString();
        Literal6.Text = ds.Tables[0].Rows[0]["Position"].ToString();
        Literal7.Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
        Literal8.Text = ds.Tables[0].Rows[0]["Settlement"].ToString();
        Literal9.Text = ds.Tables[0].Rows[0]["Need_number"].ToString();
        if (ds.Tables[0].Rows[0]["J_state"].ToString() == "0")
            str = "审核中";
        else if(ds.Tables[0].Rows[0]["J_state"].ToString() == "1")
            str = "暂停";
        else if (ds.Tables[0].Rows[0]["J_state"].ToString() == "2")
            str = "审核通过";
        else if (ds.Tables[0].Rows[0]["J_state"].ToString() == "3")
            str = "审核驳回";
        else
            str = "已结束";
        Literal10.Text = str;
        Literal11.Text = ds.Tables[0].Rows[0]["To_release_time"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanli.aspx");
    }
}