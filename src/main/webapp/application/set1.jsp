<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set1</title>
</head>
<body>
<h1>set1</h1>
<%
	application.setAttribute("pname", "용주니");
	application.setAttribute("age", 28);
	//application.setAttribute(123, 28);
	application.setAttribute("marriage", false);
	application.setAttribute("arr", new int [] {11,22,33,44});
	application.setAttribute("today", new Date());
%>
</body>
</html>