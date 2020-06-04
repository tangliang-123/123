using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditManager : System.Web.UI.Page
{
    string jobId;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"].ToString();
        JobDetail jobDetail = new JobDetail();
        jobDetail.ID = int.Parse(jobId);

        DataSet ds = BLL.ManagerBusiness.selectJobByID(jobDetail);
        if (!IsPostBack)
        {
            TextBox1.Text = ds.Tables[0].Rows[0]["J_name"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["J_Category"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["J_Portray"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["J_Salary"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["Working_time"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["Position"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0]["Settlement"].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0]["Need_number"].ToString();
        }






    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"];
        JobDetail jobDetail = new JobDetail();
        jobDetail.ID = int.Parse(jobId);
        jobDetail.J_name = TextBox1.Text;
        jobDetail.J_Category = TextBox2.Text;
        jobDetail.J_Portray = TextBox3.Text;
        jobDetail.J_Salary = TextBox4.Text;
        jobDetail.Working_time = TextBox5.Text;
        jobDetail.Position = TextBox6.Text;
        jobDetail.Remarks = TextBox7.Text;
        jobDetail.Settlement = TextBox8.Text;
        jobDetail.Need_number =int.Parse( TextBox9.Text);
       
        if (BLL.ManagerBusiness.updatejobxx(jobDetail))
        {
            Response.Write("<script>window.opener=null;window.close();</script>");
           // Response.Redirect("zhiweiguanli.aspx");
            //Utility.JavaScript.AlertAndRedirect("修改成功","../zhiweiguanli.aspx", this);
        }
        else
        {
           // Utility.JavaScript.Alert("修改失败", this);
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Write("<script>window.opener=null;window.close();</script>");

    }

    protected void Button2_Unload(object sender, EventArgs e)
    {

    }
}