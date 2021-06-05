<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "dao.BirthDao" %>
     <%@ page import= "bean.BirthBean" %>
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
List<BirthBean> list= BirthDao.getAllBirt();
%>


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
			
<h1>class = "text-center">List of birth</h1>

		<table class ="table table-striped">
			<thead>
				<tr>
					<th>Patent_ID</th>
					<th>Child_name</th>
					<th>gender</th>
					<th>Dob</th>
					<th>Weight</th>
					<th>Birth_place </th>
					<th>father_name</th>
					<th>Phone No</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<% for(BirthBean bb:list){ %>
				<tr>
					<td><%= bb.getPatent_id() %></td>
					<td><%= bb.getName_child() %></td>
					<td><%= bb.getGender() %></td>
					<td><%= bb.getDob() %></td>
					<td><%= bb.getWeight() %></td>
					<td><%= bb.getBirth_place() %></td>
					<td><%= bb.getFather_name()  %></td>
					<td><%= bb.getPhone_no() %></td>
					<td><a href ="birthupdate.jsp?id=<%= bb.getBirth_id() %>">Update</a></td>
					<td><a href ="DeleteBirth?id=<%= bb.getBirth_id() %>">Delete</a></td>
					
				</tr>
				<% } %>
			</tbody>
		</table>

			
		
			
			</div>
	
      </div>			

</body>
</html>