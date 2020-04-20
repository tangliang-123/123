using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Manager zc = new Manager();
        zc.M_LoginId = Text1.Value;
        zc.M_Password = Text2.Value;

        if (BLL.ManagerBusiness.AddManager(zc))
            {
               // ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('注册成功')</script>");
                Utility.JavaScript.AlertAndRedirect("注册成功","../Default.aspx", this);
        }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('该账号已存在')</script>");
            }
    }

    
}