using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_AddResume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Resume resume = new Resume();
        resume.S_name = TextBox1.Text;
        resume.S_Sex = TextBox2.Text;
        resume.S_age = TextBox3.Text;
        resume.S_number = TextBox4.Text;
        resume.Adress = TextBox5.Text;
        resume.Minzu = TextBox6.Text;
        resume.P_status = DropDownList1.SelectedValue;
        resume.Major = TextBox8.Text;
        resume.P_description = TextBox9.Text;
        if (Session["stulogin"] != null)
            resume.StuID = Session["stulogin"].ToString();
        if (BLL.UniversityStudentBLL.AddResume(resume))
        {
            Utility.JavaScript.RefreshParent("../student/stu_gerenjianli.aspx", this);
        }
    }
}