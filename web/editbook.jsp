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
        <% Book book = (Book) request.getAttribute("book");%>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1 class="text-center">Edit Book</h1>
            <form action="EditBookController" method="POST">
                <input type="hidden" name="id" value="<%=book.getId()%>" />
                <div class="form-group">
                    <label for="exampleInputEmail1">Book Name</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter book" name="name" value="<%=book.getName()%>">

                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Author</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Author name" name="author" value="<%=book.getAuthor()%>">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Publisher</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Publisher name" name="publisher" value="<%=book.getPublisher()%>">
                </div>
                <input type="submit" value="Submit" class="btn btn-primary"/>

            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
