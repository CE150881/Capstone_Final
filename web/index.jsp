<%-- 
    Document   : index.jsp
    Created on : 03-Dec-2022, 08:08:03
    Author     : A Hi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP-Servlet Upload file</title>
    </head>
    <body>
        <h2>Demo JSP-Servlet Upload File</h2>
        <form method="post" action="UploadFileServlet" enctype="multipart/form-data">
            Select file to upload: <input type="file" name="file" size="60" /><br /><br /> 
            <input type="submit" value="Upload" />
        </form>
    </body>
</html>
