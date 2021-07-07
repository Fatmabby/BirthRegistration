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
<title>Insert title here</title>
</head>
<body>
<%
List<PatentBean> list= PatentDao.getAllPatent();
%>
	<%@ include file="header.jsp" %>
<div class="row" style="padding-top: 70px">
	<%@ include file="sidenav.jsp" %>
	<div class="col-9">
			
<h1 class = "text-center">List of Patent</h1>
<input id="input" type="text" placeholder="Search....." >
		<table class ="table table-striped">
			<thead>
				<tr>
					<th>SN</th>
					<th>Patent_ID</th>
					<th>First_name</th>
					<th>Last_name</th>
					<th>Address</th>
					<th>Nationality</th>
					<th>Dob</th>
					<th>Phone Number</th>
					<th>Gravida info</th>
					<th>Number_birth</th>
					<th>Delivery_way</th>
					<th>Married</th>
					<th>Username </th>
					<th>Password</th>
					<th>edit</th>
					
				</tr>
			</thead>
			<tbody id="data">
				<% 
					int i=1;
					for(PatentBean pb:list){ 
				%>
				<tr>
				    <td><%= i %><% i++; %></td>
				    <td><%= pb.getPatent_id() %></td>
					<td><%= pb.getFirst_name() %></td>
					<td><%= pb.getLast_name() %></td>
					<td><%= pb.getAddress() %></td>
					<td><%= pb.getNationality() %></td>
					<td><%= pb.getDob() %></td>
					<td><%= pb.getPhone() %></td>
					<td><%= pb.getGravida() %></td>
					<td><%= pb.getNumber_birth() %></td>
					<td><%= pb.getDelivery_way() %></td>
					<td><%= pb.getMaride()%></td>
					<td><%= pb.getUser() %></td>
					<td><%= pb.getPassword() %></td>
						<td><a href ="patentupdate.jsp?id=<%= pb.getPatent_id() %>">Update</a></td>
					
				</tr>
				<% } %>
			</tbody>
		</table>
			
	
      </div>			
</div>
			
<script>
$(document).ready(function(){
  $("#input").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#data tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>