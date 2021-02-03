<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<div class="w3-container" style="padding: 128px 16px" id="team">
	<h3 class="w3-center">ACTORS and ACTRESS</h3>
	<p class="w3-center w3-large">You can ...</p>
	<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">

		<c:forEach items="${actors}" var="actor">

			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${actor.name}</h3>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}actor/edit?id=${actor.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}actor/delete?id=${actor.id}">Delete</a>


							</button>
						</p>
						<%-- 						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> 
								
								<a  href="${appName}actor/detail?id=${actor.id}">see detail</a>
									
									
							</button>
						</p>
 --%>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</div>