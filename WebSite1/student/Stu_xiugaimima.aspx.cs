using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class student_Stu_xiugaimima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string password = TextBox1.Text;
        Student student=new Student();
        student.StuID = Session["stulogin"].ToString();
        student.S_Password = TextBox2.Text;
        Permission permission = new Permission();
        permission.P_Account = student.StuID;
        permission.P_Password = student.S_Password;
        permission.P_Role = "学生";
        if(BLL.UniversityStudentBLL.ChangeStuPwd(student,password) && BLL.ManagerBusiness.UpdateQuanxian(permission))
        {
            Utility.JavaScript.Alert("修改密码成功", this);
        }
        else
        {
            Utility.JavaScript.Alert("原始密码输入错误", this);
        }
    }
}