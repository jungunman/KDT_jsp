<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mainUrl = (String)request.getAttribute("mainUrl") ;
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrapper{
		width:800px;
		margin: auto;
	}
	header, section, footer{
		border:1px solid #ccc;
	}
</style>
</head>
<body>
<div class="wrapper">
	<header>
		<jsp:include page="inc/header.jsp"/>
		
	</header>
	<section>
		<jsp:include page="<%=mainUrl%>"/>
	</section>
	<footer>
		<jsp:include page="inc/footer.jsp"/>
	</footer>
</div>
</body>
</html>