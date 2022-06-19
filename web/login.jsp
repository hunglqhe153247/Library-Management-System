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
        <title>Login</title>
        <%String error = (String) request.getAttribute("error");%>
        <%String userid = (String) request.getAttribute("ckUserId");%>
        <%if(userid == null) userid = "";%>
        <%String password = (String) request.getAttribute("ckPassword");%>
        <%if(password == null) password = "";%>
    </head>
    <body>
        <h1>Login</h1>
        <form action="LoginController" method="POST">
            <label for="userid">User ID</label>
            <input type="text" name="Userid" value="<%=userid%>" /><br><br>
            <label for="password">Password</label>
            <input type="password" name="Password" value="<%=password%>" /><br><br>
            <input type="submit" value="Login" />
        </form>
        <br>
        <%if(error != null){
            if(error.equals("1")){%>
            <div>User name or password incorrect. Please enter again</div>
            <%}
        }%>
    </body>
</html>
