<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수우미양가</title>
</head>
<body>


	


	<c:set var="avg" value="100" />
	
	<c:choose>
		<c:when test="${avg>=90}">
			<p>수</p>
		</c:when>
		<c:when test="${avg>=80}">
			<p>우</p>
		</c:when>
		<c:when test="${avg>=70}">
			<p>미</p>
		</c:when>
		<c:when test="${avg>=60}">
			<p>양</p>
		</c:when>
		<c:otherwise>
			<p>가</p>
		</c:otherwise>
	</c:choose>
	


</body>
</html>