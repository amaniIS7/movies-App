<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<style>
img {
	max-height: 100px;
	max-width: 100px;
	margin: 0 5px;
	float: left;
}
</style>

<div>${message}</div>
<form action="${appName}movie/add" method="post">
	<div>
		<label>Movie's Name </label> <input type="text" name="name">
	</div>

	<div>
		<label>Description about the movie </label> <input type="text"
			name="description">
	</div>

	<div>
		<label>Date of Movie </label> <input type="date" name="movieDate">
	</div>

	<div>
		<label>Select Actors</label> <select name="actors" multiple="multiple"
			class="form-control">
			<c:forEach items="${actors}" var="actor">
				<option value="${actor.id}">${actor.name}</option>
			</c:forEach>
		</select>
	</div>
	
	<label for="file">Upload Movie Poster </label>
	</br>
	<input type="file"  accept="image/*" name="poster" id="file"  onchange="loadFile(event)">
	</br>
	<img id="output" width="200" />
	</br>
	
	</br> </br> </br> </br>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
	<button type="submit">Submit</button>

</form>

<script>
var loadFile = function(event) {
	var image = document.getElementById('output');
	var url = URL.createObjectURL(event.target.files[0]);
	console.log(url);
	image.src = url;
};
</script>
