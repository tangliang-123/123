using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jianliguanli_zhifu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
        SqlDataReader sdr = BLL.ManagerBusiness.joblist_Applictions(3, Session["admin"].ToString());
        jianlixianshi(sdr);
    }
    public void jianlixianshi(SqlDataReader sdr)
    {
        SqlDataReader sdl, sdt;



        while (sdr.Read())
        {
            sdl = BLL.ManagerBusiness.GetStu(Convert.ToInt32(sdr["StuID"]));
            sdt = BLL.ManagerBusiness.GetJob(Convert.ToInt32(sdr["PostID"]));
            while (sdl.Read())
            {
                while (sdt.Read())
                {
                    if (Convert.ToInt32(sdr["Application_status"]) == 3)
                    {

                        user_WebUserControl jianli = (user_WebUserControl)LoadControl("user/jianli.ascx");
                        jianli.jian(jianli, sdr, sdl, sdt);
                        Panel1.Controls.Add(jianli);

                    }
                }

            }

        }
    }
    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanlishixi.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }
}