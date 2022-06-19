<%-- 
    Document   : bookshelves
    Created on : Jun 19, 2022, 2:25:59 PM
    Author     : Hung
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% ArrayList<Book> bookshelves = (ArrayList<Book>)request.getAttribute("bookshelves");
 %>
    </head>
    <body>
        <h1>Book Shelves</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Publisher</th>
                </tr>
            </thead>
            <tbody>
                <% for(Book b : bookshelves){ %>
                <tr>
                    <td><%= b.getId() %></td>
                    <td><%= b.getName()%></td>
                    <td><%= b.getAuthor()%></td>
                    <td><%= b.getPublisher() %></td>
                    <td><form name="reserve" action="ReserveOrderController" method="post">
                            <input type="hidden" name="id" value="<%= b.getId() %>" />
                            <input type="submit" value="Reserve" />
                        </form></td>
                        
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
