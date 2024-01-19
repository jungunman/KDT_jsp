<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String [] pids = request.getParameterValues("pid");
	//같은 이름으로 parameter를 중첩할 경우 배열로 받는다. 
%>
cc 입니다. <%=Arrays.toString(pids) %>, 
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("marriage") %>

<%-- 
다른 jsp 파일의 멤버 지역변수 모두 접근 불가
<%=c %>, <%=d %>, <%=no1 %>, <%=no2 %> --%>
