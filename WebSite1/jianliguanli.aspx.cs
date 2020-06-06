using ASP;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class jianliguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader da = BLL.ManagerBusiness.Job_name(Session["admin"].ToString());
        if (!IsPostBack)
        {
            DropDownList2.Items.Add("最早时间");
            DropDownList2.Items.Add("最新报名");
            DropDownList3.Items.Add("按时间升序");
            DropDownList3.Items.Add("按时间降序");
            DropDownList3.Items.Insert(0, "请选择");
            DropDownList2.Items.Insert(0, "请选择");
            DropDownList1.Items.Insert(0, "请选择");

            
            while (da.Read())
            {
                DropDownList1.Items.Add(da["J_name"].ToString());
            }
            

        }
        
        if (DropDownList1.SelectedValue == "请选择"&&DropDownList3.SelectedValue=="请选择"&&DropDownList2.SelectedValue=="请选择"&&TextBox1.Text== "请输入应聘者的姓名或手机号")
        {
            SqlDataReader sdr = BLL.ManagerBusiness.joblist_Applictions(1, Session["admin"].ToString());
            jianlixianshi(sdr);
            
        }
        if (DropDownList1.SelectedValue == "请选择" && DropDownList2.SelectedValue == "请选择" && TextBox1.Text == "请输入应聘者的姓名或手机号")
        {
            if (DropDownList3.SelectedValue == "按时间升序")
            {



                TextBox1.Text = "请输入应聘者的姓名或手机号";
                DropDownList1.SelectedValue = "请选择";
                DropDownList2.SelectedValue = "请选择";
                SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_order_by_time(1, Session["admin"].ToString());
                jianlixianshi(sdr);


            }
            if (DropDownList3.SelectedValue == "按时间降序")
            {
                TextBox1.Text = "请输入应聘者的姓名或手机号";
                DropDownList1.SelectedValue = "请选择";
                DropDownList2.SelectedValue = "请选择";
                SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_order_by_asctime(1, Session["admin"].ToString());
                jianlixianshi(sdr);

            }
        }
        if (DropDownList3.SelectedValue == "请选择" && TextBox1.Text == "请输入应聘者的姓名或手机号")
        {
            if (DropDownList2.SelectedValue == "最早时间")
            {
                TextBox1.Text = "请输入应聘者的姓名或手机号";
                DropDownList1.SelectedValue = "请选择";
                DropDownList3.SelectedValue = "请选择";
                SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_order_by_time(1, Session["admin"].ToString());
                jianlixianshi(sdr);


            }
            if (DropDownList2.SelectedValue == "最新报名")
            {
                TextBox1.Text = "请输入应聘者的姓名或手机号";
                DropDownList1.SelectedValue = "请选择";
                DropDownList3.SelectedValue = "请选择";
                SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_order_by_asctime(1, Session["admin"].ToString());
                jianlixianshi(sdr);

            }
        }
        
            if (DropDownList1.SelectedValue != "请选择")
            {
                TextBox1.Text = "请输入应聘者的姓名或手机号";
                DropDownList2.SelectedValue = "请选择";
                DropDownList3.SelectedValue = "请选择";
                SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_name(DropDownList1.SelectedValue, Session["admin"].ToString(), 1);
                jianlixianshi(sdr);

            }
        
        
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
        

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
                    if (Convert.ToInt32(sdr["Application_status"]) == 1)
                    {

                        user_WebUserControl jianli = (user_WebUserControl)LoadControl("user/jianli.ascx");
                        jianli.jian(jianli, sdr, sdl, sdt);
                        Panel1.Controls.Add(jianli);

                    }
                }

            }

        }
    }
    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanlishixi.aspx");
    }

    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "请输入应聘者的姓名或手机号";
        DropDownList2.SelectedValue = "请选择";
        DropDownList3.SelectedValue = "请选择";


    }
    public void gangwei()
    {
        TextBox1.Text = "请输入应聘者的姓名或手机号";
        DropDownList2.SelectedValue = "请选择";
        DropDownList3.SelectedValue = "请选择";
        DropDownList1.SelectedValue = "请选择";
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "请输入应聘者的姓名或手机号";
        DropDownList1.SelectedValue = "请选择";
        DropDownList3.SelectedValue = "请选择";


    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "请输入应聘者的姓名或手机号";
        DropDownList1.SelectedValue = "请选择";
        DropDownList2.SelectedValue = "请选择";
        //DropDownList1.SelectedValue == "请选择";
        //if (DropDownList3.SelectedValue == "按时间升序")
        //{
        //   SqlDataReader sdr= BLL.ManagerBusiness.Job_appliction_order_by_time(1, Session["admin"].ToString());
        //    jianlixianshi(sdr);

        //}
        //if (DropDownList3.SelectedValue == "按时间降序")
        //{
        //   SqlDataReader sdr= BLL.ManagerBusiness.Job_appliction_order_by_asctime(1, Session["admin"].ToString());
        //    jianlixianshi(sdr);
        //}
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        //int i= Convert.ToInt32( BLL.ManagerBusiness.Job_appliction_stu_name(TextBox1.Text, Session["admin"].ToString(), 1));
        //if (i>0)
        //{
        //    SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_stu_name(TextBox1.Text, Session["admin"].ToString(), 1);
        //    jianlixianshi(sdr);
        //}
        DropDownList2.SelectedValue = "请选择";
        DropDownList1.SelectedValue = "请选择";
        DropDownList3.SelectedValue = "请选择";
        //if (TextBox1.Text.Trim().Length == 11)
        //{
        //    SqlDataReader sdr = BLL.ManagerBusiness.Job_appliction_stu_phone(TextBox1.Text, Session["admin"].ToString(), 1);
        //    jianlixianshi(sdr);
        //}
        //else
        //{
        //    Utility.JavaScript.Alert("没有此手机号或姓名，请重试", this);
        //}
    }
}