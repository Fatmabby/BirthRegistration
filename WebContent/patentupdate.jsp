<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ page import= "javax.servlet.http.*,javax.servlet.*"%>
    <%@ page import= "bean.PatentBean"%>
    <%@ page import= "dao.PatentDao"%>
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
PatentBean  pb =PatentDao.getPatentById(id);

%>

<div id ="all-to" class ="container-fluid " style="background: url(pictures/matereg.jpg);">
<%@ include file="header.jsp" %>
	
<div class="row">
	<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">
			
				<br/><br/>
		
			<form method="post" action="PatentController">
			<div class="row">			
				<div class="col-md-4"> 
				<label >Patent_ID</label>
				<input type="text" class="form-control" name="patent" value ="<%= pb.getPatent_id() %>" required readonly>
				 </div>	
				 
				 <div class="col-md-4"> 
				<label>First Name</label>
				<input type="text" class="form-control" name="fname"  value ="<%= pb.getFirst_name() %>"  required>

				 </div>				 			
			</div>
						
				<div class="row">						 
				<div class="col-md-4"> 
				<label >Last Name</label>
				<input type="text" class="form-control" name="lname"  value ="<%= pb.getLast_name() %>" required> 
				</div>
				
				<div class="col-md-4"> 
				<label>Address</label>
				<input type="text" class="form-control" name="address"  value ="<%= pb.getAddress() %>" required>
				 </div>			
			</div>
			
				<div class="row">
				<div class="col-md-4"> 
				<label>Date of Birth</label>
				<input type="date" class="form-control" name="dob"  value ="<%= pb.getDob() %>"  required> 
				</div>
				<div class="col-md-4">	
				<label> Phone Number</label>
				<input type="text"  class ="form-control" name="phone"  value ="<%= pb.getPhone() %>" required > 
				 </div>
			</div>
				
		<div class="row">			 		 				 
				<div class="col-md-4"> 
				<label>Username</label>
			<input type="text" class="form-control" name="user"  value ="<%= pb.getUser() %>" required>
			  </div>
			  
			  <div class="col-md-4 "> 
				<label>Password</label>
				<input type="password" class="form-control" name="pass"  value ="<%= pb.getPassword() %>"  required> 
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