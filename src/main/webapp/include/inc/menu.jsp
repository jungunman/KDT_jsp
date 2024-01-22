<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Menu> menus = (ArrayList<Menu> )request.getAttribute("menus");
%>    
<h2><%=request.getAttribute("cate") %> 메뉴야</h2>
<table width="100%">
<% for(Menu m : menus) {%>
	<tr>
		<td><a href="?cate=<%=m.cate %>&main=<%=m.main %>"><%=m.title %></a></td>
	</tr>
<%} %>	

</table>