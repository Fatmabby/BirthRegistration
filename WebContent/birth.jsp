<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "dao.PatentDao" %>
     <%@ page import= "bean.PatentBean" %>
      <%@ page import= "java.util.*" %>
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
<%
List<PatentBean> list= PatentDao.getAllPatent();
%>
<div class="container-fluid">
<form  method ="post" action ="BirthController">

<%@ include file="header.jsp" %>
	
<div class="row" style="padding-top: 70px">

<div class="col-3">

<div class ="wrapper">
	<div class ="sidebar bg-d">
		<h2 class="text-white">Sidebar</h2>
		
		<ul>
			<li><a href="home.jsp"><i class="fa fa-home mr-2"></i> HOME</a></li>
			<li> <a href="patent-reg.jsp"><i class="fa fa-female mr-2" ></i> Patent Registration</a></li>
			<li> <a href="viewpatent.jsp"><i class="fa fa-id-card-o mr-2" ></i>View Patent </a></li>
			<li> <a href="birth.jsp"><i class="fa fa-child mr-2"></i> Birth form</a></li>
			<li> <a href="viewbirth.jsp"><i class="fa fa-child mr-2"></i> View Birth form</a></li>
			<li> <a href="#"><i class="fa fa-times-circle mr-2"></i>Death form</a></li>
		</ul>
	</div>
	</div>

</div>
	
	<div class="col-9">
		
		<br/><br/>
			
		<h3>Child Registration Form</h3>
		<hr>
			
			<div class="row">
				<div class="col-md-6 "> 
				<label>Patent ID</label>
				<select class="form-control" name="patent_id">
				<% for(PatentBean pb:list){ %>
				<option> <%= pb.getPatent_id() %></option>
				<% }%>
				</select>
				</div>
				<div class="col-md-6"> 
				<label > Name of Child</label>
				<input type="text" class="form-control" name="chld_name">
				 </div>
				
			</div>
			
			
	   <div class="row">
			<div class ="col-md-6">
			<label>Gender</label>
			<div class ="col-md-6">
			<input type="radio"  name="gender" value ="male"required>	Male
			<input type="radio"  name="gender" value ="female"required>	Female
			</div>
			</div>
			<div class="col-md-6"> 
			<label>Date of Birth</label>
			<input type="date" class="form-control" name="dob" required>
			</div>
		</div>
			
			
				<div class="row">
				<div class="col-md-6"> 
				<label>Weight </label>
				<input type="text" class="form-control" name="weght" required> 
				</div>
				
				<div class="col-md-6"> 
				<label>Time of birth</label>
				<input type="time" class="form-control" name="time" required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6"> 
				<label>Birth Place</label>
				<input type="text" class="form-control" name="place"required>
				 </div>	
				 
			<div class ="col-md-6">
			<label>Cervical </label>
			<div class ="col-md-6">
			<input type="radio"  name="cervical" value ="born_alive"required>	Born alive
			<input type="radio"  name="cervical" value ="born_dead"required>	Born dead
			</div>
			</div>
				 
			</div>
			<br>
			
			<h3>Father Details</h3>
			<hr>
			
			<div class="row">
				 <div class="col-md-6"> 
				<label>Father Name</label>
				<input type="text" class="form-control" name="father"required>
				 </div>	
			<div class="col-md-6"> 
			<label>Nationality</label>
			<div class="row">
				<div class = "col-md-4">
					<input type ="radio" name ="nation" value = "mstanzania">  Mtanzanian
			    </div>
			    <div class = "col-md-4">
				    Other <input type="text" class="form-control" name="nation"> 
			    </div>
			</div>
		</div>
		</div>
				
				
				<div class="row">
				 <div class="col-md-6"> 
				<label>Father Works</label>
				<input type="text" class="form-control" name="fwork"required>
				 </div>
		
			<div class="col-md-6"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" required>
				 </div>
			</div>
			
			<div class="row">
				 <div class="col-md-6"> 
				<label>Place of Birth</label>
				<input type="text" class="form-control" name="placebirth"required>
				 </div>
		
			<div class="col-md-6"> 
				<label>Phone Number</label>
				<input type="text" class="form-control" name="phone" required>
				 </div>
			</div>
			
			
			
				
			<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Save</button>
		
			
			 </div>		
	</div>	
	</div>
		
</form>
</div>
</body>
</html>