<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		
		URL url = application.getResource("fff/exam.txt");
		InputStream is = url.openStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(is));
		
		String line;
		while(( line = br.readLine()) != null){
			String [] stud = line.split(",");
			String outStr = "";
			int tot = 0;
			int avg = 0;
			
			for(int i =1; i < stud.length; i++){
				tot +=Integer.parseInt(stud[i].trim()); 
			}
			
			avg = tot/(stud.length-1);
			
			for(String info : stud){
				outStr += info+" ";
			}
			outStr += "총점 : "+tot+" ";
			outStr += "평균 : "+avg+"<br/>";
			out.print(outStr);
		}
				
		
		br.close();
		is.close();%>
</body>
</html>