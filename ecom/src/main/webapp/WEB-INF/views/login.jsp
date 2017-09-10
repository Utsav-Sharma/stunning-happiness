<%@include file="templates/Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="resources/css/custom.css"/>"
	rel="stylesheet">

<link href="<c:url value="./resources/css/normalize.css"/>"
	rel="stylesheet">
	<link href="<c:url value="./resources/css/main.css"/>"
	rel="stylesheet">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
	


<style type="text/css">
body { /* background-color: transparent; */
	/*  background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); */
	/*   background-image: url("resources\img\s8.jpg"); */
	/* background-size: cover; */
	/* color: white; */
	/* background-repeat: no-repeat; */
	/*  background-position: center;  */
	/* background-attachment: fixed;  */
	/* background-color: #cccccc;  */
	
}

p {
	color: white;
}

li a {
	color: lightgreen;
}

form {
	background: rgba(45, 45, 125, 0.68);
	color: white;
	padding: 40px;
	margin-top: 100px;
	padding-bottom: 80px;
	box-shadow: 10px 10px 5px rgba(6, 1, 1, 0.43)
}

h2 {
	text-align: center;
	padding-top: 50px;
}

.btn {
	width: 100%;
	border-radius: 0px;
}

.form-control {
	border-radius: 0px;
	background-color: rgba(23, 3, 3, 0.48);
	color: white;
	border-radius: 1px solid #291212
}

.register {
	padding-top: 80px;
	padding-bottom: 180px;
}
</style>


</head>
<body style="background-image: url(resources/img/background.jpg)">


<div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>

	<div class="container-wrapper">
		<div class="container">
			<div class="col-sm-offset-2 col-sm-8">
				<div id="login-box">
					<!-- <h2>Login with Username and Password</h2> -->
					<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
					</c:if>
					<!--j_spring_security_check"-->
					<form name="loginForm"
						action="<c:url value="/j_spring_security_check"/>" method="post">
						<h2>Login with Username and Password</h2>
						<c:if test="${not empty error}">
							<div class="error" style="color: #ff0000;">${error}</div>
						</c:if>
						<div class="form-group">
							<label for="username">User: </label> <span
								class="glyphicon glyphicon-user"></span><input type="text"
								id="username" name="username" class="form-control"
								placeholder="Enter username" />
						</div>
						<div class="form-group">
							<label for="password">Password:</label> <span
								class="glyphicon glyphicon-lock"></span><input type="password"
								id="password" name="password" class="form-control"
								placeholder="Enter password" />
						</div>
						<input type="submit" value="Submit" class="btn btn-success">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
			</div>
		</div>
	</div>






	<div class="register" align="center">
		<li><p>Don't have an account? Please</p>
			<a href="<c:url value="/signup"/>"> Register</a></li>
	</div>
	<script>window.jQuery || document.write('<script src="resources/js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="resources/js/main.js"></script>
</body>
</html>
<%@include file="templates/Footer.jsp"%>