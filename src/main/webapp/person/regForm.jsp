<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>
</head>
<body>
<h1>회원가입 폼</h1>
<form action="reg.jsp">
	<table border="">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age" /></td>
		</tr>
		<tr>
			<td>키</td>
			<td><input type="text" name="height" /></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="addr" /></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><input type="text" name="reg_date" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="가입" />
				<a href='<c:url value="/person/list.jsp" />'>목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>