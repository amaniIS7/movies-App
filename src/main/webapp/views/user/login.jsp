<jsp:include page="../shared/_layout.jsp" />

<b>${message}</b>
<br>

<form class="form1" action="${appName}login" method="post">
 <h4 class="sign">Sign in</h4>
            <p>Welcome to our Moive website.</p> 
	  <label>  
	<input  name="username"  class="input" type="email"  placeholder="Email Address">    
	  <div class="line-box">          
             <div class="line"></div>        
              </div>    
            </label> 
	 <label>     
            <input  name="password" class="input" type="password"  placeholder="Password">        
              <div class="line-box">          
                <div class="line"></div>        

              </div>    

            </label>   
<br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button type="submit">Sign in</button>
 </form> 