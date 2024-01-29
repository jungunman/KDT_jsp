<%@page import="jdbc_p.PersonDAO"%>
<%@page import="jdbc_p.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	PersonDTO dto = 
	new PersonDAO().detail(request.getParameter("pid"));
	
%>
<c:set value="<%=dto %>" var="dto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정폼</title>
</head>
<body>
<h1>회원수정 폼</h1>
<form action="modifyReg.jsp">
	<table border="">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="pid" readonly="readonly" value="${dto.pid }"/></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age"  value="${dto.age }"/></td>
		</tr>
		<tr>
			<td>키</td>
			<td><input type="text" name="height"  value="${dto.height }"/></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="addr"  value="${dto.addr }"/></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><input type="text" name="reg_date"  value="${dto.regDate }"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email"  value="${dto.email }"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" />
				<a href='<c:url value="/person/detail.jsp?pid=${dto.pid }" />'>뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>