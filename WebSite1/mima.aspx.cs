using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager xgmm = new Manager();
        xgmm.M_LoginId = Session["admin"].ToString();
        xgmm.M_Password = TextBox2.Text;
        string password = TextBox1.Text;
        if(BLL.ManagerBusiness.Upadamima(xgmm,password))
        {
            Utility.JavaScript.Alert("修改密码", this);
        }
        else
        {
            Utility.JavaScript.Alert("原始密码输入错误", this);
        }
    }
}