<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>메인메뉴바</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/menu.css");
	</style>
</head>
<body>
	<!-- 극장관리의 메뉴바 -->
<div class="box" >
		<ul class="mainMenu">
			<li>상영관정보</li>
			<li class="active" >
				<a href="timeTable.jsp">시간표</a>
			</li>
			<li>상영예정</li>
			<li>영화관정보</li>
			<li>오시는길</li>
		</ul>
</div> 
<!-- 극장관리 메뉴바 종료 -->
</body>
</html>