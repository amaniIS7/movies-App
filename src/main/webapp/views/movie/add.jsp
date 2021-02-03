<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center">
		<b>ADD MOVIE</b>
	</h3>
	<div style="margin-top: 48px">
		<form action="${appName}movie/add" method="post">
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="Movie's Name" required="" name="name">
			</p>
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="Description about the movie" required=""
					name="description">
			</p>
			<p>
				<input class="w3-input w3-border" type="date"
					placeholder="Release year" required="" name="movieDate">
			</p>
			<p>
				<select name="actors" class="w3-input w3-border">
					<c:forEach items="${actors}" var="actor">
						<option value="${actor.id}">${actor.name}</option>
					</c:forEach>
				</select>
			</p>
			<p>
				<input name="poster" type="file" class="w3-input w3-border"
					placeholder="Upload Movie Poster" id="file"
					onchange="loadFile(event)" accept="image/*">

			</p>

			<input name="user" type="hidden" value="${user.id}">
			<security:authentication property="principal.id" />

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<p>
				<button class="w3-button w3-black" type="submit">
					<i class="fa fa-paper-plane"></i> SUBMIT
				</button>
			</p>
		</form>
	</div>
</div>

<script>
	var loadFile = function(event) {
		var image = document.getElementById('output');
		var url = URL.createObjectURL(event.target.files[0]);
		console.log(url);
		image.src = url;
		document.getElementById("sendposter").setAttribute("value", url);
	};
</script>

