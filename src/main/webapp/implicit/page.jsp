<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page</title>
<%
	//page : Object 로 형이 설정되어 있어서 HttpJspPage의 메소드 접근 불가
	HttpJspPage page2 = (HttpJspPage)page;
	Enumeration en;
	//en = page.getInitParameterNames();  불가
	//en = page2.getInitParameterNames(); 불가
	en = this.getInitParameterNames();
%>
</head>
<body>
<h1>page</h1>

</body>
this : <%=this %><br/>
page2 : <%=page2 %><br/>
page : <%=page %><br/>
this.getServletInfo : <%=this.getServletInfo() %><br/>
page2.getServletInfo() : <%=page2.getServletInfo() %><br/>
<%-- <%=page.getServletInfo() %> --%>
this.getServletConfig() : <%=this.getServletConfig() %><br/>
page2.getServletConfig() : <%=page2.getServletConfig() %><br/>
<%-- <%=page.getServletConfig() %><br/> --%>
<hr />
<%
	while(en.hasMoreElements()){
		out.println(en.nextElement()+"<br/>");
	}
%>
<hr />

<%=this.getInitParameter("fork")%><br/>
<%=this.getInitParameter("xpoweredBy")%><br/>
<%-- 
<%=page2.getInitParameter("fork")%><br/>
<%=page2.getInitParameter("xpoweredBy")%><br/>
<%=page.getInitParameter("fork")%><br/>
<%=page.getInitParameter("xpoweredBy")%><br/> 
--%>
</html>