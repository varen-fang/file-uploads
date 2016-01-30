<%@ WebHandler Language="C#" Class="html_control_handler" %>

using System;
using System.Web;

public class html_control_handler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {

        HttpPostedFile file = context.Request.Files["file-1"];

        if (file != null)
        {
            file.SaveAs(@"D:\upload\" + file.FileName);

            context.Response.ContentType = "text/plain";
            context.Response.Write("Upload success");
        }
        else
        {
            context.Response.Write("file is null");

            context.Response.ContentType = "text/plain";
            context.Response.Write("Upload fail");
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}