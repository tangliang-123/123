﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_Student_gerenxinxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["myiframe"]!=null)
            myframe.Src = Request.QueryString["myiframe"];
        if (Session["stulogin"] != null)
        {
            Label1.Text = Session["stulogin"].ToString();
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        
        

    }
}