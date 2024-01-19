<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

bb 입니다., 
<%-- 
	parameter 호출시 include 위치에 따라 
	전달되는 요소가 다르다
	pid, age, marriage 는 include 이전 url 요청시 호출한 parameter
	kor, eng, mat는 다른 페이지(aa.jsp) 결합시 호출한 parameter
	
 --%>
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("marriage") %><br>
<%=request.getParameter("kor") %>,
<%=request.getParameter("eng") %>,
<%=request.getParameter("mat") %>
<br/>
<%-- 
<img src="../fff/child_3.jpg" alt="" />
<img src="/jspProj/fff/child_3.jpg" alt="" /> 

이미지, js 파일등 링크 주소를 가져올 경우 상대 주소 사용시 
include 등에서 참조 위치에 대한 문제가 발생되므로 
절대 주소를 사용하여 해결한다.
프로젝트명 : request.getContextPath() 
--%>

<img src="<%=request.getContextPath() %>/fff/child_3.jpg" alt="" />
<br/>
