<%@ WebHandler Language="C#" Class="html_control_multi" %>

using System;
using System.Web;

public class html_control_multi : IHttpHandler {

    public void ProcessRequest(HttpContext context) {

        foreach( string name in context.Request.Files.AllKeys )
        {
            HttpPostedFile file = context.Request.Files[name];

            if(file != null && file.ContentLength > 0)
            {
                file.SaveAs(@"D:\upload\" + file.FileName);
            }
        }

        context.Response.ContentType = "text/plain";
        context.Response.Write("Upload success");

    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}