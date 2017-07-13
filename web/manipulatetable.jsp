<%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,java.io.*,java.util.*, jsp.DBConnection"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <title>Manipulate Table</title>
</head>

<%
    Class.forName("org.postgresql.Driver").newInstance();
    String tablename = new String((request.getParameter("tablename")).getBytes("ISO-8859-1"),"UTF-8");

    ArrayList<String> columeNames = DBConnection.getColumnName(tablename);
    ArrayList<ArrayList<String>> results = DBConnection.getData(tablename, columeNames);
%>


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
            <li class="nav-item">
                <a class="nav-link" href="transaction.jsp?transaction_no=1">Transaction</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="sqlquery.jsp">SQL Query</a>
            </li>
        </ul>
    </div>
</nav>


<br><br><br>

<h1 align="center"><%=tablename%> Table</h1>


<br>


<table class="table">
    <thead class="thead-default">
    <tr>
        <th>#</th>
        <%
            for(String str : columeNames) {
        %><th><%=str%></th>
        <%
            }
        %>
    </tr>
    </thead>
    <thead>
    <%
        int counter = 1;
        for (ArrayList<String> ss : results) {
    %>
    <tr>
        <td><%=counter%></td>
    <%
        for (String s : ss) {
    %>
        <td><%=s%></td>
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

<br>
<%--<div class="row" align="center">--%>
    <%--<div class="col"></div>--%>
    <%--<div class="col"></div>--%>
    <%--<div class="col">--%>
        <%--<button class="btn btn-success btn-block">Add</button>--%>
    <%--</div>--%>
    <%--<div class="col"></div>--%>
    <%--<div class="col"></div>--%>
<%--</div>--%>
<br>
<br>


</body>
</html>
