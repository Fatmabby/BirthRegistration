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


<div id ="all-to" class ="container-fluid " style="background: url(pictures/chldbirth.jpg);">

<%@ include file="header.jsp" %>
	
<div class="row">
<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
		
		<br/><br/>
			

			<form  method ="post" action ="UpdateBirth">
			<div class="row">
				<div class="col-md-4"> 
				<label>Birth ID</label>
				<input type="text" class="form-control" name="birth_id" readonly value=<%= bb.getBirth_id() %>>
				 </div>
				 
				<div class="col-md-4 "> 
				<label>Patent ID</label>
				<input type="text" class="form-control" name="patent_id" value =<%= bb.getPatent_id() %> required> 
				</div>
			</div>
			
			
				<div class="row">
				<div class="col-md-4"> 
				<label > Name of Child</label>
				<input type="text" class="form-control" name="chld_name" value = <%= bb.getName_child()%> required>
				 </div>
				 
				<div class="col-md-4"> 
				<label>Gender</label>
				<input type="text" class="form-control" name="gender"required> 
				</div>
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob" value = <%= bb.getDob() %> required>
				 </div>
				
				<div class="col-md-4"> 
				<label>Weight </label>
				<input type="text" class="form-control" name="weght" value = <%= bb.getWeight() %> required> 
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4"> 
				<label>Birth Place</label>
				<input type="text" class="form-control" name="place" value =<%= bb.getBirth_place() %> required>
				 </div>
				 	 
				 <div class="col-md-4"> 
				<label>Number of birth</label>
				<select class="form-control" name="Number_birth"> <option>--select your Number of birth--</option>
				
				                        <option value="one">1</option>
										<option value="twins">2</option> 
										<option value="three">3</option>				
										<option value="more">4</option>
										
										</select>
				 </div>
			</div>
			
			<div class="row">
				 <div class="col-md-4"> 
				<label>Father Name</label>
				<input type="text" class="form-control" name="father" value =<%= bb.getFather_name() %> required>
				 </div>
		
			<div class="col-md-4"> 
				<label>Phone Number</label>
				<input type="text" class="form-control" name="phone" value =<%= bb.getPhone_no() %> required>
				 </div>
			
			
			</div>
				
			<div class="col-md-3 mt-5 ml-5"> 
			<button type="submit"  class="btn btn-primary" name="REGISTER">Update</button>
			
			 </div>	
			 </form>	
	</div>	
	</div>
	</div>		

</body>
</html>