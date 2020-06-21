using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_Student_gerenxinxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stulogin"] != null)
        {
            //这是判断简历信息是否存在
            if (Request.QueryString["myiframe"] == "stu_gerenjianli.aspx")
            {
                ResmueisExist();
            }
            else
            {
                ResmueisExist();
                if (Request.QueryString["myiframe"] != null)
                    myframe.Src = Request.QueryString["myiframe"];
            }        
            Label1.Text = Session["stulogin"].ToString();
        }
    }
    public void ResmueisExist()
    {
        if (!BLL.UniversityStudentBLL.ResumeIsExist(Session["stulogin"].ToString()))
        {
            myframe.Src = "zanwujilu.aspx";
            grjl.HRef = "zanwujilu.aspx";
        }
        else
        {
            myframe.Src = "stu_gerenjianli.aspx";
            grjl.HRef = "stu_gerenjianli.aspx";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        
        

    }
}