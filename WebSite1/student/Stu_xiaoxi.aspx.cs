using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_Stu_xiaoxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stulogin"] != null)
        {
            Label1.Text = Session["stulogin"].ToString();
        }
    }
}