<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 10;
	request.setAttribute("bb", "나는 무너");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a</title>
</head>
<body>
<h1>a입니다</h1>
<jsp:forward page="b.jsp?pname=운마니">
	<jsp:param value="183.45" name="height"/>
</jsp:forward>
<%-- 포워딩은 최초 한 개만 실행됨. 
<jsp:forward page="c.jsp"/> --%>
</body>
</html>