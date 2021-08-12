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
	<%@ include file="adsidenav.jsp" %>
	
	<div class="col-9">
			
				<br/><br/>
		
			<form method="post" action="StaffController">
			
					
		<h1>USER REGISTRATION FORM</h1>
		<hr>
			<div class="row">					 
				 <div class="col-md-4"> 
				<label>First Name</label>
				<input type="text" class="form-control" name="fname"  required>
				 </div>	
				 <div class="col-md-4"> 
				<label >Middle Name</label>
				<input type="text" class="form-control" name="middle"required> 
				</div>	 			
			</div>
						
			<div class="row">						 
				<div class="col-md-4"> 
				<label>Last Name</label>
				<input type="text" class="form-control" name="lname" required>
				 </div>	
				  
			<div class ="col-md-6">
			<label>Gender</label>
			<div class ="col-md-6">
			<input type="radio"  name="gender" value ="male"required>	Male
			<input type="radio"  name="gender" value ="female"required>	Female
			</div>
			</div>
				 
				
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob" required> 
				</div>
					<div class="col-md-4">	
				<label> Address</label>
				<input type="text"  class ="form-control" name="address" > 
				 </div>
			</div>
			
			<div class="row">			 		 				 
				<div class="col-md-4"> 
				<label>Email</label>
			<input type="email" class="form-control" name="email" required>
			  </div>
			  
			  <div class="col-md-4 " > 
				<label>Phone_no</label>
				<input type="text" class="form-control" name="phone"  required> 
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
				
				
		<div class="row">
		 <div class="col-md-4"> 
				<label>Role</label>
				<select class="form-control" name="role"> <option>--select your ROLE --</option>
				
				                        <option value="admin">admin</option>
										<option value="staff">staff</option> 
										</select>
				 
			  
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