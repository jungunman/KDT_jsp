<%@page import="javax.swing.JScrollBar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb" autoFlush="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 버퍼크기 				,  			남은 양 -->
버퍼크기, 남은 양 <br/>
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>
나는 개발자, 꿈을 꾸는 개발자~<br/>
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>

<%
	out.println("신입 개발자 <br/>");
	out.println("중급 개발자 <br/>");
	out.println("고급 개발자 <br/>");
	JspWriter jw =out;
	JspWriter jw2 = pageContext.getOut();
%>
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>
<%= "최고급 개발자 <br/>, 최고 존엄 개발자<br/>" %>
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>
<%= jw.getBufferSize() %>, <%=jw.getRemaining()%> <br/>
<%= jw2.getBufferSize() %>, <%=jw2.getRemaining()%> <br/>
<%
	//out.flush(); //버퍼 내용 전송 후 버퍼 갱신 ==> 버퍼 내용 전송 후안에 있는 버퍼 지움
	out.clear(); //버퍼 내용 모두 지움 버퍼 갱신
%>
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>
열심히 살다 보면~ 즐거워 지리라~
<%= out.getBufferSize() %>, <%=out.getRemaining()%> <br/>
</body>
</html>