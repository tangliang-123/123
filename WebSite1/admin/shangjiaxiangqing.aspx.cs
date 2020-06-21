using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class admin_shangjiaxiangqing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string jobId = Request.QueryString["ID"];
        Manager manager = new Manager();
         
        manager.M_LoginId = jobId;
        DataSet ds = BLL.TeachAdminBLL.selectMannagerById(manager);
        string str = "";
        Literal1.Text = ds.Tables[0].Rows[0]["M_LoginId"].ToString();
        Literal2.Text = ds.Tables[0].Rows[0]["M_Password"].ToString();
        Literal3.Text = ds.Tables[0].Rows[0]["Identification"].ToString();
        Literal4.Text = ds.Tables[0].Rows[0]["Real_Name"].ToString();
        Literal5.Text = ds.Tables[0].Rows[0]["Grading"].ToString();
        Literal6.Text = ds.Tables[0].Rows[0]["M_Name"].ToString();
        Literal7.Text = ds.Tables[0].Rows[0]["M_Address"].ToString();
        Literal8.Text = ds.Tables[0].Rows[0]["M_Position"].ToString();
        Literal10.Text = ds.Tables[0].Rows[0]["Nation"].ToString();
        if (Convert.ToBoolean(ds.Tables[0].Rows[0]["Sex"]))
            str = "男";
        else
            str = "女";

        Literal9.Text = str;
        Literal11.Text = ds.Tables[0].Rows[0]["number"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.opener=null;window.close();</script>");
    }
}