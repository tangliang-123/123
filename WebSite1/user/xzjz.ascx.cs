using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class xzjz : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string m = "";
    public void User(xzjz stu_Syjz, SqlDataReader reader)
    {
        stu_Syjz.Label1.Text = reader["J_LoginId"].ToString();
        m = reader["ID"].ToString();
        stu_Syjz.Label4.Text = reader["Position"].ToString();
        stu_Syjz.Label6.Text = reader["J_name"].ToString();
        stu_Syjz.Label5.Text = reader["Need_number"].ToString();
        stu_Syjz.Label2.Text = reader["J_Salary"].ToString();

        Job_appliction_record job = new Job_appliction_record();
        job.PostID = int.Parse(m);
        job.Application_status = 1;
        Label7.Text = BLL.UniversityStudentBLL.selectNum(job).ToString();
        job.Application_status = 3;
        Label8.Text = BLL.UniversityStudentBLL.selectNum(job).ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        xzjz stu_Syjz = new xzjz();
        Job_appliction_record jobDetail = new Job_appliction_record();
        jobDetail.PostID = int.Parse(m);
        jobDetail.StuID = Session["stulogin"].ToString();
        jobDetail.Application_status = 0;
        jobDetail.Application_time = DateTime.Now;
        if (!BLL.UniversityStudentBLL.gwISExist(jobDetail))
        {
            if (BLL.UniversityStudentBLL.Addjob_Applictions(jobDetail))
                Utility.JavaScript.AlertAndRedirect("报名成功,等待录取", "../student/xunzhaojianzhi.aspx", this.Parent.Page);
            else
            {
                Utility.JavaScript.Alert("应聘失败", this.Parent.Page);
            }
        }
        else
        {
            Utility.JavaScript.Alert("请不要重复报名", this.Parent.Page);
        }
    }
}