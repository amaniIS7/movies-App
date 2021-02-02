<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
  
    <c:forEach items="${actors}" var="actor">
   <div>
    <div class="w3-container w3-center">
      <h3><b>${actor.name}</b></h3>
    
           <div class="w3-section">
        <a  class="w3-button w3-green" href="${appName}actor/edit?id=${actor.id}">Edit</a>
        <a  class="w3-button w3-green" href="${appName}actor/delete?id=${actor.id}">Delete</a>
         <a  class="w3-button w3-green" href="${appName}actor/detail?id=${actor.id}">see detail</a>
      </div>
    </div>
  </div>
    </c:forEach>