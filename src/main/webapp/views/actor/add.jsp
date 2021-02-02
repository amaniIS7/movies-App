<jsp:include page="../shared/_layout.jsp" />


<form action="${appName}actor/add" method="post">
<div>${message}</div>
<div>
<label>Actor's Name</label>
<input type="text" name="name">
</div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<button type="submit">Submit</button>
</form>
