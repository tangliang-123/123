using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
public partial class student_stu_wodejianzhi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Student student=new Student();
        student.StuID = Session["stulogin"].ToString();
        SqlDataReader reader = BLL.UniversityStudentBLL.selectMywork(student);
        while (reader.Read())
        {
            work stu_Syjz = (work)LoadControl("../user/work.ascx");
            stu_Syjz.User(stu_Syjz, reader);
            Panel1.Controls.Add(stu_Syjz);

        }
    }
}