<%@page import="basic_p.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		session.setAttribute("pid", "bbb");
		session.setAttribute("eee", 123.423);
		session.setAttribute("www", "나는 무너");
		
		
		session.setMaxInactiveInterval(5);
	%>
</body>
</html>