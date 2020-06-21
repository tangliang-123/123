using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_stu_frist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["adminlogin"] != null)
        //{
        //    AdminName.Value = Session["adminlogin"].ToString();
        //}
    }

    protected void LinkQuit_Click(object sender, EventArgs e)
    {
        if (BLL.TeachAdminBLL.DeleteAdmin(Session["adminlogin"].ToString()) && BLL.TeachAdminBLL.DeletePerssion(Session["adminlogin"].ToString()))
        {
            Session.Remove("adminlogin");
            Response.Write("<script>alert('已注销!');location.href='../Default.aspx';</script>");
        }
        
    }
}