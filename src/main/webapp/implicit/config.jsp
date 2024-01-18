<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>config</title>
</head>
<body>
<%
	ServletConfig sc1 = config;
	ServletConfig sc2 = pageContext.getServletConfig();
	Enumeration en = config.getInitParameterNames();
%>
<h1>config</h1>
<%=config %><br/>
<%=sc1 %><br/>
<%=sc2 %><br/>
<%=config.getServletName() %><br/>
<%=config.getServletContext() %><br/>
<hr />
<%
	while(en.hasMoreElements()){
		out.println(en.nextElement()+"<br/>");
	}
%>
<hr />
<%= config.getInitParameter("fork")%>, <%= config.getInitParameter("xpoweredBy")%> 



</body>
</html>