<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}review/add" method="post">

	<div>
		<label>What do you think about this movie?</label> 
		<input type="text" name="user_review">
	</div>

	<div>
		<label>what's your rating for the movie?</label> 
		<input type="number" name="rating">
	</div>

	<button type="submit">Submit</button>

</form>