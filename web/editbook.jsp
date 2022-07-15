<%-- 
    Document   : editbook
    Created on : Jul 16, 2022, 12:43:02 AM
    Author     : Hung
--%>

<%@page import="model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% Book book= (Book)request.getAttribute("book"); %>
    </head>
    <body>
        <form action="EditBookController" method="POST">
            <input type="hidden" name="id" value="<%=book.getId()%>" />
            <input type="text" name="name" value="<%=book.getName()%>" />
            <input type="text" name="author" value="<%=book.getAuthor()%>" />
            <input type="text" name="publisher" value="<%=book.getPublisher()%>" />
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
