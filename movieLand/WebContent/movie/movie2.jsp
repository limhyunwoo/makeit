<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>영화 정보</title>
	<style>
			  @IMPORT url("<%=request.getContextPath()%>/css/moviecss/movie2.css");
	</style>
</head>
<jsp:include page="../main/header.jsp"/>

<body>
	<div class="di" style="background-image: url(<%=request.getAttribute("url")%>); " > 
		<iframe class="frame" width="900" height="500" src="<%=request.getAttribute("iFrame")%>" frameborder="0" allowfullscreen></iframe><br />
		<!-- 영화예고 -->
		<div class = "div1">
			<img class="img" src="<%=request.getAttribute("img")%>" alt=""  />
			
				<div3 class="textback">
					<pre class="pre"> <%=request.getAttribute("msg") %></pre>
				</div3>
			
		</div>
	</div> 
</body>
</html>