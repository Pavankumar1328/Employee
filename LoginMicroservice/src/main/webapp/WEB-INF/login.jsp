<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="/css/style.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
<link href="/css/colour.css" rel="stylesheet">	
</head>
<body>

<c:if test="${not empty incorrect}">
<script type="text/javascript">
setTimeout(()=>{
	const sometext=document.getElementById('msg');
	sometext.style.display='none';
},3000);
</script>

<script type="text/javascript">
    setTimeout(function() {
        window.location.href = "/getlogin";
    },3000);
</script>
</c:if>

<img class="bg-img" src="https://plus.unsplash.com/premium_photo-1669058431851-aae101e63b61?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8" alt="login.image">
<form class="mt-5 w-50 mx-auto" method="post" action="/signin">
			<div class="text-center mt-5 text-danger" id="msg">
				<c:if test="${not empty incorrect}">
					<b>${incorrect}</b>
				</c:if>
			</div>
            <div class="form-group">
                <label>Username</label>
                <input type="text" class="form-control" name="username" placeholder="Enter username">
                <br>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" name="password" placeholder="Enter password">
                <br>
            </div>
            <div style="text-align:center">
            <button type="submit" class="btn btn-primary">Login</button>
            <br>
            </div>
        </form>
         <br>
        <div class="text-center mt-3">
         <a style="color:white;" href="/forgotpassword">Forgotten password?</a>
        </div>
		<br>
        <div class="text-center mt-3">
         <a style="color:white;" href="/getregistration">Create new account</a>
        </div>

</body>
</html>