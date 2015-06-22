<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>헤더 샘플</title>
<style type="text/css">
  @IMPORT url("<%=request.getContextPath()%>/css/maincss/header.css");
</style>
</head>   
   <header class="top">
      
      <!-- <div class="login" id="clear" style="float: right;">
			<a href="#"> 로그인   </a>Ι <a href="#"> 회원가입</a>
	  </div> -->
	  <div class="right" style="float:right;">
    <form name="loginForm" action="<%=request.getContextPath()%>/login.do" method="post">
        <div class="right-sub">
                <div id="login">
                    <a class="img-logout" href="<%=request.getContextPath()%>/member/login.jsp" title="로그인"><span>로그인&nbsp;</span></a>
            </div>                   
            <div id="link">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/member/memberAgree.jsp" title="회원가입"><span>회원가입</span></a></li>
                    <li><a href="<%=request.getContextPath()%>/member/login.jsp" title="MY영화관"><span>MY영화관</span></a></li>
                    <li><a href="#" title="비회원예매/취소" onclick="reservation()"><span>비회원예매/취소</span></a></li>
                    <li><a href="#" title="고객센터" onclick="custom()"><span>고객센터</span></a></li>
                </ul>
            </div>
        </div>
    </form>
    </div>
	  
   
    <div class="topMenu"> 
     
     
     <div class="table"><table>
     
     <tr id="tr">  
       		<td id="td1"><a href="<%=request.getContextPath()%>/movie/movie.jsp"/> 영화(moive)</td>
      		<td id="td2"><a href="<%=request.getContextPath()%>/theater/theaterMain.jsp"/> 극장</td> 
      		<td id="td3"><a href="<%=request.getContextPath()%>/reservation/reservationPage.jsp"/>예매</td>
      		<td id="td4"><a href="<%=request.getContextPath()%>/board/noticeMenu.jsp"/>공지사항</td>
      		<td id="td5"><a href="<%=request.getContextPath()%>/board/menu.jsp"/>영화 리뷰</td>
            <td><a href="<%=request.getContextPath()%>/main/main.jsp"/> HOME</td>	
      	</tr>
      	  
      </table></div> 
 
    
    </div>
 </header>
 
 <div class="clear"></div>
 
 
 <form action=" ">
   <table class="bgcolorRed fontColorBlue positionCenter" id="aaa"></table>
 
 
 </form>
 
 
 
 
 
 
 
 
 
