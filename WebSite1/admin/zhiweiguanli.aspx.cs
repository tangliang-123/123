using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_zhiweiguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataRefresh();
        }

    }
    private void DataRefresh()
    {
        List<JobDetail> list = BLL.TeachAdminBLL.GetJobList();//
                                                                     //(控件支持很多)
        rpTest.DataSource = list;
        rpTest.DataBind();
    }



    [WebMethod]
    public static bool deleteByID(int ID)

    {

        if (BLL.TeachAdminBLL.DeleteJob(ID))
        {
            return true;
        }
        else
        {
            return false;
        }

    }

    protected void search_Click(object sender, EventArgs e)
    {
        List<JobDetail> list = BLL.UniversityStudentBLL.GetJobListByType(cxType.Value);
        rpTest.DataSource = list;
        rpTest.DataBind();
    }
}