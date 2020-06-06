using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class telnum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label1.Text = BLL.ManagerBusiness.returnlogid(manager);
        Literal1.Text= BLL.ManagerBusiness.returnlogid(manager);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != Session["checkCode"].ToString())
        {
            Response.Write("<script>alert('验证码错误!')</script>");
            return;
        }
        Manager num = new Manager();
        if (Session["admin"] != null)
            num.M_LoginId = Session["admin"].ToString();
        num.Number = TextBox1.Text;

        if (BLL.ManagerBusiness.Updatenumber(num))
        {
            Utility.JavaScript.Alert("修改手机号码成功", this);
        }
        else
        {
            Utility.JavaScript.Alert("失败", this);
        }
    }
}