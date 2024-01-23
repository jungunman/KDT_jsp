<%@page import="homework_p.DetailsInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% DetailsInfo info = (DetailsInfo)session.getAttribute("userInfo"); %>
<div class="detail">
	<p>아이디 : <%=info.id %></p>
	<p>패스워드 : xxxx</p>
	<p>이름 : <%=info.name %></p>
	<img style="width:200px;"src="pictures/<%= info.picturePath%>">
</div>
<a href="reg/logout.jsp">로그아웃</a>