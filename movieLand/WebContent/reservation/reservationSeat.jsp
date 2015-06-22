<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>좌석 선택</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/reservation/reservationSeat.css");
	</style>
	
</head>
<body>
<jsp:include page="../main/header.jsp"/>
	<div class="seat" >
	<form action="<%=request.getContextPath()%>/reservation/selectSeat.do">
		<div class="seatSelect">
			<!-- 좌석 열 , 행1~8 -->
		<fieldset>
			<legend>좌석 선택</legend>
			<ol> 
				<li class="dd">
					<label for="prod">아이디</label>
					<input id="id" type="text" name="id" size="25"
					placeholder="아이디를 입력하세요."/>
				</li>
				<li>
					<label for="num">열번호</label>
					<input id="floor" type="number" name="floor" min="1" max="3" value="1"/>
				</li>
				<li>
					<label for="num">행번호</label>
					<input id="row" type="number" name="row" min="1" max="5" value="1"/>
					<input type="submit" value="선택"/>
				</li>
			</ol>
		</fieldset>
	</div>
	</form>
	<div >
	<form action="<%=request.getContextPath()%>/reservation/cancleSeat.do"
			style="margin-left: 230px">
		<fieldset class="deleteSelect" >
			<legend>좌석 취소</legend>
			<ol> 
				<li>
					<label for="prod">아이디</label>
					<input id="id" type="text" name="id" size="25"
					placeholder="아이디를 입력하세요."/>
				</li>
				<li>
					<label for="num">열번호</label>
					<input id="floor" type="number" name="floor" min="1" max="3" value="1"/>
				</li>
				<li>
					<label for="num">행번호</label>
					<input id="row" type="number" name="row" min="1" max="5" value="1"/>
					<input type="submit" value="선택"/>
				</li>
			</ol>
		</fieldset>	
	</form>
	</div>
	</div>
	<div class="seatView"  style="text-align: center;"> <br />
		<p style="border: 1px soild black; text-align: center;">SCREEN</p>
		<%-- <img src="<%=request.getContextPath()%>/images/screen.png" alt=""/> --%>
	
	<form action="<%=request.getContextPath()%>/reservation/seatComplete.do">

	${msg}
	<br /> 
		<%
		if(request.getAttribute("seat")==null){
			String[][] defaultSeat = new String[5][5]; 
			
			for (int i = 0; i < defaultSeat.length; i++) {
				for (int j = 0; j < defaultSeat[i].length; j++) {
					if (defaultSeat[i][j] == null) {
						%>
						<%="□"%> <%=i+1%>-<%=j+1%>    <!-- 1을 A열로 바꿈 switch case로 -->
						<%
					} else {
						%>
						<%="■"%> <%=i+1%>-<%=j+1%>  
						<%
					}
				}
				%>
				<br />
				<%
			}
		}else{
			String[][] seat = (String[][])request.getAttribute("seat"); // 투숙객 이름
			
			for (int i = 0; i < seat.length; i++) {
				for (int j = 0; j < seat[i].length; j++) {
					if (seat[i][j] == null) {
						%>
						<%="□"%> <%=i+1%>-<%=j+1%>  <!-- 1을 A열로 바꿈 switch case로 -->
						<%
					} else {
						%>
						<%="■"%> <%=i+1%>-<%=j+1%>  
						<%
					}
				}
				%>
				<br />
				<%
			}
		}
		%>
	<input type="submit" value="완료"/>	
	</form>	
	</div>
</body>
<footer>
	<hr />
	<div>
		<pre> 회사소개 : 시들어 그들은 행복스럽고 힘있다. 풍부하게 열락의 보이는 앞이 힘차게 심장은 눈에 듣는다.
		 얼마나 트고, 무엇을 사랑의 힘차게 봄바람이다. 그들에게 위하여 보이는 과실이 유소년에게서 듣는다. 무엇을 가치를 뭇 군영과 몸이 같지 있다.
		</pre>
	</div>
</footer>
</html>