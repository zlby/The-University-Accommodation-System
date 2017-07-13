<%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="dist/css/bootstrap.min.css">
        <title>Home</title>
    </head>
    <body>

        <script src="dist/js/bootstrap.min.js"></script>


        <nav class="navbar navbar-toggleable-xl navbar-inverse bg-inverse">
            <a class="navbar-brand" href="#">Accommodation</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="information.jsp">Information</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="transaction.jsp?transaction_no=1">Transaction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sqlquery.jsp">SQL Query</a>
                    </li>
                </ul>
            </div>
        </nav>


        <div class="jumbotron">
            <h1 class="display-3">Display Information</h1>
            <p class="lead">Here you can get all the data stored in the database.</p>
            <hr class="my-4">
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="information.jsp" role="button">Enter &raquo;</a>
            </p>
        </div>
        <div class="jumbotron">
            <h1 class="display-3">Show Transaction</h1>
            <p class="lead">Here you can select what transaction to be made and see the result of some given transactions in the guide book.</p>
            <hr class="my-4">
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="transaction.jsp?transaction_no=1" role="button">Enter &raquo;</a>
            </p>
        </div>
        <div class="jumbotron">
            <h1 class="display-3">DIY SQL Query</h1>
            <p class="lead">Here you can design your own queries to manipulate the database in CLI and see what result you will get.</p>
            <hr class="my-4">
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="sqlquery.jsp" role="button">Enter &raquo;</a>
            </p>
        </div>
    </body>
</html>
