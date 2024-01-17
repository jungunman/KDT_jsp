<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="request_p.StudentFormExam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examForm</title>
</head>
<body>
<%
	String [] names =  request.getParameterValues("pname");
	String [] kors =  request.getParameterValues("kor");
	String [] engs =  request.getParameterValues("eng");
	String [] mats =  request.getParameterValues("mat");
	String [] specs =  request.getParameterValues("spec");
	List<StudentFormExam> stud = new ArrayList<>();
	
	for(int i=0; i <names.length; i++) {
		stud.add(new StudentFormExam(names[i],kors[i],engs[i],mats[i],specs[i]));
	}
	
	for(int i=0; i <stud.size(); i++) {
		stud.get(i).rank = 1;
		for(int j=0; j <stud.size(); j++) {
			if(stud.get(i).avg < stud.get(j).avg){
				stud.get(i).rank++;			
			}
		}
	}
	
	Collections.sort(stud);
	
	
%>
<h1>examForm</h1>
<form action="examReg.jsp" method="post">
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>특기</td><td>총점</td><td>평균</td><td>등수</td>
		</tr>
		<%for(int i=0; i <stud.size(); i++) {%>
		<tr>
			<td><%= stud.get(i).name%></td>
			<td><%= stud.get(i).kor%></td>
			<td><%= stud.get(i).eng%></td>
			<td><%= stud.get(i).mat%></td>
			<td><%= stud.get(i).spec%></td>
			<td><%= stud.get(i).tot%></td>
			<td><%= stud.get(i).avg%></td>
			<td><%= stud.get(i).rank%></td>
		</tr>
		<%}%>
		<tr>
			<td colspan="8" align="center">
				<input type="submit" value="계산" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>