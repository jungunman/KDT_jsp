<%@page import="basic_p.Student"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach</title>
</head>
<body>
	<h1>forEach</h1>
	<%--
	<c:forEach var="i" begin="0" end="30" step="1" varStatus="no" >
		${i} , ${no.index }<br/>
	</c:forEach>
	 --%>
	<c:set var="even" value="0" />
	
	<c:forEach var="i" begin="1" end="100" step="1" >
		<c:if test="${i%2==0}">
			<c:set var="even" value="${even + i}" />
		</c:if>
	</c:forEach>
	
	짝수의 합 : ${even} <br/>

	<%
		int [] arr = {11,22,33,44};
		List<Integer> arr2 = new ArrayList<>();
		
		arr2.add(1111);
		arr2.add(2222);
		arr2.add(3333);
		arr2.add(4444);
		
		HashMap<String,String> arr3 = new HashMap<>();
		arr3.put("사자","포유류");
		arr3.put("독수리","조류");
		arr3.put("오타니","이도류");
	
	%>
	
	<c:forEach var="ee" items="<%=arr%>" varStatus="no" >
		${no.index} , ${ee }<br/>
	</c:forEach>
	<hr />
	<c:forEach var="aa" items="<%=arr2%>" varStatus="no" >
		${no.index} , ${aa }<br/>
	</c:forEach>
	<hr />
	<c:forEach var="bb" items="<%=arr3%>" varStatus="no" >
		${no.index} , ${bb}, ${bb.key} , ${bb.value }<br/>
	</c:forEach>
	<hr />
	
	
	<c:set var="vv" value="<%=arr%>" />
	<c:set var="aa" value="<%=arr2%>" />
	<c:set var="mm" value="<%=arr3%>" />
	${vv[1] }<br/>
	${aa[1] }<br/>
	${mm["오타니"] }<br/>
	
	<hr />
	
	<%
		List<Student> stds = new ArrayList<>();
		stds.add(new Student("김덕배",11,22,33));	
		stds.add(new Student("이가배",21,32,43));	
		stds.add(new Student("소가배",31,42,53));	
		stds.add(new Student("은가누",41,52,63));	
		stds.add(new Student("킹상훈",100,100,100));	
	
	%>
	
	<c:set var="studs" value="<%=stds %>" />
	
	<c:forEach var="stud" items="${studs}" varStatus="no">
		${stud}<br/>
	</c:forEach>
	
	
	<c:set  var="even" value="0"/>
	<c:set  var="three" value="1"/>
	
	<c:forTokens var="num" items="1,2,3,4,5,6-7-8-9-10-11;12;13;14" delims=",-;">
		<c:choose>
			<c:when test="${num%2 ==0 }">
				<c:set var="even" value="${ even+num }" />
			</c:when>
			<c:when test="${num%3 ==0 }">
				<c:set var="three" value="${ three*num }" />
			</c:when>
		</c:choose>
	</c:forTokens>
	
	2의 배수의 합 : ${even} 
	3의      곱 : ${three}
	
	
</body>
</html>