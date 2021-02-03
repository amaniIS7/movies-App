<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<c:forEach items="${movies}" var="movie">

	<div>movie.name</div>
	<div>movie.movieDate</div>

</c:forEach>

<div class="w3-container w3-card w3-white w3-round w3-margin">
	<br> <img src="../images/cover.jpg" alt="Avatar"
		class="w3-left w3-circle w3-margin-right" style="width: 100px; height: 100px">
	<h4>${user.firstName} ${user.lastName}<br>
	${user.emailAddress}
	</h4>
	<br>
	<hr class="w3-clear">
	<p> 
	</p>
	<div class="w3-row-padding" style="margin: 0 -16px">
	
	</div>
<!-- 	<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom">
		<i class="fa fa-thumbs-up"></i> &nbsp;Like
	</button>
	<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom">
		<i class="fa fa-comment"></i> &nbsp;Comment
	</button> -->
</div>

<!-- script -->
<script>
	var loadFile = function(event) {
		var image = document.getElementById('output');
		var url = URL.createObjectURL(event.target.files[0]);
		console.log(url);
		image.src = url;
		document.getElementById("sendposter").setAttribute("value", url);
	}
</script>