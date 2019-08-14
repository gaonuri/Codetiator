<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>Dashio - Bootstrap Admin Template</title>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
	
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/img/favicon.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	<!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!--external css-->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/zabuto_calendar.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/gritter/css/jquery.gritter.css" />
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/bootstrap/css/style-responsive.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/chart-master/Chart.js"></script>

	<!-- =======================================================
	  Template Name: Dashio
	  Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
	  Author: TemplateMag.com
	  License: https://templatemag.com/license/
	======================================================= -->
</head>
<style>
/* Banner Style */
#faq-banner{
	position: relative;
	overflow: hidden;
	background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
	background-size: 100%;
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	color: #fff;
	height: 430px;
}
	@media (max-width: 1024px) {
		#faq-banner{
		}
	}
	@media (max-width: 767px) {
		#faq-banner{
			height: 348px;
		}
	}

#faq-banner .title {
	color: #FFF;
	font-weight:500;
	text-shadow:2px 2px 3px #333;
	letter-spacing:-0.5pt;
	font-size: 26pt;
	line-height:6;
}
	@media (max-width: 1024px) {
		#faq-banner .title{
			font-size: 24pt;
			line-height:8;
		}
	}
	@media (max-width: 767px) {
		#faq-banner .title{
			font-size: 22pt;
			line-height:5;
		}
	}

#faq-banner .overlay{
}

#faq-banner .section-body{
	color: #fff;
	position: relative;
	padding: 130px 20px 0px 20px;
}

#content .section-body {
	padding: 71px 100px 76px 100px;
}

@media (max-width: 991px) {
	#content .section-body {
		padding: 71px 40px 76px 0px;
	}
}

@media (max-width: 767px) {
	#content .section-body {
		padding: 10px 0px;
	}
}

#section-content-faq {
	padding: 41px 0 111px 0;
}

#section-content-faq .wrap {
	padding:0;
}

#section-content-faq .wrap .box {
	border-top:1px solid #d9d9d9;
	padding: 30px 30px 80px 30px;
	background-color: #fff;
	box-shadow: 0px 4px 10px -4px grey;
}

@media (max-width: 767px) {
	#section-content-faq .wrap .box {
		padding: 10px;
	}
}

#content .section-body .wrap {
	padding: 0px 0px 9px 0px;
	max-width: 865px;
}

#content .section-body .wrap .box {
	border-color: #d9d9de;
	border-style: solid;
	border-width: 1px;
	border-radius: 4px;
	background-color: #eee;
	max-width: 865px;
}

/* xd ï¿½ìŸ»ï¿½ìŠœï¿½ë–† */
@media (max-width: 767px) {
	#content .section-body .wrap .box {
		padding: 0px;
	}
}

.headerFAQ {
	font-size: 24px;
	font-weight: 800;
	color: #444;
	letter-spacing:-1px;
	border-bottom-style: solid;
	border-bottom-width: 2px;
	border-bottom-color: #333333;
	padding: 30px 0 10px;
	margin-bottom: 10px;
}

@media (max-width: 767px) {
	.headerFAQ {
		font-size: 24px;
		padding: 20px 0 10px;
	}
}

#content .section-body .wrap .box .body {
	padding: 30px 50px 52px 50px;
}

@media (max-width: 767px) {
	#content .section-body .wrap .box .body {
		padding: 10px 0px 10px 0px;
	}
}

#content .section-body .wrap .box .panel-group .panel {
}

.panel-default > .panel-heading{
	color: #333;
	font-weight:600;
    background-color: #f9f9f9;
	padding: 20px 10px;
}

@media (max-width: 767px) {
	#content .section-body .wrap .box .panel-default > .panel-heading {
		padding: 10px;
	}
}

#content .section-body .wrap .box .panel-default > .panel-heading .panel-title {
	font-size: 16px;
	font-weight: bold;
}

@media (max-width: 767px) {
	#content .section-body .wrap .box .panel-default > .panel-heading .panel-title {
		font-size: 13px;
	}
}

#content .section-body .wrap .box .panel-default > .panel-heading .panel-title a.collapsed {
	color: #4a4a4a;
}

#content .section-body .wrap .box .panel-default > .panel-heading + .panel-collapse > .panel-body {
	border-top-color: #d9d9de;
	border-top-width: 1px;
	border-bottom-color: #d9d9de;
	border-bottom-width: 1px;
	padding: 33px 33px 38px 50px;
	font-size: 15px;
	color: #858585;
	background-color: #f8f8f8;
}

@media (max-width: 767px) {
	#content .section-body .wrap .box .panel-default > .panel-heading + .panel-collapse > .panel-body {
		padding: 18px 10px 16px 10px;
		font-size: 13px;
	}
}

#content .section-body .affix {
	top:60px;
}

@media ( max-width : 767px) {
	#content .section-body .affix {
		display: none;
	}
}

#content .section-body li.active .circle {
	width: 80px;
	height: 80px;
	border-radius: 80px;
	-moz-border-radius: 80px;
	-webkit-border-radius: 80px;
	-ms-border-radius: 80px;
	-khtml-border-radius: 80px;
	-o-border-radius: 80px;
	background: #712594;
	text-align: center;
	padding: 25px 0;
	transition: all 1.0s;
	border-style: solid;
	border-width: 1px;
	border-color: #712594;
	margin-bottom: 4px;
	z-index: 3;
}

#content .section-body li.active .circle-text {
	font-weight: bold;
	font-size: 18px;
	color: #fff;
}


#content .section-body .circle {
	width: 80px;
	height: 80px;
	border-radius: 80px;
	-moz-border-radius: 80px;
	-webkit-border-radius: 80px;
	-ms-border-radius: 80px;
	-khtml-border-radius: 80px;
	-o-border-radius: 80px;
	background: #fff;
	text-align: center;
	padding: 25px 0;
	transition: all 0.5s;
	border-style: solid;
	border-width: 1px;
	border-color: #d9d9de;
	margin-bottom: 4px;
	z-index: 3;
}

#content .section-body .circle .circle-text {
	font-weight: bold;
	font-size: 18px;
	color: #4a4a4a;
}

@media (min-width: 768px) {
	#content .section-body .col-md-11 {
	}	
}

@media (min-width: 992px) {
	#content .section-body .col-md-11 {
		max-width: 900px;
	}	
	
}
</style>
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	   	<%@ include file="../header.jsp" %>
	    <!--header end-->
	    <section id="faq-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">자주 묻는 질문</span>
				</div>
			</div>
		</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="section-content-faq">
		<div class="container">
			<div role="tabpanel">
				<div class="tabbable-panel">
					<div class="tabbable-line">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist" id="faqTab">
							<li role="presentation" class="active">
								<a href="#generalTab" aria-controls="general" role="tab" data-toggle="tab" id="general">
									일반
								</a>
							</li>
							<li role="presentation">
								<a href="#investTab" aria-controls="invest" role="tab" data-toggle="tab" id="invest">
									투자
								</a>
							</li>
							<li role="presentation">
								<a href="#loanTab" aria-controls="loan" role="tab" data-toggle="tab" id="loan">
									대출
								</a>
							</li>
						</ul>
						
						<!-- Tab panels -->
						
					
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="generalTab">
								<div class="wrap" style="padding-top: 0px;">
									<div class="box">
										<!-- whoWeAre Section
										==========================================-->
										<div class="headerFAQ">일반</div>
										<div class="body">
											<div class="panel-group" id="normalFaqAccordion" role="tablist" aria-multiselectable="true">
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading1">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse1" aria-expanded="false" aria-controls="normalFaqCollapse1">
															Q1. 크리에이트는 어떤 회사인가요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading1">
													<div class="panel-body">
														크리에이트는 대출 희망자와 투자자를 온라인으로 직접 연결하는 온라인 P2P(Peer to Peer) 대출-투자 플랫폼 서비스 업체입니다. 저렴하고 편리한 대출과 안정적이고 높은 중금리 수익 상품을 경험하실 수 있습니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading2">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse2" aria-expanded="false" aria-controls="normalFaqCollapse2">
															Q2. 낮은 대출이자와 높은 투자수익률의 비밀은 무엇인가요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading2">
													<div class="panel-body">
														크리에이트는 기존 금융권에서 소요되는 지점 운영, 인건비용을 줄이고 차별화된 신용 평가 알고리즘을 통해 더 정확한 부실위험 판단으로 부도율을 감소시킵니다. 이 과정에서 절감한 비용을 차입자와 투자자들의 금리 산정에 혜택을 드리고 있습니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading3">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse3" aria-expanded="false" aria-controls="normalFaqCollapse3">
															Q3. 회원가입은 어떻게 진행되나요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading3">
													<div class="panel-body">
														홈페이지 상단 '회원가입' 버튼을 눌러 회원가입 페이지에서 가입하실 수 있습니다. 페이스북 아이디를 이용한 가입도 가능합니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading4">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse4" aria-expanded="false" aria-controls="normalFaqCollapse4">
															Q4. 계정정보는 어떻게 변경할 수 있나요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading4">
													<div class="panel-body">
														로그인하신 뒤 상단 회원명('OOO님')을 클릭하시면 <a href="/mypage" target="_blank">'마이페이지'</a>로 이동됩니다. 마이페이지 내 '기본정보 수정' 메뉴로 들어가시면 원하시는 정보를 변경하실 수 있습니다.
														<br>
														※ 회원님의 소중한 개인정보 보호를 위해 '기본정보 수정' 메뉴를 자물쇠로 잠궈 두었습니다. 비밀번호를 입력하여 해제해야 메뉴 이용이 가능합니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading5">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse5" aria-expanded="false" aria-controls="normalFaqCollapse5">
															Q5. 비밀번호를 분실하였을 경우 어떻게 하나요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading5">
													<div class="panel-body">
														1 .로그인 5회 실패 시 화면 하단의 ‘비밀번호를 잊으셨나요? 찾기’를 누르신 뒤 등록하셨던 이메일을 입력하고 '비밀번호 초기화' 버튼을 누르세요.&nbsp;
														<br>
														2. 문자 혹은 이메일로 전송된 임시 비밀번호를 이용하여 로그인하신 후 비밀번호를 다시 설정해주세요.
													</div>
												</div>
											</div>
	
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading6">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse6" aria-expanded="false" aria-controls="normalFaqCollapse6">
															Q6. 크리에이트와 크리에이트대부는 어떤 관계인가요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading6">
													<div class="panel-body">
														크리에이트는 P2P금융플랫폼 서비스를 제공하고 있으며, 크리에이트 대부는 P2P금융서비스를 제공하기 위해서 필수적인 여신기능을 담당하기 위해 크리에이트에서 설립한 제휴여신기관(P2P연계대부업자)입니다. 크리에이트대부는 일반 대부업은 일절 하지 않으며 크리에이트에서 펀딩이 성사된 차입자에게만 여신을 실행합니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading7">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse7" aria-expanded="false" aria-controls="normalFaqCollapse7">
															Q7. 회원 탈퇴 신청은 어떻게 하나요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading7">
													<div class="panel-body">
														회원 탈퇴는 [마이페이지]→[기본 정보 수정] 하단의 '회원 탈퇴' 버튼을 통해 신청하실 수 있습니다. 회원 탈퇴 시 회원님의 정보는 개인정보처리방침에 의해 처리됩니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading8">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse8" aria-expanded="false" aria-controls="normalFaqCollapse8">
															Q8. 크리에이트 사이트가 깨져서 보여요.
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading8">
													<div class="panel-body">
														크리에이트는 Internet Explore 9.0 이상과 크롬, 사파리 기반의 웹 브라우저에서 정상 작동합니다. Internet Explore 9.0 하위 버전을 사용 중이시라면 업데이트 후 이용하시면 됩니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading9">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse9" aria-expanded="false" aria-controls="normalFaqCollapse9">
															Q9. 모바일 기기(스마트폰)에서 보는 크리에이트와 PC에서 보는 크리에이트는 같은 사이트인가요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading9">
													<div class="panel-body">
														모두 같은 크리에이트입니다. 크리에이트 플랫폼은 최신 기술인 반응형 웹 기반으로 개발되었기 때문에 보시는 크기에 따라 최적화된 화면으로 자동 조정됩니다.
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="normalFaqHeading10">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#normalFaqAccordion" href="#normalFaqCollapse10" aria-expanded="false" aria-controls="normalFaqCollapse10">
															Q10. 퍼플포인트가 무엇인가요?
														</a>
													</h4>
												</div>
												<div id="normalFaqCollapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="normalFaqHeading10">
													<div class="panel-body">
														크리에이트에서 운영하는 포인트 제도로 '1포인트=1원'의 가치를 지니며, [마이페이지]-[포인트 관리]에서 적립/사용내역을 확인하실 수 있습니다. 퍼플포인트는 투자 시 예치금과 합산하여 1만원 이상이면 사용 가능합니다. (예시: 포인트 1,100pp + 예치금 8,900원 = 총 1만원 투자)
														<br><br>
														단, 적립/이벤트로 지급되는 포인트는 회사 사정에 따라 변동 될 수 있으며, 투자 이외의 용도로는 사용 불가합니다. 포인트 지급률이 변동되는 경우 공지 사항의 게시판을 통해 고지됩니다.
														<br><br>
														포인트 관련 정책은 이용약관 및 회사 방침에 따라 운영이 됩니다.
														<br><br>
														▶자동투자 시 포인트 사용 설정: [마이페이지]-[자동투자 설정]-[추가설정 더 보기]-[자동투자 포인트 사용 설정] '적용'
														<br><br>
														▶자세한 내용은 <a href="https://blog.naver.com/midrate/221032833529" target="_blank"><strong>크리에이트 블로그</strong></a>를 참고하여 주세요.
													</div>
												</div>
											</div>
										</div>
									</div>	
									</div>
								</div>
							</div>
							
							<div role="tabpanel" class="tab-pane fade in" id="investTab">
								<div class="wrap" id="investFaqWrap">
									<div class="box">
										<div class="headerFAQ">투자</div>
										<div class="body">
											<div class="panel-group" id="investFaqAccordion" role="tablist" aria-multiselectable="true">
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading1">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse1" aria-expanded="false" aria-controls="investFaqCollapse1">
																Q1. 투자는 어떻게 하나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading1">
														<div class="panel-body">
															투자를 희망하는 회원님은 다음과 같은 과정을 통해 투자에 참여하실 수 있습니다.&nbsp;
															<br><br>
															1. 회원가입하기<br>
															2. [마이페이지]→[예치금 관리]에서 ‘예치금 계좌 발급받기’<br>
															3. 예치금 입금하기<br>
															4. 투자하기(수동투자 혹은 자동투자)<br>
															5. 원리금 상환<br>
															<br>자세한 내용은 <a href="/invest/guide" target="_blank">'투자안내'</a>를 참고하시기 바랍니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading2">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse2" aria-expanded="false" aria-controls="investFaqCollapse2">
																Q2. 자동투자는 무엇인가요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading2">
														<div class="panel-body">
															자동투자는 고객님께서 설정한 조건에 따라 상품 오픈 30분전에 자동으로 투자가 되는 시스템으로, 설정방법은 아래와 같습니다.
															<br><br>
															● 자동투자 설정방법 ●<br>
															1. [마이페이지]→[자동투자 설정] 우측 상단[OFF]에서 [ON]으로 변경합니다.<br>
															2. 자동투자 예치금 설정: 자동투자로 운영하고 싶은 총 금액을 입력합니다.<br>
															3. 자동투자 1회 실행 금액을 입력합니다.<br>
															4. 자동투자 상세 설정 후 화면 우측 상단의 ‘조건저장’ 버튼을 누릅니다. <br>
															<br><br>
															▶ [자동투자 테스트]를 통해 오픈예정 상품에 맞는 조건을 손쉽게 설정할 수 있습니다. <br>
															▶ 자동투자는 오픈시간 30분 전 1회만 실행되므로, 그 이후에 자동 투자를 설정하여도 자동 투자가 이루어지지 않습니다. 
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading3">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse3" aria-expanded="false" aria-controls="investFaqCollapse3">
																Q3. 이자수익에 적용되는 세율은 몇 % 인가요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading3">
														<div class="panel-body">
															투자 시 발생된 이자수익은 과세대상입니다. 현행 세법에 따라 비영업대금에 대한 이익은 이자소득으로 간주되어 25%의 세율이 적용됩니다. (소득세법 제16조 제1항 제11) 여기에 주민세가 2.5% 추가되어 총 27.5%를 세금으로 원천징수 하고있습니다. 크리에이트에서는 회원님의 이자 수익에대해서 납세금을 납부하며, 세후의 순수익에 대하여 회원님의 예치금 계좌로 입금해 드립니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading4">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse4" aria-expanded="false" aria-controls="investFaqCollapse4">
																Q4. 가이드라인에 따른 투자한도 상향은 어떻게 하나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading4">
														<div class="panel-body">
															금융위원회의 “P2P대출 가이드라인 개정안”에 따라 현재 일반 개인투자자는 총투자금액 2,000만원, 동일차입자 500만원의 투자한도가 적용됩니다. (단, 부동산 상품은 총투자한도 최대 1,000만원) 따라서 투자한도 상향을 원하시는 고객님들은 아래의 조건 참고하셔서 고객센터로 서류 제출해주시기 바랍니다.
															<br><br>
															● 소득적격 개인투자자 (총투자한도 4,000만원, 동일차입자 2,000만원)<br>
															택1) 종합소득 과세표준 확정신고서 &amp; 종합소득세 신고서 접수증<br>
															택2) 근로소득원천징수영수증 (근로소득만 증빙하는 경우)<br>
															<br><br>
															● 개인전문투자자 (한도 제한없음)<br>
															서류) 금융투자협회 지정 전문투자자 확인증<br>
															<br><br>
															● 법인투자자 (한도 제한없음)<br>
															택1) 사업자 등록증 사본<br>
															택2) 법인등록증 &amp; 법인통장 사본<br>
															<br><br>
															자세한 내용은 공지사항을 참고하여 주시기 바랍니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading5">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse5" aria-expanded="false" aria-controls="investFaqCollapse5">
																Q5. 미성년자도 투자가 가능한가요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading5">
														<div class="panel-body">
															네. 투자가 가능합니다. 19세 미만의 미성년자 회원의 경우 아래의 절차에 따라 서비스 이용이 가능하며, 법정대리인의 동의절차 등 관련서류 제출 및 승인과정이 필요합니다. 
		 													<br><br>
															● 가입 및 투자절차<br>
															 1. 개인회원 가입<br>
															 2. 가상계좌 발급 시 본인 인증 확인 요청<br>
															 3. 필요서류 제출 및 관리자 승인(이메일 또는 우편 발송)<br>
															 4. 서류 확인 및 관리자 승인<br>
															 5. 서비스 이용
															<br><br>
															●  필요서류<br>
															 1. 법정대리인 동의서(*공지사항 첨부양식)<br>
															 2. 가족관계 확인이 가능한 주민등록등본or가족관계증명서<br>
															 3. 법정대리인 신분증 사본<br>
															 4. 미성년자 계좌 사본
															<br><br>
															* 이메일 주소: contact@midrate.co.kr<br>
															* 우편 주소: (우)06131 서울특별시 강남구 논현로95길 12, 4층
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading6">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse6" aria-expanded="false" aria-controls="investFaqCollapse6">
																Q6. 투자 시 종합 소득세 신고는 어떻게 하나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading6">
														<div class="panel-body">
															투자 회원님의 이자소득에 대한 세금은 크리에이트에서 원천징수합니다. 따라서 별도로 소득 신고를 하실 필요가 없습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading7">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse7" aria-expanded="false" aria-controls="investFaqCollapse7">
																Q7. 크리에이트에 투자하면 원금이 보장되나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading7">
														<div class="panel-body">
															크리에이트의 투자상품은 원금이 보장되지 않습니다. 크리에이트와 같은 P2P대출 플랫폼에서의 투자는 현행 법률상 '유사수신행위의 규제에 관한 법률'에 의해 원금과 수익을 보장할 수 없으며, '원금 보장이 안됨'을 명시하지 않는 것은 법률 위반입니다.
															크리에이트는 이에 대해 충분한 사전 고지 의무를 다하고자 합니다.
															투자고객님은 이를 인지하시고 신중한 결정 부탁드립니다. 다만, 크리에이트는 자체신용평가시스템을 통해 대출고객의 신용도를 세밀하고 정밀하게 평가하여 리스크를 낮추고 있습니다.
															투자고객님께서는 반드시 분산투자를 통해 부도에 대한 위험을 낮추실 수 있습니다. 분산투자가 어렵게 느껴지는 투자회원님을 위해 크리에이트에서는 자동 투자 시스템을 마련하였습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading8">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse8" aria-expanded="false" aria-controls="investFaqCollapse8">
																Q8. 차입자가 돈을 갚지 않으면 어떻게 되나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading8">
														<div class="panel-body">
															㈜크리에이트대부가 채권추심을 합니다. ㈜크리에이트대부는 채권자로서 채권추심을 대행하여 투자고객의 자산 보호에 최선을 다하며, 전화, 문자메시지, 방문 등 적법한 절차에 따른 추심 과정을 진행하게 됩니다. 
															2개월 동안은 ㈜크리에이트대부에서 자체추심을 진행하며, 2개월 이상 연체될 경우 채권추심업체에 의뢰하여 추심업무를 이행하게 됩니다. 
															차입자의 연체일수가 장기화되어 6개월 이상 연체된다면 부실채권을 매각하며, 투자금의 일부를 회수합니다. 
															미회수분에 대해서는 대손처리되어 원금 손실이 있을 수 있습니다. 참고로, P2P금융업체는 원금이 보장되지 않음을 명시해야 하며, 
															이를 고객에게 적극적으로 알려야 할 의무가 있습니다. 이를 지키지 않는 것은 유사수신행위의 규제에 관한 법률 위반입니다. 
															다만, 크리에이트는 단일 채권에 대한 투자금액 상한선을 정하는 등 분산투자를 권유해드리고 있으며, 분산투자가 이루어졌을 때 대손율은 약 1% 내외로 예상하고 있습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading9">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse9" aria-expanded="false" aria-controls="investFaqCollapse9">
																Q9. 주민등록번호를 수집하는 이유는 뭔가요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading9">
														<div class="panel-body">
															크리에이트는 대출을 포함한 모든 과정에서 고객의 주민등록번호를 수집하지 않는 것을 원칙으로 하고 있습니다. 
															다만 원천징수와 관련, 크리에이트가 투자 고객을 대신하여 투자 수익에 대한 납세금을 납부하는 과정 및 대출에 필요한 인적사항을 확인하는 과정에서 필요한 회원님의 주민등록번호를 수집하게 됩니다. 
															주민등록번호는 암호화하여 저장되며 원천징수 신고 시에만 복호화하여 사용됩니다. 
															단방향 암호화 방식을 이용하여 크리에이트 임직원을 포함한 모든 인원이 열람할 수 없도록 관리하고 있으니 안심하셔도 좋습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading10">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse10" aria-expanded="false" aria-controls="investFaqCollapse10">
																Q10. 원리금 수취권이 무엇인가요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading10">
														<div class="panel-body">
															원리금수취권이란 말 그대로 원금과 이자를 받을 수 있는 권리를 말합니다. 
															투자회원님은 크리에이트를 통해 대출채권에 참여함으로써 대출고객이 상환하는 원리금을 수취할 수 있는 권리를 갖게 되며 대출행위, 채권관리 등의 책임과 권한은 크리에이트에게 있습니다. 
															이 모든 사항은 법적으로 정당하게 보호받을 수 있습니다.<br><br>
															원리금수취권은 '마이페이지'의 ‘투자 내역’에서 각 상품을 눌러 상세 일정을 보시면 우측 상단에 ‘원리금수취권’ 버튼을 통해서 다운로드 받으실 수 있습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading11">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse11" aria-expanded="false" aria-controls="investFaqCollapse11">
																Q11. 크리에이트가 파산하면 어떻게 되나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading11">
														<div class="panel-body">
															회사가 부도가 나더라도 대출 채권 계약이 소멸되지 않습니다. 대출고객은 여전히 원리금 상환의무를 가지며 투자회원님의 원리금 수취권도 법적으로 보호됩니다. 
															단, 크리에이트의 부도에 따라 원리금 수취 및 배분의 주체가 달라질 수는 있으나 대출회원님 및 투자회원님 모두 보호받습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading12">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse12" aria-expanded="false" aria-controls="investFaqCollapse12">
																Q12. 부분적으로 투자가 모집되면 투자는 어떻게 진행되나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading12">
														<div class="panel-body">
															투자 목표금액의 100%가 모집 완료될 때까지 기다리거나 차입자와의 협의를 통해 투자 모집금액을 조정 후 모집하게 됩니다. 
															단 투자하신 상품의 목표금액 모집에 실패하여 모집 취소된 경우, 투자금은 예치금으로 자동 반환됩니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading13">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse13" aria-expanded="false" aria-controls="investFaqCollapse13">
																Q13. 투자금을 중간에 되돌려 받을 수 있나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading13">
														<div class="panel-body">
															투자 상품이 모집중이면<a href="/mypage" target="_blank">'마이페이지'</a>의 투자 내역에서 투자 취소가 가능하며 모집완료 이후부터는 모집금액이 차입자에게 이체되기 때문에 환급받으실 수 없습니다. 향후 채권 거래소와의 제휴를 통해 중도 환매 기능을 도입할 예정입니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="investFaqHeading14">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse14" aria-expanded="false" aria-controls="investFaqCollapse14">
																Q14. 투자하면 수수료가 발생하나요?
															</a>
														</h4>
													</div>
													<div id="investFaqCollapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading14">
														<div class="panel-body">
															현재까지 별도의 투자 수수료는 수취하지 않고 있으며, 추후 변동사항 발생시 공지사항을 통해 안내하여 드리겠습니다.
														</div>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div role="tabpanel" class="tab-pane fade in" id="loanTab">
								<div class="wrap" id="loanFaqWrap">
									<div class="box">
										<div class="headerFAQ">대출</div>
										<div class="body">
											<div class="panel-group" id="loanFaqAccordion" role="tablist" aria-multiselectable="true">
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading1">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse1" aria-expanded="false" aria-controls="loanFaqCollapse1">
																Q1. 대출 신청하면 개인정보가 공개되나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading1">
														<div class="panel-body">
															투자와 관련하여 차입자의 이름, 주소, 전화번호, 생년월일 등 어떠한 개인(식별)정보를 노출하지 않습니다.
															단, 마케팅 등의 목적으로 차입자가 공개를 요청 또는 허용하는 경우 차입자가 원하는 형태로 공개할 수 있습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading2">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse2" aria-expanded="false" aria-controls="loanFaqCollapse2">
																Q2. 대출신청은 어떻게 하나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading2">
														<div class="panel-body">
															대출신청은 크리에이트 홈페이지의&nbsp;'대출하기'&nbsp;메뉴를 통해서 신청이 가능합니다. 신청 후 안내해드리는 필요 서류까지 제출해주셔야 모든 대출 신청 절차가 완료됩니다. 
															신청 후 대출실행까지의 과정은 아래와 같습니다.&nbsp;<br><br>
															※ 대출신청 → 추가정보 → 서류제출 및 심사 → 심사결과 통보 → 고객승인 → 상품 등록 및 투자고객 모집 → 대출실행
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading3">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse3" aria-expanded="false" aria-controls="loanFaqCollapse3">
																Q3. 대출 신청 자격 요건은 무엇인가요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading3">
														<div class="panel-body">
															1. 신용등급 1~7등급 이내<br>
															2.소득 및 재직증명이 가능하며<br>
															3. 최근 2년 내 연체, 개인회생 및 파산기록이 없어야 합니다.
															<br><br>
															또한 과다한 신용 채무 및 현금서비스 사용 이력은 대출 금리산정에 불이익이 있을 수 있습니다. 
															자세한 내용은&nbsp;<a href="/loan/guide" target="_blank">'대출안내'</a>를 참고하시기 바랍니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading4">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse4" aria-expanded="false" aria-controls="loanFaqCollapse4">
																Q4. 대출신청 시 어떤 서류를 제출해야 하나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading4">
														<div class="panel-body">
															대출신청 시 필요한 서류는 다음과 같습니다.&nbsp;
															<br><br>
															▷개인신용&nbsp;대출<br>
															1. 신분증 사본 : 주민등록증, 운전면허증, 여권 등&nbsp;<br>
															2. 재직증명 : 재직증명서, 건강보험자격득실확인서(국민건강보험 홈페이지&nbsp;≫ 자주 찾는 메뉴 ≫ 조회/발급 서비스 ≫ 자격득실확인서 발급)<br>&nbsp;
															3. 소득증명 : 건강보험 납부 확인서, 근로소득원천징수 영수증, 소득금액증명원&nbsp;
															<br><br>
															▷법인·사업자 대출&nbsp;<br>
															1. 신분증 사본 : 주민등록증, 운전면허증, 여권 <br>
															2. 사업자 등록증 첨부(사업장 운영 3개월 이상)&nbsp;<br>
															3. 소득금액증명원, 부가가치세과세증명원 (대출신청일 기준 15일이내)&nbsp;<br>
															(면세사업자의 경우 수입금액증명원 +지역의료보험료 납부내역 6개월치)&nbsp;
															<br><br>
															▷담보 대출&nbsp;<br>
															1. 부동산 : 인감증명서 / 주민등록초본 / 인감도장 / 통장사본 / 국세완납증명서 / 지방세 완납 증명서 / 등기 권리증 / 임대차 계약서 / 신분증 / 전입세대 열람 / 재직증명서&nbsp;<br>
															2. 동산 : 신분증 / 담보 물건에 대한 보증서 / 구매내역 등&nbsp;<br>
															※ 담보대출(부동산,동산)시 제출서류는 신청 후 자세히 안내드립니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading5">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse5" aria-expanded="false" aria-controls="loanFaqCollapse5">
																Q5. 크리에이트 금리와 대출 금액은 어떻게 산정되나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading5">
														<div class="panel-body">
															▷금리 산정<br>
															    - 크리에이트 자체 신용 평가 시스템이 대출신청 시 입력하신 정보 및 증빙서류들을 토대로 '크리에이트 등급'을 책정하며 등급별로 설정된 금리는 대출기간, 대출유형 등에 따라 소폭 조정됩니다.
															          예측 위험률이 높을수록 금리가 상승합니다.<br><br>
															▷최대 대출금액<br>
															    - 크리에이트는 대출 상품에 따라 대출금액의 한도가 다릅니다.&nbsp;<br><br>
															▷개인신용 대출: 최대 3,000만원&nbsp;<br><br>
															▷법인·사업자 대출:&nbsp;최대 1억원&nbsp;<br><br>
															▷담보 대출(부동산, 동산):&nbsp;담보물 가치 평가 후 차입자와 협의 후 진행
															<br><br>
															*자세한 금리 및 대출한도는 회원가입 후 대출신청을 접수해 주셔야 합니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading6">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse6" aria-expanded="false" aria-controls="loanFaqCollapse6">
																Q6. 대출 후 만기 전에 대출금을 전부 갚아도 불이익이 없나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading6">
														<div class="panel-body">
															크리에이트는 대출금 중도상환에 따른 중도상환 수수료가 없습니다.<br>
															단, 중도상환 시점 기준 잔존원금과 이자 전액을 일시에 상환하셔야 합니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading7">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse7" aria-expanded="false" aria-controls="loanFaqCollapse7">
																Q7. 계약된 상환 날짜에 입금을 못하면 어떻게 되나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading7">
														<div class="panel-body">
															최대 24.0% 이내의 연체 이자율을 적용하게 됩니다. 또한, 채권의 보전을 위해 반드시 필요하다고 크리에이트가 판단하는 경우, 그리고 여신거래약관에서 규정한 "기한의 이익상실" 사유에 해당하는 경우에는 크리에이트가 지정하는 업체에 채권의 추심을 위임할 수 있습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading8">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse8" aria-expanded="false" aria-controls="loanFaqCollapse8">
																Q8. 신용정보 조회기록이나 대출기록이 남는건가요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading8">
														<div class="panel-body">
															크리에이트 대출은 고객 여러분의 신용등급에 어떠한 영향을 주지 않습니다. 그러나 상환 과정에서 연체가 일어나면 투자자 보호 차원에서 신용평가사에 연체 사실을 통보하게 되며, 이에 따라 신용등급의 하락 및 연체 관련 불이익(연체이력 등재)을 받으실 수 있습니다.
														</div>
													</div>
												</div>
												
												<div class="panel panel-default">
													<div class="panel-heading" role="tab" id="loanFaqHeading9">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#loanFaqAccordion" href="#loanFaqCollapse9" aria-expanded="false" aria-controls="loanFaqCollapse9">
																Q9. 크리에이트는 어떤 방식으로 대출금을 상환받나요?
															</a>
														</h4>
													</div>
													<div id="loanFaqCollapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="loanFaqHeading9">
														<div class="panel-body">
																의 상환방식은 원리금 균등상환과 만기일시상환이 있습니다. 
															<br><br>
															원리금 균등상환이란 원리금 만기까지의 대출원금과 이자를 미리 계산하여 상환 기간 동안 매월 일정한 금액을 상환하는 방식을 말합니다. 초기 상환회차에는 이자를 많이 상환하나, 후기로 갈수록 이자가 줄어들고 원금을 많이 상환하기 때문에 결과적으로 매월 상환해야하는 금액은 같아집니다. 
															<br><br>
															만기일시 상환은 대출금리에 따라 계산된 이자를 매달 상환하고 원금은 만기가 되었을 때 한 번에 상환하는 방식입니다.
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	    <!-- /MAIN CONTENT -->
	    <!--main content end-->
		
		<!--footer start-->
		<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery/jquery.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery.scrollTo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/common-scripts.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/gritter-conf.js"></script>
	<!--script for this page-->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/sparkline-chart.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/zabuto_calendar.js"></script>
	
</body>

</html>