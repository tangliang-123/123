using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_xueshengxiangqing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string jobId = Request.QueryString["ID"];
        Student student = new Student();

        student.StuID = jobId;
        DataSet ds = BLL.TeachAdminBLL.selectStuById(student);
        string str = "";
        Literal1.Text = ds.Tables[0].Rows[0]["StuID"].ToString();
        Literal2.Text = ds.Tables[0].Rows[0]["S_Password"].ToString();
        Literal3.Text = ds.Tables[0].Rows[0]["S_name"].ToString();
        if (Convert.ToBoolean(ds.Tables[0].Rows[0]["S_Real_Name"]))

            str = "已实名";

        else
            str = "未实名";
        Literal4.Text =str;
        Literal5.Text = ds.Tables[0].Rows[0]["S_telnum"].ToString();
        Literal6.Text = ds.Tables[0].Rows[0]["S_Address"].ToString();
        Literal7.Text = ds.Tables[0].Rows[0]["S_Sex"].ToString();
        Literal8.Text = ds.Tables[0].Rows[0]["S_IDCard"].ToString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.opener=null;window.close();</script>");
    }
}