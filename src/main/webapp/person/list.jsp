<%@page import="jdbc_p.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<h1>회원목록</h1>

<table border="">
	<tr>
		<td>번호</td>
		<c:forTokens items="아이디,나이,키,이메일,가입일" delims="," var="tt">
			<td>${tt }</td>
		</c:forTokens>
		
	</tr>
	<c:forEach items="<%=new PersonDAO().list() %>" 
	    var="dto" varStatus="no">
	<tr>
		<td>${no.index }</td>
		<td><a href='<c:url value="/person/detail.jsp?pid=${dto.pid }" />'>${dto.pid }</a></td>
		<td>${dto.age }</td>
		<td>${dto.height }</td>
		<td>${dto.email }</td>
		<td>${dto.regDate }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="6">
			<a href='<c:url value="/person/regForm.jsp" />'>회원가입</a>
		</td>
	</tr>
</table>
</body>
</html>