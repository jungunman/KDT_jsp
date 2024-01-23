<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss"); 
	HttpSession se = session;
	HttpSession se2 = request.getSession();
	HttpSession se3 = pageContext.getSession();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Session</h1>
	<h3><%=session.getId() %></h3>
	<h3><%=sdf.format(session.getCreationTime()) %></h3>
	<h3><%=sdf.format(session.getLastAccessedTime()) %></h3>
	<h1>session Session</h1>
	<h3><%=session.getId() %></h3>
	<h3><%=sdf.format(se.getCreationTime()) %></h3>
	<h3><%=sdf.format(se.getLastAccessedTime()) %></h3>
	<h1>requset Session</h1>
	<h3><%=session.getId() %></h3>
	<h3><%=sdf.format(se2.getCreationTime()) %></h3>
	<h3><%=sdf.format(se2.getLastAccessedTime()) %></h3>
	<h1>pageContext Session</h1>
	<h3><%=session.getId() %></h3>
	<h3><%=sdf.format(se3.getCreationTime()) %></h3>
	<h3><%=sdf.format(se3.getLastAccessedTime()) %></h3>
</body>
</html>