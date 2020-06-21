using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class student_xiugaixinxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["stulogin"] != null)
            {
                SqlDataReader m = BLL.UniversityStudentBLL.GetStu(int.Parse(Session["stulogin"].ToString()));
                while (m.Read())
                {
                    TextBox1.Text = m["StuID"].ToString();
                    TextBox1.Enabled = false;
                    TextBox2.Text = m["S_name"].ToString();
                    TextBox3.Text = m["S_sex"].ToString();
                    TextBox4.Text = m["S_age"].ToString();
                    TextBox5.Text = m["S_telnum"].ToString();
                    TextBox6.Text = m["S_adress"].ToString();
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Student student = new Student();
        student.StuID = TextBox1.Text;
        student.S_name = TextBox2.Text;
        student.S_sex = TextBox3.Text;
        student.S_age = TextBox4.Text;
        student.S_telnum = TextBox5.Text;
        student.S_adress = TextBox6.Text;
        if (BLL.UniversityStudentBLL.ChangeStuMsg(student))
            Utility.JavaScript.RefreshParent("../student/stu_gerenxinxi.aspx", this);
    }
}