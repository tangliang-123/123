using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class stu_syjz : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public  void User(stu_syjz stu_Syjz,SqlDataReader reader)
    {
        stu_Syjz.Label1.Text = reader.GetString(6);
        stu_Syjz.Label2.Text = reader.GetString(5);
        stu_Syjz.Label4.Text = reader.GetString(7);
        stu_Syjz.Label5.Text = reader.GetInt32(10).ToString();
    }
}