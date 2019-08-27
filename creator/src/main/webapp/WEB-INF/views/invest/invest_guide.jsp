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
	<title>CREATOR</title>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
	
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="apple-touch-icon">
	
	<!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!--external css-->
	<link href="${pageContext.request.contextPath}/resources/bootstrap/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/zabuto_calendar.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/gritter/css/jquery.gritter.css" />
	<!-- Custom styles for this template -->
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
#container, #cont01, #cont02, #cont03, #cont04, #cont05, #cont06 {
    width: 100%;
    font-size: 17px;
}
html, body, div, ul, li, a, header, footer, section, article, nav, p, span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
body {
    font-family: 'Noto Sans KR', sans-serif;
    line-height: 1.5;
    letter-spacing: -0.6px;
    font-weight: 400;
}
div {
    display: block;
}
#cont01 {
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png)no-repeat center center fixed;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    width: 100%;
    padding: 70px 0 130px 0;
}
#inv_int_01 {
    width: 100%;
    height: 100%;
    margin: 0 auto;
}
#inv_int_01 {
    font-size: 26pt;
    font-weight: 500;
    color: #712594;
    text-shadow: 1px 1px 1px #834e94;
    letter-spacing: -0.5pt;
    line-height: 1.3;
}
.inv_int_txt {
    width: 500px;
    margin: 0 auto;
}
#inv_int_01 h2 {
    font-size: 26pt;
    color: #fff;
    text-shadow: 1px 1px 1px #333;
    letter-spacing: -0.5pt;
}
.inv_int_tit {
    font-size: 21pt;
    font-weight: 500;
    color: #333;
    margin-top: 86px;
    margin-bottom: 27px;
    text-align: center;
    letter-spacing: -0.2pt;
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
#inv_int_01 ul {
    font-size: 19px;
    font-weight: 400;
}
.ta_cen {
    text-align: center;
    line-height: 1.4;
    color: #fff;
    font-weight: 400;
}
ul {
    list-style-type: none;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
li {
    list-style-type: none;
    display: list-item;
    text-align: -webkit-match-parent;
}
#cont02 {
    width: 100%;
    background-color: #fff;
    padding-top: 40px;
}
#inv_int_02 {
    width: 900px;
    height: 100%;
    margin: 0 auto;
}
#inv_int_02 h3 {
    width: 60%;
    margin-left: 20%;
    color: #555;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.investIconSet {
    overflow: hidden;
}
.investIconSet > li {
    float: left;
    width: 24%;
    font-size: 13pt;
    color: #555;
    font-weight: 600;
    text-align: center;
    vertical-align: middle;
    line-height: 3;
    letter-spacing: -0.2pt;
    background: rgba(197,188,231,0.5);
    margin: 0.5%;
    margin-bottom: 14px;
}
.investIconSet a:active, .investIconSet a:hover, .investIconSet a:link, .investIconSet a:active {
    text-decoration: none;
}
a:link, a:visited {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.topContents {
    margin: 0 auto;
    border-radius: 5px;
    margin-bottom: 100px;
}
#tab_01, #tab_02, #tab_03, #tab_04 {
    height: 100%;
    margin: 0 auto;
    box-shadow: 0px 0px 6px #c3c3c3;
}
#tab_01 section, #tab_02 section, #tab_03 section, #tab_04 section {
    width: 90%;
    height: 100%;
    margin: 0 auto;
    letter-spacing: -0.7pt;
    padding-bottom: 60px;
}
header, section, footer, article, nav {
    display: block;
}
.tabTit {
    overflow: hidden;
    padding: 40px 0 10px 0;
}
.tabTit li {
    float: left;
}
.chkIMG {
    width: 22%;
    max-width: 170px;
    padding: 6px 12px 6px 0;
}
.topContents img {
    width: 100%;
    display: inline-block;
    margin: 0 auto;
    /* padding: 60px 0 60px 0; */
}
.chk_tit_IMG {
    width: 76%;
    font-size: 27px;
    color: #555;
    letter-spacing: -0.4pt;
}
.grade {
    text-align: center;
}
.grade > li {
    padding-top: 20px;
    padding-bottom: 20px;
    margin-top: 30px;
    margin-bottom: 30px;
}
.col-md-4 {
    width: 33.33333333%;
}
.grade > li > b {
    font-size: 19px;
    font-weight: 800;
    color: #be74be;
}
.tabCont {
    width: 100%;
    margin: 0 auto;
    line-height: 1.6;
    font-size: 18px;
}
.bgGR {
    background: rgba(197,188,231,0.6);
    overflow: hidden;
    height: 100%;
    padding-bottom: 20px;
    margin: 40px 0;
}
.bgGRTit {
    width: 100%;
    text-align: center;
    display: inline-block;
    font-size: 15pt;
    font-weight: 500;
    letter-spacing: -1pt;
    padding-top: 30px;
    margin-bottom: 30px;
}
.bgGR li {
    display: inline-block;
    text-align: center;
    margin-left: 9%;
    margin-bottom: 16px;
}
.bgGRcircle {
    width: 160px;
    height: 30px;
    letter-spacing: -1pt;
    border-radius: 15pt;
    text-align: center;
    background-color: #6d2a80;
    color: #fff;
}
.mg20 {
    margin-left: 10px;
}
b, strong {
    font-weight: bold;
}
.lsTxt {
    letter-spacing: -1pt;
}
#cont03 {
    background: url(${pageContext.request.contextPath}/resources/img/invGuide_cont03_bg.png)no-repeat center top fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
#inv_int_03 {
    width: 900px;
    height: 100%;
    margin: 0 auto;
    text-align: center;
}
#inv_int_03 h3 {
    width: 80%;
    margin: 0 auto;
    padding: 80px 0 40px 0;
    color: #fff;
}
.txtArea03 {
    padding: 0 0 80px 0;
    color: #fff;
    font-weight: 400;
    font-size: 14pt;
}
#inv_int_04 {
    width: 900px;
    height: 100%;
    margin: 0 auto;
    text-align: center;
}
#inv_int_04 h3 {
    width: 90%;
    margin: 0 auto;
    padding: 80px 0 40px 0;
    color: #333;
}
.txtArea04 {
    color: #666;
    font-size: 18px;
    font-weight: 500;
    letter-spacing: -0.2pt;
}
.txtArea04 li:first-child {
    color: #712594;
    font-size: 14pt;
    font-weight: 800;
    padding-bottom: 40px;
    padding-top: 40px;
}
#inv_int_04 .mainTop_btn {
    margin-bottom: 100px;
}
.mr-blue, .mr-blue-secondary, .mr-green, .mr-green-secondary, .mr-purple, .mr-purple-secondary {
    height: 30px;
    line-height: 30px;
    font-size: 14px;
}
.mr-blue .mr-angle, .mr-blue .mr-cap {
    color: #fff;
    background-color: #01709B;
}
.mr-cap {
    width: 20px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    float: right;
    height: 100%;
}
.mr-angle {
    margin-right: -10px;
    width: 20px;
    text-align: right;
    float: right;
    transform: skew(-30deg);
    -webkit-transform: skew(-30deg);
    -ms-transform: skew(-30deg);
    height: 100%;
}
.mr-angle p {
    color: #fff;
}
.slider.slider-horizontal {
    width: 100%;
    height: auto;
}
.slider {
    display: inline-block;
    vertical-align: middle;
    position: relative;
    width: 100%;
    padding: 0 10px;
}
.slider.slider-horizontal .slider-track {
    height: 10px;
    width: 100%;
    margin-top: -5px;
    top: 50%;
    left: 0;
}
.slider-track {
    position: absolute;
    cursor: pointer;
    background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #f5f5f5 100%);
    background-image: -o-linear-gradient(top, #f5f5f5 0%, #f5f5f5 100%);
    background-image: linear-gradient(to bottom, #f5f5f5 0%, #f5f5f5 100%);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#fff9f9f9', GradientType=0);
    -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
    border-radius: 4px;
}
.slider.slider-horizontal .slider-selection, .slider.slider-horizontal .slider-track-low, .slider.slider-horizontal .slider-track-high {
    height: 100%;
    top: 0;
    bottom: 0;
}
.slider-track-low, .slider-track-high {
    position: absolute;
    background: transparent;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    border-radius: 4px;
}
.slider-selection {
    position: absolute;
    background-image: -moz-linear-gradient(left, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-image: -webkit-gradient(left, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-image: -webkit-linear-gradient(left, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-image: -o-linear-gradient(left, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-image: -ms-linear-gradient(left, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-image: linear-gradient(to right, #c8afc9 0%, #a87fa9 70%, #712594 100%);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff9f9f9', endColorstr='#fff5f5f5', GradientType=0);
    -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
    box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    border-radius: 4px;
}
.slider.slider-horizontal .slider-tick, .slider.slider-horizontal .slider-handle {
    margin-left: -10px;
    margin-top: -5px;
    border-radius: 10px;
    border-width: 0px;
    background-color: #712594;
}
.slider-handle.round {
    border-radius: 50%;
}
.slider-handle {
    position: absolute;
    width: 20px;
    height: 20px;
    background-color: #ebe4f3;
    background-image: radial-gradient(circle, #a87fa9, #712594);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff149bdf', endColorstr='#ff0480be', GradientType=0);
    filter: none;
    -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
    box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
    border: 1px solid #d9d9d9;
}
.slider .tooltip.top {
    margin-top: -36px;
}
.tooltip.top {
    padding: 5px 0;
    margin-top: -3px;
}
.tooltip {
    position: absolute;
    z-index: 1070;
    display: block;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 12px;
    font-weight: normal;
    line-height: 1.4;
    visibility: visible;
    filter: alpha(opacity=0);
    opacity: 0;
}
.tooltip.top .tooltip-arrow {
    bottom: 0;
    left: 50%;
    margin-left: -5px;
    border-width: 5px 5px 0;
    border-top-color: #000;
}
.tooltip-arrow {
    position: absolute;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
}
.slider .tooltip-inner {
    white-space: nowrap;
}
.tooltip-inner {
    max-width: 200px;
    padding: 3px 8px;
    color: #fff;
    text-align: center;
    text-decoration: none;
    background-color: #000;
    border-radius: 4px;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.mr-blue {
    color: #fff;
    background-color: #00A0DC;
}

.mr-blue, .mr-blue-secondary {
    text-align: center;
    font-weight: 600;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
    border: 2px solid #00A0DC;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#a_tab1").on("click", function() {
		$("#tab_01").css("display", "block");
		$("#tab_02").css("display", "none");
		$("#tab_03").css("display", "none");
		$("#tab_04").css("display", "none");
	});
	$("#a_tab2").on("click", function() {
		$("#tab_01").css("display", "none");
		$("#tab_02").css("display", "block");
		$("#tab_03").css("display", "none");
		$("#tab_04").css("display", "none");
	});
	$("#a_tab3").on("click", function() {
		$("#tab_01").css("display", "none");
		$("#tab_02").css("display", "none");
		$("#tab_03").css("display", "block");
		$("#tab_04").css("display", "none");
	});
	$("#a_tab4").on("click", function() {
		$("#tab_01").css("display", "none");
		$("#tab_02").css("display", "none");
		$("#tab_03").css("display", "none");
		$("#tab_04").css("display", "block");
	});
});
</script>
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
		<div id="container"><!--container S-->
		<div id="cont01" class="invIntcont01" style="height: 429px;"> <!--cont01 S-->
			<section id="inv_int_01">
				<div class="inv_int_txt">
					<h2 class="inv_int_tit">크리에이터에 투자하세요</h2>
					<ul class="ta_cen">
						<li>시간과 공간에 제약받지 않는 다양한 투자 콘텐츠</li>
						<li>IT시스템을 통한 자동 분산투자</li>
						<li>크리에이터와 함께 디지털 금융활동을 시작하세요</li>
					</ul>
				</div>
			</section>
		</div>  <!--cont01 E--> 
		<div id="cont02" class="invIntcont02">  <!--cont02 S-->
			<section id="inv_int_02">
				<h3 class="inv_int_tit titLine_w">투자상품유형</h3>
				<div style="height: 856.734px;">
					<ul class="investIconSet">
						<li class="col-xs-6 col-sm-6 col-md-3">
							<a href="#tab_01" class="tab on" id="a_tab1">
							<!-- 
								<img src="/images/investV2/Icon_investIntro_creditLoan_on.png" />
							-->개인신용
							</a>
						</li>
						<li class="col-xs-6 col-sm-6 col-md-3">
							<a href="#tab_02" class="tab" id="a_tab2">
							<!-- 
								<img src="/images/investV2/Icon_investIntro_LcreditLoan_off.png" />
							 -->사업자신용
							</a>
						</li>
						<li class="col-xs-6 col-sm-6 col-md-3">
							<a href="#tab_03" class="tab" id="a_tab3">
							<!--
								<img src="/images/investV2/Icon_investIntro_realtyLoan_off.png" />
							-->부동산담보
							</a>
						</li>
						<li class="col-xs-6 col-sm-6 col-md-3">
							<a href="#tab_04" class="tab" id="a_tab4">
							<!--
								<img src="/images/investV2/Icon_investIntro_guaranteeLoan_off.png" />
							-->동산담보
							</a>
						</li>
					</ul>

					<div class="inv_int_contents">
						<div class="topContents">
							<div id="tab_01" style="display: block;height: 785.438px;">
								<section>
									<ul class="tab1 tabTit">
										<li class="chkIMG">
											<img src="${pageContext.request.contextPath}/resources/img/Icon_investIntro_chkPT.png">
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
									<div class="bgGR"style="height: 204px;">
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

							<div id="tab_02" style="display: none;height: 483px;">
								<section>
									<ul class="tab2 tabTit">
										<li class="chkIMG">
											<img src="${pageContext.request.contextPath}/resources/img/Icon_investIntro_chkPT.png">
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

							<div id="tab_03" style="display: none; height: 767px;">
								<section>
									<ul class="tab3 tabTit">
										<li class="chkIMG">
											<img src="${pageContext.request.contextPath}/resources/img/Icon_investIntro_chkPT.png">
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
									<div class="bgGR" style="height: 204px;">
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

							<div id="tab_04" style="display: none;height: 483px;">
								<section>
									<ul class="tab4 tabTit">
										<li class="chkIMG">
											<img src="${pageContext.request.contextPath}/resources/img/Icon_investIntro_chkPT.png">
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
						</div>
					</div>
				</div>
			</section>
		</div> <!--cont02 E-->
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
	
</body>

</html>