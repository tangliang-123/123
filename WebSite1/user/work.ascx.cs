using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class work : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void User(work stu_Syjz, SqlDataReader reader)
    {
        stu_Syjz.Label1.Text = reader["ID"].ToString();
        stu_Syjz.Label3.Text = reader["J_name"].ToString();
        stu_Syjz.Label4.Text = reader["J_LoginId"].ToString();
        stu_Syjz.Label6.Text = reader["Position"].ToString();
        stu_Syjz.Label2.Text = reader["J_Salary"].ToString();
        stu_Syjz.Label5.Text = reader["Need_number"].ToString();
        if (reader["Application_status"].ToString() == "3")
            stu_Syjz.Label7.Text = "已录取";
        else if(reader["Application_status"].ToString() == "1")
            stu_Syjz.Label7.Text = "已报名";
        else if (reader["Application_status"].ToString() == "4")
            stu_Syjz.Label7.Text = "已拒绝";
    }
}