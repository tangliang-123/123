using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_stu_gerenxinxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stulogin"] != null)
        {
            SqlDataReader m = BLL.UniversityStudentBLL.GetStu(int.Parse(Session["stulogin"].ToString()));
            while(m.Read())
            {
                Label1.Text = m["StuID"].ToString();
                Label2.Text = m["S_name"].ToString();
                Label3.Text = m["S_sex"].ToString();
                Label4.Text = m["S_age"].ToString();
                Label5.Text = m["S_telnum"].ToString();
                Label6.Text = m["S_adress"].ToString();                
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Utility.JavaScript.OpenWebFormSize("../student/xiugaixinxi.aspx", 450, 350, 150, 450, this);
    }
}