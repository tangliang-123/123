using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class wangjimima : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id= Request.QueryString["user"];
        if(!IsPostBack)
        {
            TextBox1.Text = id;
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        Permission permission = new Permission();
        Student student = new Student();
        manager.M_LoginId = id;
        manager.M_Password = TextBox2.Text;
        student.StuID = id;
        student.S_Password = TextBox2.Text;
        permission.P_Account = id;
        permission.P_Password = TextBox2.Text;
        T_StuAdmin t_StuAdmin = new T_StuAdmin();
        t_StuAdmin.T_Num = id;
        t_StuAdmin.T_Password = TextBox2.Text;
        permission.P_Role = BLL.PermissionBLL.ReturnRole(permission);
        if (permission.P_Role == "商家")
        {
            if (BLL.ManagerBusiness.wangjiMima(manager) && BLL.ManagerBusiness.UpdateQuanxian(permission))
                Response.Write("<script>window.opener=null;window.close();</script>");
        }
        else if(permission.P_Role=="学生")
        {
            if (BLL.UniversityStudentBLL.wangjiMima(student) && BLL.ManagerBusiness.UpdateQuanxian(permission))
                Response.Write("<script>window.opener=null;window.close();</script>");
        }
        else if (permission.P_Role == "学生")
        {
            if (BLL.TeachAdminBLL.wangjiMima(t_StuAdmin) && BLL.ManagerBusiness.UpdateQuanxian(permission))
                Response.Write("<script>window.opener=null;window.close();</script>");
        }
    }
}