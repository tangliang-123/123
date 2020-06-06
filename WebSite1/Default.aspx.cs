using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //读取保存的Cookie信息
            if (Request.Cookies["userInfo"] != null)
            {
                TextBox1.Text = Request.Cookies["userInfo"]["userName"];
                TextBox2.Text = Request.Cookies["userInfo"]["pwd"];
                CheckBox1.Checked = true;
            }

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string admin = TextBox1.Text;
        string password = TextBox2.Text;
       // Utility.JavaScript.Alert(password, this);

        if (admin != string.Empty && password != string.Empty)
        {
            if (BLL.ManagerBusiness.ManagerLogin(admin, password)&&BLL.ManagerBusiness.Permanlogin(admin,password))
            {
                ////登录成功，数据存入session中
                Session["admin"] = admin;
                Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../shouye.aspx", this);
            }
            
            if (BLL.TeachAdminBLL.T_StuAdminLogin(admin, password) && BLL.TeachAdminBLL.Peradmlogin(admin, password))
            {
                Session["adminlogin"] = admin;
                Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../shouye.aspx", this);
            }
            if (BLL.UniversityStudentBLL.StuLogin(admin, password) && BLL.UniversityStudentBLL.Perstulogin(admin, password))
            {
                Session["stulogin"] = admin;
                Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../shouye.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
                //
                
            }

            if (CheckBox1.Checked)
            {
                Response.Cookies["userInfo"]["userName"] = TextBox1.Text;
                Response.Cookies["userInfo"]["pwd"] = TextBox2.Text;
                Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(7.0);
            }
            else
            {
                Response.Cookies["userInfo"].Expires = DateTime.Now.AddSeconds(-1);
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Utility.JavaScript.OpenWebFormSize("wangjimima.aspx?user="+TextBox1.Text, 350, 200, 350, 550, this);
    }




    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        string admin = TextBox1.Text;
        string password = TextBox2.Text;
       


    }
}