<%@page import="java.net.URLEncoder"%>
<%@page import="response_p.CheckRegistrationNumber"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//판별 선언 및 인스턴스 생성 
	CheckRegistrationNumber crn = new CheckRegistrationNumber(request.getParameter("pname"),
									request.getParameterValues("regiNum")); 
	
	response.sendRedirect("./register.jsp?pname="+URLEncoder.encode(crn.name,"UTF-8")+"&adult="+crn.isAdult
			+"&local="+crn.isLocal);
%>