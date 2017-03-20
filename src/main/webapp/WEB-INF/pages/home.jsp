<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>


	<h2>
		<center>Shopping Cart</center>
	</h2>
	<center>${msg}</center>


	 <ol>
	<ul class="w3-navbar w3-black">
		<li><a href="login">Login</a> <br></li>
		<li><a href="register"> Register</a> <br></li>

	</ul>
	</ol> 


	<hr>


	<c:if test="${isUserClickedLogin==true}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<c:if test="${isUserClickedRegister==true}">
		<jsp:include page="registration.jsp"></jsp:include>
	</c:if> 
	<hr>
	<!-- Footer -->
	<center>
		<footer
			class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
		<a href="#"><i class="fa fa-facebook-official"></i></a> <a href="#"><i
			class="fa fa-pinterest-p"></i></a> <a href="#"><i
			class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-flickr"></i></a>
		<a href="#"><i class="fa fa-linkedin"></i></a>
		<p class="w3-large"></p>
		</footer>
	</center>



</body>
</html>
