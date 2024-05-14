<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE EMPLOYEE</title>
<script src="https://kit.fontawesome.com/3e0d9c2782.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container">
<h1 style="text-align:center;">UPDATE EMPLOYEE</h1>
	
<form class="mt-5 w-50 mx-auto" method="post" action="/updateemployeebyid" enctype="multipart/form-data">
	<div class="form-group">
	<input type="hidden" name="empid" value="${emp.empid}">
	<label>EMPLOYEE NAME</label>
			<div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
            </div>
			<input type="text" class="form-control" name="empname" value="${emp.empname}">
	</div>
	</div>
	
	<div class="form-group">
	<label>EMPLOYEE DEPARTMENT</label>
			<div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa-solid fa-hammer"></i></span>
            </div>
			<input type="text" class="form-control" name="empdept" value="${emp.empdept}">
	</div>
	</div>
	
	<div class="form-group">
	<label>EMPLOYEE SALARY</label>
			<div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa-solid fa-dollar-sign"></i></span>
            </div>
			<input type="text" class="form-control" name="empsal" value="${emp.empsal}">
	</div>
	</div>
	
	<div class="form-group">
	<label>EMPLOYEE IMAGE</label>
			<div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa-solid fa-image"></i></span>
            </div>
			<input type="file" class="form-control" name="image" value="data:image/jpeg;base64,${emp.empimage}">
	</div>
	</div>
	<img src="data:image/jpeg;base64,${emp.empimage}" width=100 height=100>
	<div style="text-align:center">
	<button type="submit" class="btn btn-primary">UPDATE PRODUCT</button>
	</div>
</form>
</div>

</body>
</html>