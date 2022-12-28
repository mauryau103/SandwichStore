<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<link rel="stylesheet" href="css/UserHeader.css">
</head>
<body>
<header>
	<nav>
		<div class="logo"><span>Sand</span>wichhut</div>
		<div><%String username=session.getAttribute("username").toString(); %>
		<h2><%out.println(username); %></h2>
		</div>
		<div class="menu">
			<a href="UserHome.jsp">Home</a>
			<a href="MyCart.jsp">Cart</a> 
			<a href="#">My Order's</a>
			<a href="#">Change details</a>
			<a href="#">Message us</a>
			<a href="#">About</a>
			<a href="Logout.jsp">Logout</a>
		</div>
	</nav>
</header>
</body>
</html>