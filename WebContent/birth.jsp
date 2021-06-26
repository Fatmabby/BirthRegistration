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
<form  method ="post" action ="BirthController">

<%@ include file="header.jsp" %>
	
<div class="row">
<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
		
		<br/><br/>
			
		<h3>Child Registration Form</h3>
		<hr>
			
			<div class="row">
				<div class="col-md-4"> 
				<label>Birth ID</label>
				<input type="text" class="form-control" name="birth" required>
				 </div>
				 
				<div class="col-md-4 "> 
				<label>Patent ID</label>
				<input type="text" class="form-control" name="patent_id" required> 
				</div>
			</div>
			
			
				<div class="row">
				<div class="col-md-4"> 
				<label > Name of Child</label>
				<input type="text" class="form-control" name="chld_name" required>
				 </div>
				 
				<div class="col-md-6"> 
				<label>Gender</label>
				<div class ="col-md-4">
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
				<label>Weight </label>
				<input type="text" class="form-control" name="weght" required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4"> 
				<label>Birth Place</label>
				<input type="text" class="form-control" name="place"required>
				 </div>	
				 
			<div class ="col-md-6">
			<label>Cervical Condition</label>
			<div class ="col-md-6">
			<input type="radio"  name="condition" value ="born_alive"required>	Born alive
			<input type="radio"  name="condition" value ="born_dead"required>	Born dead
			</div>
			</div>
				 
			</div>
			<br>
			
			<h3><u>Father Details</u></h3>
			<hr>
			
			<div class="row">
				 <div class="col-md-4"> 
				<label>Father Name</label>
				<input type="text" class="form-control" name="father"required>
				 </div>
		
			<div class="col-md-6"> 
				<label>Nationality</label>
				<div class = "col-md-5">
				<input type ="radio" name ="nation" value = "mstanzania">  Mtanzania
			    <input type ="radio" name ="nation" value ="others">  Others
			</div>
		</div>
		</div>
				
				
				<div class="row">
				 <div class="col-md-4"> 
				<label>Father Works</label>
				<input type="text" class="form-control" name="fwork"required>
				 </div>
		
			<div class="col-md-4"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" required>
				 </div>
			</div>
			
			<div class="row">
				 <div class="col-md-4"> 
				<label>Place of Birth</label>
				<input type="text" class="form-control" name="placebirth"required>
				 </div>
		
			<div class="col-md-4"> 
				<label>Phone Number</label>
				<input type="text" class="form-control" name="phone" required>
				 </div>
			</div>
			
			
			
				
			<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Save</button>
			<button type="submit"  class="btn btn-primary" name="REGISTER">Update</button>
			
			 </div>		
	</div>	
	</div>
		
</form>
</body>
</html>