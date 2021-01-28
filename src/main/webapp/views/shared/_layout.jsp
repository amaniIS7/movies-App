<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie App</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/myStyles.css">
<link rel="stylesheet" href="css/myStyles.css">
</head>

<body>

	<div class="heavy">
		<h2>${Welcome}</h2>
<security:authorize access="isAuthenticated()">
		<a href="${appName}">Home</a> 
		<a href="${appName}movie/add">Add movie</a>
		<a href="${appName}movie/index">movie</a>
		
	<a href="${appName}actor/add">Add actor</a>
		<a href="${appName}actor/index">actor</a> 
		<div style="text-align:right; float:right;">

<b>Hello: <security:authentication property="principal.username" /> </b>
		<a href="${appName}logout">Logout</a>
</div>
 </security:authorize>
  <security:authorize access="!isAuthenticated()">
<a href="${appName}">Home</a>

	<a href="${appName}movie/index">movie</a>
		<a href="${appName}actor/index">actor</a> 
		
				<div style="text-align: right; float: right;">
			<a href="${appName}login">Login</a> <a
				href="${appName}user/registration">Create New Account</a>
		</div> 
		</security:authorize>

	</div>

</body>

</html>