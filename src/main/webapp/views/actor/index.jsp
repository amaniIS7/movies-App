<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<%-- <table>
<tr>
<th>Actors</th>
<th>Action</th>
</tr>
<c:forEach items="${actors}" var="actor">
<tr>
<td><a href="${appName}actor/detail?id=${actor.id}">${actor.name}</a></td>
<td><a href="${appName}actor/edit?id=${actor.id}">Edit</a>
| <a href="${appName}actor/delete?id=${actor.id}">Delete</a>
</td>
</tr>
</c:forEach>
</table> --%>
<table>
  <thead>
    <tr>
      <th>Actors Name</th>
     <th> Actions</th>
    </tr>
  </thead>
<c:forEach items="${actors}" var="actor">
 <tbody>
    <tr>
      <td><strong><h1>${actor.name}</h1></strong></td>
      <td><a href="${appName}actor/edit?id=${actor.id}">Edit</a>
|| <a href="${appName}actor/delete?id=${actor.id}">Delete</a>|| 
<a href="${appName}actor/detail?id=${actor.id}">see detail</a></td>
 
    </tr>
  </tbody>
  </c:forEach>
</table>
