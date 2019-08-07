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
	$("#investBtn").on("click", function() {
		location.href = "${pageContext.request.contextPath}/invest_guide";
	});
	
	$("#loanReqBtn").on("click", function() {
		location.href = "${pageContext.request.contextPath}/loan_guide"; 
	});
	$("ul.tabs li").click(function () {
		$("ul.tabs li").removeClass("active").css("background-color", "#e9e9e9").css("color","#777");
		$(this).addClass("active").css("background-color", "#623272").css("color","#fff");
		$(".tab_cont").hide()
		var activeTab = $(this).attr("rel");
		$("#" + activeTab).fadeIn()
	});
});
</script>
</head>
<style>
.main-content {
    opacity: 0;
}
.fadeIn {
    -webkit-animation-name: fadeIn;
    animation-name: fadeIn;
}
.animated {
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
div {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    display: block;
}
section, span, h2 {
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
video {
    display: inline-block;
    vertical-align: baseline;
}
body {
    font-family: 'Noto Sans KR', sans-serif;
    line-height: 1.5;
    letter-spacing: -0.6px;
    font-weight: 400;
}
.overlay {
    height: auto;
    background-attachment: fixed;
    /* background: rgba(98,22,98,0.7); */
    background: rgba(71,61,87,0.2);
}
.mainTop_contArea {
    width: 1024px;
    margin: 0 auto;
    overflow: hidden;
    padding: 160px 0 40px 0;
    font-weight: 300;
}
.mainTop_cont {
    /* width: 50%; */
    float: right;
    overflow: hidden;
    padding-bottom: 20px;
    /* border: 1px solid #fff; */
}
.mainTop_txt {
    margin: 0 auto;
    /* text-shadow: 0px 1px #555, 1px 1px 0px #777; */
    color: #fff;
}
.mainTop_txt li {
    line-height: 1;
}
.mtTxt_top {
    font-size: 27px;
    margin-left: 24px;
    font-weight: 400;
    padding-top: 15px;
    letter-spacing: -1.6pt;
}
.mtTxt_bottom {
    font-size: 100pt;
    font-weight: 100;
    font-style: italic;
    letter-spacing: -6pt;
}
.mt_txt_sm {
    font-size: 70pt;
    margin-left: 10px;
    vertical-align: baseline;
}
.mainTop_btn {
    width: 190px;
    height: 34px;
    float: left;
    margin-right: 16px;
    margin-top: 30px;
}
.mr-blue {
    height: 30px;
    line-height: 30px;
    font-size: 14px;
    border-radius: 5px;
    color: #fff;
    background-color: #00A0DC;
    text-align: center;
    font-weight: 500;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
}
.mr-cap {
    width: 20px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    color: #fff;
    background-color: #01709B;
    float: right;
    height: 100%;
}
.mr-angle {
    margin-right: -10px;
    width: 20px;
    color: #fff;
    background-color: #01709B;
    text-align: right;
    float: right;
    transform: skew(-20deg);
    -webkit-transform: skew(-20deg);
    -ms-transform: skew(-20deg);
    height: 100%;
}
.mr-angle p {
    color: #fff;
}
.mr-green {
    height: 30px;
    line-height: 30px;
    font-size: 14px;
    border-radius: 5px;
    color: #fff;
    background-color: #01C351;
    text-align: center;
    font-weight: 500;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
}
.mr-green .mr-cap {
    color: #fff;
    background-color: #02863A;
}
.mr-green .mr-angle {
    color: #fff;
    background-color: #02863A;
}
.main_summary_full {
    background-color: rgba(0,0,0,0.2);
    color: #fff;
}
.main_summary {
    width: 1024px;
    margin: 0 auto;
    padding: 25px 0;
    text-align: center;
    color: #fff;
}
.main_summary ul {
    width: 24%;
    display: inline-block;
    text-align: center;
    line-height: 1.2;
}
ul, li {
    list-style-type: none;
}
ul {
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
li {
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    display: list-item;
    text-align: -webkit-match-parent;
}
.summary_tit {
    font-weight: 500;
    font-size: 16px;
}
.summary_num {
    font-size: 36px;
    font-weight: 400;
}
a:link, a:visited {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}
a {
    background-color: transparent;
}
.day {
    width: 100%;
    background-color: #f9f9f9;
    margin: 0 auto;
}
.display-none {
    display: none;
}
.invGoodsArea {
    width: 100%;
    margin: 0 auto;
    background-color: #f9f9f9;
}
.sectionTit {
    font-size: 21pt;
    text-align: center;
    padding-top: 80px;
    padding-bottom: 60px;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.titLine {
    padding-top: 8px;
    padding-bottom: 10px;
}
.main_investGoods .section-cat {
    text-align: right;
}
.section-cat {
    max-width: 1140px;
    margin: 0 auto;
}
.main_investGoods #allGood {
    padding: 0 20px;
    font-size: 15px;
    font-weight: 500;
    color: #555;
}
.glyphicon {
    position: relative;
    top: 1px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.main_investGoods #goodThum {
    max-width: 1140px;
    overflow: hidden;
    margin: 0 auto;
    padding: 0 0 80px 0;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.main_investGoods .good-item-wrap {
    padding-right: 10px;
    padding-left: 10px;
}
.col-lg-4 {
    width: 33.33333333%;
    float: left;
}
@media (min-width: 992px)
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}
@media (min-width: 768px)
.col-sm-6 {
    width: 50%;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.main_investGoods .good-item {
    background-color: #fff;
    max-width: 380px;
    margin: 10px auto;
    border: 1px solid #dadada;
    border-radius: 4px;
    height: 326px;
    box-shadow: 9px 13px 26px -8px #dadada;
}
.main_investGoods .good-item .item-top {
    height: 147px;
    overflow: hidden;
    position: relative;
    background-color: #fff;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-bottom-color: #eee;
}
.main_investGoods .item-top .hover-text {
    position: absolute;
    color: #ffffff;
    background: rgba(0, 0, 0, 0.3);
    opacity: 0;
    transition: all 0.5s;
    padding: 80px 100px;
    width: 100%;
    text-align: center;
    z-index: 9999;
    letter-spacing: -1pt;
}
.main_investGoods .item-top .hover-button {
    font-weight: 500;
    color: #fff;
    font-size: 25px;
}
.main_investGoods .item-top .item-top-badge {
    position: absolute;
    height: 41px;
    top: 0%;
    width: 100%;
    padding: 10px;
    color: #fff;
    font-weight: 500;
}
.label-rwrdgd {
    color: #fff;
    background-color: #fc576e;
}
.main_investGoods .item-top .item-top-badge span.label {
    border-style: solid;
    border-width: 1px;
    border-color: rgba(97,3,97, 0.3);
}
.text-right {
    text-align: right;
}

.main_investGoods .item-top .item-top-badge span.label.label-primary.flash {
    animation-duration: 3s;
}
.main_investGoods .item-top .item-top-badge span.label.label-primary {
    color: #712594;
    background-color: #fff;
}
.main_investGoods .item-top .item-top-badge span {
    border-radius: 16px;
    padding: 2px 7px;
}
.main_investGoods .item-top .item-middle-badge {
    position: absolute;
    top: 45%;
    width: 100%;
    margin-left: 20px;
    color: #fff;
    font-size: 20px;
}
.main_investGoods .item-top .item-middle-badge img {
    max-height: 20px;
    max-width: 20px;
    vertical-align: text-top;
}
.main_investGoods .item-top img {
    width: 100%;
    height: 148px;
}
img {
    vertical-align: middle;
    border: 0;
}
html, body, div, ul, li, a, header, footer, section, article, nav, p, span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
.main_investGoods .item-top .item-bottom-badge {
    position: absolute;
    top: 70%;
    width: 100%;
    padding: 10px;
    color: #fff;
    font-weight: 500;
    font-size: 12px;
}
.main_investGoods .item-bottom {
    text-align: center;
    padding: 5px 10px;
    position: relative;
}
.main_investGoods .item-bottom .item-bottom-text {
    color: #333;
    text-align: left;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.main_investGoods .item-bottom h5 {
    font-size: 14px;
    color: #3d3d3d;
    margin: 10px 0;
}
.main_investGoods .item-bottom h4 {
    margin-top: 0px;
    margin-bottom: 15px;
    font-weight: 600;
    color: #3d3d3d;
    font-size: 17px;
}
.main_investGoods .item-bottom .progress {
    margin-top: 26px;
    margin-bottom: 0px;
    height: 15px;
}
.progress {
    height: 20px;
    margin-bottom: 20px;
    overflow: hidden;
    background-color: #f5f5f5;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}
.main_investGoods .item-bottom .progress-bar {
    background-color: #712594;
    line-height: 15px;
    -webkit-animation-direction: reverse;
    -moz-animation-direction: reverse;
    -ms-animation-direction: reverse;
    -o-animation-direction: reverse;
    animation-direction: reverse;
}
.main_investGoods .item-bottom .item-top-text-num {
    text-align: right;
    font-weight: 500;
    display: none;
}
small, .small {
    font-size: 85%;
}
.grade {
    text-align: center;
    display: inline-block;
    padding: 5px 0px;
    width: 13%;
}
.circle {
    width: 40px;
    height: 40px;
    border-radius: 20px;
    -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    -ms-border-radius: 20px;
    -khtml-border-radius: 20px;
    -o-border-radius: 20px;
    background: #712594;
    color: #fff;
    text-align: center;
    position: absolute;
    bottom: 14px;
    left: 15px;
    padding: 10px 0;
}
.main_investGoods .item-bottom .cat {
    text-align: center;
    display: inline-block;
    padding: 5px 0px;
    width: 20%;
}
.main_investGoods .item-bottom .cat .title {
    font-size: 12px;
    padding-bottom: 5px;
    color: #777;
    font-weight: 500;
}
.main_investGoods .item-bottom .cat .sub {
    font-size: 12px;
    font-weight: 500;
    color: #333;
}
.main_investGoods .item-bottom hr {
    margin-top: 10px;
    margin-bottom: 10px;
        border: 0;
    border-top: 1px solid #eee;
}
.main_invLoanSection {
    width: 100%;
}
.tab_tit {
    overflow: hidden;
    text-align: center;
    font-size: 15pt;
    font-weight: 600;
}
.tab_tit li {
    height: 80px;
    text-align: center;
    vertical-align: middle;
    line-height: 4;
}
.tabInv_Tit {
    float: left;
    background-color: #623272;
    color: #fff;
    width: 50%;
}
.tabLoan_Tit {
    float: right;
    background-color: #e9e9e9;
    width: 50%;
}
.tab_cont {
    height: 100%;
    background: url(${pageContext.request.contextPath}/resources/img/main_triangles.png)no-repeat;
    background-size: cover;
    padding-bottom: 100px;
    background-attachment: fixed;
}
.tab_aboutInv_cont {
    height: 100%;
    overflow: hidden;
}
.tab_aboutIMG_container {
    width: 1024px;
    margin: 0 auto;
}
.tab_aboutIMG_text {
    text-align: center;
    font-size: 16pt;
    padding-top: 50px;
    color: #fff;
    line-height: 1.3;
    margin-top: 40px;
}
.tab_aboutIMG_container ul {
    float: left;
    width: 25%;
    text-align: center;
    letter-spacing: -1;
    padding: 5% 0;
}
.tab_inv_num {
    font-size: 27pt;
    font-weight: 400;
    color: #00a0dc;
}
.tab_invList_tit {
    color: #00a0dc;
    font-size: 16pt;
    font-weight: 500;
    letter-spacing: -1;
    padding: 15px 0;
}
.tab_list_cont {
    color: #fefefe;
    line-height: 1.4;
}
.col-md-push-3 {
    left: 25%;
}
.col-md-3 {
    width: 25%;
}
.mainTap_invBtn, .mainTap_loanBtn {
    width: 220px;
    height: 30px;
    border-radius: 5px;
    font-weight: 500;
    text-align: center;
    margin-top: 30px;
}
.mr-blue-secondary {
    color: #00A0DC;
    background-color: #fff;
    line-height: 30px;
    font-size: 14px;
    margin-left: auto;
    margin-right: auto;
}
.mr-blue-secondary .mr-angle, .mr-blue-secondary .mr-cap {
    color: #fff;
    background-color: #01709B;
}
.mr-blue-secondary .mr-cap {
    border-radius: 3px;
}
.mr-green-secondary {
    color: #01C351;
    background-color: #fff;
    margin-left: auto;
    margin-right: auto;
    line-height: 30px;
    font-size: 14px;
}
.mr-green-secondary .mr-cap {
    color: #fff;
    background-color: #02863A;
}
.mr-green-secondary .mr-cap {
    border-radius: 3px;
}
.mr-green-secondary .mr-angle, .mr-green-secondary .mr-cap {
    color: #fff;
    background-color: #02863A;
}
.mr-angle div {
    transform: skew(30deg);
    -webkit-transform: skew(30deg);
    -ms-transform: skew(30deg);
}
.tab_loan_num {
    font-size: 27pt;
    font-weight: 400;
    color: #01c351;
}
.tab_loanList_tit {
    color: #01c351;
    font-size: 16pt;
    font-weight: 500;
    letter-spacing: -1;
    padding: 15px 0;
}
.tab_aboutLoan_cont {
    height: 100%;
    overflow: hidden;
}
</style>
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
		<!--header start-->
			<%@ include file="../header_new.jsp" %>
		<!--header end-->
	    
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
<div id="main_container" class="animated">
		
	<!-- F/O, wow 공통 jsp -->
	 
		
		<section class="">
		
			<div id="video_bg" style="position: relative;">
				<div style="position: absolute; z-index: -1; top: 0px; left: 0px; bottom: 0px; right: 0px; overflow: hidden; background-size: cover; background-color: transparent; background-repeat: no-repeat; background-position: 50% 50%; background-image: none;">
					<video autoplay loop muted="" style="margin: auto; position: absolute; z-index: -1; top: 50%; left: 50%; transform: translate(-50%, -50%); visibility: visible; opacity: 1; width: auto; height: auto;">
						<source src="${pageContext.request.contextPath}/resources/video/overwatch.mp4" type="video/mp4">
					</video>
				</div>
		
				<div class="overlay">
					<div class="mainTop_contArea">
						<div class="mainTop_cont">
							<ul class="mainTop_txt">
								<li class="mtTxt_top">평균 금리</li>
								<li class="mtTxt_bottom">
									<span id="totalAvgInvestRate" class="roboto">13.29</span><span class="mt_txt_sm">%</span>
								</li>
							</ul>
							<div class="mr-blue mainTop_btn" id="investBtn" style="width: 190px; height: 34px; margin-right: 16px;">
								투자하기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
							<div class="mr-green mainTop_btn" id="loanReqBtn" style="width: 190px; height: 34px;">
								대출받기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
						</div>
					</div>
					<div class="mainBottom_contArea">
						<div class="mainBottom_cont">
							<div class="main_summary_full">
								<div class="main_summary text-center">
									<div style="font-size:18px;" id="runDays">서비스 시작 이후 <storng>1,153</storng>일째</div>
									<div style="padding:0 0 5px 0;">
										<span id="display_clock">2019-08-06 10:59:45</span>
									</div>
									<ul class="summary_cont03">
										<li class="summary_tit">누적대출액</li>
										<li class="summary_num"><span id="totalLoanRepayAmt">340.90</span><span class="ms_txt_sm">억 원</span></li>
									</ul>
									<ul class="summary_cont04">
										<li class="summary_tit">대출잔액</li>
										<li class="summary_num"><span id="totalLoanRestAmt">88.75</span><span class="ms_txt_sm">억 원</span></li>
									</ul>
									<ul class="summary_cont01">
										<li class="summary_tit">
											상환률
										</li>
										<li class="summary_num"><span id="repayRate">73.97</span><span class="ms_txt_sm">%</span></li>
									</ul>
									<ul class="summary_cont02">
										<li class="summary_tit">
											연체율 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="연체기준 : 약정된 상환이 일부 혹은 전부 지연되기 시작해 30일 이상 경과한 대출"></span>
										</li>
										<li class="summary_num">
											<span id="delayRate">3.38</span><span class="ms_txt_sm">%</span>
										</li>
										<div class="text-center" style="font-size:10px;">
											<a id="openDelayLoanListA" href="javascript:(void(0));" onclick="fn_openDelayLoanListModal();" class="display-none" style="display: inline;">
												연체 중 상품보기 &gt;
											</a>
										</div>
									</ul>
									<!-- 
									<ul class="summary_cont02 display-none">
										<li class="summary_tit">
											부실률 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;"
													tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover"
													title="부실기준 : 약정된 상환이 일부 혹은 전부 지연되기 시작해 90일 이상 경과한 대출"></span>
										</li>
										<li class="summary_num"><span id="bnkrpRate"></span><span class="ms_txt_sm">%</span></li>
									</ul>
									 -->
								</div>
								<div class="day display-none">
									<div class="dayCont" style="text-align:center;">
										<a href="/info/noticeDetail/" target="_blank">
											<p><span>[공지사항]</span></p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- "main_eventSection" Area End
		=============================================-->


		<!-- "main_investGoods" Area Start
		=============================================-->
		<section class="invGoodsArea">
			<div class="main_investGoods ">
				<h2 class="sectionTit">
					<span class="titLine">투자상품</span>
				</h2>
				<div class="section-cat">
						<a href="${pageContext.request.contextPath}/invest_guide" id="allGood">
							전체상품 보기 <i class="glyphicon glyphicon-chevron-right"></i>
						</a>
				</div>
				<div class="row" id="goodThum"><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">
				<div class="good-item">	
				<div class="item-top">		
				<a href="javascript:(void(0));" onclick="fn_openInvestDetail(791)">	
							<div class="hover-text">	
								<div class="clearfix"></div>	
								<div class="hover-button"></div>
							</div>	
				</a>	
				<div class="item-top-badge">			
					<span class="label label-rwrdgd">리워드</span>			
				</div>			
				<div class="item-top-badge text-right">		
					<span class="label label-primary animated infinite flash">모집중</span>			
				</div>		
				<div class="item-middle-badge">	
					<div style="display: inline-block;">오버워치
					</div>		
					<div style="display: inline-block;">
						
					</div>		
				</div>			
				<div class="item-bottom-badge text-right">			
					<span>자동투자 100%</span>			
				</div>	
					<img src="${pageContext.request.contextPath}/resources/img/overwatch.jpg">		
				</div>		
				<div class="item-bottom">			
				<div class="item-bottom-text">				
				<div class="row">					
				<div class="col-xs-6">						
				<h5>02-19-42</h5>					
				</div>				
				</div>				
				<h4 style="text-align:center;">[하이퍼 FPS] 오버워치(3차)</h4>				
				<div class="progress">				
				<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="47" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 47%">						47%					
				</div>				
				</div>				
				<div class="item-top-text-num">					
				<small>(209명)</small>				
				</div>			
				</div>			
				<hr>			
				<div class="grade">				
				<div class="circle grade-MA">MA</div>			
				</div>			
				<div class="cat">				
				<div class="title">연 수익률</div>				
				<div class="sub">15.5
				<font size="1">%</font>
				</div>			
				</div>	
						<div class="cat">				
						<div class="title">기간</div>				
						<div class="sub">6<font size="1">개월</font></div>			
						</div>			
						<div class="cat">	
									<div class="title">모집금액</div>				
									<div class="sub">7,000<font size="1">만원</font></div>			
									</div>			<div class="cat">				<div class="title">상환방식</div>				
									<div class="sub">만기일시</div>			</div>		</div>	</div></div>
									<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		
									<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(785)">				
									<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				
									</div>			</a>			<div class="item-top-badge">		<span class="label label-primary">LTV 66.67%</span>			
									</div>			
						<div class="item-top-badge text-right">		
							<span class="label label-primary animated infinite flash">모집중</span>
						</div>		
						<div class="item-middle-badge">			
						<div style="display: inline-block;">리그오브레전드</div>		
						<div style="display: inline-block;">
						</div>		
						</div>			
						<div class="item-bottom-badge text-right">			
							<span>자동투자 100%</span>			
						</div>
							<img src="${pageContext.request.contextPath}/resources/img/LOL.jpg">
						</div>		
						<div class="item-bottom">			
						<div class="item-bottom-text">				
						<div class="row">					
						<div class="col-xs-6">						
						<h5>04-19-131</h5>					
						</div>				
						</div>				
						<h4 style="text-align:center;">[AOS] 리그오브레전드 (2차)</h4>				
						<div class="progress">
						<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="84" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 84%">
												84%					
												</div>				</div>				
												<div class="item-top-text-num">					<small>(267명)</small>
			</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>
						</div>			<div class="cat">				<div class="title">연 수익률</div>				
						<div class="sub">12<font size="1">%</font></div>			</div>			<div class="cat">				
						<div class="title">기간</div>				<div class="sub">9<font size="1">개월</font></div>			
						</div>			<div class="cat">				<div class="title">모집금액</div>				
						<div class="sub">5,000<font size="1">만원</font></div>			</div>			<div class="cat">				
						<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	
						</div></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		
						<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(783)">				
						<div class="hover-text">					<div class="clearfix"></div>
				<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">		
				<span class="label label-primary">LTV 65.82%</span>			</div>			
				<div class="item-top-badge text-right">		
				<span class="label label-primary animated infinite flash">모집중</span>
							</div>		<div class="item-middle-badge">			
							<div style="display: inline-block;">몬스터헌터 월드</div>
							<div style="display: inline-block;">
						</div>		
									</div>			
				<div class="item-bottom-badge text-right">	
					<span>자동투자 100%</span>			
					</div>	
						<img src="${pageContext.request.contextPath}/resources/img/monster.jpg">
					</div>		
					<div class="item-bottom">			
					<div class="item-bottom-text">				
			<div class="row">					<div class="col-xs-6">	
								<h5>04-19-129</h5>					</div>				</div>	
											<h4 style="text-align:center;">[콘솔] 몬스터헌터 월드 (1차)</h4>	
														<div class="progress">	
			<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 22%">
									22%					
							</div>				
							</div>	
							<div class="item-top-text-num">
				<small>(252명)</small>				</div>			</div>			<hr>			
				<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			
				<div class="cat">				<div class="title">연 수익률</div>				
				<div class="sub">14<font size="1">%</font></div>			</div>			<div class="cat">	
							<div class="title">기간</div>				<div class="sub">8<font size="1">개월</font></div>
										</div>			<div class="cat">				<div class="title">모집금액</div>
														<div class="sub">10,000<font size="1">만원</font></div>	
																</div>			<div class="cat">	
																			<div class="title">상환방식</div>				
			<div class="sub">만기일시</div>			</div>		</div>	
			</div></div><div class="clearfix visible-md-block visible-lg-block">
			</div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		
			<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(782)">				
			<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button">
			</div>				</div>			</a>			<div class="item-top-badge">			
			<span class="label label-rwrdgd">리워드</span>			</div>			<div class="item-top-badge text-right">			
			<span class="label label-primary">상환중</span>			</div>		<div class="item-middle-badge">			
			<div style="display: inline-block;">메이플스토리</div>		
			<div style="display: inline-block;">
			</div>		
			</div>			<div class="item-bottom-badge text-right">			
			<span>자동투자 100%</span>			
			</div>	
				<img src="${pageContext.request.contextPath}/resources/img/maple.png">
			</div>		
			<div class="item-bottom">			
			<div class="item-bottom-text">				
					<div class="row">					<div class="col-xs-6">						
					<h5>02-19-41</h5>					</div>				</div>				
					<h4 style="text-align:center;">[MMORPG] 메이플스토리(1차)</h4>				<div class="progress">				
					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">
											100%					</div>				</div>				
											<div class="item-top-text-num">					<small>(186명)</small>				
					</div>			</div>			<hr>			<div class="grade">				
					<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				
					<div class="title">연 수익률</div>				<div class="sub">15<font size="1">%</font></div>			
					</div>			<div class="cat">				<div class="title">기간</div>				
					<div class="sub">6<font size="1">개월</font></div>			</div>			<div class="cat">				
					<div class="title">모집금액</div>				<div class="sub">5,000<font size="1">만원</font></div>			
					</div>			<div class="cat">				<div class="title">상환방식</div>				
					<div class="sub">만기일시</div>			</div>		</div>	</div></div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		
					<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(781)">		
					<div class="hover-text">					<div class="clearfix"></div>					
					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">
							<span class="label label-primary">LTV 47.83%</span>			</div>			
							<div class="item-top-badge text-right">			<span class="label label-primary">상환중</span>			
							</div>		<div class="item-middle-badge">			
					<div style="display: inline-block;">로스트 아크</div>
					<div style="display: inline-block;">
					</div>		
					</div>			
					<div class="item-bottom-badge text-right">			
					<span>자동투자 80%</span>			
					</div>			
						<img src="${pageContext.request.contextPath}/resources/img/lostArk.jpg">
					</div>		
					<div class="item-bottom">			
					<div class="item-bottom-text">				
					<div class="row">					<div class="col-xs-6">						<h5>04-19-128</h5>			
					</div>				
					</div>				
					<h4 style="text-align:center;">[MMORPG] 로스트 아크 (1차)</h4>
									<div class="progress">				
					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">
											100%					</div>				</div>				
											<div class="item-top-text-num">					<small>(140명)</small>				
											</div>			</div>			<hr>			<div class="grade">				
											<div class="circle grade-MA">MA</div>			</div>			<div class="cat">
					<div class="title">연 수익률</div>				<div class="sub">12<font size="1">%</font></div>			
					</div>			<div class="cat">				<div class="title">기간</div>				
					<div class="sub">8<font size="1">개월</font></div>			</div>			<div class="cat">				
					<div class="title">모집금액</div>				<div class="sub">1,000<font size="1">만원</font></div>			
					</div>			<div class="cat">				<div class="title">상환방식</div>				
					<div class="sub">만기일시</div>			</div>		</div>	
					</div></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap mobile-hide">	
					<div class="good-item">		<div class="item-top">			
					<a href="javascript:(void(0));" onclick="fn_openInvestDetail(780)">				
					<div class="hover-text">					<div class="clearfix"></div>					
					<div class="hover-button"></div>				</div>			</a>			
					<div class="item-top-badge">		<span class="label label-primary">LTV 42.55%</span>			</div>			
					<div class="item-top-badge text-right">			<span class="label label-primary">상환중</span>			
					</div>		<div class="item-middle-badge">			
					<div style="display: inline-block;">모두의 마블</div>		
					<div style="display: inline-block;">
					</div>		
					</div>			
					<div class="item-bottom-badge text-right">			
					<span>자동투자 75%</span>			
					</div>	
						<img src="${pageContext.request.contextPath}/resources/img/marble.png">	
					</div>		
					<div class="item-bottom">			
					<div class="item-bottom-text">				
							<div class="row">					<div class="col-xs-6">						
							<h5>04-19-127</h5>					</div>				</div>				
							<h4 style="text-align:center;">[모바일] 모두의 마블(2차)</h4>				
							<div class="progress">				
					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">
							100%					</div>				</div>				<div class="item-top-text-num">
					<small>(127명)</small>				</div>			</div>			<hr>			<div class="grade">
									<div class="circle grade-MA">MA</div>			</div>			<div class="cat">
													<div class="title">연 수익률</div>				
					<div class="sub">13<font size="1">%</font></div>			</div>			<div class="cat">				
					<div class="title">기간</div>				<div class="sub">6<font size="1">개월</font></div>			
					</div>			<div class="cat">				<div class="title">모집금액</div>				
					<div class="sub">2,000<font size="1">만원</font></div>			</div>			<div class="cat">				
					<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	
					</div></div><div class="clearfix visible-md-block visible-lg-block"></div></div>
					
			</div>
		</section>
		<!-- "main_investGoods" Area End
		=============================================-->


		<!-- "main_invLoanSection" Area Start
		=============================================-->
		<section class="main_invLoanSection" style="height: 658px;">
			<ul class="tab_tit tabs">
				<li class="tabInv_Tit active" rel="tab1">투자하고 싶으세요?</li>
				<li class="tabLoan_Tit" rel="tab2">대출받고 싶으세요?</li>
			</ul>
			<div id="tab1" class="tab_cont tab_aboutInv_cont" style="display: block;">	
				<div class="tab_aboutIMG_container">
					<p class="tab_aboutIMG_text">크리에이터의 투자는 1만원부터 이루어지며, <br>예치금을 이용한 일반/자동투자로 간편하고 빠르게 시작할 수 있습니다.</p>
					<!--
					<ul>
						<li class="tab_aboutInv_Img">
							<img src="/images/mainV2/main_tab_aboutInv_cont01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt="투자절차안내이미지"/>
						</li>
						<li class="tab_aboutInv_Img">
							<img src="/images/mainV2/main_tab_aboutInv_cont02.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt="투자절차안내이미지"/>
						</li>
					</ul>
					-->
					<ul>
						<li class="tab_inv_num roboto"> 1.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_invList_tit">예치금 입금하기</li>
						<li class="tab_list_cont">1분만에 가상계좌 개설 후<br>투자금을 입금하시면<br>예치금으로 충전됩니다.</li>
					</ul>
					<ul>
						<li class="tab_inv_num roboto"> 2.</li>
						<!-- <li class="tab_list_img"> <img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/> </li> -->
						<li class="tab_invList_tit">다양한 투자상품</li>
						<li class="tab_list_cont">원하는 상품에 1만원부터<br>투자하실 수 있습니다.<br>(개인/소상공인/부동산/동산)</li>
					</ul>
					<ul>
						<li class="tab_inv_num roboto"> 3.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_invList_tit">투자내역 확인</li>
						<li class="tab_list_cont">마이페이지에서 투자 채권<br>내역을 확인 가능합니다.<br>(모집완료전에는 취소 가능)</li>
					</ul>
					<ul>
						<li class="tab_inv_num roboto"> 4.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_invList_tit">원리금 상환</li>
						<li class="tab_list_cont">투자하신 상품의 원리금이<br>매 달 예치금으로 충전됩니다.<br>(마이페이지에서 확인)</li>
					</ul>
					 
					<div class="row">
						<div class="col-sm-12 col-sm-push-3 col-sm-3 col-md-push-3 col-md-3">
							<div class="mr-blue-secondary mainTap_invBtn" id="goInvestGuideBtn">
								투자안내가기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
						</div>
						<div class="col-sm-12 col-sm-push-3 col-sm-3 col-md-push-3 col-md-3">
							<div class="mr-blue mainTap_invBtn" id="goInvestBtn">
								투자하러가기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="tab2" class="tab_cont tab_aboutLoan_cont" style="display: none;">
				<div class="tab_aboutIMG_container">
					<p class="tab_aboutIMG_text">크리에이터는 핀테크 기술력과 100% 온라인으로 이루어지는 진행 절차를 통해 <br>비용을 절감하여 이를 합리적인 중금리로 제공합니다.</p>	
					<ul>
						<li class="tab_loan_num roboto"> 1.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_loanList_tit">대출신청하기</li>
						<li class="tab_list_cont">홈페이지를 통해 금융,<br>비금융데이터 및 재직,<br>신상정보를입력합니다.</li>
					</ul>
					<ul>
						<li class="tab_loan_num roboto"> 2.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_loanList_tit">기본정보입력</li>
						<li class="tab_list_cont">전문 신용평가 데이터와<br>내부 Cut-off 기준에 따라<br>1차 심사를 합니다.</li>
					</ul>
					<ul>
						<li class="tab_loan_num roboto"> 3.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_loanList_tit">추가정보입력</li>
						<li class="tab_list_cont">결합등급, 금융데이터와<br>비금융 데이터를 통해<br>2차 심사를 진행합니다.</li>
					</ul>
					<ul>
						<li class="tab_loan_num roboto"> 4.</li>
						<!-- <li class="tab_list_img"><img src="/images/mainV2/reasonIcon01.png;jsessionid=698A9F762E673CBEEC160726B7A07B65" alt=""/></li> -->
						<li class="tab_loanList_tit">최종대출실행</li>
						<li class="tab_list_cont">차입자 입력 정보와<br>심사 결과를 통해<br>최종금리, 한도를 부여합니다.</li>
					</ul>
					
					<div class="row">
						<div class="col-sm-12 col-sm-push-3 col-sm-3 col-md-push-3 col-md-3">
							<div class="mr-green-secondary mainTap_loanBtn" id="goLoanGuideBtn">
								대출안내가기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
						</div>
						<div class="col-sm-12 col-sm-push-3 col-sm-3 col-md-push-3 col-md-3">
							<div class="mr-green mainTap_loanBtn" id="goLoanBtn">
								대출하러가기<span class="mr-cap"></span>
								<span class="mr-angle">
								<div><p>&gt;</p></div>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
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

	<script type="text/javascript">
  /*
	$(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Developed by <a href="http://alvarez.is" target="_blank" style="color:#4ECDC4">Alvarez.is</a>.',
        // (string | optional) the image to display on the left
        image: '${pageContext.request.contextPath}/resources/bootstrap/img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  */
	</script>
	<script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
	</script>
</body>

</html>