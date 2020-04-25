using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class tuijian : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AddStyle.AddStyleSheet(this.Page, "js/tuijiangangwei.css");//你的CSS文件放权在这里
    }
    static public class AddStyle
    {
        static public void AddStyleSheet(Page page, string cssPath)
        {
            HtmlLink link = new HtmlLink();
            link.Href = cssPath;
            link.Attributes["rel"] = "stylesheet";
            link.Attributes["type"] = "text/css";
            page.Header.Controls.Add(link);
        }
    }
}