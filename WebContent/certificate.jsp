<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ page import= "javax.servlet.http.*,javax.servlet.*"%>
    <%@ page import= "bean.CertificateBean"%>
    <%@ page import= "dao.CertificateDao"%>
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
String bid =request.getParameter("id");
int id = Integer.parseInt(bid);
CertificateBean bb =CertificateDao.getCertificateById(id);

%>


<%@ include file="header.jsp" %>
	
<div class="row"  style="padding-top: 70px">
	<%@ include file="sidenav.jsp" %>
	
	<div class="col-9">		
		<h1 class = "text-center">Birth Certificate</h1>
		
	<div class="row">
		<div class="col-md-5">
			<span>CHILD NAME</span>  <span><%= bb.getChild_name() %></span>
		</div>
		<div class="col-md-5">
			<span>GENDER</span>  <span><%= bb.getGender() %></span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<span>DATE OF BIRTH</span>  <span><%= bb.getDob() %></span>
		</div>
		<div class="col-md-5">
			<span>CERVICAL</span>  <span><%= bb.getCervical() %></span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<span>PLACE OF BIRTH</span>  <span><%= bb.getPob() %></span>
		</div>
		<div class="col-md-5">
			<span>ADDRESS</span>  <span><%= bb.getAddress() %></span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<span>MOTHER NAME</span>  <span><%= bb.getFname() %></span>
		</div>
		<div class="col-md-5">
			<span>FATHER NAME</span>  <span><%= bb.getFather() %></span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<span>DATE</span>  <span><%
				DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
				Calendar today = Calendar.getInstance();
				out.print(df.format(today.getTime()));
			%></span>
		</div>
		<div class="col-md-5">
			<span>Jina la Alofanya</span>  <span><%= user %></span>
		</div>
	</div>
				
	</div>
	
</div>			

</body>
</html>