<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<h1>logout.jsp</h1>
<%
	String pid = (String)application.getAttribute("pid");

	application.removeAttribute("pid");
%>

<script>
	alert("<%=pid%>님 로그아웃 돼었습니다.")
	location.href="loginMain.jsp"
</script>
</body>
</html>