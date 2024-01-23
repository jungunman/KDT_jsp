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
	
		session.setAttribute("pid", "aaa");
		session.setAttribute("www", new Member("ddd","1123","3333"));
		session.setAttribute("qqq", new int[]{111,222,333});
	%>
</body>
</html>