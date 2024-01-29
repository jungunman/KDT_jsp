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
	</tr><tr>
		<td colspan="2" align="right">
			<a href='<c:url value="/person/modifyForm.jsp?pid=${dto.pid }"/>'>수정</a>
			<a href='<c:url value="/person/delete.jsp?pid=${dto.pid }"/>'>삭제</a>
			<a href='<c:url value="/person/list.jsp"/>'>목록으로</a>
		</td>
	</tr>
</table>
</body>
</html>