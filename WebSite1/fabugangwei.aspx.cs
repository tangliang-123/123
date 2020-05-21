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
        string remark="";
        JobDetail jobDetail = new JobDetail();
        jobDetail.J_LoginId = Session["admin"].ToString();
        jobDetail.J_name = TextBox1.Text;
        jobDetail.J_Category = DropDownList1.SelectedValue;
        jobDetail.J_Portray = TextBox2.Text;
        jobDetail.J_Salary = TextBox4.Text + DropDownList2.SelectedValue;
        jobDetail.Working_time = DropDownList5.SelectedValue;
        jobDetail.Position = TextBox6.Text;
        if (RadioButtonList1.SelectedValue == "需求" || RadioButtonList2.SelectedValue == "需求" || RadioButtonList3.SelectedValue == "需求")
             remark = Label24.Text + " " + Label25.Text + " " + Label26.Text + " " + Label27.Text;
        jobDetail.Remarks = remark;
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