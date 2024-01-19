<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>big1</title>
<style>
	img{
		width:100px;
	}
</style>
</head>
<body>
<h1>big1</h1>
<%!
	String a = "아기상어";

%>
<%
	String b = "엄마상어";
	String urlBB = "sub/bb.jsp";
	
	pageContext.setAttribute("pname", "티라노");
	pageContext.setAttribute("arr1", new int[]{11,22,33});
	
	request.setAttribute("nick", "장동건");
	request.setAttribute("arr2", new int[]{999,888,777});
%>
big1 입니다.1 <%=a %>, <%=b %> , 
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("marriage") %>
<br/>
<%--
attribute를 변수처럼 직접사용 불가 
<%=pname %>, <%=arr1 %> 
--%>
pageContext : <%=pageContext.getAttribute("pname") %>,
<%=pageContext.getAttribute("arr1") %>,
<%=Arrays.toString((int [])pageContext.getAttribute("arr1")) %>
<br/>
request : <%=request.getAttribute("nick") %>,
<%=request.getAttribute("arr2") %>,
<%=Arrays.toString((int [])request.getAttribute("arr2")) %>
<br/>
<img src="../fff/child_1.jpg" alt="" />
<br/>
<%-- include 시 주소 혹은  jsp:param 태그를 이용하여
	parameter를 요청할 수 있다.
--%>
<jsp:include page="aa.jsp">
	<jsp:param name="mat" value="66" />
</jsp:include>
<br/>big1 입니다.2 <br/>
<!-- include 시 page 주소를 변수로 호출 가능 -->
<jsp:include page="<%=urlBB %>"/>
<%-- 
	존재하지 않는 주소 include 불가
<jsp:include page="dd.jsp"/> --%>
<br/>big1 입니다.3 <br/>
<%
	//같은 이름으로 parameter를 중첩할 경우 배열로 보낸다
	pageContext.include("cc.jsp?pid=qwer");
%>
<br/>big1 입니다.4 <br/>
<!-- 같은 파일 다시 include 가능 -->
<jsp:include page="aa.jsp"/>
</body>
</html>