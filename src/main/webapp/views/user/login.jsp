<jsp:include page="../shared/_layout.jsp"></jsp:include>

<b>${message}</b>
<br>

<form action="${appName}user/login" method="post">

	<div class="form-group">
	<label> User Name  </label>
	<input name="userName" type="text" class="form-control">
	</div>
	
	<div class="form-group">
	<label> Password </label>
	<input name="password" type="password" class="form-control">
	</div>
	
	<br>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button type="submit" class="btn btn-primary">Submit</button>

</form>