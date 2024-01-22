<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% if(request.getParameter("success") == null || request.getParameter("success").equals("false")){%>
	<h1>login</h1>
	<form action="forwardForm/loginForward.jsp">
		<input type="text" name= "id" placeholder="아이디" />
		<input type="text" name= "pwd" placeholder="비밀번호" />
		<input type="submit" value="Login" />
	</form>
<%}else{%>
	<h1><%=request.getParameter("id") %>님 반가워요!</h1>
	<a href="forwardForm/logOutForward.jsp">logout</a>
<%}%>