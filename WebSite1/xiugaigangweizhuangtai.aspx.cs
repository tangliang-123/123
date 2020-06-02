using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
public partial class xiugaigangweizhuangtai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["ID"] != null)
         jobDetail.ID =int.Parse( Session["ID"].ToString());
            if (CheckBoxList1.SelectedValue == "暂停")
                { if (BLL.ManagerBusiness.updategwzk(jobDetail))
                        {
                            jobDetail.J_state = 1;
                            Utility.JavaScript.AlertAndRedirect("修改成功", "../zhiweiguanli.aspx", this);
                        }
                        else
                            Utility.JavaScript.Alert("修改失败", this);
                }
        else if (CheckBoxList1.SelectedValue == "审核通过")
        {
            if (BLL.ManagerBusiness.updategwzk(jobDetail))
            {
                jobDetail.J_state = 2;
                Utility.JavaScript.AlertAndRedirect("修改成功", "../zhiweiguanli.aspx", this);
            }
            else
                Utility.JavaScript.Alert("修改失败", this);
        }
        else if (CheckBoxList1.SelectedValue == "审核驳回")
        {
            if (BLL.ManagerBusiness.updategwzk(jobDetail))
            {
                jobDetail.J_state = 3;
                Utility.JavaScript.AlertAndRedirect("修改成功", "../zhiweiguanli.aspx", this);
            }
            else
                Utility.JavaScript.Alert("修改失败", this);
        }
        else
        {
            if (BLL.ManagerBusiness.updategwzk(jobDetail))
            {
                jobDetail.J_state = 4;
                Utility.JavaScript.AlertAndRedirect("修改成功", "../zhiweiguanli.aspx", this);
            }
            else
                Utility.JavaScript.Alert("修改失败", this);
        }
    }
}