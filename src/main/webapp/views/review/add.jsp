<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.clip-star {
	cursor: pointer;
	background: grey;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 100px;
	width: 100px;
}

.clip-star-active {
	cursor: pointer;
	background: gold;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 100px;
	width: 100px;
}
/* PRESENTATION STYLES */
.rating {
	align-items: center;
	background: #333;
	display: flex;
	height: 100vh;
	justify-content: center;
}
</style>

<form action="${appName}review/add" method="post">

	<div>
		<label>What do you think about this movie?</label> <input type="text"
			name="user_review">
	</div>

	<!--  <div>
		<label>what's your rating for the movie?</label> <input type="number"
			name="rating">
	</div>  -->
	<!-- TODO getting the rating value as integer  -->

	<input id="ratingNum" name="rating" type="hidden">
	<div class="rating">
		<div id="star1" class="clip-star"></div>
		<div id="star2" class="clip-star"></div>
		<div id="star3" class="clip-star"></div>
		<div id="star4" class="clip-star"></div>
		<div id="star5" class="clip-star"></div>
	</div>

	<input name="movie" type="hidden" value="${movie.id}">
	${movie.id} <input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<button type="submit">Submit</button>

</form>
<script type="text/javascript">
	var x = 0;
	document.getElementById('star1').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').setAttribute('class', 'clip-star');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 1;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star2').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 2;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);

	});

	document.getElementById('star3').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 3;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star4').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 4;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star5').addEventListener('click', function(event) {
		document.getElementById('star5').classList.add('clip-star-active');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 5;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});
	console.log("rating value" + x)
</script>