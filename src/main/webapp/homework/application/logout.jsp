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
	String pname = (String)application.getAttribute("pname");

	application.removeAttribute("pid");
	application.removeAttribute("pw");
	application.removeAttribute("pname");
%>

<script>
	alert("<%=pname%>님 로그아웃 돼었습니다.")
	location.href="loginMain.jsp"
</script>
</body>
</html>