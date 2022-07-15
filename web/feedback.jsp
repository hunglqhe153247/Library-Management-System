<%-- 
    Document   : feedback
    Created on : Jul 15, 2022, 10:51:04 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <title>JSP Page</title>
        <%int feedbackSubmited = (Integer) request.getAttribute("feedbackSubmited");%>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1 class="my-3">Feedback</h1>
            <form action="FeedbackController" method="POST">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title">
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea class="form-control" name="content" rows="3"></textarea>
                </div>
                <input type="submit" class="btn btn-primary" value="Submit"/>
            </form>
            <%if(feedbackSubmited != 0){%>
                <div class="text-success">Feedback submitted</div>
            <%}%>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>
