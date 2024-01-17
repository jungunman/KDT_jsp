<%@page import="java.util.TreeSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examReg</title>
</head>
<body>
<h1>examReg</h1>
<%
	class Stud implements Comparable<Stud>{
		String name;
		ArrayList<Integer> jum;
		int tot, avg, rank;
		
		Stud(String name, String ... jum){
			this.name = name;
			this.jum = new ArrayList();
			
			for(String j : jum){
				this.jum.add(Integer.parseInt(j));
			}
			
			calc();
		}
		void calc(){
			tot = 0;
			for(int j : jum){
				tot += j;
			}
			avg = tot/jum.size();
		}
		
		void rankCalc(TreeSet<Stud> studs){
			rank = 1;
			for(Stud you: studs){
				if(avg<you.avg){
					rank++;
				}
			}
		}
		
		public int compareTo(Stud o){
			int res = o.avg - avg;
			
			if(res==0){
				res = name.compareTo(o.name);
			}
			if(res==0){
				res = 1;
			}
			
			return res;
		}
		String toTr(){
			String res = "<tr><td>"+name+"</td>";
			for(int j : jum){
				res += "<td>"+j+"</td>";
			}
			res += "<td>"+tot+"</td>";
			res += "<td>"+avg+"</td>";
			res += "<td>"+rank+"</td>";
			 res += "</tr>";
			 
			 return res;
		}
	}

	TreeSet<Stud>studs = new TreeSet();
	String [] pnames = request.getParameterValues("pname");
	for(int i=0; i<pnames.length; i++){
		
		studs.add(new Stud(pnames[i],
				request.getParameterValues("kor")[i],
				request.getParameterValues("eng")[i],
				request.getParameterValues("mat")[i]
				));
	}
	
	for(Stud st: studs){
		st.rankCalc(studs);
	}
%>
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td>
			<td>총점</td><td>평균</td><td>등수</td>
		</tr>
<% for(Stud st : studs) {
	
	out.println(st.toTr());
} %>		
	</table>

</body>
</html>