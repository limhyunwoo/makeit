<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>선택된 목록</title>
	<style >
		@IMPORT url("<%=request.getContextPath()%>/css/reservation/reservationSelection.css");
	</style>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
	<div>
		<form action="<%=request.getContextPath()%>/reservation/reserveSeat.do">
		<table class="selectionView" > 
				<colgroup> 
					<col width="40%"/>
					<col width="60%"/>
				</colgroup>
				<tr>
					<td>영화</td>
					<td><%= request.getAttribute("movie") %></td>
				</tr>
				<tr>
					<td>극장</td>
					<td><%= request.getAttribute("theater") %></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><%= request.getAttribute("date") %></td>
				</tr>
				<tr>
					<td>시간</td>
					<td><%= request.getAttribute("time") %></td>
				</tr>
				<%
				%>
			</table> 
			<input type="submit" value="좌석 선택" />
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
