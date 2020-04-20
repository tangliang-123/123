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
        string admin = Text1.Value;
        string password = Text2.Value;
        Manager zc = new Manager();
        zc.M_LoginId = admin;
        zc.M_Password = password;
       
            if (BLL.ManagerBusiness.AddManager(zc))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('ok')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('NOOOOOOOOOOOOOO')</script>");
            }
    }
}