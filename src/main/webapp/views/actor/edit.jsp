<jsp:include page="../shared/_layout.jsp" />
<form action="${appName}actor/add" method="post">
<div>
<label>Actor's Name</label>
<input type="text" name="actor_name" value="${actor.actor_name}"  >
</div>
<input type="hidden" name="id" type="hidden" value="${actor.actor_Id}">
<button type="submit">Submit</button>
</form>
