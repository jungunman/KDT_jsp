<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>header입니다</h1>
<%
	for(Menu m : (ArrayList<Menu>)request.getAttribute("headers")){
%>
	<a href="<%= m.main %>.jsp"><%=m.title %></a>
<%}%>