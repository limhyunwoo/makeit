<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
    
     <%
    Date now = new Date();
    SimpleDateFormat gh = new SimpleDateFormat("yyyy-MM-dd");			
    %>   																
    
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>게시판메뉴</title>
    		<style>
	 			@IMPORT url("<%=request.getContextPath()%>/css/boardcss/board.css");
			</style>
    </head>

<body>
<jsp:include page="../main/header.jsp"/>
	<div id="clear">

			<div clear: both; > 
				<table class="tablebasicclass">
					
				 	<tr class ="titleimage">
				   		<td ></td>
				   		<td >번호</td>
					   	<td >카테고리</td>
					   	<td >제목</td>
					   	<td >ID</td>
					   	<td >작성일</td>
					   	<td >조회수</td>
				   		<td></td>
				  	</tr>
				
					
						<% if(request.getAttribute("title")!=null){
						%>   							
					  		
							<tr class = "nullline">
					 			<td></td>
							 	<td  >1</td>
							   	<td ><%= request.getAttribute("category") %></td>
							   	<td >
					 				<a href="<%=request.getContextPath()%>/board/article.do"><%= request.getAttribute("title") %></a>
					   			</td>
							   	<td ><%= request.getAttribute("id") %></td>
							   	<td ><% String time = gh.format(now); %> <%=time %></td>   								
								<td>0</td>
								<td></td>
							</tr>
					 		
						<% }else{ %> <tr class = "blankline">
					 			<td></td>
					 			<td></td>
					 			<td></td>
							 	<td  >등록된 게시글이 없습니다.</td>
							   	<td></td>
							   	<td></td>
								<td></td>
							</tr><% } %>
 				</table>
				
				<table class="tablebasicclass">
				
				  	<tr class="line">
				  		<td> </td>
				  	</tr>
				  
				  	<tr>
   						<td>
							<select name="검색조건" id="검색조건" size = "1" >				
								<option value="제목">제목</option>
								<option value="내용">내용</option>
								<option value="제목내용">제목+내용</option>
								<option value="아이디">아이디</option>
							</select>
							<input class = "textbar" type="text">
							<input type=button value="검색">
							<input type=button value="글쓰기" onClick="location.href='<%=request.getContextPath()%>/board/boardForm.jsp';">
	 					</td>
					 </tr>
				
 				</table>
 				
			</div >
	</div>

</body>
</html>