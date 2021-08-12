<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ page import= "javax.servlet.http.*,javax.servlet.*"%>
    <%@ page import= "bean.BirthBean"%>
    <%@ page import= "dao.BirthDao"%>
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
String bid =request.getParameter("id");
int id = Integer.parseInt(bid);
BirthBean  bb =BirthDao.getBirthById(id);

%>

<%@ include file="header.jsp" %>
	<div class="row" style= padding-top:70px>
<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
		
		<br/><br/>
		

			<form  method ="post" action ="UpdateBirth">
			
			<div class="row">
				<div class="col-md-6"> 
				<label>Patent ID</label>
				<input type="text" class="form-control" name="patent_id" value =<%= bb.getPatent_id() %> required readonly> 
				</div>
				
				<div class="col-md-6"> 
				<label > Name of Child</label>
				<input type="text" class="form-control" name="chld_name" value=<%=bb.getName_child() %> required>
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
			<input type="date" class="form-control" name="dob"  value=<%=bb.getDob() %> required>
			</div>
		</div>
			
			
				<div class="row">
				<div class="col-md-6"> 
				<label>Weight </label>
				<input type="text" class="form-control" name="weght" value=<%=bb.getWeight() %> required> 
				</div>
				
				<div class="col-md-6"> 
				<label>Time of birth</label>
				<input type="time" class="form-control" name="time" value=<%=bb.getTime() %> required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6"> 
				<label>Birth Place</label>
				<input type="text" class="form-control" name="place" value=<%=bb.getBirth_place() %>required>
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
				<input type="text" class="form-control" name="father" value= <%=bb.getFather_name() %>required>
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
				<input type="text" class="form-control" name="fwork" value= <%=bb.getFwork() %>required>
				 </div>
		
			<div class="col-md-6"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address" value =<%=bb.getAddress() %>  required>
				 </div>
			</div>
			
			<div class="row">
				 <div class="col-md-6"> 
				<label>Place of Birth</label>
				<input type="text" class="form-control" name="placebirth" value=<%=bb.getBirth_place() %> required>
				 </div>
		
			<div class="col-md-6"> 
				<label>Phone Number</label>
				<input type="text" class="form-control" name="phone" value= <%=bb.getPhone_no() %>  required>
				 </div>
			</div>
			
			
			<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Update</button>
			
			 </div>	
			 </form>	
	</div>	
	</div>	
</body>
</html>