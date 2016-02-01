<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Single1.aspx.cs" Inherits="FileUpload1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

</head>
<body>

    <h3>
        Single file, ASP.NET web control, Save to D:/upload/
    </h3>

    <form id="form1" runat="server">
        <asp:FileUpload ID="fileupload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click"/>

        <input type="hidden" runat="server" id="lblMsg" value="{message = 'init complete'}"/>
    </form>

    <script>
        $(document).ready(function () {
            console.log(JSON.parse($("#lblMsg").val()));
        });
    </script>

</body>
</html>
