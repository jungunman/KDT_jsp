<%@page import="java.util.ArrayList"%>
<%@page import="basic_p.ForwardData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> arr = new ArrayList<>();
	arr.add("텔레토비");
	arr.add("브라운관");
	arr.add("LCD");
	arr.add("QLED");
	
	request.setAttribute("arr", arr);
	new ForwardData(request,response);
%>    
<%-- <jsp:forward page="view/template.jsp"/> --%>