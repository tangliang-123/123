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

    public void xiugaizt(JobDetail jobDetail)
    {
        if(BLL.ManagerBusiness.updategwzk(jobDetail))
        {
            Response.Write("<script>window.opener=null;window.close();</script>");
        }
        else
        {
           // Utility.JavaScript.Alert("修改失败", this);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         JobDetail jobDetail = new JobDetail();
        jobDetail.ID = int.Parse(Request.QueryString["Id"]);
        jobDetail.J_state = 1;
        // Utility.JavaScript.Alert((CheckBoxList1.SelectedValue == "暂停").ToString(), this);
        switch (CheckBoxList1.SelectedValue)
        { 
            case "暂停":
                {
                    jobDetail.J_state = 1;
                    xiugaizt(jobDetail);
                }break;
            case "审核通过":
                {
                    jobDetail.J_state = 2;
                    xiugaizt(jobDetail);
                }
                break;
            case "审核驳回":
                {
                    jobDetail.J_state = 3;
                    xiugaizt(jobDetail);
                }
                break;
            case "已结束":
                {
                    jobDetail.J_state =4 ;
                    xiugaizt(jobDetail);
                }
                break;
        }
    }
}