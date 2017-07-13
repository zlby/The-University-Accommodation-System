<%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jsp.Transaction" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <title>Transaction</title>
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
            <li class="nav-item">
                <a class="nav-link" href="information.jsp">Information</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="transaction.jsp?transaction_no=1">Transaction</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="sqlquery.jsp">SQL Query</a>
            </li>
        </ul>
    </div>
</nav>


<br>
<br>


<div class="list-group">
    <a href="?transaction_no=1" class="list-group-item list-group-item-action">Present a report listing the Manager’s name and telephone number for each hall of
        residence.</a>
    <a href="?transaction_no=2" class="list-group-item list-group-item-action">Present a report listing the names and matriculation numbers of students with the
        details of their lease agreements.</a>
    <a href="?transaction_no=3" class="list-group-item list-group-item-action">Display the details of the total rent paid by a given student.</a>
    <a href="?transaction_no=4" class="list-group-item list-group-item-action">Present a report on students that have not paid their invoices by a given date.</a>
    <a href="?transaction_no=5" class="list-group-item list-group-item-action">Display the details of flat inspections where the property was found to be in an
        unsatisfactory condition.</a>
    <a href="?transaction_no=6" class="list-group-item list-group-item-action"> Present a report of the names and matriculation numbers of students with their room
        number and place number in a particular hall of residence.</a>
    <a href="?transaction_no=7" class="list-group-item list-group-item-action">Display the total number of students in each student category.</a>
    <a href="?transaction_no=8" class="list-group-item list-group-item-action">Present a report of the names and matriculation numbers for all students who have not
        supplied details of their next-of-kin.</a>
    <a href="?transaction_no=9" class="list-group-item list-group-item-action">Display the minimum, maximum, and average monthly rent for rooms in halls of
        residence.</a>
    <a href="?transaction_no=10" class="list-group-item list-group-item-action"> Display the total number of places in each hall of residence.</a>
    <a href="?transaction_no=11" class="list-group-item list-group-item-action"> Display the staff number, name, age, and current location of all members of the
        accommodation staff who are over 60 years old today.</a>
</div>


<br><br>
<br><br>

<h2 align="center">Transaction Result</h2>

<br><br>


<%
    Class.forName("org.postgresql.Driver").newInstance();
    String number = new String((request.getParameter("transaction_no")).getBytes("ISO-8859-1"),"UTF-8");
    int n = Integer.parseInt(number);
    ArrayList<ArrayList<String>> res = Transaction.trans(n);
%>

<%
    if ((res != null) && res.size() > 1) {
%>
<table class="table">
    <thead class="thead-default">
    <tr>
        <th>#</th>
        <%
            for (String columnName : res.get(0)) {
        %>
        <th><%=columnName%></th>
        <%
            }
        %>
    </tr>
    </thead>
    <thead>
    <%
        int counter = 1;
        res.remove(0);
        for (ArrayList<String> temp : res) {
    %>
    <tr>
        <td><%=counter%></td>
        <%
            for (String str : temp) {
        %>
        <td><%=str%></td>
        <%
            }
        %>
    </tr>
    <%
            counter++;
        }
    %>
    </thead>
</table>

<%
    }
%>

<%
    if (res == null) {
%>
<br>

<form action="" method="post">
    <div class="form-group">
        <label>Input Parameter</label>
        <input type="text" class="form-control" name="inputsql" placeholder="Enter param:">
        <small id="parameterhelp" class="form-text text-muted">To complete the transaction, you need to enter the parameter.</small>
        <button align="center" type="submit" class="btn btn-lg btn-success">Query</button>
    </div>
</form>
<%--<script>--%>
    <%--var value = document.getElementById("inputsql").value;--%>
<%--</script>--%>


<%
    if (request.getParameter("inputsql") != null) {
    String par = new String((request.getParameter("inputsql")).getBytes("ISO-8859-1"),"UTF-8");
    if (n == 4) {
        res = Transaction.transaction_4(par);
    }
    else if (n == 6) {
        res = Transaction.transaction_6(par);
    }
%>
<table class="table">
    <thead class="thead-default">
    <tr>
        <th>#</th>
        <%
            for (String columnName : res.get(0)) {
        %>
        <th><%=columnName%></th>
        <%
            }
        %>
    </tr>
    </thead>
    <thead>
    <%
        int counter = 1;
        res.remove(0);
        for (ArrayList<String> temp : res) {
    %>
    <tr>
        <td><%=counter%></td>
        <%
            for (String str : temp) {
        %>
        <td><%=str%></td>
        <%
            }
        %>
    </tr>
    <%
            counter++;
        }
    %>
    </thead>
</table>

<%
        }
    }
%>
</body>
</html>
