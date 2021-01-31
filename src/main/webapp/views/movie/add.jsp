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
	
	<div>
		<label>Select Actors</label>
		<select name="actors" multiple="multiple" class="form-control">
			<c:forEach items="${actors}" var="actor">
				<option value="${actor.id}"> ${actor.name} </option>
			</c:forEach>	
		</select>
	</div>


	<button type="submit">Submit</button>

</form>