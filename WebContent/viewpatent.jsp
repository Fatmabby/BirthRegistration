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
	<div class ="row bg-primary align-items-center" style ="height:70px;">
		<div class ="col-2">
		<img alt="" src="pictures/h.PNG " style ="height:50px;width:50px;border-radius:50px ">
		</div>
		<div class = "col-10 ">
		<h2 style = "margin-left:100px;color:white; text-align: center">PREGNANT REGISTRATION</h2>
		</div> 
	</div>
	
<div class="row">

	
	<div class="col-9" style="margin-left:150px">
			

<h1 class = "text-center">List of Patent</h1>

		<table class ="table table-striped">
			<thead>
				<tr>
					<th>Fullname</th>
					<th>Husband name</th>
					<th>Address</th>
					<th>Dob</th>
					<th>Gravida</th>
					<th>Operation </th>
					<th>Blood-group</th>
					<th>Phone No</th>
					<th>Registration Date</th>
					<th>edit</th>
					<th>deletee</th>
				</tr>
			</thead>
			<tbody>
				<% for(PatentBean pb:list){ %>
				<tr>
					<td><%= pb.getFullname() %></td>
					<td><%= pb.getHusbandname() %></td>
					<td><%= pb.getAddress() %></td>
					<td><%= pb.getDob() %></td>
					<td><%= pb.getGravida() %></td>
					<td><%= pb.getOperation() %></td>
					<td><%= pb.getBlood_group() %></td>
					<td><%= pb.getPhone()  %></td>
					<td><%= pb.getReg_date() %></td>
					
				</tr>
				<% } %>
			</tbody>
		</table>
			
	
      </div>			
</div>
			

</body>
</html>