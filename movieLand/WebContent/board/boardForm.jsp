<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script language = "javascript"> // 자바 스크립트 시작  :  입력 폼의 제목, 비밀번호, 내용이 비어있는지 체크해주는 구문. 글등록 버튼이 이 메소드를 호출하는 역할을 하고 조건을 다 만족하면 sumbit을 수행함.

function writeCheck()
	{
  	var form = document.boardForm;
  
   if( !form.title.value )  
   		{
   		alert( "제목을 적어주세요" ); 
   		form.title.focus();   
   		return;
   }
  else if( !form.documentpassword.value ) 
   		{
        alert( "비밀번호를 적어주세요" ); 
		form.documentpassword.focus();   
	return;
   		}
   else if( !form.memo.value )   
   		{
		alert( "내용를 적어주세요" ); 
		form.memo.focus();   
	return;
	}
	form.submit();
  }                          //자바 스크립트 끝
 </script>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화리뷰게시판</title>
<style>
	@IMPORT url("<%=request.getContextPath()%>/css/boardcss/board.css");
</style>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>
	<div   id="clear">
	<div>
 		<form  name ="boardForm" action="<%=request.getContextPath()%>/board/moviereview.do" method="get"> 
			<table class = "tablebasicclass" >
  				<tr>
   					<td>
    					<table class = "perfectuse"> 						
     						<tr class="titleimage">
      							<td>글쓰기</td>
      						</tr>
    					</table>
    					
   						<table class="perfectuse">
    						<tr class ="line" >
      							<td>카테고리</td>			
      							<td  class = "left" >
      								<select name="category" id="category" size = "1" >
										<option value="호러">호러</option>
										<option value="액션">액션</option>
										<option value="스릴러">스릴러</option>
										<option value="판타지">판타지</option>
										<option value="무협">무협</option>
										<option value="로맨스">로맨스</option>
									</select>
      							</td>
     						</tr>
     						
      					
   							<tr class ="line" >
							    <td>제목</td>								
							    <td><input class = "left" name="title" maxlength="50"></td>
							</tr>
     					
    						<tr class ="line" >
							  	<td>비밀번호</td>									
							    <td><input class = "left" type ="password"  name ="documentpassword"  maxlength="50"></td>
							</tr>
     						
     						
     
						    <tr class = "line">
							    <td align="center">내용</td>	
							    <td><textarea class = "textbox" name="memo"  ></textarea></td>
						    	<td ></td>
						    </tr>
						     
						    
						    <tr class = "line">
   								<td colspan ="2">
					            	<input type= button value ="등록" OnClick="javascript:writeCheck();" >		
					            	<input type= button value ="취소" OnClick="javascript:history.back(-1)" >
					        	</td>	
							</tr>
    					</table>
   					</td>
  				</tr>
 			</table>
 			
 		</form>
 		</div>
</div> 
	
</body> 
</html>