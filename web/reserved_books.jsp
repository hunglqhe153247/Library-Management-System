<%-- 
    Document   : reserved_books
    Created on : Jun 19, 2022, 5:36:33 PM
    Author     : Hung
--%>

<%@page import="model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reserved Books</h1>
        <% ArrayList<Book> reserved_books = (ArrayList<Book>)request.getAttribute("reserved_books"); 
        ArrayList<Order> orderOfThisAccount = (ArrayList<Order>)request.getAttribute("orderOfThisAccount");
        %>
        
        <table border="1">
            <thead>
                <tr>
                    
                    <th>Book Name</th>
                    <th>Reserve Date</th>
                </tr>
            </thead>
            <tbody>
                <% for(Book b:reserved_books){ %>
                <tr>
                    <td><%= b.getName() %></td>
                    <% for(Order o:orderOfThisAccount){ 
                        if(o.getBookId()==b.getId()){%>
                    <td><%= o.getReserveDate() %></td>
                    <% break;}} %>
                    <td>
                        <form name="Renew" action="RenewBookController" method="POST">
                            <input type="hidden" name="bookId" value="<%= b.getId()%>" />
                            <input type="submit" value="Renew" />
                        </form>
                    </td>
                </tr>
                <% } %>  
            </tbody>
        </table>

    </body>
</html>
