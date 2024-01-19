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
%>
big1 입니다.1 <%=a %>, <%=b %><br/>
<img src="../fff/child_1.jpg" alt="" />
<br/>
<jsp:include page="aa.jsp"/>
<br/>big1 입니다.2 <br/>
<!-- include 시 page 주소를 변수로 호출 가능 -->
<jsp:include page="<%=urlBB %>"/>
<%-- 
	존재하지 않는 주소 include 불가
<jsp:include page="dd.jsp"/> --%>
<br/>big1 입니다.3 <br/>
<%
	pageContext.include("cc.jsp");
%>
<br/>big1 입니다.4 <br/>
<!-- 같은 파일 다시 include 가능 -->
<jsp:include page="aa.jsp"/>
</body>
</html>