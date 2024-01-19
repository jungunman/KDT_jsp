<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = "info";

	if(request.getParameter("cate")!=null){
		cate = request.getParameter("cate");
	}
	String cateUrl = "menu/"+cate+".jsp";
	
	String main = "hello";

	if(request.getParameter("main")!=null){
		main = request.getParameter("main");
	}
	String mainUrl = cate+"/"+main+".jsp";
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
			<jsp:include page="<%=cateUrl %>"/>
		</td>
		<td width="700px">
			<jsp:include page="<%=mainUrl %>"/>
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