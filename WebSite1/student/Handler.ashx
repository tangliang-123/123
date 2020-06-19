<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Session.Abandon();
        context.Response.Redirect("Student_gerenxinxi.aspx?myiframe={0}");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}