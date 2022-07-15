<%-- 
    Document   : login
    Created on : Jun 19, 2022, 1:20:52 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <title>Login</title>
        <%String error = (String) request.getAttribute("error");%>
        <%String userid = (String) request.getAttribute("ckUserId");%>
        <%if(userid == null) userid = "";%>
        <%String password = (String) request.getAttribute("ckPassword");%>
        <%if(password == null) password = "";%>
    </head>
    <body>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="card col-4 mt-5">
                    <div class="card-header">
                        <h1>Login</h1>
                    </div>
                    <div class="card-body">
                        <form action="LoginController" method="POST">
                            <div class="form-group">
                                <label for="userid">User ID</label>
                                <input class="form-control" type="text" name="Userid" value="<%=userid%>" />
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input class="form-control" type="password" name="Password" value="<%=password%>" />
                            </div>
                            <input class="btn btn-primary" type="submit" value="Login" />
                        </form>
                        <br>
                        <%if (error != null) {
                        if (error.equals("1")) {%>
                        <div class="text-danger">User name or password incorrect. Please enter again</div>
                        <%}
                    }%>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>
