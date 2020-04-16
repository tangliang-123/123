using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utility;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        ///sss
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string admin = TextBox1.Text;
        string password = TextBox2.Text;

        if (admin != string.Empty && password != string.Empty)
        {
            if (BLL.ManagerBusiness.ManagerLogin(admin, password))
            {
                ////登录成功，数据存入session中
                //Session["admin"] = admin;; 
                Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../shouye.aspx", this);
            }
            else
            {
                Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
            }
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Utility.JavaScript.AlertAndRedirect("ok", "../zhuce.aspx", this);
    }
}