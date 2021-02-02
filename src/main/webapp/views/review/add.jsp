<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<style>
.clip-star {
	cursor: pointer;
	background: grey;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 40px;
	width: 40px;
}

.clip-star-active {
	cursor: pointer;
	background: gold;
	clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%,
		32% 57%, 2% 35%, 39% 35%);
	display: inline-block;
	height: 40px;
	width: 40px;
}
/* PRESENTATION STYLES */
.rating {
	align-items: center;

	display: flex;
	height: 10vh;
	justify-content: center;
}
</style>
<form class="form1" action="${appName}review/add" method="post">
	<h4 class="sign">Add Review </h4>
	<label> <input name="user_review" type="text" class="input"
		placeholder="What do you think about this movie?">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label> <label> 
	<input id="ratingNum" name="rating" type="hidden">
	<div class="rating">
		<div id="star1" class="clip-star"></div>
		<div id="star2" class="clip-star"></div>
		<div id="star3" class="clip-star"></div>
		<div id="star4" class="clip-star"></div>
		<div id="star5" class="clip-star"></div>
	</div>
		<br>
		<br>
	</label> 

	
    <input name="movie" type="hidden" value="${movie.id}">	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<br>
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