<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>난 헤더</h3>
<%
	String logUrl = (String)request.getAttribute("logUrl") ;
	for(Menu m : (ArrayList<Menu> )request.getAttribute("headers")) {
%> 
<a href="<%=m.main %>.jsp"><%=m.title %></a>
<%} %>

<jsp:include page="<%=logUrl%>"/>