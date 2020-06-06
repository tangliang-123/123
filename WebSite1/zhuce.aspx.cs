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
        Permission permission = new Permission();
        permission.P_Account = Text1.Value;
        permission.P_Password = Text2.Value;
        permission.P_Role = DropDownList1.SelectedValue;
        if (Text1.Value.Trim() == "" || Text2.Value.Trim() == "" ||DropDownList1.SelectedValue=="--请选择--")
            Utility.JavaScript.Alert("用户名、密码或身份不能为空", this);       
        else
        {
            if (BLL.ManagerBusiness.AddManager(zc) && BLL.ManagerBusiness.AddQuanxian(permission))
            {
                // ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('注册成功')</script>");
                Utility.JavaScript.AlertAndRedirect("注册成功", "../Default.aspx", this);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert('该账号已存在')</script>");
            }
        }
    }

    
}