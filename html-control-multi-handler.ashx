<%@ WebHandler Language="C#" Class="html_control_multi" %>

using System;
using System.Web;

public class html_control_multi : IHttpHandler {

    public void ProcessRequest(HttpContext context) {

        string[] names = new string[2];
        names[0] = "file-1";
        names[1] = "file-2";

        foreach (string name in names)
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