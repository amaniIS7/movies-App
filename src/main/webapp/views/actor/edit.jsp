<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}actor/add" method="post">

     <div>
        <label>Actor's Name</label>
        <input type="text" name="name" value="${actor.name}">
     </div>

     <input  name="id" type="hidden" value="${actor.id}">
     <button type="submit">Submit</button>
     
     
</form>
