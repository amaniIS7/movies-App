<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie APP</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/myStyles.css">
<link rel="stylesheet" href="css/myStyles.css">

</head>
<body>
<div id="shell">
<div id="header">
<h1 id="logo"><img alt="logo" src="images/logo.png"></h1>
<h1 id="logo"><img alt="logo" src="../images/logo.png"></h1>
<div id="navigation">
<security:authorize access="!isAuthenticated()">
	<ul>
			    <li><a class="active" href="${appName}">HOME</a></li>
			    <li><a href="${appName}login">SIGN IN</a></li>
			    <li><a href="${appName}user/registration">SIGN UP</a></li>
			    <li><a href="${appName}movie/index">MOVIE</a></li>
                <li><a href="${appName}actor/index">ACTOR</a></li>
			</ul>
			</security:authorize>
		</div>

	<div id="sub-navigation">
	<security:authorize access="isAuthenticated()">
<ul>
<li><a href="${appName}">Home</a></li>
<li><a href="${appName}movie/add">Add Movie</a></li>
<li><a href="${appName}movie/index">Movie</a></li>
<li><a href="${appName}actor/add">Add Actor</a></li>
<li><a href="${appName}actor/index">Actor</a></li>
<li><a href="${appName}logout">Logout</a></li>
<li><a>HELLO : <security:authentication property="principal.username" /> </a></li>

</ul>
  	<div id="search">
				<form action="home_submit" method="get" accept-charset="utf-8">
					<label for="search-field">SEARCH</label>					
					<input type="text" name="search field" value="Enter search here" id="search-field" title="Enter search here" class="blink search-field"  />
					<input type="submit" value="GO" class="search-button" />
				</form>
			</div>
		</div>
		 </security:authorize>
		</div>
		<br>

</div>
 
 

<c:if test="${message != null}">

<div class="alert alert-primary fade show" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
</c:if>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').slideUp(4000);
	</script>
</body>
</html>