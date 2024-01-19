<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int no1 = 10;	//멤버변수
	String c = "나는무너";
%>
<%
    int no2 = 100;	//지역변수
	String d = "나는고래";
	no1++;	// 호출 or include 할때마다 누적 등가
	no2++;	// 지역변수로 다시선언되어 1 을 증가
%>
aa 입니다.  <%=c %>, <%=d %>, <%=no1 %>, <%=no2 %>, 
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("marriage") %><br>
<%=request.getParameter("kor") %>,
<%=request.getParameter("eng") %>,
<%=request.getParameter("mat") %>
<br/>
<img src="../fff/child_2.jpg" alt="" />
<br/>
<%--
다른 jsp 파일의 변수나 메소드 호출 불가
멤버, 지역 둘다 불가
 <%=a %>, <%=b %> 
 --%>
