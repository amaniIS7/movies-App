<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<table>
<tr>
<th>actors</th>
</tr>
<c:forEach items="${actors}" var="actor">
<tr>
<td><a href="${appName}actor/detail?id=${actor.actor_Id}">${actor.actor_name}</a></td>
</tr>
</c:forEach>
</table>