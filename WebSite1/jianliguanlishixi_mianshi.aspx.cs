﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jianliguanlishixi_mianshi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("shangjiaxinxi.aspx");
    }

    protected void Label10_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanli.aspx");
    }

    protected void Label11_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianliguanlishixi.aspx");
    }
}