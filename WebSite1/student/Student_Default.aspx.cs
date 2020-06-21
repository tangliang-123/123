using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["stulogin"]!=null)
        {
            Label1.Text= Session["stulogin"].ToString();
        }
        int state = 2;
        SqlDataReader reader = BLL.UniversityStudentBLL.selectAllJob(state);
        while(reader.Read())
        {
            stu_syjz stu_Syjz = (stu_syjz)LoadControl("../user/stu_syjz.ascx");
            stu_Syjz.User(stu_Syjz, reader);
            Panel1.Controls.Add(stu_Syjz);

        }

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
}