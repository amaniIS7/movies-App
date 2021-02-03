<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<%-- <table class="one" style="table-layout: fixed;"  cellpadding="0" cellspacing="0" width="100%">

  <tr>
  <c:forEach items="${movies}" var="movie">
    <td style="word-wrap: break-word">${movie.name}<br />
    <img src="image.jpg" />
    <br />${movie.description} <br />${movie.movieDate}<br />
    
  <a href="${appName}movie/edit?id=${movie.id}">Edit</a> || <a href="${appName}movie/detail?id=${movie.id}">See detail</a> || 
  <a href="${appName}movie/delete?id=${movie.id}">Delete</a></td>
   	</c:forEach>
  </tr>


</table> --%>

<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>Taken3</h3>
						<p class="w3-opacity">2014-01-01</p>
						<p>Former covert operative Bryan Mills is framed for murder and must use his well-honed skills to stay alive, protect his family and prove his innocence.
</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/edit?id=${movie.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/detail?id=${movie.id}">See detail</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/delete?id=${movie.id}">Delete</a>
							</button>
						</p>

					</div>
				</div>
			</div>

<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${movie.name}</h3>
						<p class="w3-opacity">${movie.movieDate}</p>
						<p>${movie.description}</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/edit?id=${movie.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/detail?id=${movie.id}">See detail</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/delete?id=${movie.id}">Delete</a>
							</button>
						</p>

					</div>
				</div>
			</div>
			
			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${movie.name}</h3>
						<p class="w3-opacity">${movie.movieDate}</p>
						<p>${movie.description}</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/edit?id=${movie.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/detail?id=${movie.id}">See detail</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/delete?id=${movie.id}">Delete</a>
							</button>
						</p>

					</div>
				</div>
			</div>
			
			
<div class="w3-container" style="padding: 128px 16px" id="team">
	<h3 class="w3-center">MOVIES</h3>
	<p class="w3-center w3-large">You can ...</p>
	<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">

		<c:forEach items="${movies}" var="movie">

			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${movie.name}</h3>
						<p class="w3-opacity">${movie.movieDate}</p>
						<p>${movie.description}</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/edit?id=${movie.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/detail?id=${movie.id}">See detail</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/delete?id=${movie.id}">Delete</a>
							</button>
						</p>

					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</div>