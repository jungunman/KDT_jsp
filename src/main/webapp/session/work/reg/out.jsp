<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.getSession().removeAttribute("user");
%>

<script>
	alert("로그아웃 하셨습니다.");
	location.href="../login.jsp";
</script>