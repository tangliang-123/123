using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_EdItManager : System.Web.UI.Page
{
    string jobId;
    protected void Page_Load(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"].ToString();
        Manager manager = new Manager();
        manager.M_LoginId = jobId;

        DataSet ds = BLL.TeachAdminBLL.selectMannagerById(manager);
        if (!IsPostBack)
        {

            string str,strr;
            TextBox1.Text = ds.Tables[0].Rows[0]["M_Password"].ToString();
            if (Convert.ToBoolean(ds.Tables[0].Rows[0]["Real_Name"]))
                strr = "已实名";
            else
                strr = "未实名";
            TextBox2.Text =strr ;
            TextBox3.Text = ds.Tables[0].Rows[0]["Grading"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["M_Name"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["M_Address"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["M_Position"].ToString();
            if (Convert.ToBoolean(ds.Tables[0].Rows[0]["Sex"]))
                str = "男";
            else
                str = "女";
            TextBox7.Text =str;
            TextBox8.Text = ds.Tables[0].Rows[0]["Nation"].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0]["number"].ToString();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        jobId = Request.QueryString["Id"];
        Manager manager = new Manager();
        manager.M_LoginId = jobId;
        manager.M_Password = TextBox1.Text;
        if (TextBox2.Text == "已实名")
        {
            manager.Real_Name = true;
        }
        else
        {
            manager.Real_Name = false;
        }
        
        manager.Grading = TextBox3.Text;
        manager.M_Name = TextBox4.Text;
        manager.M_Address = TextBox5.Text;
        manager.M_Position = TextBox6.Text;
        if(TextBox7.Text=="男")

        manager.Sex = true;
        if(TextBox7.Text=="女")
            manager.Sex = false;
        manager.Nation = TextBox8.Text;
        manager.Number = TextBox9.Text;

        if (BLL.TeachAdminBLL.UpdateManager(manager))
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