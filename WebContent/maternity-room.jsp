<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="link.jsp" %>
<meta charset="ISO-8859-1">
<link href ="news.css" rel ="stylesheet">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="MaternityController">

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
				<label >PatentID</label>
				<input type="text" class="form-control" name="Patent" placeholder="PatentID" required>
				 </div>
				 
				<div class="col-md-4 "> 
				<label>Pressure</label>
				<input type="text" class="form-control" name="Pressure" placeholder="Pressure" required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4"> 
				<label>Haemoglobin</label>
				<input type="text" class="form-control" name="H.B" placeholder="H.B" required>
				 </div>
				 
				<div class="col-md-4"> 
				<label for ="intuptukubwa">Fetal heart rate</label>
				<input type="text" class="form-control" name="Fhr" placeholder="Fetal heart rate" required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4"> 
				<label>Fundal height</label>
				<input type="text" class="form-control" name="fh" placeholder="Fundal height" required>
				 </div>
				 
				<div class="col-md-4"> 
				<label>contraction</label>
				<input type="text" class="form-control" name="contraction" placeholder="contraction" required> 
				</div>
			
			</div>
			
			<div class="row">
			
				<div class="col-md-4"> 
				<label>Cervix </label>
				<input type="text" class="form-control" name="cervix" placeholder="Corvix" required>
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