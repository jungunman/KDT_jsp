<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffee</title>
</head>
<body>
	<c:set var="coffee" value="아프리카노" />
	<c:set var="cnt" value="8" />
	<c:choose>
		<c:when test="${coffee =='아메리카노'}">
			<c:set var="price" value="${cnt * 2700}" />	
		</c:when>
		<c:when test="${coffee =='아프리카노'}">		
			<c:set var="price" value="${cnt * 2500}" />	
		</c:when>
		<c:when test="${coffee =='아시아노'}">		
			<c:set var="price" value="${cnt * 3000}" />	
		</c:when>
	</c:choose>
	
			선택하신 음료 : ${coffee}<br/>
			주문 갯수 : ${ cnt } <br />
			총 가격 : ${price }

</body>
</html>