<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	String nav = "rooms";

	if(request.getParameter("nav") != null){
		nav = request.getParameter("nav");
	}
	
	


%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/style.css">
<title>편안함과 향긋함이 가득한 자연의 느낌 그대로 - Woong Rooms</title>
</head>
<body>
	
	<!-- header -->
	<jsp:include page="components/header.jsp" />
	
	<!-- main -->
	
	<!-- footer -->
	
</body>
</html>