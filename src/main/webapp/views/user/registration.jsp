<jsp:include page="../shared/_layout.jsp" />
 
          <form  class="form1"  action="${appName}user/registration" method="post" >
             
            <h4 class="sign">Sign up</h4>
            <p>Please fill in this form to create an account.</p> 
               <label>     
              <input name="firstName" type="text" class="input" placeholder="First name" >               
                 <div class="line-box">          
             <div class="line">
              </div>        
              </div>    
            </label>  
      <label>     
       <input  name="lastName"  class="input" type="text"  placeholder="Last name">
                 
                 <div class="line-box">          
             <div class="line">
              </div>        
              </div>    
            </label> 
                     <label>     
            <input  name="emailAddress"  class="input" type="email"  placeholder="Email Address">              
                 <div class="line-box">          

             <div class="line">
              </div>        
              </div>    
            </label>     
                
            <label>     
            <input  name="password" class="input" type="password"  placeholder="Password">        
              <div class="line-box">          
                <div class="line"></div>        

              </div>    

            </label>     
            <label>     
		<select  class ="input"name="userRole">
			<option value="ROLE_ADMIN"><b>Admin</b></option>
			<option value="ROLE_USER"><b>User</b></option>
        </select>
              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>   
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
               <button type="submit">Sign Up</button>
          </form> 
      