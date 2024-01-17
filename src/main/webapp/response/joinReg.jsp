<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String pname = request.getParameter("pname");
	String kind = request.getParameter("kind");

	
	String goPage = kind;
	if("coding".equals(kind)){
		goPage = "../index";
	}
	
	goPage += ".jsp?pname="+URLEncoder.encode(pname,"UTF-8");
	response.sendRedirect(goPage);
	
%>