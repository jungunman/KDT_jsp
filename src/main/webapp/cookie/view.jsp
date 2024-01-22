<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
	<h1>쿠키보기</h1>
	<%for(Cookie coo : request.getCookies()){ %>
		<h3><%=coo.getName() %> : <%= coo.getValue() %></h3>
	
	<%} %>
</body>
</html>