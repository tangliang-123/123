using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_xiugaijianli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["stulogin"] != null)
            {
                Resume resume = new Resume();
                resume.StuID = Session["stulogin"].ToString();
                SqlDataReader m = BLL.UniversityStudentBLL.GeResume(resume);
                while (m.Read())
                {
                    TextBox1.Text = m["S_name"].ToString();
                    TextBox2.Text = m["S_Sex"].ToString();
                    TextBox3.Text = m["S_age"].ToString();
                    TextBox4.Text = m["S_number"].ToString();
                    TextBox5.Text = m["Adress"].ToString();
                    TextBox6.Text = m["Minzu"].ToString();
                    string str = m["P_status"].ToString();
                    if (string.Equals(str, "群众"))
                        DropDownList1.Items[0].Selected = true;
                    else if(string.Equals(str, "团员"))
                        DropDownList1.Items[1].Selected = true;
                    else if (string.Equals(str, "预备党员"))
                        DropDownList1.Items[2].Selected = true;
                    else if (string.Equals(str, "党员"))
                        DropDownList1.Items[3].Selected = true;
                    TextBox8.Text = m["Major"].ToString();
                    TextBox9.Text = m["P_description"].ToString();
                }
            }
        }
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
        if(BLL.UniversityStudentBLL.ChangeResume(resume))
        {
           // Response.Write("<script>window.opener=null;window.close();</script>");
            Utility.JavaScript.RefreshParent("../student/stu_gerenjianli.aspx",this);
        }
    }
}