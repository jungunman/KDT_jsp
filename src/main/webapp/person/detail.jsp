<%@page import="jdbc_p.PersonDTO"%>
<%@page import="jdbc_p.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	PersonDTO dto = 
	new PersonDAO().detail(request.getParameter("pid"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세보기</title>
</head>
<body>
<h1>회원 상세 보기</h1>
<c:set value="<%=dto %>" var="dto"/>
<table border="">
	<tr>
		<td>아이디</td><td>${dto.pid }</td>
	</tr><tr>
		<td>나이</td><td>${dto.age }</td>
	</tr><tr>
		<td>키</td><td>${dto.height }</td>
	</tr><tr>
		<td>이메일</td><td>${dto.email }</td>
	</tr><tr>
		<td>가입일</td><td>${dto.regDate }</td>
	</tr><tr>
		<td>기상</td><td>${dto.wakeup }</td>
	</tr><tr>
		<td>주소</td><td>${dto.addr }</td>
	</tr>
</table>
</body>
</html>