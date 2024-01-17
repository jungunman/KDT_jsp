<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	html,body{
		width: 1200px;
		margin:0 auto;
	}
	.wrapper{
		display:flex;
		align-items : center;
		justify-content: space-between;
		width:1000px;
		margin-bottom:20px;
	}
	.wrapper>.month{
		border : 3px solid #000;
	}
	
	.wrapper>.month>.show_month>h2{
		text-align: center;
	}
	.wrapper>.month>div>img{
		width:300px;
		height:400px;
		object-fit:cover;
	}
	.wrapper>.month>.day_of_the_week{
		display:flex;
		align-items : center;
		justify-content: space-between;
	}
	.wrapper>.month>.day_of_the_week>p{
		width:41px;
		text-align:center;
		border: 1px solid #000;
	}
	.wrapper>.month>.days>.days_row{
		display:flex;
		align-items : center;
		justify-content: space-between;
	}
	
	.wrapper>.month>.days>.days_row>p{
		position:relative;
		width:41px;
		height:20px;
		text-align:center;
		border: 1px solid #000;
	}
	.special_diary{
		position : absolute;
		width: 150px;
		height:150px;
		top: 20px;
		background-color: rgb(224, 154, 2);
		z-index: 5;
	}
	.special_diary>h3{
		color:#fff;
	}
	
	.special{
		background-color: yellow;
	}
	.blue{
		color:blue;
	}
	.red{
		color: red;
	}
	.week_red{
		background-color: red;
		color: #fff;
	}
	.week_blue{
		background-color: blue;
		color: #fff;
	}
</style>
<script type="text/javascript" src="../js/jquery-3.7.1.js"></script>
</head>
<body>
<%
	Date date = new Date();
	int year = 2023-1900;
	date.setYear(year);
	Map<String,String[]> specialDay = new HashMap<>();
	/*
	String [][] brothers = new String[][]{
		{"special","성재형 생일","2023년 04월 06일"},
		{"special","규휘 생일","2023년 04월 30일"},
		{"special","누군가의 생일","2024년 05월 26일"},
		{"special","킹갓만 생일","2024년 05월 30일"},
		{"special","건우형 생일","2024년 06월 06일"},
		{"special","혜성이 생일","2023년 08월 13일"},
		{"special","병우 생일","2023년 08월 29일"},
		{"special","상훈이형 생일","2024년 12월 29일"}
	};
	*/
			
	
	
	specialDay.put("2023년 04월 06일", new String[]{"special","성재형 생일"});
	specialDay.put("2023년 04월 30일", new String[]{"special","규휘 생일"});
	specialDay.put("2024년 05월 26일", new String[]{"special","누군가의 생일"});
	specialDay.put("2024년 05월 30일", new String[]{"special","킹갓만 생일"});
	specialDay.put("2024년 06월 06일", new String[]{"special","건우형 생일"});
	specialDay.put("2023년 08월 13일", new String[]{"special","혜성이 생일"});
	specialDay.put("2023년 08월 29일", new String[]{"special","병우 생일"});
	specialDay.put("2024년 12월 29일", new String[]{"special","상훈이형 생일"});
%>
<script type="text/javascript">
	$(()=>{
		
		let toggle = false;
		$(".wrapper>.month>.days>.days_row>p").on("click",function(){
			/*let fullCal = (<%= year%>+1900)+"년 "+$(this).parent().parent().parent().attr("data-month")+" "+$(this).attr("data-date")
			let brothers;
			for (var i = 0; i < brothers.length; i++) {
				for (var j = 0; j < brothers[i].length; j++) {
					console.log(brothers[i][j]);
				}
			}*/
			toggle = !toggle;
			if(toggle){
				let content = $(this).attr("data-content");
				let special_diary_div = $(`<div class="special_diary"><h3></h3></div>`);
				$(this).append(special_diary_div);
				$(".special_diary > h3").html(content);
			}else{
				$(".special_diary").remove();
			}
		})
	})
</script>

	<%for(int row = 1; row <=12; row=row+3){ %>
		<div class="wrapper">
		<% for(int col = row; col < row+3; col++){
			date.setMonth(col);
			date.setDate(0);
			int last = date.getDate();
			int lastday = date.getDay();
			date.setDate(1);
			int first = date.getDay();
			%>
			<div class="month" data-month="<%=new SimpleDateFormat("MM월").format(date)%>">
				<div>
					<img src="../pictures/<%=col%>.jpg" alt="" />
				</div>
				<div class="show_month">
					<h2><%= new SimpleDateFormat("yyyy년 MM월").format(date)%></h2>
				</div>
				<div class="day_of_the_week">
					<%for(char ch : "일월화수목금토".toCharArray()){
						String weekend = "";
						if(ch == '일'){
							weekend ="week_red";
						}else if(ch == '토'){
							weekend ="week_blue";
						}
					%>
						<p class=<%=weekend%>><%=ch%></p>
					<%}%>
				</div>
				<div class="days">
					<div class="days_row">
	
						<%for(int temp = 1; temp<=first;temp++){ %>
							<p></p>		
						<%}%>
						<%for(int day = 1; day <=last; day++){							
							date.setDate(day);
							String weekend ="class='";
							weekend += specialDay.get( new SimpleDateFormat("yyyy년 MM월 dd일").format(date) ) == null ? "" : specialDay.get( new SimpleDateFormat("yyyy년 MM월 dd일").format(date) )[0] + "' ";
							
							if(date.getDay()== 6 && weekend.equals("class='")){
								weekend += "blue'";
							}else if(date.getDay()== 0 && weekend.equals("class='")){
								weekend += "red'";
							}else{
								weekend+="'";
							}
						%>
						<p <%=weekend%> 
							data-date="<%=new SimpleDateFormat("dd일").format(date)%>"
							data-content="<%= specialDay.get( new SimpleDateFormat("yyyy년 MM월 dd일").format(date) ) == null ? " " : specialDay.get( new SimpleDateFormat("yyyy년 MM월 dd일").format(date) )[1] + " "%>">
								<%=date.getDate()%>
								
							</p>
							<%if(date.getDay() == 6) {%>
								</div><div class="days_row">
							<%} %>
						<%}
						for(int temp = lastday; temp<6;temp++){ %>
							<p></p>
						<%}%>
					</div>
				</div>
			</div>	
		<%}%>
		</div>
	<%}%>
</body>
</html>