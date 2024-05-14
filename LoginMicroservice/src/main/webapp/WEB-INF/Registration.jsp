<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>
<link href="/css/style.css" rel="stylesheet">
<link href="/css/colour.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION PAGE</title>
</head>
<body>

<c:if test="${not empty saved}">
<script type="text/javascript">
setTimeout(()=>{
	const sometext=document.getElementById('msg');
	sometext.style.display='none';
},3000);
</script>

<script type="text/javascript">
    setTimeout(function() {
        window.location.href = "/getregistration";
    },3000);
</script>
</c:if>

<img class="bg-img" src="https://images.unsplash.com/photo-1715144536780-c847096a8632?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D">
<div class="container">
        <h1 class="text-center mt-5">Create Account</h1>
        <div class="text-center mt-5 text-success" id="msg">
        <c:if test="${not empty saved}">
        <b>${saved}</b>
        </c:if>
        </div>
        <form class="mt-5 w-50 mx-auto" method="post" action="/signup">
            <div class="form-group">
                <b><label>Username</label></b>
                <input type="text" class="form-control" name="username" placeholder="Enter username">
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('username').getDefaultMessage()}</b>
                </c:if>
                <br><br>	
                <b><label>Password</label></b>
                <input type="password" class="form-control" name="password" placeholder="Enter password">
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('password').getDefaultMessage()}</b>
                </c:if>
                <br><br>
                <b><label>Email</label></b><input type="email" class="form-control" name="email" value="@gmail.com">
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('email').getDefaultMessage()}</b>
                </c:if>
                <br><br>
                <b><label>DOB</label></b><input type="date" class="form-control" name="DOB" placholder="Enter the DOB">
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('DOB').getDefaultMessage()}</b>
                </c:if>
                <br><br>
                <b><label>Phone No</label></b><input type="tel" class="form-control" name="phone" placeholder="Enter the Phone NO">
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('phone').getDefaultMessage()}</b>
                </c:if>
                <br><br>
                <b><label>Gender</label></b>&nbsp;&nbsp;<input type="radio" name="Gender" value="Male"><b>Male</b>&nbsp;&nbsp;
                <input type="radio" name="Gender" value="Female"><b>Female</b>&nbsp;&nbsp;
                <input type="radio" name="Gender" value="Others"><b>Others</b><br>
                <c:if test="${not empty bindingResult}">
                <b>${bindingResult.getFieldError('Gender').getDefaultMessage()}</b>
                </c:if>
                <br>
                <br>
              	<div style="text-align:center">
             	<button type="submit" class="btn btn-primary">Sign Up</button>
             	</div>
        	</form>
        </div>
</body>
</html>