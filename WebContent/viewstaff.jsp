<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "dao.StaffDao" %>
     <%@ page import= "bean.StaffBean" %>
      <%@ page import= "java.util.*,java.text.*, java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="link.jsp" %>
<meta charset="ISO-8859-1">
<link href ="news.css" rel ="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%
List<StaffBean> list= StaffDao.getAllStaff();
%>

	<%@ include file="header.jsp" %>
<div class="row" style="padding-top: 70px">
	<%@ include file="adsidenav.jsp" %>
	<div class="col-9">
			
<h1 class = "text-center">List of Staff</h1>
<input id="input" type="text" placeholder="Search....." >
		<table class ="table table-striped">
			<thead>
				<tr>
					<th>SN</th>
					<th>Staff_ID</th>
					<th>First_name</th>
					<th>Middle_name</th>
					<th>Last_name</th>
					<th>Gender</th>
					<th>Age</th>
				   <th>Address</th>
					<th>Email</th>
					<th>Phone </th>
					<th>User_name </th>
					<th>Password</th>
					<th>edit</th>
					
				</tr>
			</thead>
			<tbody id="data">
				<% 
					int i=1;
					for(StaffBean sb:list){ 
				%>
				<tr>
				    <td><%= i %><% i++; %></td>
				    <td><%= sb.getStaff_id() %></td>
					<td><%= sb.getFname() %></td>
					<td><%= sb.getMiddle_name() %></td>
					<td><%= sb.getLast_name() %></td>
					<td><%= sb.getGender() %></td>
					<td><%=sb.getDob() %></td>
					<td><%= sb.getAddress() %></td>
					<td><%= sb.getEmail() %></td>
					<td><%= sb.getPhone() %></td>
					<td><%= sb.getUsername() %></td>
					<td><%= sb.getPassword() %></td>
						<td><a href ="staffupdate.jsp?id=<%= sb.getStaff_id() %>">Update</a></td>
					
				</tr>
				<% } %>
			</tbody>
		</table>
			
	
      </div>			
</div>