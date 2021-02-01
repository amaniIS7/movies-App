<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<<<<<<< HEAD
<form class="form1" action="${appName}movie/add" method="post">
 <h4 class="sign">Add Movies</h4>
 <label>     
              <input name="name" type="text" class="input" placeholder="Movie's Name" >               
                 <div class="line-box">          
             <div class="line">
              </div>        
              </div>    
            </label>  

<label>     
      <input name="description" type="text" class="input" placeholder="Description about the movie" >               
      <div class="line-box">          
      <div class="line">
       </div>        
              </div>    
            </label>  
<label>     
      <input name="movieDate" type="date" class="input" placeholder="Release year" >               
      <div class="line-box">          
      <div class="line">
       </div>        
            </div>    
            </label>   

		<label>
		<select name="actors" multiple="multiple" class="input" >
			<c:forEach items="${movie.getActors()}" var="actor">
=======
<form action="${appName}movie/add" method="post">
	<div>
		<label>Movie's Name </label> 
		<input type="text" name="name">
	</div>

	<div>
		<label>Description about the movie </label> 
		<input type="text" name="description">
	</div>

	<div>
		<label>Date of Movie </label> 
		<input type="date" name="movieDate">
	</div>
	
	<div>
		<label>Select Actors</label>
		<select name="actors" multiple="multiple" class="form-control">
			<c:forEach items="${actors}" var="actor">
>>>>>>> master
				<option value="${actor.id}"> ${actor.name} </option>
			</c:forEach>	
		</select>
		 <div class="line-box">        

                <div class="line"></div>      
              </div>    
            </label>   
	<button type="submit">Submit</button>

</form>
