<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>

<% if(session.getAttribute("user") ==null) {%>

	<form action="reg/reg.jsp">
		<input type="text" name="pid" placeholder="아이디" />
		<input type="text" name="pwd" placeholder="비미르번호르" />
		<input type="submit" value="로그인" />
	</form>
	
	<%}else{ 
		String pid = (String)session.getAttribute("user");
	%>
		<h1><%= pid %>님 어서오셔요~</h1>
		<a href="reg/out.jsp">로그아웃</a>
	<%} %>
</body>
</html>