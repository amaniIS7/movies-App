<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

Movie's Name: ${movie.name}
<br>
Movie's Description: ${movie.description}
<br>
Movie Date : ${movie.movieDate}
<br>
<br>

<div>Cast of the Movie</div>

<c:forEach items="${movie.getActors()}" var="actor">
	<div>${actor.name}</div>

	<hr>
</c:forEach>

<jsp:include page="../review/index.jsp" />

		<a href="${appName}review/add">Add review</a>
