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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1>Reserved Books</h1>
            <% ArrayList<Book> reserved_books = (ArrayList<Book>) request.getAttribute("reserved_books");
                ArrayList<Order> orderOfThisAccount = (ArrayList<Order>) request.getAttribute("orderOfThisAccount");
            %>

            <table border="1" class="table">
                <thead class="thead-dark">
                    <tr>

                        <th>Book Name</th>
                        <th>Reserve Date</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Book b : reserved_books) {%>
                    <tr>
                        <td><%= b.getName()%></td>
                        <% for (Order o : orderOfThisAccount) {
                                if (o.getBookId() == b.getId()) {%>
                        <td><%= o.getReserveDate()%></td>
                        <% break;
                                }
                            }%>

                        <% for (Order o : orderOfThisAccount) {
                                if (o.getBookId() == b.getId()) {%>
                        <td>
                            <form name="Renew" action="DeleteReserveBookController" method="post">
                                <input type="hidden" name="id" value="<%= o.getId()%>" />
                                <input type="submit" value="Delete" />
                            </form>
                        </td>
                        <% break;
                                }
                            }%>
                        <td>
                            <form name="Renew" action="RenewBookController" method="post">
                                <input type="hidden" name="id" value="<%= b.getId()%>" />
                                <input type="submit" value="Renew" />
                            </form>
                        </td>
                    </tr>
                    <% }%>  
                </tbody>
            </table>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>
