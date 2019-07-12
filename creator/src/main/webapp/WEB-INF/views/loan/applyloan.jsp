<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script src="./resources/jquery/jquery-3.4.1.js"></script>
<script src="./resources/ckeditor/ckeditor.js"></script>
  <meta charset="utf-8">
  <title>Marco - Bootstrap Agency Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="./resources/bootstrap/img/favicon.png" rel="icon">
  <link href="./resources/bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="./resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="./resources/bootstrap/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="./resources/bootstrap/lib/animations/animations.css" rel="stylesheet">
  <link href="./resources/bootstrap/lib/hover-pack/hover-pack.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="./resources/bootstrap/css/loanApply.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/colors/color-74c9be.css" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function() {
	$("#loanReqBtn").click(function() {
		location.href = "${pageContext.request.contextPath}/loan/loanApply1";
	});//btn_write
});//ready
</script>
</head>
<style >
</style>
<body>

	<%@ include file="./menubar.jsp" %>
  <div id="headerwrap">
    <div class="container">
      <div class="row centered">
        <div class="col-lg-8 col-lg-offset-2 mt">
          <h1 class="animation slideDown">안녕하세요</h1>
        </div>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /headerwrap -->


<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8 col">
					<div class="form">
						<div class="box-header"></div>
						<div class="box-body">
							<div class="box-wrap">
							<form name="frmLoan" method="get" action="/loan/popup">
							<div class="top">
								<div class="step">
									<div class="wrap">
										<div class="item active">
											대출신청
										</div>
										<div class="item">
											추가정보
										</div>
										<div class="item">
											서류제출
										</div>
										<div class="item">
											대출심사
										</div>
									</div>
								</div>
								<div class="title">
									대출신청서
								</div>
								<div class="line"></div>
							</div>
							<div class="overlay1">
								<dl class="dl-horizontal">
									<dt>이름</dt>
									<dd>
										<div class="name-text">
											${name}
										</div>
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>생년월일</dt>
									<dd>
											<div class="form-group">
												<!--
													<input type="text" class="form-control birthDate-text datepicker" id="birthDateText">
												 -->
												<input type="text" class="form-control birthDate-text" id="birthDateText" maxlength="8" placeholder="19850205">
											</div>
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>성별</dt>
									<dd id="sexRadio">
										
											
												
													<label class="radio-inline sexRadio-label">
														<input type="radio" name="sexRadio" value="1">남성
													</label>
												
													<label class="radio-inline sexRadio-label">
														<input type="radio" name="sexRadio" value="2">여성
													</label>
												
											
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>휴대전화</dt>
									<dd>
											<div class="form-group">
												<input type="text" class="form-control mpNo-text" id="mpNoText" maxlength="11" placeholder={phone}>
												<!--
												<button type="button" class="btn btn-purple-transparent" onclick="fn_doCert()" style="vertical-align: inherit;" id="certBtn">
													인증하기
												</button>
												<input type="hidden" id="outerCrdtGrd">
												<input type="hidden" id="outerCrdtScore">
												<input type="hidden" id="outerCrdtBnkrpRate">
												<input type="hidden" id="debtCd">
												<input type="hidden" id="debtAmt">
												<input type="hidden" id="stndrdDate">
												<input type="hidden" id="score">
												<input type="hidden" id="certYn" value="">
												<input type="hidden" id="safekey" value="">
												 -->
											</div>
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>대출기간</dt>
									<dd>
											<div class="form-group">
												<select class="form-control loanPurpose-select" id="loanPeriodSelect">
													<option value="">선택하세요</option>
													
														
															
																<option value="01">1개월</option>
															
																<option value="02">2개월</option>
															
																<option value="03">3개월</option>
															
																<option value="04">4개월</option>
															
																<option value="05">5개월</option>
															
																<option value="06">6개월</option>
															
																<option value="07">7개월</option>
															
																<option value="08">8개월</option>
															
																<option value="09">9개월</option>
															
																<option value="10">10개월</option>
															
																<option value="11">11개월</option>
															
																<option value="12">12개월</option>
															
																<option value="13">13개월</option>
															
																<option value="14">14개월</option>
															
																<option value="15">15개월</option>
															
																<option value="16">16개월</option>
															
																<option value="17">17개월</option>
															
																<option value="18">18개월</option>
															
																<option value="19">19개월</option>
															
																<option value="20">20개월</option>
															
																<option value="21">21개월</option>
															
																<option value="22">22개월</option>
															
																<option value="23">23개월</option>
															
																<option value="24">24개월</option>
															
														
													
												</select>
											</div>
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>대출금액</dt>
									<dd>
											<div class="form-group has-feedback">
												<input type="text" class="form-control loanAmt-text" id="loan_period" name="loan_period" maxlength="7" placeholder="1000">
												<span class="form-control-feedback" aria-hidden="true" style="z-index:0 ">만원</span>
											</div>
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>대출구분</dt>
									<dd>
										
											<div class="form-group">
												<select class="form-control loanGb-select" id="loan_class" name="loan_class">
													<option value="">선택하세요</option>
													<!-- 
													
														
															
																<option value="01">개인신용</option>
															
																<option value="02">개인담보</option>
															
																<option value="03">개인사업자신용</option>
															
																<option value="04">개인사업자담보</option>
															
																<option value="05">법인신용</option>
															
																<option value="06">법인담보</option>
															
														
													
													 -->
												<option value="02">개인담보</option><option value="03">개인사업자신용</option><option value="04">개인사업자담보</option></select>
											</div>
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>대출유형</dt>
									<dd>
										
											<div class="form-group">
												<select class="form-control loanType-select" id="loanTypeSelect">
													<option value="">대출구분을 선택하세요</option>
													<!-- 
													
														
															
																<option value="01">개인신용</option>
															
																<option value="02">법인신용</option>
															
																<option value="03">개인사업자신용</option>
															
																<option value="04">부동산담보</option>
															
																<option value="06">동산담보</option>
															
														
													
													 -->
												</select>
											</div>
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>대출목적</dt>
									<dd>
										
											<div class="form-group">
												<select class="form-control loanPurpose-select" id="loanPurposeSelect">
													<option value="">선택하세요</option>
													
														
															
																<option value="01">대환대출</option>
															
																<option value="10">사업자금</option>
															
																<option value="99">기타</option>
															
														
													
												</select>
											</div>
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt>상환방식</dt>
									<dd>
										
											<div class="form-group">
												<!-- 
												<select class="form-control repayTypeCd-select" id="repayTypeCdSelect">
													<option value="">선택하세요</option>
													
														
															
																<option value="1">원리금균등</option>
															
																<option value="2">원리금일시</option>
															
																<option value="3">만기일시</option>
															
														
													
												</select>
												 -->
												<select class="form-control repayTypeCd-select" id="repay_method", name="repay_method">
													<option value="1">원리금균등</option>
													<option value="3">만기일시</option>
												</select>
											</div>
										
									</dd>
									<dd>
										<hr>
									</dd>
									<dt></dt>
									<dd>
										<div class="agree-checkbox">
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agreeAllCheckbox">
												<label for="agreeAllCheckbox" id="agreeAllLabel">
													아래 내용을 확인하고 전체 동의합니다.
												</label>
											</div>
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree1Checkbox" name="agreeCheckBox">
												<label for="agree1Checkbox">
													<a href="/info/useTerm" target="_blank"><u>서비스 이용약관</u></a>에 동의합니다. (필수)
												</label>
											</div>
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree2Checkbox" name="agreeCheckBox">
												<label for="agree2Checkbox">
													<a href="/info/pInfoProvideTerm" target="_blank"><u>개인(신용)정보제공</u></a>에 동의합니다. (필수)
												</label>
											</div>
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree3Checkbox" name="agreeCheckBox">
												<label for="agree3Checkbox">
													<a href="/info/pInfoInquiryTerm" target="_blank"><u>개인(신용)정보조회</u></a>에 동의합니다. (필수)
												</label>
											</div>
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree4Checkbox" name="agreeCheckBox">
												<label for="agree4Checkbox">
													<a href="/info/pInfoUseTerm" target="_blank"><u>개인(신용)정보수집, 이용</u></a>에 동의합니다. (필수)
												</label>
											</div>
											
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree5Checkbox" name="agreeCheckBox">
												<label for="agree5Checkbox">
													<a href="/info/uniqueInfoTerm" target="_blank"><u>고유식별정보 처리방침</u></a>에 동의합니다. (필수)
												</label>
											</div>
											<div class="checkbox">
												<input type="checkbox" value="Y" id="agree6Checkbox" name="agreeCheckBox">
												<label for="agree6Checkbox">
													<a href="/info/pInfoSelectedTerm" target="_blank"><u>개인(신용)정보 선택적 수집, 이용 및 제공</u></a>에 동의합니다. (선택)
												</label>
											</div>
										</div>
									</dd>
								</dl>
							</div>
							<div class="bottom">
									<button type="submit" class="btn btn-purple-transparent btn-block" id="doNextStepBtn">본인 인증 및 대출 가능여부 확인</button>
									<p>※ 대출 신청은 신용등급에 영향을 끼치지 않습니다.</p>
									<div class="page">1/4</div>
								</div>
								</form>
							</div>
							<form name="form_chk" method="post" style="display: none;">
								<!-- 필수 데이타로, 누락하시면 안됩니다. -->
								<input type="hidden" name="m" value="safekeyService">
								<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
								<input type="hidden" id="EncodeData" name="EncodeData" value="">
								<!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
									해당 파라미터는 추가하실 수 없습니다. -->
								<input type="hidden" name="param_r1" value="" id="param_r1">
								<input type="hidden" name="param_r2" value="" id="param_r2">
								<input type="hidden" name="param_r3" value="" id="param_r3">
							</form>
						</div>
						<div class="box-footer"></div>
					</div>
				</div>
			</div>
		</div>
	<script>
function fn_doNextStep() {
	window.open('${pageContext.request.contextPath}/loan/popup','','menubar=no,width=450,height=300');
}

</script>
	<%@ include file="./footer.jsp" %>
</body>
</html>