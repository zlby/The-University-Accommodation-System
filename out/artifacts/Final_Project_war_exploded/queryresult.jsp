<%@ page import="jsp.SQLExecution" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zlby9
  Date: 2017/6/18
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <title>Query Result</title>
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
            <li class="nav-item">
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

<h1 align="center">Query Result</h1>
<br>

<%
    Class.forName("org.postgresql.Driver").newInstance();
    String sql = new String((request.getParameter("sqltext")).getBytes("ISO-8859-1"),"UTF-8");
    ArrayList<ArrayList<String>> res = SQLExecution.executeSQL(sql);
%>

<%
    if (res != null) {
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


</body>
</html>
