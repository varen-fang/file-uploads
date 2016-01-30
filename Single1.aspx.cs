using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

public partial class FileUpload1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        JavaScriptSerializer jss = new JavaScriptSerializer();

        if (fileupload1.HasFile)
        {

            var outputObj = new {
                fileName = fileupload1.FileName,
                ext = Path.GetExtension(fileupload1.FileName),
                mimeType = fileupload1.PostedFile.ContentType,
                size = fileupload1.PostedFile.ContentLength + " Bytes",
            };

            lblMsg.Value = jss.Serialize(outputObj);

            fileupload1.SaveAs(@"D:\upload\" + fileupload1.FileName);
        }
        else
        {
            lblMsg.Value = jss.Serialize(new { message = "No file" });
        }
    }
}