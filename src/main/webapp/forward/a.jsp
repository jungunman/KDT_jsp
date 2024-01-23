<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 10;
	request.setAttribute("bb", "초밥먹냐?");
	
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a 입니다.</title>
</head>
<body>
<h1>a 입니다.</h1>
<jsp:forward page="b.jsp?pname=운마니">
	<jsp:param name="height"  value="183.45" />
</jsp:forward>
<%-- 
	forwarding은 최초 1번만 실행됨
	아래 c.jsp 로 이동 안함
<jsp:forward page="c.jsp"/> --%>
</body>
</html>