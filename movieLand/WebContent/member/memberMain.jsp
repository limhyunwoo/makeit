<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>영화관</title>  
	<style>
		@import url("<%=request.getContextPath()%>/css/membercss/common.css");
	</style>
 	<script type="text/javascript">
	function reservation() {
		alert("아직 비회원 예매를 지원하지 않습니다.", 
			"reservation",
			"scrollbars, toolbar=no, location=no, directories=no,status=no, menubar=yes, resizable=yes, width=300, height=200, top=200, left=400" )
	}
	function custom() {
		alert("문의 내용은 admin@cinema.com 으로 발송해주세요.", 
			"custom",
			"scrollbars, toolbar=no, location=no, directories=no,status=no, menubar=yes, resizable=yes, width=300, height=200, top=200, left=400" )
	}

</script>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>
    <div class="right">
    <form name="loginForm" action="<%=request.getContextPath()%>/login.do" method="post">
        <div class="right-sub">
                <div id="login">
                    <a class="img-logout" href="login.jsp" title="로그인"><span>로그인&nbsp;</span></a>
            </div>                  
            <div id="link">
                <ul>
                    <li><a href="memberAgree.jsp" title="회원가입"><span>회원가입</span></a></li>
                    <li><a href="login.jsp" title="MY영화관"><span>MY영화관</span></a></li>
                    <li><a href="#" title="비회원예매/취소" onclick="reservation()"><span>비회원예매/취소</span></a></li>
                    <li><a href="#" title="고객센터" onclick="custom()"><span>고객센터</span></a></li>
                </ul>
            </div>
        </div>
    </form>
    </div>

	<article>
		<section>
			<h3>

		<table align ="center">
			<tr>
				<th align="left">
				
		이름 : <%=request.getAttribute("name") %>	<br />
		생일 : <%=request.getAttribute("birthday") %><br />
		양력/음력 : <%=request.getAttribute("birthdayRadio") %><br />	
		남성/여성 : <%=request.getAttribute("gender") %><br />
		아이디 : <%=request.getAttribute("userId") %><br />
		비밀번호 : <%=request.getAttribute("userPw") %><br />
		비밀번호 확인 : <%=request.getAttribute("userPwConf") %><br />
		이메일 : <%=request.getAttribute("email") %><br />	
		폰번호 : <%=request.getAttribute("phone") %><br />
		<br /><br />
			
				</th>
			</tr>
		</table>
			
			
		
		
		</section>
	</article>




    </div>


</body></html>	
	