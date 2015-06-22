<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
@import url("<%=request.getContextPath()%>/css/membercss/common.css");
</style>
<script>
function passChk(){
	    if(!(document.memberForm.userPw.value == document.memberForm.userPwConf.value)){
	      alert("비밀번호가 동일하지 않습니다.");
	      document.memberForm.userPwConf.focus();
	      event.preventDefault();
	    }else {
	      return true;
	    }
	}
</script>
<jsp:include page="../main/header.jsp"></jsp:include>
	<div class="sub-main-section layout c91500000">
              <div class="page-type3">
                  <h2>
                      <p>JOIN</p>
                      <span>회원가입 신청서</span>
                  </h2>
              </div>
              <div class="input-section">
                  <h4 class="margin-top45 margin-bottom10"><b>회원정보</b></h4>
                  <p> 회원가입 후 아이디, 이름은 수정하실 수 없습니다.</p>
                  <div class="clear_both"></div>
                  <div class="line-ccc margin-top5"></div>
			<form action="<%=request.getContextPath()%>/member.do" method="post" name="memberForm">                        
				<fieldset>
                          <legend>회원가입 양식폼</legend>
                          <div class="input-box">
                              <dl>
                                  <dt class="dt-margin-top1">
                                      <label for="name">이름</label></dt>
                                  <dd>
                                      <input name="name" title="실명" class="input-box id_txt" id="name" type="text" value="" placeholder="이름을 입력하세요" required>                                       
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
                              <dl class="margin-top15">
                                  <dt class="dt-valign-top">
                                      <label for="birthday">생년월일</label></dt>
                                  <dd>
                                       <input id="birthday" name="birthday" type="date" required />                                      
                                  </dd>
                                  <dd>
                                      <input name="birthdayRadio" title="양력" class="radio-common" id="birth_solar" type="radio" value="양력" required><label for="birth_solar">양력</label>
                                      <input name="birthdayRadio" title="음력" class="radio-common" id="birth_lunar" type="radio" value="음력" required><label for="birth_lunar">음력</label>
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
                              <dl class="margin-top15">
                                  <dt class="dt-valign-top">
                                      <label for="genderRadio">성별</label></dt>
                                  <dd>
                                      <input name="gender" title="남성" class="radio-common" id="gender_male" type="radio"  value="남자" required><label for="gender_male">남성</label>
                                      <input name="gender" title="여성" class="radio-common" id="gender_female" type="radio" value="여자" required><label for="gender_female">여성</label>
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
                              <dl>
                                  <dt class="dt-valign-top">
                                      <label for="Id">아이디</label></dt>
                                  <dd>
                                      <p>영문/숫자 혼용 6~20자리 이내</p>
                                  </dd>
                                  <dd>
                                      <input name="userId" title="가입 아이디" class="input-box id_txt" id="Id" type="text" value="" placeholder="아이디를 입력하세요." required >
                                      <a class="button h30 w85 white " id="userId" href="#" target=""><b>중복확인</b></a>
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
                              <dl>
                                  <dt class="dt-valign-top">
                                      <label for="userPw">비밀번호</label></dt>
                                  <dd>
                                      <input name="userPw" title="비밀번호" class="input-box" id="userPw" type="password" required>
                                  </dd>
                                  <dd>
                                      <p>
			                        영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합하여 8~12자리로 설정 가능합니다.
                                      </p>
                                  </dd>
                                  
                              </dl>
                              <dl>
                                  <dt>
                                      <label for="userPwConf">비밀번호확인</label></dt>
                                  <dd>
                                      <input name="userPwConf" title="비밀번호 확인" class="input-box pwd_conf_txt" id="userPwConf" type="password" required>
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
                              <dl>
                                  <dt class="dt-valign-top">
                                      <label for="email">이메일</label></dt>
                                  <dd>
								<input id="email" type="email" placeholder="sample@email.com" required name="email" />
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
     
                              <dl>
                                  <dt>
                                      <label for="phone">휴대폰번호</label></dt>
                                  <dd>
									
								<input id="phone" type="phone" placeholder="01099990000" required name="phone" />
                                  </dd>
                              </dl>
                              <div class="line-e2e2e2"></div>
     
                          </div> <br />
					 <p align="center">
                           <input type="submit" value="가입 완료" name="btn" onclick="javascript:passChk()" /></p>
                           <%-- <div class="center-btn margin-top40"><a href="<%=request.getContextPath()%>/member.do" id="a_auth_redirect" class="button h30 w100 gray " title="가입완료"><b>가입완료</b></a></div> --%>
                      </fieldset>
			</form>
              </div>
          </div>
