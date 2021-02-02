<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<img src="..." class="rounded-circle rounded float-start" alt="...">
<div class="col-md-6 p-4 ps-md-0">
<h3 class="mt-0">${user.userName}</h3>
<h5 class="mt-0">${user.firstName} ${user.lastName}</h5>
</div>
<hr>

<c:forEach items="${movies}" var="movie">
	 <tr>
		<td><a href="${appName}movie/detail?id=${movie.id}">${movie.name}</a></td>
	</tr>
	</c:forEach>