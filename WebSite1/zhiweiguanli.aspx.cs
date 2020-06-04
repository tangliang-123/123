using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhiweiguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         bindfab();
        // bindgl();
        //repeatbind();
        Manager manager = new Manager();
        manager.M_LoginId = Session["admin"].ToString();
        Label6.Text = BLL.ManagerBusiness.returnlogid(manager);
    }

    public void bindfab()
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["admin"] != null)
        {
            jobDetail.J_LoginId = Session["admin"].ToString();
        }
        Panel1.Visible = false;
        DataSet ds = BLL.ManagerBusiness.selectJob(jobDetail);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        }
        //public void bindgl()
        //{
        //    JobDetail jobDetail = new JobDetail();
        //    if (Session["admin"] != null)
        //    {
        //        jobDetail.J_LoginId = Session["admin"].ToString();
        //    }
        //    Panel1.Visible = false;
        //    DataSet ds = BLL.ManagerBusiness.selectJob(jobDetail);

        //    ((Label)zhiweiguanlikongjia.FindControl("Label3")).Text = ds.Tables[0].Rows[0]["J_name"].ToString();
        //    ((Label)zhiweiguanlikongjia.FindControl("Label4")).Text = ds.Tables[0].Rows[0]["Working_time"].ToString();
        //    ((Label)zhiweiguanlikongjia.FindControl("Label7")).Text = ds.Tables[0].Rows[0]["J_Salary"].ToString();
        //    ((Label)zhiweiguanlikongjia.FindControl("Label5")).Text = ds.Tables[0].Rows[0]["Position"].ToString();
        //    ((Label)zhiweiguanlikongjia.FindControl("Label8")).Text = ds.Tables[0].Rows[0]["Need_number"].ToString();

        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal1")).Text= ds.Tables[0].Rows[0]["J_name"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal2")).Text = ds.Tables[0].Rows[0]["J_Category"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal3")).Text = ds.Tables[0].Rows[0]["J_Portray"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal4")).Text = ds.Tables[0].Rows[0]["J_Salary"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal5")).Text = ds.Tables[0].Rows[0]["Working_time"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal6")).Text = ds.Tables[0].Rows[0]["Position"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal7")).Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal8")).Text = ds.Tables[0].Rows[0]["Settlement"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal9")).Text = ds.Tables[0].Rows[0]["Need_number"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal10")).Text = ds.Tables[0].Rows[0]["J_state"].ToString();
        //    ((Literal)zhiweiguanlikongjia.FindControl("Literal11")).Text = ds.Tables[0].Rows[0]["To_release_time"].ToString();
        //}
        protected void Label3_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanlishixi.aspx");
    }

    //public void repeatbind()
    //{
    //    JobDetail jobDetail = new JobDetail();
    //    if (Session["admin"] != null)
    //    {
    //        jobDetail.J_LoginId = Session["admin"].ToString();
    //    }
    //    Panel1.Visible = false;
    //    DataSet ds = BLL.ManagerBusiness.selectJob(jobDetail);
    //    Repeater1.DataSource = ds.Tables[0];
    //    Repeater1.DataBind();
    //}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        JobDetail jobDetail = new JobDetail();
        if (Session["admin"] != null)
        {
            jobDetail.J_LoginId = Session["admin"].ToString();
        }
        string departID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        jobDetail.ID = Convert.ToInt32(departID);
        Utility.JavaScript.Alert(jobDetail.ID.ToString(), this);
        if (BLL.ManagerBusiness.DropJob(jobDetail))
        {
            Utility.JavaScript.Alert("删除成功", this);
            bindfab();
        }
        else
        {
            Utility.JavaScript.Alert("删除失败", this);
        }
    }

    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhiweiguanli.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fabu_tuijiangangwei.aspx");
    }






    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("xiugaigangweizhuangtai.aspx");
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session["ID"]= GridView1.DataKeys[e.NewSelectedIndex].Values[0].ToString();
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        DataSet ds = BLL.ManagerBusiness.GetJobListByName(name);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

 
   public int id=0;
    protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        id = int.Parse(GridView1.DataKeys[e.NewSelectedIndex].Values[0].ToString());
        Utility.JavaScript.Alert(id.ToString(), this);
    }

    [WebMethod]
    public  int getId()
    {
        return id;
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string JS = "EditManager.aspx?Id=" + e.Row.Cells[0].Text.ToString() + "";
        e.Row.Cells[10].Text = "<a href=\"javascript:\"onclick=\"javascript:varwin=window.open('" + JS + "','修改','top=300,left=500,width=300,height=300')\">修改</a>";
        string JS2 = "Default2.aspx?Id=" + e.Row.Cells[0].Text.ToString() + "";
        e.Row.Cells[9].Text = "<a href=\"javascript:\"onclick=\"javascript:varwin=window.open('" + JS2 + "','详细','top=200,left=500,width=300,height=350')\">详细</a>";
        string JS3 = "xiugaigangweizhuangtai.aspx?Id=" + e.Row.Cells[0].Text.ToString() + "";
        e.Row.Cells[11].Text = "<a href=\"javascript:\"onclick=\"javascript:varwin=window.open('" + JS3 + "','修改岗位状态','top=200,left=500,width=350,height=150')\">修改岗位状态</a>";
    }
}