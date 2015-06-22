<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>극장 첫 페이지</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/theaterCss/theaterTime.css");
	</style>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<!-- 공통으로 사용하는 극장탑메뉴 -->
	<div class="box">
		<ul class="mainMenu">
			<li class="active subMenu" >
				<a href="#">영화관정보</a>
			</li>
			<li class="subMenu"><a href="theaterTime.jsp">시간표</a></li>
			<li class="subMenu">상영관정보</li>
			<li class="subMenu">
				<a href="map.jsp">오시는길</a>
			</li>
		</ul>
	</div><br />
	<!-- 극장탑메뉴  종료-->
	
	<!-- 영화관 정보는 일단 사진으로 대체 -->
	<img src="<%=request.getContextPath()%>/image/theaterImg/imsi.PNG" alt="" />
	
<jsp:include page="../main/footer.jsp"/>
</body>
</html>