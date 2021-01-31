<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<form action="${appName}movie/add" method="post">

	<div class="form-group">
		<label>Movie's Name </label> 
		<input type="text" name="name" value="${movie.name}">
	</div>

	<div class="form-group">
		<label>Movie's description </label> 
		<input type="text" name="description"  value="${movie.description}">
	</div>

	<div class="form-group">
		<label>Date of the Movie </label> 
		<input type="date" name="movieDate" value="${movie.movieDate}">
	</div>

	
	<input name="id" type="hidden" value="${movie.id}">
	<button type="submit">Submit</button>

</form>