<%@page import="java.util.ArrayList"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam</title>
</head>
<body>
<h1>exam</h1>
<%!
class AppStud{
	String name;
	ArrayList<Integer> jum;
	int tot, avg;
	
	AppStud(String ttt){
		jum = new ArrayList();
		String [] arr = ttt.split(",");
		name = arr[0];
		
		for(int i = 1; i<arr.length;i++){
			jum.add(Integer.parseInt(arr[i]));
		}
		
		calc();
	}
	
	void calc(){
		tot = 0;
		for(int j : jum){
			tot += j;
		}
		avg = tot / jum.size();
	}
	
	String toTr(){
		String res = "<tr><td>"+name+"</td>";
		for(int j : jum){
			res += "<td>"+j+"</td>";
		}
		if(jum.size()==3){
			res += "<td></td>";
		}
		res += "<td>"+tot+"</td>";
		res += "<td>"+avg+"</td>";
		 res += "</tr>";
		 
		 return res;
	}
}
%>
<%

	ArrayList<AppStud> studs = new ArrayList();
	FileReader fr = new FileReader( application.getResource("fff/exam.txt").getFile());
	BufferedReader br = new BufferedReader(fr);
	String line;
	while((line=br.readLine())!=null){
		//out.println(line+"<br/>");
		studs.add(new AppStud(line));
	}
	br.close();
	fr.close();
	
%>
<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td>
			<td>예체능</td><td>총점</td><td>평균</td>
		</tr>
<% for(AppStud st : studs){
	
	out.println(st.toTr());
} %>		
	</table>
</body>
</html>