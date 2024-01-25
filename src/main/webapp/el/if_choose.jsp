<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>if_choose</h1>
	<!-- 이게 부정확한 표현 -->
	<c:if test="true">
		참이지롱 <br />
	</c:if>
	<c:if test="false">
		거짓부롱스<br />
	</c:if>
	
	<!-- 이게 맞는 표현 -->
	<c:if test="${true}">
		참이지롱 <br />
	</c:if>
	<c:if test="${false}">
		거짓부롱스<br />
	</c:if>
	
	<c:choose>
		<c:when test="${true}">
			참이지롱1 <br />			
		</c:when>
		<c:when test="${true}">
			참이지롱2 <br />			
		</c:when>
		<c:when test="${true}">
			참이지롱3 <br />			
		</c:when>
		<c:otherwise>
			거짓브롱스 <br />
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${false}">
			거짓브롱스1 <br />			
		</c:when>
		<c:when test="${false}">
			거짓브롱스2 <br />			
		</c:when>
		<c:when test="${false}">
			거짓브롱스3 <br />			
		</c:when>
		<c:otherwise>
			거짓브롱스4 <br />
		</c:otherwise>
	</c:choose>
</body>
</html>