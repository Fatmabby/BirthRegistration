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
<div id ="all-to" class ="container-fluid " style="background: url(pictures/chldbirth.jpg);">
<form action="">

	<div class ="row bg-primary align-items-center" style ="height:70px;">
		<div class ="col-2">
		<img alt="" src="pictures/h.PNG " style ="height:50px;width:50px;border-radius:50px ">
		</div>
		<div class = "col-10 ">
		<h2 style = "margin-left:100px;color:white; text-align: center">BIRTH  REGISTRATION FORM</h2>
		</div> 
	</div>
	
<div class="row">
<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
		
		<br/><br/>
			

			
			<div class="row">
			
				<div class="col-md-4"> 
				<label for ="intuptPressure">Birth ID</label>
				<input type="text" class="form-control" name="birth" placeholder="Birth ID" required>
				 </div>
				 
				<div class="col-md-4 "> 
				<label for ="intuptmapigo date">Patentiant ID</label>
				<input type="text" class="form-control" name="Mapigo ya mtoto" placeholder="Mapigo ya mtoto" required> 
				</div>
			
			</div>
			
			
				<div class="row">
			
				<div class="col-md-4"> 
				<label for ="intuptHB">Gender</label>
				<input type="text" class="form-control" name="gender" placeholder="Gender" required>
				 </div>
				 
				<div class="col-md-4"> 
				<label for ="intuptukubwa">watoto wa ngapi</label>
				<input type="text" class="form-control" name="ukubwa wa tumbo" placeholder="watoto wa ngapi" required> 
				</div>
			
			</div>
			
				<div class="row">
			
				<div class="col-md-4"> 
				<label for ="intuptAddress">MApigo ya mtoto</label>
				<input type="date" class="form-control" name="Uchungu" placeholder="Date of birth" required>
				 </div>
				 
				<div class="col-md-4"> 
				<label for ="intuptAge">pregnace ya uchumgu </label>
				<input type="text" class="form-control" name="age" placeholder="Njia alozaliwa" required> 
				</div>
			
			</div>
			
			<div class="row">
			
				<div class="col-md-4"> 
				<label for ="intuptAddress">mgonjwa au mzima</label>
				<input type="text" class="form-control" name="Uchungu" placeholder="Pregness ya uchungu" required>
				 </div>
				 
				

			
			</div>
			
			
			
			
			
			
			<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Save</button>
			<button type="submit"  class="btn btn-primary" name="REGISTER">Update</button>
			
			 </div>
			

	
      </div>



			
			
			
			
</div>
			

</form>
</div>

</body>
</html>