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
<title>Insert title here</title>
</head>
<body>
<%
List<BirthBean> list= BirthDao.getAllBirt();
%>

<%@ include file="header.jsp" %>
	
<div class="row"  style="padding-top: 70px">
	<%@ include file="adsidenav.jsp" %>
	
	<div class="col-9">
			
<h1 class = "text-center">List of birth</h1>

		<table class ="table table-striped">
			<thead>
				<tr>
				    <th>SN</th>
					<th>Patent_ID</th>
					<th>Child_name</th>
					<th>gender</th>
					<th>Dob</th>
					<th>Weight</th>
					<th>Time</th>
					<th>Birth_place </th>
					<th>Cervical</th>
					<th>father_name</th>
					<th>Nationality</th>
					<th>father_work</th>
					<th>Address</th>
					<th>place_birth</th>
					<th>Phone No</th>
					<th>Update</th>
					<th>Delete</th>
					<th>Generate certificate</th>
				</tr>
			</thead>
			<tbody>
					
				<% 
				int i=1;
				for(BirthBean bb:list){ 
				%>
				<tr>
					<td><%= i %><%i++;%></td>
					<td><%= bb.getPatent_id() %></td>
					<td><%= bb.getName_child() %></td>
					<td><%= bb.getGender() %></td>
					<td><%= bb.getDob() %></td>
					<td><%= bb.getWeight() %></td>
					<td><%= bb.getTime() %></td>
					<td><%= bb.getBirth_place() %></td>
					<td><%= bb.getCervical() %></td>
					<td><%= bb.getFather_name()  %></td>
					<td><%= bb.getNationality() %></td>
					<td><%= bb.getFwork() %></td>
					<td><%= bb.getAddress() %></td>
					<td><%= bb.getPlace_birth() %></td>
					<td><%= bb.getPhone_no() %></td>
					<td><a href ="birthupdate.jsp?id=<%= bb.getBirth_id() %>">Update</a></td>
					<td><a href ="DeleteBirth?id=<%= bb.getBirth_id() %>">Delete</a></td>
					<td><a href ="certificate.jsp?id=<%= bb.getPatent_id() %>">Generate</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>

			
		
			
			</div>
	
      </div>			

</body>
</html>