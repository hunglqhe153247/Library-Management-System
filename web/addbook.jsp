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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <form action="AddNewBookController" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1">Book Name</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter book" name="name" value="">
               
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Author</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Author name" name="author" value="">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Publisher</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Publisher name" name="publisher" value="">
                </div>
                <input type="submit" value="Submit" class="btn btn-primary"/>
            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>
