<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<table>

	<c:forEach items="${reviews}" var="review">
		<tr>
			<td>${review.user_review}</td>
			<td>${review.rating}</td>

			<td><a href="${appName}review/delete?id=${review.review_Id}">Delete</a></td>
		</tr>
	</c:forEach>

</table>