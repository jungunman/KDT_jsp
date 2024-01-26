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
	
	int cnt = new PersonDAO().write(dto);
	
	System.out.println("회원가입이여:"+cnt);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
<script>
	alert("가입완료")
	location.href="<c:url value="/person/list.jsp" />"
</script>
</body>
</html>