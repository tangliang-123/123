using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_xiugaimima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        T_StuAdmin t_StuAdmin = new T_StuAdmin();
        t_StuAdmin.T_Num = Session["adminlogin"].ToString();
        t_StuAdmin.T_Password = TextBox2.Text;
        Permission permission = new Permission();
        permission.P_Account = Session["adminlogin"].ToString();
        permission.P_Password = TextBox2.Text;
        string pwd = TextBox1.Text;
        if (BLL.TeachAdminBLL.AdminIsExist(t_StuAdmin.T_Num, pwd))
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                if (BLL.TeachAdminBLL.ChangeAdminPwd(t_StuAdmin) && BLL.TeachAdminBLL.ChangePerminssionPwd(permission))
                {
                    Utility.JavaScript.Alert("修改密码成功", this);
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                else
                {
                    Utility.JavaScript.Alert("原始密码输入错误", this);
                }
            }
            else
            {
                Utility.JavaScript.Alert("两次密码不一致", this);
            }
            
        }
        else
        {
            Utility.JavaScript.Alert("原密码错误", this);
        }
    }
}