<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String [] pids = request.getParameterValues("pid");
	//같은 이름으로 parameter를 중첩할 경우 배열로 받는다. 
	pageContext.setAttribute("qq", 123.456);
	request.setAttribute("rr", 234.567);
%>
<h2>cc 입니다.</h2>
<%--
pageContext.getAttribute : (scope : page )
      big 페이지에서 setting 한 attribute는 bb 페이지에서 보이지 않는다. 
      
request.getAttribute : (scope : request )
      big 페이지에서 setting 한 attribute가 bb 페이지에서도 확인된다.
      요청한 url => request 에서 같이 사용되기 때문이다.
 --%>
pageContext : <%=pageContext.getAttribute("pname") %>,
<%=pageContext.getAttribute("arr1") %>,
<%=Arrays.toString((int [])pageContext.getAttribute("arr1")) %>,
<%=pageContext.getAttribute("qq") %>,
<br/>
request : <%=request.getAttribute("nick") %>,
<%=request.getAttribute("arr2") %>,
<%=Arrays.toString((int [])request.getAttribute("arr2")) %>,
<%=request.getAttribute("rr") %>,
<br/>
<%=Arrays.toString(pids) %>, 
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("marriage") %>

<%-- 
다른 jsp 파일의 멤버 지역변수 모두 접근 불가
<%=c %>, <%=d %>, <%=no1 %>, <%=no2 %> --%>
