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
	<script type="text/javascript">
	$(document).ready(function() {
		$("#investBtn").click(function() {
			location.href="${pageContext.request.contextPath}/invest";
		});//investBtn
	});//ready
	</script>
</head>

<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="./main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
			<!--logo end-->
			<div class="nav notify-row top-menu" id="top_menu">
				<!--  notification start -->
				<ul class="nav pull-right top-menu">
					<!-- settings start -->
					
					<!-- 회사소개 start -->
					<li><a href="./loan_guide">회사소개</a></li>
					<!-- 회사소개 end -->
					
					<!-- 대출 start -->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							대출
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="./loan_guide">대출안내</a>
							</li>
							<li>
								<a href="./loan/getloan">대출하기</a>
							</li>
						</ul>
					</li>
	          		<!-- 대출 end -->
	          
	          		<!-- inbox dropdown start-->
	         		<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							투자
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-black"></div>
							<li>
								<a href="./invest_guide">투자안내</a>
							</li>
							<li>
								<a href="./invest_list">투자하기</a>
							</li>
							<li>
								<a href="./invest_finish">완료된투자</a>
							</li>
						</ul>
					</li>
	          		<!-- 투자 end -->
	          
	          
					<!-- 고객지원 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							고객지원
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow"></div>
							<li>
								<a href="./faq">FAQ</a>
							</li>
							<li>
								<a href="./support">이용약관</a>
							</li>
							<li>
								<a href="./policy">개인정보</a>
							</li>
							<li>
								<a href="./inquiry">1:1문의</a>
							</li>
							<li>
								<a href="./support_total">공지사항</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 end -->
					
					<!-- 마이페이지 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							마이페이지
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>
							<li>
								<a href="./my_dashboard">대시보드</a>
							</li>
							<li>
								<a href="./my_invest_list">투자내역</a>
							</li>
							<li>
								<a href="./my_loan_list">대출내역</a>
							</li>
							<li>
								<a href="./my_depo_mgn">예치금관리</a>
							</li>
							<li>
								<a href="./my_modify">회원정보수정</a>
							</li>
						</ul>
					</li>
					<!-- 마이페이지 end -->
					
					<!-- 로그아웃 start -->
					<li><a href="./loan_guide">로그아웃</a></li>
					<!-- 로그아웃 end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="/creator/join">회원가입</a></li>
				</ul>
			</div>
	    </header>
	    <!--header end-->
	   
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
				<div style="background-color: orange; width: 60px; text-align: center; color: white; font-size: 15px;">${projectVO.ach_state}</div>
				<div style="width: 200px; color: black; font-size: 25px;">${projectVO.project_name}</div>
				<input type="button" id="test" value="test" />
					<!-- page start -->
					<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col">
						<div class="card" style="float: right; border: solid 1px black">
							<div class="card-body">
								<table>
									<tr>
										<td>${projectVO.current_price / projectVO.price * 100}%</td>
									</tr>
									<tr>
										<td>${projectVO.current_price}</td>
										<td>${projectVO.price}</td>
									</tr>
									<tr>
										<td>상환방식</td>
										<td>${projectVO.repay_method}</td>
									</tr>
									<tr>
										<th>연 수익률</th>
										<td>${projectVO.yield}</td>
									</tr>
									<tr>
										<td>투자기간</td>
										<td>${projectVO.refund}</td>
									</tr>
									<tr>
										<td>투자한도</td>
										<td>500만원</td>
									</tr>
									<tr>
										<td><input type="button" id="investBtn" value="투자신청"/></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- 상품요약 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								상품요약
							</div>
							<div class="card-body">
								<table>
									<tr>
										<th>기본정보</th>
									</tr>
									<tr>
										<td>담보유형</td>
										<td>만기</td>
										<td>대출금액</td>
										<td>대출잔액</td>
									</tr>
									<tr>
										<td>${guaranteeVO.guarantee_type}</td>
										<td>${projectVO.refund}</td>
										<td>${projectVO.price}</td>
										<td>${projectVO.guarantee_price}</td>
									</tr>
								</table>
								<table style="float:left;">
									<tr>
										<th>담보물건 정보</th>
									</tr>							
									<tr>
										<td>유형</td>
										<td>${guaranteeVO.guarantee_type}</td>
									</tr>
									<tr>
										<td>공급/전용</td>
										<td>${guaranteeVO.supply_area} / ${guaranteeVO.exclusive_area}</td>
									</tr>
									<tr>
										<td>LTV</td>
										<td>${projectVO.price / guaranteeVO.connoisseur * 100}%</td>
									</tr>
									<tr>
										<td>담보권</td>
										<td>근저당부질권</td>
									</tr>
								</table>
								<table style="float:right;">
									<tr>
										<th>차주 정보</th>
									</tr>							
									<tr>
										<td>유형</td>
										<td>${guaranteeVO.debtor_type}</td>
									</tr>
									<tr>
										<td>업종</td>
										<td>${guaranteeVO.business_type}</td>
									</tr>
									<tr>
										<td>대출목적</td>
										<td>사업운영자금</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 상품요약 end -->
						
						<!-- 담보상세 start -->
						<div class="card" style="width:800px; height: 1000px;">
							<div class="card-header">
								담보상세
							</div>
							<div class="card-body">
								<table border="1">
									<tr>
										<td>물건유형</td>
										<td>면적</td>
										<td>외부 감정가</td>
									</tr>
									<tr>
										<td>${guaranteeVO.object_type}</td>
										<td>${guaranteeVO.area}</td>
										<td>${guaranteeVO.connoisseur}</td>
									</tr>
									<tr>
										<td>선순위 금액</td>
										<td>LTV</td>
										<td>담보 설정비율</td>
									</tr>
									<tr>
										<td>모른다</td>
										<td>${projectVO.price / guaranteeVO.connoisseur * 100}%</td>
										<td>150%</td>
									</tr>
								</table>
								<div style="border: solid 1px black; width:800px; height:400px;">
									${guaranteeVO.guarantee_img}
								</div>
								<div id="map" style="width:800px;height:300px;"></div>
								<div style="">소재지 : ${guaranteeVO.location}</div>
							</div>
						</div>
						<!-- 담보상세 end -->
						
						<!-- 상환계획 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								상환계획
							</div>
							<div class="card-body">
								<table>
									<tr>
										<td>자체상환 - 고정적 수익을 바탕으로 자체상환 계획</td>
									</tr>
									<tr>
										<td>NPL매각 - 매입전문 업체에 매각진행</td>
									</tr>
									<tr>
										<td>경매회수 - 경매진행 후 회수</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 상환계획 end -->
						
						<!-- 투자자보호 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								투자자보호
							</div>
							<div class="card-body">
								<table>
									<tr>
										<td>담보권</td>
										<td>인출조건</td>
										<td>기타보강</td>
									</tr>
									<tr>
										<td>후순위 근저당부 질권</td>
										<td>대출약정서<br>근저당설정계약서</td>
										<td>임대차확인서<br>질권설정 승낙서</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 투자자보호 end -->
						
						<!-- 참고파일 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								참고파일
							</div>
							<div class="card-body">
								<button id="refFile1">첨부파일1</button>
								<button id="refFile2">첨부파일2</button>
								<button id="refFile3">첨부파일3</button>
							</div>
						</div>
						<!-- 참고파일 end -->
						
						<!-- 자주묻는질문 start -->
						<!-- 자주묻는질문 end -->
						
						<!-- 투자시 위험 안내 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								투자시 위험안내
							</div>
							<div class="card-body">
								<div>
									CREATOR는 원금과 수익률을 보장하지 않으며 투자 손실의 가능성이 있습니다. 
									엄격한 차입자 신용 평가와 금리 산정으로 평균 수익률 연 8%를 목표로 합니다.
								</div>
							</div>
						</div>
						<!-- 투자시 위험 안내 end -->
						
					</div>
					<!-- page end -->
					
				</div>
			</section>
			<!-- /wrapper -->
	    </section>
	    <!-- /MAIN CONTENT -->
	    <!--main content end-->
		
		<!--footer start-->
		<footer class="site-footer">
			<div class="container">
			<div class="row">
		        <!-- ADDRESS -->
				<div class="col-lg-4">
					<img alt="logo" src="${pageContext.request.contextPath}/resources/img/test_logo.jpg" width="200px" height="200px">
					<h4>
						<i class="fa fa-envelope-o"></i> contact@creator.co.kr<br/>
						<i class="fa fa-phone"></i> (02) 546-4076<br/>
						<i class="fa fa-home"></i> 서울특별시 강남구 논현로95길 12, 4층
					</h4>
				</div>
		
				<!-- LATEST POSTS -->
				<div class="col-lg-8">
					<h5>
			            플랫폼 사업자 : (주)크리에이터 | 사업자번호 : 825-88-00203 | 대표이사 신규식 <br/>
			            TEL. 02-546-4076 | FAX. 070-4015-0577 | MAIL. contact@creator.co.kr | KakaoTalk. @creator <br/>
			            통신판매업 2018-서울강남-04669 서울 강남구청(02-3423-5114) <br/>
			            <br/>
			            여신회사 : (주)크리에이터 대부| 사업자번호 : 317-88-00338 | 대표이사 백승한 <br/>
			            P2P연계대부업 2018-금감원-1374<br/>
			            <br/>
			            대출금리 연 19.9%내(연체금리 연 22.9%내), 플랫폼 이용료 외 취급수수료 등 기타 부대비용 없습니다. <br/>
			            중개수수료를 요구하거나 받는 행위는 불법입니다. 과도한 빚은 당신에게 큰 불행을 안겨줄 수 있습니다. <br/>
						대출 시 귀하의 신용등급이 하락할 수 있습니다. 채무의 조기상환 수수료율 등 조기상환 조건 없습니다. <br/>
						크리에이터는 투자원금과 수익을 보장하지 않으며, 투자손실에 대한 책임은 모두 투자자에게 있습니다.
					</h5>
					<br/>
					<h5>
						크리에이터는 투자원금과 수익을 보장하지 않으며, 투자손실에 대한 책임은 모두 투자자에게 있습니다.
					</h5>
					<br/>
					<h5>
						Copyright (c) 2019 Creatator
						<br/>
						CREATATOR 플랫폼 이용료 외 취급수수료 등 기타 부대비용 없음. 중개수수료를 요구하거나 받는 것은 불법입니다.
					</h5>
				</div>
				<!-- /col-lg-8 -->
			</div>
		</div>
		<!-- /container -->
		</footer>
		<!--footer end-->
	
	</section>

	<!-- 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=634dddac053ddf6be0b6aa5a165b2da8"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	<!-- 지도 api -->
	
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