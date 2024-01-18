<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pname = URLEncoder.encode(request.getParameter("pname"), "UTF-8");
	String jumin = request.getParameter("jumin");
	
	int pos = jumin.charAt(7)-'0';
	Date birth = new SimpleDateFormat("yyyyMMdd").parse(
			(pos-1)%4/2+19+jumin.substring(0,6));
	Date today = new Date();
	
	
	int cutline = 15;
	
	
	birth.setYear(birth.getYear()+15);
	
	
	String urlGo = "admin";
	if(pos>4){
		urlGo = "foreigner";
	/* }else if(
			birth.getYear()+cutline>today.getYear() ||		//년도가 안지난 경우
			(birth.getYear()+cutline == today.getYear() && //년도 같을때
			(birth.getMonth() > today.getMonth() || (			//월이 안지난 경우
		     birth.getMonth() == today.getMonth() && 			//월이 같을때
		     birth.getDate() > today.getDate()						//일이 안지난 경우
		     )))){ */
	}else if(today.before(birth)){	
		urlGo = "child";
	}
	
		
	response.sendRedirect(urlGo+".jsp?pname="+pname);
	
%>