<%@page import="basic_p.TemplateData"%>
<%@page import="java.util.HashMap"%>
<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	TemplateData data = new TemplateData(request, application);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template</title>
</head>
<body>
<h1>template</h1>
<table border="">
	<tr>
		<td colspan="2">
			<jsp:include page="inc/header.jsp"/>
		</td>
	</tr>
	<tr>
	
		<td width="100px">
			<%-- <jsp:include page="<%=cateUrl %>"/> --%>
			<jsp:include page="inc/menu.jsp"/>
		</td>
		<td width="700px">
			<jsp:include page="<%=data.mainUrl %>"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="inc/footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>