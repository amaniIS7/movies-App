<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center"><b>EDIT MOVIE</b></h3>
	<div style="margin-top: 48px">
		<form action="${appName}movie/add" method="post">
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="Movie's Name" required="" name="name" value="${movie.name}">
			</p>
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="Description about the movie" required="" name="description" value="${movie.description}">
			</p>
			<p>
				<input class="w3-input w3-border" type="date"
					placeholder="Release year" required="" name="movieDate" value="${movie.movieDate}">
			</p>
			
			<p>
			<select name="actors" class="w3-input w3-border">
			<c:forEach items="${actors}" var="actor">
				<option value="${actor.id}">${actor.name}</option>
			</c:forEach>
	</select>
			</p>
			
						<input name="user" type="hidden" value="${user.id}">	
	<security:authentication property="principal.id" />
			
				<input name="id" type="hidden" value="${movie.id}">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<p>
				<button class="w3-button w3-black" type="submit">
					<i class="fa fa-paper-plane"></i> SUBMIT
				</button>
			</p>
		</form>
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
				<p>&copy; 2021 Movie World, LLC. All Rights Reserved. Designed
					by EARTH GROUP</p>
			</footer>
		</div>
	<!-- end Footer -->
