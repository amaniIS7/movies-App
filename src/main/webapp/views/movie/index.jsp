<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<table>
	<tr>
		<th>Movies</th>
		<th>movie description</th>
		<th>movie date</th>

	</tr>
	<c:forEach items="${movies}" var="movie">
		<tr>
			<td><a href="${appName}movie/detail?id=${movie.id}">${movie.name}</a></td>
			<td>${movie.description}</td>
			<td>${movie.movieDate}</td>

			<td><a href="${appName}movie/edit?id=${movie.id}">Edit</a></td>
			<td><a href="${appName}movie/delete?id=${movie.id}">Delete</a></td>
		</tr>
	</c:forEach>
	
</table>