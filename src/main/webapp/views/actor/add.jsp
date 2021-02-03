<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center"><b>ADD ACTOR</b></h3>
	<div style="margin-top: 48px">
		<form  action="${appName}actor/add" method="post">
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="Actors's Name" required="" name="name" >
			</p>
		
				
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