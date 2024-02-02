<%@page import="jdbc_p.PersonDAO"%>
<%@page import="jdbc_p.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	PersonDTO dto = new PersonDTO();
	dto.setPid(request.getParameter("pid"));
	dto.setAddr(request.getParameter("addr"));
	dto.setEmail(request.getParameter("email"));
	dto.setAge(Integer.parseInt(request.getParameter("age")));
	dto.setHeight(Double.parseDouble(request.getParameter("height")));
	dto.setRegDateStr(request.getParameter("reg_date"));
	
	int cnt = new PersonDAO().modify(dto);
	
	System.out.println("회원수정이여:"+cnt);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 완료</title>
</head>
<body>
<script>
	alert("회원수정 완료")
	location.href="<c:url value="/person/detail.jsp?pid=${param.pid}" />"
</script>
</body>
</html>