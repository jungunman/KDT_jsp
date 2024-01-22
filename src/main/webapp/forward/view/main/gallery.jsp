<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

	img{
		width:100px;
	}

</style>


<% 
String ss = (String) request.getAttribute("ss"); 
%>
<h3><%=ss%>갤러리 입니다.</h3>
<a href="?ss=child">child</a>
<a href="?ss=son">son</a>
<hr />
<%
	for(int i = 1; i <= 4; i++){
%>
	<img src="../fff/<%=ss %>_<%=i %>.jpg" alt="" />

<%}%>