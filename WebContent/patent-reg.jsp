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
<form>
<div id ="all-to" class ="container-fluid " style="background: url(pictures/matereg.jpg);">
	
	<div class ="row bg-primary align-items-center" style ="height:70px;">
		<div class ="col-2">
		<img alt="" src="pictures/h.PNG " style ="height:50px;width:50px;border-radius:50px ">
		</div>
		<div class = "col-10 ">
		<h2 style = "margin-left:100px;color:white; text-align: center">PREGNANT REGISTRATION</h2>
		</div> 
	</div>
	
<div class="row">
	<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
			
				<br/><br/>
		
			
			<div class="row">			
				<div class="col-md-4"> 
				<label >Patent_ID</label>
				<input type="text" class="form-control" name="patent" required>
				 </div>	
				 
				 <div class="col-md-4"> 
				<label>First Name</label>
				<input type="text" class="form-control" name="fname"  required>

				 </div>				 			
			</div>
						
				<div class="row">						 
				<div class="col-md-4"> 
				<label >Last Name</label>
				<input type="text" class="form-control" name="lname"required> 
				</div>
				
				<div class="col-md-4"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" required>
				 </div>			
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob" required> 
				</div>
				<div class="col-md-4">	
				<label> Phone Number</label>
				<input type="number"  class ="form-control" name="phone" > 
				 </div>
			</div>
				
		<div class="row">			 		 				 
				<div class="col-md-4"> 
				<label>Username</label>
			<input type="text" class="form-control" name="user" required>
			  </div>
			  
			  <div class="col-md-4 "> 
				<label>Password</label>
				<input type="password" class="form-control" name="pass"  required> 
				</div>
				</div>
				
		
			
		    <div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary s">Save</button>
			<button type="reset"  class="btn btn-primary">Reset</button>	
			 </div>
	
    	</div>
 
     </div>	
      	
</div>
 </form>
</body>
</html>