<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예매 확인/취소 내역</title>
	<style >
		@IMPORT url("<%=request.getContextPath()%>/css/reservation/reservationHistory.css");
	</style>

</head>
<body>
<jsp:include page="../main/header.jsp"/>
<!--  예매 내역 확인 / 취소 페이지
 확인- 취소 액션
취소는  표시만. -->

<div class="history">
	<form action="">
	<!-- 	<span>
		<a href="#" onclick="searchId()">아이디 찾기</a>
		</span>
	
	 -->
		<fieldset>
			<legend>예매 내역</legend>
				<ul> <!-- 현재 null값 ... ㅠㅠㅠ  팝업창으로 할까 
							경로 연결 안된 듯....   -->
					<li>영화 : <%=request.getAttribute("movie")%></li>
					<li>극장 : <%=request.getAttribute("theater")%></li>
					<li>날짜 : <%=request.getAttribute("date")%></li>
					<li>시간 : <%=request.getAttribute("time")%></li>
					<li>ID : <%=request.getAttribute("id")%></li>
					<li>좌석 : <%=request.getAttribute("seat")%></li>
				</ul>
		</fieldset>
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