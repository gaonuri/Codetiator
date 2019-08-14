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
	<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
	
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
#aboutus-banner{
	position: relative;
	overflow: hidden;
	background: url(/images/common/common_banner_title.jpg) center 0% no-repeat;
	background-color:#712594;
	background-size: 100%;
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	color: #fff;
	height: 430px;
}
@media (max-width: 767px) {
	#aboutus-banner{
		height: 256px;
	}
}

.section-cont01 .section-cont02{
	margin: 30px 0px;
	text-align:left;
}

#section-content {
	padding: 50px 0 111px 0;
	margin-left:175px;
}

#section-content .wrap {
	padding: 10px 0;
}

#section-content .wrap .box {
	border-style: solid;
	border-width: 1px;
	padding: 30px;
	border-color: #d9d9de;
	background-color: #fff;
	box-shadow: 0px 4px 10px -4px grey;
}

@media (max-width: 767px) {
	#section-content .wrap .box {
		padding: 10px;
	}
}

.section-subtitle{
	text-align:left;
}

.section-subtitle-line{
	font-size: 20px;
	font-weight: 800;
	letter-spacing:-1px;
	line-height:1.1;
	color: #777;
	margin-bottom: 10px;
	margin-top: 30px;
}

.section-subtitle-line b{
	color:#712594;
	font-weight:800;
}



#aboutus-banner .section-body{
	color: #fff;
	position: relative;
	padding: 200px 20px 0px 20px;
	text-shadow:1px 2px 2px #444;
}

@media (max-width: 767px) {
	#aboutus-banner .section-body{
		padding: 120px 20px 0px 20px;
	}
}

#aboutus-banner .notice-title{
	color: #FFF;
	font-weight:500;
	font-size:26pt;
	line-height:1.2;
	text-shadow:2px 2px 2px #555;
}

@media (max-width: 767px) {
	#aboutus-banner .notice-title{
		font-size:21pt;
		line-height:1.2;
		text-shadow:2px 2px 2px #555;
	}
}

#aboutus-banner .aboutus-title{
	color: #FFF;
	font-weight:500;
	text-shadow:1px 2px 3px #555;
	letter-spacing:-0.5pt;
	font-size: 26pt;
	line-height:1.3;
}

@media (max-width: 767px) {
	#aboutus-banner .aboutus-title{
		font-size:24px;
		line-height:1.2;
		text-shadow:1px 2px 3px #555;
	}
}


.row{
	width:100%;
	max-width:970px;
	margin:0 auto;	
	padding-left:0;
	padding-right:0;
}

.section-title {
	font-size: 24px;
	font-weight: 800;
	color: #444;
	letter-spacing:-1px;
	border-bottom-style: solid;
	border-bottom-width: 2px;
	border-bottom-color: #333333;
	padding: 30px 0 10px;
	margin-bottom: 10px;
	margin-top:50px;
}

@media (max-width: 767px) {
	.section-title {
		font-size: 24px;
		padding: 20px 0 10px;
	}
}

.section-subtitle {
	font-size: 24px;
	font-weight: 800;
	letter-spacing:-1px;
	line-height:1.1;
	color: #666;
	margin-bottom: 20px;
	margin-top: 20px;
}

.section-subtitle-line{
	font-size: 24px;
	font-weight: 800;
	letter-spacing:-1px;
	line-height:1.1;
	color: #777;
	margin-bottom: 10px;
	margin-top: 30px;
}

.section-subtitle-line b{
	color:#712594;
	font-weight:800;
}

@media (max-width: 767px) {
	.section-subtitle {
		font-size: 21px;
		/*padding: 20px 0 10px;*/
		margin-top: 20px;
	}
}

.section-value {
	font-size: 42px;
	font-weight: 700;
	color: #555555;
	letter-spacing:-3px;
	text-align: right;
	border-bottom: solid 1px;
	margin-bottom: 10px;
}

.section-unit{
	font-size: 20px;
	font-weight: 600;
	color: #888;
	letter-spacing:-1px;
	line-height:1.2;
}


@media (max-width: 767px) {
	.section-unit {
		font-size: 18px;
		line-height:1.3;
	}
}

.section-unit-c{
	font-size: 20px;
	font-weight: 600;
	color: #777;
	letter-spacing:-1px;
	line-height:1.1;
	text-align:center;
	margin-bottom:70px;
}

.section-unit-c b{
	font-size:22px;
	font-weight:800;
	color:#333;
	line-height:1.1;
	padding-bottom:10px;
}


.img_tab01_1_1 img{
	width:100%;
}


.tab01_3_1 img{
	padding:60px 0;
}

.tab01_3_2{
	margin-bottom:60px;
}

.tab01_3_2 img{
	margin:60px AUTO;
	height:120px;
}

.tab01_3_3 .section-unit b{
	font-size: 20px;
	font-weight: 800;
	color: #333;
	letter-spacing:-1px;
	line-height:1.2;
	margin-bottom:10px;
}

.tab01_3_3 img{
	padding:50px 0;
}

.img_tab01_4_1 img{
	border:1px solid #e9e9e9;
	padding:5px;
}
/*timelineSection*/
	#timeline_banner{
		width:100%;
		height:100%;
	}
	.main_timelineSection{
	padding-bottom:40px;
	}
	#timelineImgS{
		background-color:#fafafa;
		border:1px solid #d9d9d9;
		margin:0 auto;
	}
	.xd_on {
		display: block;
	}	
	
	.xd_off {
		display: none;
	}
	
	@media (max-width: 767px) {
		.xd_on {
			display: none;
		}	
	
		.xd_off {
			display: block;
		}
	}	
	

.img_tab02_2{
	overflow:hidden;
}

.img_tab02_2 img{
	float:left;
	margin:10px 0 20px 0;
}

.img_tab2-2clr{
	
}

@media (max-width: 767px) {
	.img_tab02_2 img{
		max-width:145px;
	}
}

.img_tab02_1_1 img{
	margin:20px 0 40px 0;
}

.img_tab02_3_1{
	overflow:hidden;
	max-width:500px;
}

.img_tab02_3_1 img{
	float:left;
	margin-top:40px;
	margin-bottom:40px;
}

.tab2-2-1{
	margin-bottom:40px;
}
.tab2-2-2{
	margin-bottom:40px;
}


.owl-carousel img{
	max-width:150px;
	display:block;
	margin-left:auto;
	margin-right:auto;
	padding-bottom:15px;
}

.aboutus{
	margin-bottom:100px;	
}

.item {
	max-width:100%;
	margin-top:60px;
	margin-bottom:60px;
	text-align:center;
}

.team_name{
	font-size: 20px;
	font-weight: 800;
	color: #333;
	letter-spacing:-1px;
	line-height:1.2;
	margin-bottom:10px;
} 

.team_title{
	font-size: 17px;
	font-weight: 600;
	color: #333;
	letter-spacing:-1px;
	line-height:1.2;
	margin-bottom:12px;
} 

.team_job{
	font-size: 20px;
	font-weight: 800;
	color: #777;
	letter-spacing:-1px;
	line-height:1.2;
	margin-bottom:10px;
} 

.team_comment{
	/*
	font-size: 17px;
	font-weight: 600;
	color: #777;
	letter-spacing:-1px;
	line-height:1.2;
	*/
	display:none;
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
	    
		<!-- **********************************************************************************************************************************************************
			MAIN CONTENT
			*********************************************************************************************************************************************************** -->
		<!--main content start-->
		
	<section id="aboutus-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<span class="aboutus-title">사람과 게임을 연결하는<br>FUN한 펀딩<br></span>
			</div>
		</div>
	</section>
		
<section id="section-content">
		<div class="container">
		<div class="col-lg-10">
			<div role="tabpanel">
				<div class="tabbable-panel">
					<div class="tabbable-line">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist" id="abouUsTab">
							<li role="presentation" class="active">
								<a href="#aboutUsTab" aria-controls="aboutUs" role="tab" data-toggle="tab" id="aboutUs">
									회사소개
								</a>
							</li>
						</ul>
						
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="aboutUsTab">
								<div class="wrap" style="padding-top: 0px;">
									<div class="box">
										<!-- whoWeAre Section
										==========================================-->
										<div class="row">
											<div class="col-md-12">
												<div class="section-title">
													01 &nbsp;&nbsp;&nbsp;소개
												</div>
											</div>
											<div class="clearfix"></div>
											<div class="col-xs-12 col-md-12 section-cont">
												<!-- 
												<div class="img_tab01_1_1">
													<img src="/images/info/aboutus/img_aboutus_tab01_1_1.png" class="img-responsive center-block">
												</div> 
												-->
												<div class="section-subtitle">
													사람과 게임을 연결하는 재밌는 펀딩, CREATOR
												</div>
												<div class="section-unit">
													CREATOR는 금융 IT 기업으로 사람과 게임을 연결하는 크라우드 펀딩 입니다. 
													부동산, 동산, 신용 투자 등에 이르기까지 업계 최초의 게임펀딩을 바탕으로 
													양극화 된 금융시장에서 조금은 다른 새로운 금융 대안을 제시하며, 나아가 
													"즐거움과 행복한 삶을 위한 건강한 금융"을 위해 지속적인 발전을 추구하고 있습니다.	
												</div>
											</div>
										</div>
										
									
										<!-- <div id="video_bg" style="position: relative;" data-vide-bg="mp4: https://www.midrate.co.kr/img/videos/Internet Cafe - 156.mp4, poster: /images/info/img_mission_bg.jpg" data-vide-options="loop: true, position: 0% 50%"> -->
										<div class="row">
											<div class="col-md-12">
												<div class="section-title">
													02 &nbsp;&nbsp;&nbsp;추구함
												</div>
											</div>
											<div class="clearfix"></div>
											<div class="col-xs-12 col-md-12 section-cont">
												<div class="section-subtitle">
													CREATOR는 현재의 금융과 다른 서비스 제공을 통해 고객의 삶에 행복을 더합니다.
												</div>
												<div class="section-unit">
													Our mission is to enhance current financial services and establish how people can turn opportunities into reality.	
												</div>
											</div>
										</div>
									
										<div class="row">
											<div class="col-md-12">
												<div class="section-title">
													03 &nbsp;&nbsp;&nbsp;하는 일
												</div>
											</div>
											<div class="clearfix"></div>
											<div class="col-xs-12 col-md-12 section-cont">
												<div class="section-subtitle-line">
													<b>|</b>&nbsp;&nbsp;&nbsp;구도
												</div>
												<div class="tab01_3_1">
													<img src="/images/info/aboutus/img_aboutus_tab01_3_1.png" class="img-responsive center-block">
												</div>
												
												<div class="">
													<div class="section-subtitle-line">
														<b>|</b>&nbsp;&nbsp;&nbsp;비전
													</div>
													<div class="col-xs-12 col-md-4">
														<div class="tab01_3_2">
															<img src="/images/info/aboutus/img_aboutus_tab01_3_2_1.png" class="img-responsive center-block">
														</div>
														<div class="section-unit-c">
															<b>Change the Outdated<br>Banking System</b>
														</div>
													</div>
													<div class="col-xs-12 col-md-4">
														<div class="tab01_3_2">
															<img src="/images/info/aboutus/img_aboutus_tab01_3_2_2.png" class="img-responsive center-block">
														</div>
														<div class="section-unit-c">
															<b>Be Smart with the<br>World Wide</b>
														</div>
													</div>
													<div class="col-xs-12 col-md-4">
														<div class="tab01_3_2">
															<img src="/images/info/aboutus/img_aboutus_tab01_3_2_3.png" class="img-responsive center-block">
														</div>
														<div class="section-unit-c">
															<b>Make a better<br>Financial Environment</b>
														</div>
													</div>
												</div>			
											</div>
											
										</div>
										
										<div class="row">
											<div class="col-md-12">
												<div class="section-title">
													04 &nbsp;&nbsp;&nbsp;연혁
												</div>
											</div>
											<div class="clearfix"></div>
											
											<section id="timeline_banner" class="section-cont">
												<div class="container-fluid main_timelineSection">
													<div class="row">
														<div id="timeline_txt" class="xd_on col-xs-12 col-sm-12 col-md-12 img_tab01_4_1">
															<img id="timelineImgL" src="/images/mainV2/main_timelineOnly_ImgL.png" class="img-responsive" alt="크리에이터주요연혁">
														</div>
													</div>
												</div>
											</section>
										</div>
										
									<div class="col-md-12">
										<div class="section-title">
											05 &nbsp;&nbsp;&nbsp;창업자
										</div>
									</div>										
									<div class="clearfix">
										<div class="col-xs-12 col-md-3">
											<div class="tab01_3_2">
												<img src="/images/info/aboutus/img_aboutus_tab01_3_2_1.png" class="img-responsive center-block">
											</div>
											<div class="owl-item">
											<div class="item">
												<div class="team_name">김도엽</div>
												<div class="team_title"><b>CEO,CFO</b></div>
												<div class="team_job"><b>경영 및 재무 담당</b></div>
											</div>
											</div>
										</div>
										<div class="col-xs-12 col-md-3">
											<div class="tab01_3_2">
												<img src="/images/info/aboutus/img_aboutus_tab01_3_2_2.png" class="img-responsive center-block">
											</div>
											<div class="owl-item">
											<div class="item">
												<div class="team_name">나영주</div>
												<div class="team_title"><b>CEO,CTO</b></div>
												<div class="team_job"><b>경영 및 기술 담당</b></div>
											</div>
											</div>
										</div>
										<div class="col-xs-12 col-md-3">
											<div class="tab01_3_2">
												<img src="/images/info/aboutus/img_aboutus_tab01_3_2_3.png" class="img-responsive center-block">
											</div>
											<div class="owl-item">
											<div class="item">
												<div class="team_name">박태민</div>
												<div class="team_title"><b>CEO,COO</b></div>
												<div class="team_job"><b>경영 및 운영 담당</b></div>
											</div>
											</div>
										</div>	
										<div class="col-xs-12 col-md-3">
											<div class="tab01_3_2">
												<img src="/images/info/aboutus/img_aboutus_tab01_3_2_3.png" class="img-responsive center-block">
											</div>
											<div class="owl-item">
											<div class="item">
												<div class="team_name">이명재</div>
												<div class="team_title"><b>CEO,CIO</b></div>
												<div class="team_job"><b>경영 및 정보 담당</b></div>
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