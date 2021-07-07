<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="link.jsp" %>
<meta charset="ISO-8859-1">
<link href ="news.css" rel ="stylesheet">
<script  src="https://kit.fontawesome.come/b99e675b6e.js"></script>
<title>Insert title here</title>
</head>
<body>


<%@ include file="header.jsp" %>
	
<div class="row"  style="padding-top: 70px">
	<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
			
				<br/><br/>
		
			<form method="post" action="PatentController">
			
					
		<h1>Mother Registration Form</h1>
		<hr>
			<div class="row">					 
				 <div class="col-md-4"> 
				<label>First Name</label>
				<input type="text" class="form-control" name="fname"  required>
				 </div>	
				 <div class="col-md-4"> 
				<label >Last Name</label>
				<input type="text" class="form-control" name="lname"required> 
				</div>	 			
			</div>
						
			<div class="row">						 
				<div class="col-md-4"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" required>
				 </div>	
				 
					<div class="col-md-8"> 
			<label>Nationality</label>
			<div class="row">
				<div class = "col-md-3">
					<input type ="radio" name ="nation" value = "mstanzania">  Mtanzanian
			    </div>
			    <div class = "col-md-4">
				    Other <input type="text" class="form-control" name="nation"> 
			    </div>
			</div>
		</div>	
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob" required> 
				</div>
				<div class="col-md-4">	
				<label> Phone Number</label>
				<input type="text"  class ="form-control" name="phone" > 
				 </div>
			</div>
			
			<div class ="row">
				<div class ="col-md-4">
				<label>Gravida info </label>
				<input type="text" class="form-control" name="gravida" required> 
				</div>
			<br>
			 <div class="col-md-4"> 
				<label>Number of birth</label>
				<select class="form-control" name="number_birth"> <option>--select your Number of birth--</option>
				
				                        <option value="one">1</option>
										<option value="twins">2</option> 
										<option value="three">3</option>				
										<option value="more">4</option>
										<option value="more">5</option>
										<option value="more">6</option>
										<option value="more">7</option>
										<option value="more">8</option>
										<option value="more">9</option>
										<option value="more">10</option>
										</select>
				 
			  
			</div>
			</div>
			
		<div class ="row" >
			<div class ="col-md-6">
			   <label>Delivery way</label>
			   <div class = "col-md-5">
			   <input type ="radio" name ="way" value = "normal">Normal
			    <input type ="radio" name ="way" value ="abnormal">Abnormal
			   </div>
			   </div>
			
			<div class ="col-md-4">
			<label>Are you married</label>
			<div class ="col-md-5">
			<input type ="radio" name ="maride" value = "yes">Yes
			 <input type ="radio" name ="maride" value ="no">No
			</div>
			</div>	
			
			 
		</div>
				
		<div class="row">			 		 				 
				<div class="col-md-4"> 
				<label>Username</label>
			<input type="text" class="form-control" name="user" required>
			  </div>
			  
			  <div class="col-md-4 " > 
				<label>Password</label>
				<input type="password" class="form-control" name="pass"  required> 
				</div>
				</div>
				
		
			
		    <div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary s">Save</button>
			<button type="reset"  class="btn btn-primary">Reset</button>	
			</div>
	 </form>
    	</div>
 
     </div>	
     
</body>
</html>