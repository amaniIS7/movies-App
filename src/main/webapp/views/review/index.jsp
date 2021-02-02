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
	background: #333;
	display: flex;
	height: 10vh;
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
					<div class="rating">
						<div id="star1" class="clip-star"></div>
						<div id="star2" class="clip-star"></div>
						<div id="star3" class="clip-star"></div>
						<div id="star4" class="clip-star"></div>
						<div id="star5" class="clip-star"></div>
					</div>
				</td>

				<td><a href="${appName}review/delete?id=${review.review_Id}">Delete</a></td>
			</tr>
		</c:if>
	</c:forEach>
</table>

<script type="text/javascript">
	var e = document.getElementById('rate').getAttribute('value');
	console.log(e);

	if (e == "1") {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').setAttribute('class', 'clip-star');
		document.getElementById('star1').classList.add('clip-star-active');
	}

	else if (e == "2") {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
	}

	else if (e == "3") {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
	}

	else if (e == "4") {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
	}

	else {
		document.getElementById('star5').classList.add('clip-star-active');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
	}
</script>