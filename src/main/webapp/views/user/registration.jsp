<jsp:include page="../shared/_layout.jsp" />
<%-- 
   <div class="main">
        <p class="sign" align="center">Sign Up </p>
        <p class="signIn" align="center">Please fill in this form to create an account.</p>

<form action="${appName}user/registration" method="post" >
<span>
    <label class="labal" ><b>First Name</b></label> 
	<input name="firstName" type="text" class="un" placeholder="First name" align="center">
      
	
          <label class="labal"><b>Last Name</b></label>
          <input  name="lastName"  class="un " type="text" align="center" placeholder="Last name">
          </span>
      
       <label class="labal"><b>Email Address</b></label>
          <input  name="emailAddress"  class="un " type="email" align="center" placeholder="Email Address">
          

     <label class="labal" ><b>Password</b></label>
          <input  name="password" class="pass" type="password" align="center" placeholder="Password">
          

          <label  class="labal"><b>Select Role</b></label> 
		<select  class ="un"name="userRole">
			<option value="ROLE_ADMIN"><b>Admin</b></option>
			<option value="ROLE_USER"><b>User</b></option>
        </select>
	

	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

    <a class="submit" align="center" type="submit">Sign Up</a>
          </form>  
          <p class="signIn" align="center">Already have an account? <a href="${appName}user/login">Sign in</a>.</p>
                    
       </div> 
       
 <div>  --%> 
 <div> 
          <form action="${appName}user/registration" method="post" >
             
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
      </div> 

