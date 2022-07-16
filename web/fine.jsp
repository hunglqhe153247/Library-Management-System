<%-- 
    Document   : fine
    Created on : Jul 16, 2022, 2:53:30 PM
    Author     : Pham_Thai_Ha <>
--%>

<%@page import="model.Fine"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <title>JSP Page</title>
        <%ArrayList<Fine> fineList = (ArrayList<Fine>) request.getAttribute("fineList");%>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1 class="my-3">Fine</h1>
            <table class="table table-striped">
                <tr>
                    <th>Fine Id</th>
                    <th>Reserver Id</th>
                    <th>Amount</th>
                    <th>Status</th>
                    <th></th>
                </tr>
                <%for (Fine f : fineList) {%>
                <tr>
                    <td><%=f.getFineId()%></td>
                    <td><%=f.getReserveId()%></td>
                    <td><%=f.getAmount()%></td>
                    <td><%=f.getStatus()%></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#payment" onclick="getElementById('fineId').value = <%=f.getFineId()%>">
                            Payment
                        </button>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>

        <div class="modal" tabindex="-1" id="payment">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Payment Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="PayFineController" method="POST">
                            <div class="form-group">
                                <label for="cardNumber">Credit card number</label>
                                <input type="text" class="form-control" id="cardNumber">
                            </div>
                            <div class="form-group">
                                <label for="cardPin">Pin</label>
                                <input type="text" class="form-control" id="cardPin">
                            </div>
                            <input type="hidden" name="fineId" id="fineId">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input class="btn btn-primary" type="submit" value="Pay" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>
