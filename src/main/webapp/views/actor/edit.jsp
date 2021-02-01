<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<form  class="form1"  action="${appName}actor/add" method="post">
<div>${message}</div>
 <h4 class="sign">Edit Actor</h4>
   <label>     
              <input name="name" type="text" class="input" placeholder="Actor name" value="${actor.name}">               
                 <div class="line-box">          
             <div class="line">
              </div>        
              </div>    
            </label>  
   <input  name="id" type="hidden" value="${actor.id}">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<button type="submit">Submit</button>
</form>