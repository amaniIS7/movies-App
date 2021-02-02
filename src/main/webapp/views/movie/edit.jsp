<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<form class="form1" action="${appName}movie/add" method="post">
	<h4 class="sign">Edit Movies info</h4>
	<label> <input name="name" type="text" class="input" placeholder="Movie's Name" value="${movie.name}">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> <input name="description" type="text" class="input"
		placeholder="Description about the movie" value="${movie.description}">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> <input name="movieDate" type="date" class="input"
		placeholder="Release year" value="${movie.movieDate}">
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

	<input name="id" type="hidden" value="${movie.id}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button type="submit">Submit</button>

</form>
