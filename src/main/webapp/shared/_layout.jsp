<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>movie App</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"><link rel="stylesheet" href="../css/myStyles.css">
</head>

<body>

<div class="heavy">
<h2>${Welcome}</h2>

<a href="${appName}">Home</a>

<a href="${appName}movie/add">Add movie</a>
<a href="${appName}movie/index">movie</a>

<div style="text-align:right; float:right;">
<a href="${appName}user/login">Login</a>
<a href="${appName}user/registration">Create New Account</a>
</div>

</div>




</body>

	

</html>