<%-- 
    Document   : request
    Created on : Jun 20, 2022, 8:48:58 PM
    Author     : Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="RequestNewBookController" method="POST">
            Name: <input type="text" name="Name" value="" />
            <br>
            Author: <input type="text" name="Author" value="" />
            <br>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
