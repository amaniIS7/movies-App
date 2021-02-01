<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>Movie Reviews</div>
<table>
	<td>reviews</td>
	<td>rating</td>

	<c:forEach items="${reviews}" var="review">
		<c:if test="${review.movie.id == movie.id}">

			<tr>
				<td>${review.user_review}</td>
				<td>${review.rating}</td>

				<td><a href="${appName}review/delete?id=${review.review_Id}">Delete</a></td>
			</tr>
		</c:if>
	</c:forEach>
</table>