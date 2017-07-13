<%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <title>Information</title>
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
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
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




<br><br>
<h2 align="center">The University Accommodation Database</h2>


<br><br>

<div class="row" align="center">
    <div class="col"></div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">student</h3>
                <p class="card-text" align="left">This table stores the information of each full-time student.</p>
                <a href="manipulatetable.jsp?tablename=student" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">staff</h3>
                <p class="card-text" align="left">This table stores some detailed information on staff in the school.</p>
                <a href="manipulatetable.jsp?tablename=staff" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">hall</h3>
                <p class="card-text" align="left">This table stores the names, locations and bed remains of halls.</p>
                <a href="manipulatetable.jsp?tablename=hall" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col"></div>
</div>

<br>

<div class="row" align="center">
    <div class="col"></div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">flat</h3>
                <p class="card-text" align="left">This table stores the names, locations and bed remains of flats.</p>
                <a href="manipulatetable.jsp?tablename=flat" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">hallroom</h3>
                <p class="card-text" align="left">This table stores rent and id of each room in hall.</p>
                <a href="manipulatetable.jsp?tablename=hallroom" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">flatroom</h3>
                <p class="card-text" align="left">This table stores rent and id of each room in flat.</p>
                <a href="manipulatetable.jsp?tablename=flatroom" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col"></div>
</div>


<br>

<div class="row" align="center">
    <div class="col"></div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">lease</h3>
                <p class="card-text" align="left">The data stored on each lease: information of student and room.</p>
                <a href="manipulatetable.jsp?tablename=lease" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">invoice</h3>
                <p class="card-text" align="left">This table stores data with each invoice.</p>
                <a href="manipulatetable.jsp?tablename=invoice" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">inspection</h3>
                <p class="card-text" align="left">This table stores each inspection to flat by staff.</p>
                <a href="manipulatetable.jsp?tablename=inspection" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col"></div>
</div>

<br>

<div class="row" align="center">
    <div class="col"></div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">course</h3>
                <p class="card-text" align="left">A limited amount of information on courses run by University.</p>
                <a href="manipulatetable.jsp?tablename=course" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">studentcourse</h3>
                <p class="card-text" align="left">The matching between students and their courses.</p>
                <a href="manipulatetable.jsp?tablename=studentcourse" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card" style="width: 20rem;">
            <div class="card-block">
                <h3 class="card-title">next-of-kin</h3>
                <p class="card-text" align="left">This table stores information of next-of-kin of each student.</p>
                <a href="manipulatetable.jsp?tablename=next_of_kin" class="btn btn-primary">Manipulate</a>
            </div>
        </div>
    </div>
    <div class="col"></div>
</div>

<br><br>



</body>
</html>
