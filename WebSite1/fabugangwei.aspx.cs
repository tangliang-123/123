using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fabugangwei : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        jobDetail.J_LoginId = Session["admin"].ToString();
        jobDetail.J_name = TextBox1.Text;
        jobDetail.J_Category = DropDownList1.SelectedValue;
        jobDetail.J_Portray = TextBox2.Text;
        jobDetail.J_Salary = TextBox4.Text + DropDownList2.SelectedValue;
        jobDetail.Working_time = DropDownList5.SelectedValue;
        jobDetail.Position = TextBox6.Text;
        jobDetail.Remarks = RadioButtonList1.SelectedValue + RadioButtonList2.SelectedValue + RadioButtonList3.SelectedValue;
        jobDetail.Settlement = DropDownList3.SelectedValue;
        jobDetail.Need_number = int.Parse(TextBox3.Text);
        jobDetail.To_release_time = DateTime.Now;
        //Utility.JavaScript.Alert(jobDetail.J_Salary, this);
        if (BLL.ManagerBusiness.AddJob(jobDetail))
        {
            Utility.JavaScript.Alert("发布成功", this);
            Response.Redirect("zhiweiguanli.aspx");
        }

    }
}