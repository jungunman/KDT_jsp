<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>tv 입니다.</h2>

<%
	for( String tv : ((ArrayList<String>)request.getAttribute("arr"))){
		
	
%>
<a href="tvDetail.jsp?pid=<%=tv%>"><%=tv%></a>
<hr />
<% } %>