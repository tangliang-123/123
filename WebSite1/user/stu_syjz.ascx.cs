using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Model;
public partial class stu_syjz : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    string m="";
    public  void User(stu_syjz stu_Syjz,SqlDataReader reader)
    {
        stu_Syjz.Label1.Text = reader["ID"].ToString();
        m= reader["ID"].ToString();
        stu_Syjz.Label3.Text = reader["J_name"].ToString();
        stu_Syjz.Label4.Text = reader["J_LoginId"].ToString();
        stu_Syjz.Label6.Text = reader["Position"].ToString();
        stu_Syjz.Label2.Text = reader.GetString(5);
        stu_Syjz.Label5.Text = reader.GetInt32(10).ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        stu_syjz stu_Syjz = new stu_syjz();
        Job_appliction_record jobDetail = new Job_appliction_record();
        jobDetail.PostID =int.Parse( m);
        jobDetail.StuID = Session["stulogin"].ToString();
        jobDetail.Application_status = 1;
        jobDetail.Application_time = DateTime.Now;
        if (!BLL.UniversityStudentBLL.gwISExist(jobDetail))
        {
            if (BLL.UniversityStudentBLL.Addjob_Applictions(jobDetail))
                Utility.JavaScript.Alert("报名成功，等待录取", this.Parent.Page);
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