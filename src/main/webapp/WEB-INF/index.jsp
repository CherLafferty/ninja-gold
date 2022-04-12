<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Ninja Gold</title>
</head>
<body>
	<h6>Ninja Gold Test</h6>
	<h2>Your gold: ${gold} </h2>
	<div>
		<div>
			<h2>Farm</h2>
			<h5>(earns 10-20 gold)</h5>
		</div>
		<div>
			<form action="/" method="POST">
				<input name="farm" type="submit" value="Find gold"/>
			</form>
		</div>
	</div>
	<div>
		<div>
			<h2>Cave</h2>
			<h5>(earns 10-20 gold)</h5>
		</div>
		<div>
			<form action="/" method="POST">
				<input name="cave" type="submit" value="Find gold"/>
			</form>
		</div>
	</div>
	<div>
		<div>
			<h2>House</h2>
			<h5>(earns 10-20 gold)</h5>
		</div>
		<div>
			<form action="/" method="POST">
				<input name="house" type="submit" value="Find gold"/>
			</form>
		</div>
	</div>
	<div>
		<div>
			<h2>Quest</h2>
			<h5>(earns/takes 0-50 gold)</h5>
		</div>
		<div>
			<form action="/" method="POST">
				<input name="quest" type="submit" value="Find gold"/>
			</form>
		</div>
	</div>
	
	<div>
		<c:forEach var="activity" items="${activities}">
			<h5>${activity} ${localDateTime}</h5>
		
		</c:forEach>
	</div>
	
</body>
</html>