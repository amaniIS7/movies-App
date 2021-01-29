<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}movie/add" method="post">

	<div>
		<label>Movie's Name </label> 
		<input type="text" name="name">
	</div>

	<div>
		<label>Description about the movie </label> 
		<input type="text" name="description">
	</div>

	<div>
		<label>Date of Movie </label> 
		<input type="date" name="movieDate">
	</div>
	
	<div class ="form-group">
		<label>actor</label>
		<select name="actors" class="form-control" multiple="multiple">
			<c:forEach items="${actors}" var="actor">
				<option value="${actor.actor_Id}"> ${actor.actor_name} </option>
			</c:forEach>	
		</select>
	</div>


	<button type="submit">Submit</button>

</form>