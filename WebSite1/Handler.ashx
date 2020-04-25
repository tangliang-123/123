<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Drawing;
using System.Web.SessionState;
public class Handler : IHttpHandler ,IRequiresSessionState{

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Session["checkCode"] = creatCode();
        creatImages(context.Session["checkCode"].ToString(), context);
    }

    private string creatCode()
    {
        Random rand = new Random();
        int vCode = 0;
        while(true)
        {
            vCode = rand.Next(10000);
            if(vCode.ToString().Length==4)
            {
                break;
            }
        }
        return vCode.ToString();
    }


    private void creatImages(string checkCode,HttpContext context)
    {
        System.Drawing.Bitmap image = new System.Drawing.Bitmap(55, 23);
        Graphics grap = Graphics.FromImage(image);
        grap.Clear(Color.White);

        //随机噪点
        Random rand = new Random();
        for(int i=0;i<100;i++)
        {
            int x = rand.Next(image.Width);
            int y = rand.Next(image.Height);
            grap.DrawRectangle(new Pen(Color.LightGray), x, y, 1, 1);

        }

        Color[] c = { Color.Red, Color.Lime, Color.Blue, Color.Black, Color.Green, Color.Yellow, Color.Pink };
        string[] font = { "宋体", "Microsoft Sans Serif", "隶书", "楷书", "Arial" };
        for(int i=0;i<checkCode.Length;i++)
        {
            int cindex = rand.Next(6);
            int findex = rand.Next(4);

            Font f = new System.Drawing.Font(font[findex], 14, FontStyle.Bold);
            Brush b = new System.Drawing.SolidBrush(c[cindex]);

            int j = 4;
            if (i % 2 == 0)
                j = 2;

            grap.DrawString(checkCode.Substring(i,1), f, b, 3+i*12,j);
        }

        Pen p = new Pen(Color.Black, 0);
        grap.DrawRectangle(p, 0, 0, image.Width - 1, image.Height - 1);

        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
        context.Response.ClearContent();
        context.Response.ContentType = "imgage/gif";
        context.Response.BinaryWrite(ms.ToArray());

        grap.Dispose();
        image.Dispose();
    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}