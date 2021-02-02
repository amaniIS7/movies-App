<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.clip-star {
	background: grey;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 10px;
	width: 10px;
}

.clip-star-active {
	background: gold;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 10px;
	width: 10px;
}
/* PRESENTATION STYLES */
.rating {
	align-items: center;
	display: flex;
	justify-content: center;
}
</style>

<div>Movie Reviews</div>
<table>
	<td>reviews</td>
	<td>rating</td>

	<c:forEach items="${reviews}" var="review">
		<c:if test="${review.movie.id == movie.id}">
			<input id="rate" type="hidden" value="${review.rating}"></input>
			<tr>
				<td>${review.user_review}</td>

				<td>
				<c:if test="${review.rating == '1'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star"></div>
							<div id="star3" class="clip-star"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if>
					
					<c:if test="${review.rating == '2'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if>
					
					<c:if test="${review.rating == '3'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if>
					
					<c:if test="${review.rating == '4'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star clip-star-active"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if>
					
					<c:if test="${review.rating == '5'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star clip-star-active"></div>
							<div id="star5" class="clip-star clip-star-active"></div>
						</div>
					</c:if>
					
					</td>

				<td><a href="${appName}review/delete?id=${review.review_Id}">Delete</a></td>
			</tr>
		</c:if>
	</c:forEach>
</table>
