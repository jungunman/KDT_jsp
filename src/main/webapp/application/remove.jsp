<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remove</title>
</head>
<body>
<h1>remove</h1>
<%
	application.removeAttribute("pname");
	application.removeAttribute("age");
	
%>
</body>
</html>