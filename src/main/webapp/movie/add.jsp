<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}author/add" method="post">

	<div class="form-group">
		<label>Movie's Name </label> <input type="text" name="name"
			class="form-control">
	</div>

	<div class="form-group">
		<label>Description about the movie </label> <input type="text"
			name="emailAddress" class="form-control">
	</div>

	<div class="form-group">
		<label>Date of Movie </label> <input type="date" name="dateofBirth"
			class="form-control">
	</div>


	<button type="submit" class="btn btn-primary">Submit</button>

</form>