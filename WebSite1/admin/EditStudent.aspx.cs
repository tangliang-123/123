using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_EditStudent : System.Web.UI.Page
{
    string jobId;
    protected void Page_Load(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"].ToString();
        Student student = new Student();
        student.StuID = jobId;

        DataSet ds = BLL.TeachAdminBLL.selectStuById(student);
        if (!IsPostBack)
        {
            string  strr;
            TextBox1.Text = ds.Tables[0].Rows[0]["S_Password"].ToString(); 
            TextBox2.Text = ds.Tables[0].Rows[0]["S_name"].ToString();
            if (Convert.ToBoolean(ds.Tables[0].Rows[0]["S_Real_Name"]))
                strr = "已实名";
            else
                strr = "未实名";
            TextBox3.Text = strr;
            TextBox4.Text = ds.Tables[0].Rows[0]["S_telnum"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["S_Address"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["S_Sex"].ToString();
            
           
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"];
        Student student = new Student();
        student.StuID = jobId;
        student.S_Password = TextBox1.Text;
        if (TextBox3.Text == "已实名")
        {
            student.S_Real_Name = true;
        }
        else
        {
            student.S_Real_Name = false;
        }

        student.S_name = TextBox2.Text;
        student.S_telnum = TextBox4.Text;
        student.S_adress = TextBox5.Text;
        student.S_sex = TextBox6.Text;
        

        if (BLL.TeachAdminBLL.UpdateStudent(student))
        {
            Response.Write("<script>window.opener=null;window.close();</script>");
            // Response.Redirect("zhiweiguanli.aspx");
            //Utility.JavaScript.AlertAndRedirect("修改成功","../zhiweiguanli.aspx", this);
        }
        else
        {
            // Utility.JavaScript.Alert("修改失败", this);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.opener=null;window.close();</script>");
    }
}