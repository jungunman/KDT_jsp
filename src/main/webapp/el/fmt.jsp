<%@page import="basic_p.RRN"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>FMT</h1>
		
		
	<h2>Number</h2>	
	<!-- var 쓰면 변수에 담는 것 없이 쓰면 출력! -->
	<fmt:formatNumber value="123456789.12315" /> <br />	
	<fmt:formatNumber value="89.115" var="num"/>
	${num} <br />

	<fmt:formatNumber value="123456789.12315" type="number" /> <br />	
	<fmt:formatNumber value="123456789.12315" type="currency" /> <br />	
	<fmt:formatNumber value="123456789.12315" type="currency" currencySymbol="원" /> <br />	
	<fmt:formatNumber value="123456789.12315" type="percent" /> <br />	
	<fmt:formatNumber value="123456789.12315" type="percent" groupingUsed="false" /> <br />
	
	
	<hr />	
	<h3>Number Pattern</h3>
	<fmt:formatNumber value="123456789.321" pattern="#,000.##" />
	<fmt:parseNumber value="125,534.351521" pattern="0,000.0" var="cc"/> <br />	
	${cc/2} <br />
	
	
	<hr />
	<h2>DATE</h2>
	original : <%=new Date() %> <br />
	fmt - basic             : <fmt:formatDate value="<%= new Date() %>"/> <br />
	fmt - dateStyle - short : <fmt:formatDate value="<%= new Date() %>" type="date" dateStyle="short"/> <br />
	fmt - dateStyle - full : <fmt:formatDate value="<%= new Date() %>" type="date" dateStyle="full"/> <br />
	fmt - timeStlye - short : <fmt:formatDate value="<%= new Date() %>" type="time" timeStyle="short"/> <br />
	fmt - timeStlye - full : <fmt:formatDate value="<%= new Date() %>" type="time" timeStyle="full"/> <br />
	fmt - timeStlye - timeZone : <fmt:formatDate value="<%= new Date() %>" type="time" timeStyle="short" timeZone="Asia/Seoul"/> <br />
	뉴욕 : <fmt:formatDate value="<%= new Date() %>" type="time" timeStyle="short" timeZone="America/NY"/> <br />
	로스앤젤레스 : <fmt:formatDate value="<%= new Date() %>" type="time" timeStyle="short" timeZone="America/Los_Angeles"/> <br />
	
	<hr />
	<h3>DATE pattern</h3>
	fmt - Date -pattern: <fmt:formatDate value="<%= new Date() %>" pattern="yyyy-MM-dd (E) HH:mm:ss" /> <br />
	fmt - Date -pattern: <fmt:parseDate value="2012-10-13 07:33:58" pattern="yyyy-MM-dd HH:mm:ss" var="pd" />
	${pd} <br />
	
	주민번호 -> 생년월일, 성별, 한국나이
	<c:set var="person" value="<%= new RRN(\"950530-1234567\") %>" />
	<h4>주민 정보</h4>
	<p>${person}</p>
	
	
	
	
</body>
</html>