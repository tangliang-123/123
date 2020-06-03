using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhiweiguanli_zanting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        if(Session["admin"] !=null)
        {
            jobDetail.J_LoginId = Session["admin"].ToString();
        }
        jobDetail.J_state = 1;
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

        Button souSuo = (Button)Master.FindControl("Button1");
        souSuo.Click += new EventHandler(souSuo_Click);
    }
    protected void souSuo_Click(object sender, EventArgs e)
    {
        string name =((TextBox) Master.FindControl(" TextBox1")).Text;
        DataSet ds = BLL.ManagerBusiness.GetJobListByName(name);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


}