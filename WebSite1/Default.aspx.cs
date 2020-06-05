using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string admin = TextBox1.Text;
        string password = TextBox2.Text;

        if (admin != string.Empty && password != string.Empty)
        {
            if (BLL.P_Permission.UserLogin(admin, password))
            {
                ////登录成功，数据存入session中
                Session["admin"] = admin;
                if (BLL.P_Permission.Idcard(admin, password) == "管理员")
                {
                    Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../guanlitest.aspx", this);
                }
                else if (BLL.P_Permission.Idcard(admin, password) == "商家")
                {
                    Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../shouye.aspx", this);
                }
                else if (BLL.P_Permission.Idcard(admin, password) == "学生")
                {
                    Utility.JavaScript.AlertAndRedirect("登录成功，点击确定跳转首页", "../Student.aspx", this);
                }
                
            }
            else
            {
                Utility.JavaScript.Alert("账号或密码不正确，请重试", this);
                //
            }
        }
    }
}