<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get</title>
</head>
<body>
<h1>get</h1>
<%
	Enumeration en = application.getAttributeNames();
	while(en.hasMoreElements()){
		out.println(en.nextElement()+"<br/>");
} %>
<hr />
pname:<%=application.getAttribute("pname") %><br/>
age:<%=application.getAttribute("age") %><br/>
marriage:<%=application.getAttribute("marriage") %><br/>
arr:<%=application.getAttribute("arr") %><br/>
today:<%=application.getAttribute("today") %><br/>
height:<%=application.getAttribute("height") %><br/>
</body>
</html>