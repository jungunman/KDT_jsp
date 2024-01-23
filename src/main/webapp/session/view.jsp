<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=session.getId() %> <br />
<%=session.getMaxInactiveInterval() %> <br />

<hr />

	<%
		Enumeration en = session.getAttributeNames();
	
		while(en.hasMoreElements()){
			out.println(en.nextElement()+"<br/>");
		}
	%>
	
	<hr />
	
	<%=session.getAttribute("pid") %><br />
	<%=session.getAttribute("qqq") %> , <%=Arrays.toString((int [])session.getAttribute("qqq")) %> <br />
	<%=session.getAttribute("www") %> <br />
	<%=session.getAttribute("eee") %> <br />
</body>
</html>