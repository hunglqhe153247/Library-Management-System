<%-- 
    Document   : home
    Created on : Jun 19, 2022, 1:27:33 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%String userName = (String) session.getAttribute("userName");%>
    </head>
    <body>
        <h1>Hello <%=userName%></h1>
        <a href="BookshelvesController">Book Library</a>
        <br>
        <br>
        <a href="ReserveOrderController">Reserved Book</a>
        <br>
        <br>
        
    </body>
</html>
