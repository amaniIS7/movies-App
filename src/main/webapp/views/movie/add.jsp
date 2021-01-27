<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}movie/add" method="post">

	<div>
		<label>Movie's Name </label> 
		<input type="text" name="name">
	</div>

	<div>
		<label>Description about the movie </label> 
		<input type="text" name="description">
	</div>

	<div>
		<label>Date of Movie </label> 
		<input type="date" name="movieDate">
	</div>


	<button type="submit">Submit</button>

</form>