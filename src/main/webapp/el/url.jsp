<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	img{
		width:100px;
		border:2px solid #f00;
		padding:10px;
	}
</style>
<meta charset="UTF-8">
<title>url</title>
</head>
<body>
	<h1>URL</h1>
	<img src="../pictures/1.jpg" alt="" />
	<img src="/pictures/2.jpg" alt="" />
	<img src="/jspKDT/pictures/3.jpg" alt="" />
	<c:url value="/" var="url" />
	
	<hr />
	${url } , <c:url value="/"/>
	
	<hr />
	<img src="<c:url value="/pictures/4.jpg" />" alt="" />
	<img src="${url}pictures/2.jpg" alt="" />
	<hr />
	<a href="<c:url value="/el/forEach.jsp" />">forEach Go</a>
	
	
</body>
</html>