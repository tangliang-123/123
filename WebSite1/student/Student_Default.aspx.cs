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
        SqlDataReader reader = BLL.UniversityStudentBLL.selectAllJob();
        while(reader.Read())
        {
            stu_syjz stu_Syjz = (stu_syjz)LoadControl("../user/stu_syjz.ascx");
            stu_Syjz.User(stu_Syjz, reader);

            if (stu_Syjz.Controls.Count == 3)
                break;
            Panel1.Controls.Add(stu_Syjz);
        }

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
}