<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
			<form method="post" action ="PatentController">
			
	<div class="row">			
		<div class="col-md-5"> 
		<label>Reg_ ID</label> 
		<input type="text" class="form-control" name="reg_id" placeholder="enter reg_id" required>
		 </div>
				
	<div class="col-md-5"> 
		<label>Pressure</label>
		<input type="text" class="form-control" name="fullname" placeholder="Full name" required>
		 </div>				 			
			</div>
						
				<div class="row">						 
				<div class="col-md-4"> 
				<label >husbandname</label>
				<input type="text" class="form-control" name="husbandname" placeholder="Husbandname" required> 
				</div>
				<div class="col-md-4"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" placeholder="Addresse" required>
				 </div>			
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob" placeholder="Date of Birth" required> 
				</div>
				<div class="col-md-4">	
				<label> How may gravida</label>
				<input type="number" max=10 min=1 class="form-control" name="gravida" placeholder="gravida" required> 
				 </div>
			</div>
			
			<div class="row">			 		 				 
				<div class="col-md-4"> 
				<label>operation</label>
				<div>
			  <label class="form-check-label">
			    <input type="radio" class="form-check-input" name="operation"value= "yes">Yes
			  </label>
			  <label class="form-check-label">
			    <input type="radio" class="form-check-input" name="operation"value= "no">No
			  </label>
			  </div>
				</div>
				<div class="col-md-4">
			<label>Blood group:</label> 
			<select class="form-control" name="Bloodgroup"> <option>--select your Blood group--</option>
										<option value="0+">O+</option>
										<option value="O-">O-</option> 
										<option value="A+">A+</option> 
										<option value="A-">A-</option> 
										<option value="B+">B+</option> 
										<option value="B-">B-</option> 
										<option value="AB+">AB+</option> 
										<option value="AB-">AB-</option> 
			</select>
			</div>
			
			</div>
			
			
				<div class="row">			
				 
				<div class="col-md-4"> 
			<label >Phone</label>
			<input type="text" class="form-control" name="Phone" placeholder="phone no" required>
				</div>
				<div class="col-md-4 "> 
				<label>Registration Date</label>
				<input type="date" class="form-control" name="RegstrationDate" placeholder="Registration date" required> 
				</div>
			
			</div>
			
		    <div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary s">Save</button>
			<button type="reset"  class="btn btn-primary">Reset</button>	
			 </div>
		    
</form>
			
		
	
      </div>			
</div>
			
</div>
	

</body>
</html>