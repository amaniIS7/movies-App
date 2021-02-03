<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<%-- Movie's Name: ${movie.name}
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
 --%>
<!-- TODO solving showing review problem  -->


<div class="w3-container w3-light-grey" style="padding: 128px 16px">
	<div class="w3-row-padding">
		<div class="w3-col m6" style="width: 400px; height: 300px;">
			<img class="w3-image w3-round-large" src="../images/movie1.jpg"
				width="200" alt="poster">

		</div>
		<div class="w3-col m6">
			<h3>${movie.name}</h3>
			<p>Cast of the Movie</p>

			<c:forEach items="${movie.getActors()}" var="actor">
				<p>${actor.name},</p>

			</c:forEach>

			<p>${movie.description}<br> ${movie.movieDate}
			</p>

			<jsp:include page="../review/index.jsp" />

<<<<<<< HEAD
			
				<p>
				<security:authorize access="isAuthenticated()">
					<a href="${appName}review/add?id=${movie.id}"
						class="w3-button w3-black"><i class="fa fa-th"></i>Add review
					</a>
				</security:authorize>
			</p>
			
=======
			<p>
				<a href="${appName}review/add?id=${movie.id}"
					class="w3-button w3-black"><i class="fa fa-th"></i>Add review </a>
			</p>
>>>>>>> 7844516c5229a34997a3caa171499363ec597a9d
		</div>

	</div>
</div>

<!-- Footer -->
<div id="footer">
	<footer class="w3-center w3-black w3-padding-64">
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>&copy; 2021 Movie World, LLC. All Rights Reserved. Designed by
			EARTH GROUP</p>
	</footer>
</div>