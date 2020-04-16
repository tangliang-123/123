using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("dengluzuce.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager zs = new Manager();
        zs.M_LoginId = "zsss";//
        zs.M_Password = "123";

        if (BLL.ManagerBusiness.AddManager(zs))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('ok')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('NOOOOOOOOOOOOOO')</script>");
        }
    }
}