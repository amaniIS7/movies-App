<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<%-- <table>
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
			
			<td><img src="${movie.poster}"/></td>

			<td><a href="${appName}movie/edit?id=${movie.id}">Edit</a></td>
			<td><a href="${appName}movie/delete?id=${movie.id}">Delete</a></td>
		</tr>
	</c:forEach>

</table> --%>

<table class="one" style="table-layout: fixed;"  cellpadding="0" cellspacing="0" width="100%">

  <tr>
  <c:forEach items="${movies}" var="movie">
    <td style="word-wrap: break-word">${movie.name}<br /><img src="image.jpg" /><br />${movie.description} <br />${movie.movieDate}<br />
  <a href="${appName}movie/edit?id=${movie.id}">Edit</a> || <a href="${appName}movie/detail?id=${movie.id}">See detail</a> || 
  <a href="${appName}movie/delete?id=${movie.id}">Delete</a></td>
   	</c:forEach>
  </tr>


</table>