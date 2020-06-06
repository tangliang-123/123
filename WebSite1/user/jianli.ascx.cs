using ASP;
using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void jian(user_WebUserControl jianli, SqlDataReader sdr, SqlDataReader sdl, SqlDataReader sdt)
    {
        
        ((Button)jianli.FindControl("Button1")).Text ="学号："+ sdr["StuID"].ToString();
        ((Button)jianli.FindControl("Button2")).Text ="岗位编号："+ sdr["PostID"].ToString();
        ((Label)jianli.FindControl("Label2")).Text =sdr["Stu_Resume"].ToString();
        ((Label)jianli.FindControl("Label3")).Text ="申请时间："+sdr["Application_time"].ToString();

        ((Label)jianli.FindControl("Label17")).Text = sdl["StuID"].ToString();
        ((Label)jianli.FindControl("Label18")).Text = sdl["S_name"].ToString();
        ((Label)jianli.FindControl("Label19")).Text = sdl["S_Real_Name"].ToString();
        ((Label)jianli.FindControl("Label20")).Text = sdl["S_telnum"].ToString();

        ((Label)jianli.FindControl("Label21")).Text = sdt["J_name"].ToString();
        ((Label)jianli.FindControl("Label23")).Text = sdt["J_Portray"].ToString();
        ((Label)jianli.FindControl("Label24")).Text = sdt["J_Salary"].ToString();
        ((Label)jianli.FindControl("Label25")).Text = sdt["Working_time"].ToString();
        ((Label)jianli.FindControl("Label26")).Text = sdt["Position"].ToString();
        ((Label)jianli.FindControl("Label27")).Text = sdt["Remarks"].ToString();
        ((Label)jianli.FindControl("Label28")).Text = sdt["Settlement"].ToString();
        ((Label)jianli.FindControl("Label29")).Text = sdt["To_release_time"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        xs.Style.Add("display", "block");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        gw.Style.Add("display", "block");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        gw.Style.Add("display", "none");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        xs.Style.Add("display", "none");
    }
}