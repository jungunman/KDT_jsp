<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove</title>
</head>
<body>
<h1>쿠키 삭제</h1>
<%
	Cookie coo1 = new Cookie("pid","");
	Cookie coo2 = new Cookie("height","");
	
	coo1.setMaxAge(0);
	coo2.setMaxAge(5);
	
	response.addCookie(coo1);
	response.addCookie(coo2);
%>
</body>
</html>