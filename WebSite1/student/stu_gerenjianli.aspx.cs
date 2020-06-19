using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
public partial class student_stu_gerenjianli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stulogin"] != null)
        {
            Resume resume = new Resume();
            resume.StuID = Session["stulogin"].ToString();
            SqlDataReader m = BLL.UniversityStudentBLL.GeResume(resume);
            while (m.Read())
            {
                Label1.Text = m["S_name"].ToString();
                Label2.Text = m["S_Sex"].ToString();
                Label3.Text = m["S_age"].ToString();
                Label4.Text = m["S_number"].ToString();
                Label5.Text = m["Adress"].ToString();
                Label6.Text = m["Minzu"].ToString();
                Label7.Text = m["P_status"].ToString();
                Label8.Text = m["Major"].ToString();
                Label9.Text = m["P_description"].ToString();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Utility.JavaScript.OpenWebFormSize("../student/xiugaijianli.aspx", 450, 500, 150, 450, this);
    }
}