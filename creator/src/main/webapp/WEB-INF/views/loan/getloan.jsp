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


<div id="container">
		<div id="tabContainer">
			<section id="loan_intro">
				<!-- 
				<h3 class="sectionTit titLine">미드레이트 대출신청</h3>
				-->
				<div class="loan_int_icon">
					<ul class="loanIconSet">
						<!--  
						<li>
							<a href="#tab_01" class="tab">
								<img src="/images/loanV2/Icon_investIntro_creditLoan_on.png" />
								<br/>
								개인신용
							</a>
						</li>
						-->
						<li>
							<a href="#tab_02" class="tab">
								<img src="https://www.midrate.co.kr/images/loanV2/Icon_investIntro_LcreditLoan_on.png" class="">
								<br>
								소상공인·사업자
							</a>
						</li>
						<li>
							<a href="#tab_03" class="tab">
								<img src="/images/loanV2/Icon_investIntro_realtyLoan_off.png" class="">
								<br>
							담보대출
							</a>
						</li>
					</ul>	
				</div><!-- loan_int_icon END
				============================-->

				<div class="loan_int_contents">
					<div class="topContents">
						<!--  
						<div id="tab_01">
							<section class="underLine">
								<p class="chkIMG">
									<img src="/images/loanV2/Icon_chk.png" />신청 시 확인사항
								</p>
								<!--
								 <span class="chkAddTxt">신청일 기준 최근 3개월 재직 및 소득증빙이 가능한 근로소득자 (프리랜서 가능)</span> 
								->
								<ul class="txtFl">
									<li><strong class="Btxt">금리</strong> ㅣ 4.5% - 15.5%</li>
									<li><strong class="Btxt">한도</strong> ㅣ 3,000만 원</li>
									<li><strong class="Btxt">기간</strong> ㅣ 1개월 - 24개월</li>
								</ul>
							</section>

							<section class="underLine">
								<p class="chkIMG"><img src="/images/loanV2/Icon_chk.png" />준비서류</p>
								<ul>
									<li><strong class="subBtxt">신분증명</strong> ㅣ 신분증 사본 : 주민등록증, 운전면허증, 여권 등</li>
									<li><strong class="subBtxt">재직증명</strong> ㅣ 재직증명서, 건강보험자격득실확인서</li>
									<li class="subTxt">(www.nhis.or.kr >> 자주 찾는 메뉴 >> 조회/발급 서비스 >> 자격득실확인서 발급)</li>
									<li><strong class="subBtxt">소득증명</strong> ㅣ 건강보험 납부 확인서, 근로소득원천징수 영수증, 소득금액증명원</li>
									<li class="colorTxt">대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무 불이행 사유가 있는 고객</li>
								</ul>
							</section> 
							<button class="loan_int_btn mr-green" id="loanReqBtn" onclick="fn_doNextStep()">
								대출신청서 작성하기<span class="mr-cap"></span>
								<span class="mr-angle">
									<div><p>&gt;</p></div>
								</span>
							</button>
						</div>
						<!- tab_01 END
							=====================-->

						<div id="tab_02" style="display: block;">
							<section class="underLine">
								<p class="chkIMG">
									<img src="/images/loanV2/Icon_chk.png">신청 시
									확인사항
								</p>
								<ul class="txtFl">
									<li><strong class="Btxt">금리</strong> ㅣ 5.5% - 15.5%</li>
									<li><strong class="Btxt">한도</strong> ㅣ 협의가능</li>
									<li><strong class="Btxt">기간</strong> ㅣ 1개월 - 24개월</li>
								</ul>
							</section>

							<section class="underLine">
								<p class="chkIMG"><img src="/images/loanV2/Icon_chk.png">준비서류</p>
								<ul>
									<li><strong class="subBtxt">신분증명</strong> ㅣ 신분증 사본 : 주민등록증, 운전면허증, 여권 등</li>
									<li><strong class="subBtxt">재직증명</strong> ㅣ 사업자 등록증 첨부(사업장 운영 3개월 이상)</li>
									<li><strong class="subBtxt">소득증명</strong> ㅣ 소득금액증명원, 부가가치세과세증명원 (대출신청일 기준 15일 이내) </li>
									<li class="subTxt">(면세사업자의 경우 수입금액증명원 + 지역의료보험료납부내역 6개월치)</li>
									<li class="colorTxt">대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무 불이행 사유가 있는 고객</li>
								</ul>
							</section>
							<button class="loan_int_btn mr-green" id="loanReqBtn2">
								대출신청서 작성하기<span class="mr-cap"></span>
								<span class="mr-angle">
								</span>
							</button>
						</div>
						<!-- tab_02 END
							=====================-->
						<!-- tab_03 END
							=====================-->
					</div>
					<!-- topContents END
						==========================-->
				</div>
				<!-- loan_int_contents END
					================================-->
			</section>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#loanReqBtn2").click(function() {
		location.href = "${pageContext.request.contextPath}/loan/applyloan";
	});//btn_write
});//ready
</script>
	<%@ include file="./footer.jsp" %>
</body>
</html>