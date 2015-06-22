<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인</title>
	<style>
		@import url("<%=request.getContextPath()%>/css/membercss/common.css");
	</style>
 	<script type="text/javascript">
	function searchId() {
		window.open("<%=request.getContextPath()%>/member/searchId.do",
		"searchId",
		"scrollbars, toolbar=no, location=no, directories=no,status=no, menubar=yes, resizable=yes, width=400, height=300, top=200, left=400");
	}

	function formChk(){
	    if(document.loginForm.userId.value==''){
	      alert("아이디를 입력해주세요.");
	      document.loginForm.userId.focus();
	      event.preventDefault();
	    }else if(document.loginForm.userPw.value==''){
	      alert("비밀번호를 입력해주세요.");    
	      document.loginForm.userPw.focus();
	      event.preventDefault();
	    }else{
	       document.loginForm.submit(); 
	       return true;
	    }
	}

</script>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>

<div id="main-shortCut">
	<div class="sub-main-section">
		<div class="page-type3">
			<h2>
				<p>LOGIN</p>
				<span>로그인</span>
			</h2>
		</div>
	</div>
	<div class="center">
	<form name="loginForm" action="<%=request.getContextPath()%>/login.do" method="post">
		<fieldset class="login_form">
					<div class="input_row">
						<span class="input_box">
							<input type="text" id="userId" name="userId" placeholder="아이디" class="int" maxlength="15">
						</span>
					</div>
					<div class="input_row">
						<span class="input_box">
							<input type="password" id="userPw" name="userPw" placeholder="비밀번호" class="int" maxlength="15">
						</span>
					</div>
					<div>
					<br />
					<a href="#" class="button h30 w100 gray " title="로그인" onClick="javascript:formChk()"><b>로그인</b></a></td>
					<a href="memberAgree.jsp" class="button h30 w100 gray " title="회원가입"><b>회원가입</b></a></td> <br/><br/>
					<b><a class="img-logout" href="#" title="아이디/비밀번호 찾기" onclick="searchId()"><span>아이디/비밀번호찾기 </span></a></b>
					</div>
		</fieldset>
	</form>
	
	
	<br /><br /><br />
	<div>
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
	</div>
	</div>
</div>
</body>
</html>