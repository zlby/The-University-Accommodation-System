<%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <title>SQL Query</title>
</head>
<script src="dist/js/bootstrap.min.js"></script>

<nav class="navbar navbar-toggleable-xl navbar-inverse bg-inverse">
    <a class="navbar-brand" href="#">Accommodation</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="information.jsp">Information</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="transaction.jsp?transaction_no=1">Transaction</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="sqlquery.jsp">SQL Query<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<br><br><br>

<form action="queryresult.jsp" method="post">
    <div class="form-group">
        <div class="row align-items-center">
            <div class="col"></div>
            <div class="col align-items-center">
                <label align="left">Please enter the sql query:</label>
                <textarea class="form-control" name="sqltext" id="sqlt" cols="60" rows="15"></textarea>
            </div>
            <div class="col"></div>
        </div>
    </div>
    <div class="form-group">
        <div class="row align-items-center">
            <div class="col"></div>
            <div class="col align-items-center">
                <div class="row align-items-center">
                    <div class="col align-items-center">
                        <button class="btn btn-outline-success btn-block">Query</button>
                    </div>
                    <div class="col align-items-center">
                        <button class="btn btn-outline-danger btn-block" type="reset">Clear</button>
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</form>



</body>
</html>
