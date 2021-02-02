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
<form class="form1" action="${appName}movie/add" method="post">
	<h4 class="sign">Add Movies</h4>
	<label> <input name="name" type="text" class="input"
		placeholder="Movie's Name">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> <input name="description" type="text" class="input"
		placeholder="Description about the movie">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> <input name="movieDate" type="date" class="input"
		placeholder="Release year">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> <select name="actors" multiple="multiple" class="input">
			<c:forEach items="${actors}" var="actor">
				<option value="${actor.id}">${actor.name}</option>
			</c:forEach>
	</select>
		<div class="line-box">

			<div class="line"></div>
		</div>
	</label>
<label for="file">Upload Movie Poster </label>
	</br>
	<input type="file"  accept="image/*" name="poster" id="file"  onchange="loadFile(event)">
	</br>
	<img id="output" width="200" />
	</br>
	
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
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
>>>>>>> master
