<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/boardcss/board.css");	
	</style>
</head>
 <body>
 <jsp:include page="../main/header.jsp"></jsp:include>
	<div id="clear">
 	<div >

	<table class="tablebasicclass">
  		<tr>
   			<td>
    			<table class="perfectuse">
     				<tr class="titleimage">
      					 <td>작성글</td>
    				</tr>
   				 </table>
  
   				<table class="line">
   					<tr class="line">
      					<td>아이디</td>
     					<td  class="articleleft"> <%=request.getAttribute("id") %> </td>
     				</tr>
    				
    				<tr class="line">
      					<td>카테고리</td>
      					<td class="articleleft"> <%= request.getAttribute("category") %> </td>
      				</tr>
     				<tr class="line">
      					<td >제목</td>
      					<td  class="articleleft"> <%= request.getAttribute("title") %> </td>
      				</tr>
     				<tr class="line">
      					<td >내용</td>
      					<td  class="articleleft" ><%=request.getAttribute("memo") %></td>
      				</tr>
     				<tr class="line"></tr>
     			
     
       				<tr>
      					<td colspan ="2">
           					<input type= button value ="뒤로" OnClick="javascript:history.back(-1)" >
           				</td>
					</tr>
				</table>
   			</td>
  		</tr>
 	</table>
 	</div>
</div>
 
</body> 
</html>