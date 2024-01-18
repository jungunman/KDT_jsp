<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<h1>pageContext</h1>
	<p>사용 지양하세요! 조금 위험한 녀석인데 왜 위험하냐면 모든 객체를 다 접근 가능하니까~</p>
	<% PageContext pc = pageContext; %>
	<%=page %><br> 
	<%=pageContext.getPage() %><br>
	<hr />
	<%=request %><br> 
	<%=pageContext.getRequest() %><br>
	<hr />
	<%=response %><br> 
	<%=pageContext.getResponse() %><br>
	<hr />
	<%=session %><br> 
	<%=pageContext.getSession() %><br>
	<hr />
	<%=application %><br> 
	<%=pageContext.getServletContext() %><br>
	<hr />
	<%=out %><br> 
	<%=pageContext.getOut() %><br>
	<hr />
	<%=config %><br> 
	<%=pageContext.getServletConfig() %><br>
	<hr />
	<%=exception %><br> 
	<%=pageContext.getException() %><br>
	<hr />
	<%=pc %><br> 
	<%=pageContext %><br>
	<hr />
</body>
</html>