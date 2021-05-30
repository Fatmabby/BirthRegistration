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
<div id ="all-to" class ="container-fluid " style="background: url(pictures/doctor.jpg);">
<form action="">

	<div class ="row bg-primary align-items-center" style ="height:70px;">
		<div class ="col-2">
		<img alt="" src="pictures/h.PNG " style ="height:50px;width:50px;border-radius:50px ">
		</div>
		<div class = "col-10 ">
		<h2 style = "margin-left:100px;color:white; text-align: center">DOCTOR REGISTRATION</h2>
		</div> 
	</div>
	
<div class="row">
	<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
		
		<br/><br/>
			
	<div class="row">
		<div class="col-md-5"> 
		<label>Reg_ ID</label> 
		<input type="text" class="form-control" name="reg_id" placeholder="enter reg_id" required>
		 </div>
				 
		 <div class="col-md-5"> 
		 <label>Firstname</label> 
		 <input type="text" class="form-control" name="fname" placeholder="enter fname" required> 
		 </div>
	</div>
			
	<div class="row">
		<div class="col-md-5"> 
		<label>Lastname</label> 
		<input type="text" class="form-control" name="lname" placeholder="enter lname" required>
		 </div>
				 
		 <div class="col-md-5"> 
		 <label>Husband name</label> 
		 <input type="text" class="form-control" name="hname" placeholder="enter husband name" required> 
		 </div>
	</div>
	
	<div class="row">
		<div class="col-md-5"> 
		<label>Address</label> 
		<input type="text" class="form-control" name="address" placeholder="enter address" required>
		 </div>
				 
		 <div class="col-md-5"> 
		 <label>Date of Birth</label> 
		 <input type="date" class="form-control" name="dob" placeholder="enter dob" required> 
		 </div>
	</div>
	
	<div class="row">
		<div class="col-md-5"> 
		<label>Contact</label> 
		<input type="text" class="form-control" name="contact" placeholder="enter contactt" required>
		 </div>
				 
		 <div class="col-md-5"> 
		 <label>Reg_datee</label> 
		 <input type="date" class="form-control" name="reg_date" placeholder="enter reg_date" required> 
		 </div>
	</div>

	<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Submit</button> 
	 </div>
			

	
      </div>			
</div>
			

</form>
</div>
</body>
</html>