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

<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<%@ include file="../header.jsp" %>
		<!--header end-->
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<!-- page start -->
					<div class="col-lg-12">
						<div class="row content-panel">
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#tab_01">개인신용</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#tab_02">사업자신용</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#tab_03">부동산담보</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#tab_04">동산담보</a>
                  </li>
                </ul>
              </div>
              <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="tab_01" class="tab-pane active">
                    <div class="row">
                      <div class="col-md-12">
                        <section>
									<ul class="tab1 tabTit">
										<li class="chkIMG">
											<img src="/images/investV2/Icon_investIntro_chkPT.png">
										</li>
										<li class="chk_tit_IMG">
											<b>개인신용</b>을 이용한 대출을 원하는 차입자입니다.
										</li>
									</ul>	
									<ul class="tab1 grade">
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>신용평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;●&nbsp;●
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>사업성/담보평가</b><br>
											●&nbsp;○&nbsp;○&nbsp;○&nbsp;○
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>투자자보호</b><br>
											연대보증, 담보
										</li>
									</ul>
									<ul class="tab1 tabCont">
										<li>
											투자기간은 1개월부터 최대 24개월까지 가능하며,
											투자 원금과 이자를 매달마다 받는 원리금 균등 상환방식과 대출기간 동안 이자만 상환받고 만기일에 원리금을 모두 상환받는 만기일시 상환 방식이 있습니다.
											<br><br>
											예시는 아래와 같습니다.
										</li>
									</ul>
									<div class="bgGR">
										<span class="tab1 tabCont bgGRTit">투자금액 1,000만 원, 투자금리 연12%, 기간 1년 상품에 투자 시</span>
										<ul class="tab1 tabCont">
											<li class="bgGRcircle mg20">
												원리금 균등 상환
											</li>
											<li class="mg20">
												매월 상환금 &nbsp;&nbsp;: &nbsp;&nbsp;888,488원 &nbsp;&nbsp;|&nbsp;&nbsp; 최종상환금 : 10,661,855원
											</li>
										</ul>
										<ul class="tab1 tabCont">
											<li class="bgGRcircle mg20">
												만기 일시 상환
											</li>
											<li class="mg20">
												매월 상환금 &nbsp;&nbsp;: &nbsp;&nbsp;100,000원&nbsp;&nbsp; | &nbsp;&nbsp;최종상환금 : 11,200,000원
											</li>
										</ul>
									</div>
									<ul class="tab1 tabCont">
										<li>
											원리금 균등 상환방식은 매달 원금이 상환됨에 따라 이자도 감소하여 총 투자수익은 만기일시 상환보다 약 40%정도 적습니다. 만기일시 상환방식은 차입자가 만기일에 원금을 한번에 상환해야 하는 부담이 있지만 원리금 균등 상환 방식에 비해 투자수익은 높은 편입니다.
										</li>
									</ul>
								</section>
                      </div>
                      <!-- /col-md-12 -->
                    </div>
                    <!-- /tab_01 -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="tab_02" class="tab-pane">
                    <div class="row">
                      <div class="col-md-12">
                        <section>
									<ul class="tab2 tabTit">
										<li class="chkIMG">
											<img src="/images/investV2/Icon_investIntro_chkPT.png">
										</li>
										<li class="chk_tit_IMG">
											<b>개인신용</b>과 함께 <b>사업성 평가</b>를 통한 사업자 신용 대출을 원하는 차입자입니다.
										</li>
									</ul>	
									<ul class="tab2 grade">
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>신용평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;●&nbsp;○
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>사업성/담보평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;○&nbsp;○
										</li>
										<li class="gradeIMG lsTxt col-xs-12 col-sm-4 col-md-4">
											<b>투자자보호</b><br>
											사업장/채권양도담보, 연대보증 등
										</li>
									</ul>
									<ul class="tab2 tabCont">
										<li>
											투자기간은 1개월부터 최대 24개월 까지 가능하며, 기본적인 개인신용 평가와 함께 사업성 분석, 상권분석, 유동인구 분석을 통해 적정 금리와 한도를 제시합니다.
											<br>
										</li>
										<li>
											투자수익과 함께 투자금액에 따른 리워드 제공이 포함된 상품들이 비교적 많은 편입니다.
										</li>
										<li>
											투자자 보호에 있어 차입자 부실 발생 시 운영하는 사업장의 양도담보, 매출채권, 보증금등의 채권양도 담보와 연대보증을 설정합니다.
										</li>
									</ul>
								</section>
                      </div>
                      <!-- /col-md-12 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="tab_03" class="tab-pane">
                    <div class="row">
                      <div class="col-md-12">
                       <section>
									<ul class="tab3 tabTit">
										<li class="chkIMG">
											<img src="/images/investV2/Icon_investIntro_chkPT.png">
										</li>
										<li class="chk_tit_IMG">
											<b>개인신용</b>과 <b>본인 명의 부동산 담보</b>를 이용한 대출을 원하는 차입자입니다.
										</li>
									</ul>	
									<ul class="tab3 grade">
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>신용평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;○&nbsp;○
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>사업성/담보평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;●&nbsp;●
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>투자자보호</b><br>
											담보물매각을 통한 원금 회수
										</li>
									</ul>
									<ul class="tab3 tabCont">
										<li>
											투자기간은 1개월부터 최대 24개월 까지 가능하며,차입자의 빠른 자금순환을 통해 비교적 짧은 기간(2개월 - 12개월)에 투자금액을 회수할 수 있습니다.
											<br>
										</li>
										<li>
											담보물에 정확한 가치평가가 중요한 상품으로 시세 거래 사이트를 통한 정확한 가치 파악(현재가치+미래가치)과 등기부 등본 상의 권리 분석을 통하여 적정 한도와 금리를 제시합니다.
										</li>
									</ul>
									<div class="bgGR">
										<span class="tab3 tabCont bgGRTit">투자금액 1,000만 원, 투자금리 연 12%, 기간 1년 상품, 6개월 상품에 투자 시(만기일시 상환조건)</span>
										<ul class="tab1 tabCont">
											<li class="bgGRcircle mg20">
												기간 1년
											</li>
											<li class="mg20">
												매월 상환금 : 100,000원 | 최종상환금 : 11,200,000원
											</li>
										</ul>
										<ul class="tab1 tabCont">
											<li class="bgGRcircle mg20">
												기간 6개월
											</li>
											<li class="mg20">
												매월 상환금 : 100,000원 | 최종상환금 : 10,600,000원
											</li>
										</ul>
									</div>
									<ul class="tab1 tabCont">
										<li>
											투자자 보호에 있어 차입자 부실 발생 시 담보물을 경매, 매입보증업체에 매각하여 원금을 회수합니다.
										</li>
									</ul>
								</section>
                      </div>
                      <!-- /col-md-12 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                  
                  <!-- /tab-pane -->
                  <div id="tab_04" class="tab-pane">
                    <div class="row">
                      <div class="col-md-12">
                        <section>
									<ul class="tab4 tabTit">
										<li class="chkIMG">
											<img src="/images/investV2/Icon_investIntro_chkPT.png">
										</li>
										<li class="chk_tit_IMG">
											<b>개인신용</b>과 <b>본인 명의 동산 담보</b>를 이용한 대출을 원하는 차입자입니다.
										</li>
									</ul>	
									<ul class="tab4 grade">
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>신용평가</b><br>
											●&nbsp;●&nbsp;●&nbsp;○&nbsp;○
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>사업성/담보평가</b><br>●&nbsp;●&nbsp;●&nbsp;●&nbsp;●
										</li>
										<li class="gradeIMG col-xs-12 col-sm-4 col-md-4">
											<b>투자자보호</b><br>
											담보물매각을 통한 원금 회수
										</li>
									</ul>
									<ul class="tab4 tabCont">
										<li>
											투자기간은 1개월부터 최대 24개월 까지 가능하며, 차입자의 빠른 자금순환을 통해 비교적 짧은 기간(1개월 ~ 5개월)에 투자금액을 회수할 수 있습니다.
											<br>
										</li>
										<li>
											감정평가업체를 통해 정확한 담보물 감정평가가 이루어지며, 투자기간 동안 담보물이 따로 유용되지 않도록 만기일까지 제 3의 장소 내 격리공간(금고)에 안전하게 보관합니다.
											<br>
										</li>
										<li>
											투자자 보호에 있어 차입자 부실 발생 시 담보물을 경매, 매입보증업체에 매각하여 원금을 회수합니다.
										</li>
									</ul>
								</section>
                      </div>
                      <!-- /col-md-12 -->
                    </div>
                    <!-- /row -->
                  </div>
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
			            </div>
			            <!-- /col-lg-12 -->
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