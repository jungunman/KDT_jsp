<%@page import="basic_p.ForwardData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ss = "child";
	if(request.getParameter("ss") != null){
		ss = request.getParameter("ss");
	}
	
	request.setAttribute("ss", ss);
	
	new ForwardData(request,response);
%>    
<%-- <jsp:forward page="view/template.jsp"/> --%>