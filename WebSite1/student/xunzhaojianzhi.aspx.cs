using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_xunzhaojianzhi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stulogin"] != null)
        {
            Label1.Text = Session["stulogin"].ToString();
        }
        int state = 2;
        SqlDataReader reader = BLL.UniversityStudentBLL.selectAllJob(state);
        while (reader.Read())
        {
            xzjz stu_Syjz = (xzjz)LoadControl("../user/xzjz.ascx");
            stu_Syjz.User(stu_Syjz, reader);
            Panel1.Controls.Add(stu_Syjz);

        }
    }
}