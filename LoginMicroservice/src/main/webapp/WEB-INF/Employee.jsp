<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE DETAILS</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container-fluid">
<table class="table table-striped table-bordered table-hover">
<thead class="table table-dark">
<tr>
<td>NO</td>
<td>EMPLOYEE NAME</td>
<td>EMPLOYEE IMAGE</td>
<td>EMPLOYEE DEPARTMENT</td>
<td>EMPLOYEE SALARY</td>
<td>UPDATE</td>
<td>DELETE</td>
</tr>
</thead>
<tbody>
<c:forEach items="${emps}" var="emp">
<tr>
<td>${emp.empid}</td>
<td>${emp.empname}</td>	
<td><img src="data:image/jpeg;base64,${emp.empimage}" width="80" height="80"></td>
<td>${emp.empdept}</td>
<td>${emp.empsal}</td>
<td><a href="/updateemployee?id=${emp.empid}" class="btn btn-success">UPDATE</a></td>
<td><a href="/deleteemployee?id=${emp.empid}" class="btn btn-danger">DELETE</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>

</body>
</html>