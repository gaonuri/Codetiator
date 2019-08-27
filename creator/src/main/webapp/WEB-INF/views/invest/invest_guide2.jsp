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

		
		<div id="cont03" style="height: 311px;"> <!--cont03 S-->
			<section id="inv_int_03">
				<h3 class="inv_int_tit titLine_w">혁신적인 자동분산투자</h3>

				<ul class="txtArea03">

					<li class="txtCont03">
						자동분산투자 시스템이란 자신이 원하는 수익율, 위험도의 상품을 설정해 두고 조건과 일치하는 투자상품이 등록되었을 때 자동으로 투자 되는 기능입니다. 
						분산 투자로 낮은 위험률, 합리적인 투자수익을 올리게 되며 빠르고 간편한 투자를 미리 설정할 수 있습니다.
					</li>
				</ul>
			</section>
		</div> <!--cont03 E-->
		
		
		<div id="cont04"> <!--cont04 S-->
			<section id="inv_int_04">
				<h3 class="inv_int_tit titLine">자동분산투자의 복리효과</h3>
				<div id="autoInvestChart" data-highcharts-chart="0"><div id="highcharts-fcbnu29-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 900px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="900" height="400" viewBox="0 0 900 400"><desc>Created with Highcharts 6.2.0</desc><defs><clipPath id="highcharts-fcbnu29-1"><rect x="0" y="0" width="825" height="353" fill="none"></rect></clipPath></defs><rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="900" height="400" rx="0" ry="0"></rect><rect fill="none" class="highcharts-plot-background" x="65" y="10" width="825" height="353"></rect><g class="highcharts-grid highcharts-xaxis-grid " data-z-index="1"><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 116.5 10 L 116.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 167.5 10 L 167.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 219.5 10 L 219.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 270.5 10 L 270.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 322.5 10 L 322.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 373.5 10 L 373.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 425.5 10 L 425.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 477.5 10 L 477.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 528.5 10 L 528.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 580.5 10 L 580.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 631.5 10 L 631.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 683.5 10 L 683.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 734.5 10 L 734.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 786.5 10 L 786.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 837.5 10 L 837.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 889.5 10 L 889.5 363" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 64.5 10 L 64.5 363" opacity="1"></path></g><g class="highcharts-grid highcharts-yaxis-grid " data-z-index="1"><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 363.5 L 890 363.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 313.5 L 890 313.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 262.5 L 890 262.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 212.5 L 890 212.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 161.5 L 890 161.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 111.5 L 890 111.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 60.5 L 890 60.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 65 9.5 L 890 9.5" opacity="1"></path></g><rect fill="none" class="highcharts-plot-border" data-z-index="1" x="65" y="10" width="825" height="353"></rect><g class="highcharts-axis highcharts-xaxis " data-z-index="2"><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 116.5 363 L 116.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 167.5 363 L 167.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 219.5 363 L 219.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 270.5 363 L 270.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 322.5 363 L 322.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 373.5 363 L 373.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 425.5 363 L 425.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 477.5 363 L 477.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 528.5 363 L 528.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 580.5 363 L 580.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 631.5 363 L 631.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 683.5 363 L 683.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 734.5 363 L 734.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 786.5 363 L 786.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 837.5 363 L 837.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 890.5 363 L 890.5 373" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 64.5 363 L 64.5 373" opacity="1"></path><path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" data-z-index="7" d="M 65 363.5 L 890 363.5"></path></g><g class="highcharts-axis highcharts-yaxis " data-z-index="2"><path fill="none" class="highcharts-axis-line" data-z-index="7" d="M 65 10 L 65 363"></path></g><g class="highcharts-series-group" data-z-index="3"><g data-z-index="0.1" class="highcharts-series highcharts-series-0 highcharts-spline-series highcharts-color-0 " transform="translate(65,10) scale(1 1)" clip-path="url(#highcharts-fcbnu29-1)"><path fill="none" d="M 25.78125 353 C 25.78125 353 56.71875 347.1502857142857 77.34375 342.9142857142857 C 97.96875 338.6782857142857 108.28125 336.4796 128.90625 331.82 C 149.53125 327.1604 159.84375 324.7418457142857 180.46875 319.6162857142857 C 201.09375 314.49072571428576 211.40625 311.830316 232.03125 306.1922 C 252.65625 300.554084 262.96875 297.6276333142857 283.59375 291.4257057142857 C 304.21875 285.22377811428566 314.53125 282.00468034285706 335.15625 275.18256199999996 C 355.78125 268.3604436571428 366.09375 264.81945022857144 386.71875 257.315114 C 407.34375 249.81077777142858 417.65625 245.91565474285713 438.28125 237.66088085714284 C 458.90625 229.40610697142853 469.21875 225.12147365714284 489.84375 216.04124457142856 C 510.46875 206.96101548571426 520.78125 202.24800154285714 541.40625 192.25973542857142 C 562.03125 182.2714693142857 572.34375 177.08700874285714 592.96875 166.09991399999998 C 613.59375 155.11281925714286 623.90625 149.4100538285714 644.53125 137.3242617142857 C 665.15625 125.2384696 675.46875 118.96533685714284 696.09375 105.67095342857141 C 716.71875 92.37656999999997 727.03125 85.47616634285711 747.65625 70.85234457142855 C 768.28125 56.22852279999997 799.21875 32.551844571428546 799.21875 32.551844571428546" class="highcharts-graph" data-z-index="1" stroke="#712594" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 15.78125 353 L 25.78125 353 C 25.78125 353 56.71875 347.1502857142857 77.34375 342.9142857142857 C 97.96875 338.6782857142857 108.28125 336.4796 128.90625 331.82 C 149.53125 327.1604 159.84375 324.7418457142857 180.46875 319.6162857142857 C 201.09375 314.49072571428576 211.40625 311.830316 232.03125 306.1922 C 252.65625 300.554084 262.96875 297.6276333142857 283.59375 291.4257057142857 C 304.21875 285.22377811428566 314.53125 282.00468034285706 335.15625 275.18256199999996 C 355.78125 268.3604436571428 366.09375 264.81945022857144 386.71875 257.315114 C 407.34375 249.81077777142858 417.65625 245.91565474285713 438.28125 237.66088085714284 C 458.90625 229.40610697142853 469.21875 225.12147365714284 489.84375 216.04124457142856 C 510.46875 206.96101548571426 520.78125 202.24800154285714 541.40625 192.25973542857142 C 562.03125 182.2714693142857 572.34375 177.08700874285714 592.96875 166.09991399999998 C 613.59375 155.11281925714286 623.90625 149.4100538285714 644.53125 137.3242617142857 C 665.15625 125.2384696 675.46875 118.96533685714284 696.09375 105.67095342857141 C 716.71875 92.37656999999997 727.03125 85.47616634285711 747.65625 70.85234457142855 C 768.28125 56.22852279999997 799.21875 32.551844571428546 799.21875 32.551844571428546 L 809.21875 32.551844571428546" stroke-linejoin="round" stroke="rgba(192,192,192,0.0001)" stroke-width="22" visibility="visible" data-z-index="2" class="highcharts-tracker-line"></path></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-0 highcharts-spline-series highcharts-color-0 highcharts-tracker" transform="translate(65,10) scale(1 1)"></g><g data-z-index="0.1" class="highcharts-series highcharts-series-1 highcharts-spline-series highcharts-color-1 " transform="translate(65,10) scale(1 1)" clip-path="url(#highcharts-fcbnu29-1)"><path fill="none" d="M 25.78125 353 C 25.78125 353 56.71875 346.9485714285714 77.34375 342.9142857142857 C 97.96875 338.88 108.28125 336.86285714285714 128.90625 332.8285714285714 C 149.53125 328.7942857142857 159.84375 326.77714285714285 180.46875 322.74285714285713 C 201.09375 318.7085714285714 211.40625 316.69142857142856 232.03125 312.65714285714284 C 252.65625 308.62285714285713 262.96875 306.60571428571427 283.59375 302.57142857142856 C 304.21875 298.53714285714284 314.53125 296.52 335.15625 292.48571428571427 C 355.78125 288.45142857142855 366.09375 286.4342857142857 386.71875 282.4 C 407.34375 278.36571428571426 417.65625 276.3485714285714 438.28125 272.3142857142857 C 458.90625 268.28 469.21875 266.2628571428571 489.84375 262.2285714285714 C 510.46875 258.1942857142857 520.78125 256.1771428571428 541.40625 252.14285714285714 C 562.03125 248.10857142857145 572.34375 246.09142857142857 592.96875 242.05714285714285 C 613.59375 238.02285714285713 623.90625 236.00571428571428 644.53125 231.97142857142856 C 665.15625 227.93714285714285 675.46875 225.92 696.09375 221.88571428571427 C 716.71875 217.85142857142856 727.03125 215.8342857142857 747.65625 211.79999999999998 C 768.28125 207.76571428571427 799.21875 201.7142857142857 799.21875 201.7142857142857" class="highcharts-graph" data-z-index="1" stroke="#b386b4" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 15.78125 353 L 25.78125 353 C 25.78125 353 56.71875 346.9485714285714 77.34375 342.9142857142857 C 97.96875 338.88 108.28125 336.86285714285714 128.90625 332.8285714285714 C 149.53125 328.7942857142857 159.84375 326.77714285714285 180.46875 322.74285714285713 C 201.09375 318.7085714285714 211.40625 316.69142857142856 232.03125 312.65714285714284 C 252.65625 308.62285714285713 262.96875 306.60571428571427 283.59375 302.57142857142856 C 304.21875 298.53714285714284 314.53125 296.52 335.15625 292.48571428571427 C 355.78125 288.45142857142855 366.09375 286.4342857142857 386.71875 282.4 C 407.34375 278.36571428571426 417.65625 276.3485714285714 438.28125 272.3142857142857 C 458.90625 268.28 469.21875 266.2628571428571 489.84375 262.2285714285714 C 510.46875 258.1942857142857 520.78125 256.1771428571428 541.40625 252.14285714285714 C 562.03125 248.10857142857145 572.34375 246.09142857142857 592.96875 242.05714285714285 C 613.59375 238.02285714285713 623.90625 236.00571428571428 644.53125 231.97142857142856 C 665.15625 227.93714285714285 675.46875 225.92 696.09375 221.88571428571427 C 716.71875 217.85142857142856 727.03125 215.8342857142857 747.65625 211.79999999999998 C 768.28125 207.76571428571427 799.21875 201.7142857142857 799.21875 201.7142857142857 L 809.21875 201.7142857142857" stroke-linejoin="round" stroke="rgba(192,192,192,0.0001)" stroke-width="22" visibility="visible" data-z-index="2" class="highcharts-tracker-line"></path></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-1 highcharts-spline-series highcharts-color-1 highcharts-tracker" transform="translate(65,10) scale(1 1)"></g></g><g class="highcharts-exporting-group" data-z-index="3"><g class="highcharts-button highcharts-contextbutton" stroke-linecap="round" transform="translate(866,10)"><title>Chart context menu</title><rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect><path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" data-z-index="1" stroke="#666666" stroke-width="3"></path><text x="0" data-z-index="1" style="font-weight:normal;color:#333333;cursor:pointer;fill:#333333;" y="12"></text></g></g><text x="450" text-anchor="middle" class="highcharts-title" data-z-index="4" style="color:#333333;font-size:18px;fill:#333333;" y="24"></text><text x="450" text-anchor="middle" class="highcharts-subtitle" data-z-index="4" style="color:#666666;fill:#666666;" y="24"></text><g class="highcharts-axis-labels highcharts-xaxis-labels " data-z-index="7"><text x="90.78125" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">0년차</text><text x="142.34375" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">1년차</text><text x="193.90625" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">2년차</text><text x="245.46875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">3년차</text><text x="297.03125" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">4년차</text><text x="348.59375" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">5년차</text><text x="400.15625" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">6년차</text><text x="451.71875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">7년차</text><text x="503.28125" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">8년차</text><text x="554.84375" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">9년차</text><text x="606.40625" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">10년차</text><text x="657.96875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">11년차</text><text x="709.53125" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">12년차</text><text x="761.09375" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">13년차</text><text x="812.65625" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">14년차</text><text x="864.21875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">15년차</text></g><g class="highcharts-axis-labels highcharts-yaxis-labels " data-z-index="7"><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="367" opacity="1">0만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="317" opacity="1">50만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="266" opacity="1">100만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="216" opacity="1">150만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="165" opacity="1">200만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="115" opacity="1">250만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="64" opacity="1">300만원</text><text x="50" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="14" opacity="1">350만원</text></g></svg></div></div>
				<div class="text-right">
					투자기간
				</div>
				<div id="autoInvestSliderDiv" style="padding: 10px;">
					<div class="slider slider-horizontal" id=""><div class="slider-track"><div class="slider-track-low" style="left: 0px; width: 0%;"></div><div class="slider-selection" style="left: 0%; width: 72.2222%;"></div><div class="slider-track-high" style="right: 0px; width: 27.7778%;"></div><div class="slider-handle min-slider-handle round" role="slider" aria-valuemin="2" aria-valuemax="20" aria-valuenow="15" tabindex="0" style="left: 72.2222%;"></div><div class="slider-handle max-slider-handle round hide" role="slider" aria-valuemin="2" aria-valuemax="20" aria-valuenow="2" tabindex="0" style="left: 0%;"></div></div><div class="tooltip tooltip-main top" role="presentation" style="left: 72.2222%; margin-left: -25.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">15년차</div></div><div class="tooltip tooltip-min top" role="presentation"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div><div class="tooltip tooltip-max bottom" role="presentation" style="top: 18px;"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div></div><input id="autoInvestSlider" type="text" data-slider-min="2" data-slider-max="20" data-slider-step="1" data-slider-value="15" data-value="15" value="15" style="display: none;">
				</div>
				<ul class="txtArea04">
					<li class="txtTit04">
						슬라이더를 좌 / 우로 움직여 자동분산 투자의 복리효과를 확인해 보세요.
						<br>(투자금액 100만원, 금리 10%)
					</li>
					<li class="txtCont04">
						원리금 균등 상환방식 상품에 투자하면 매달 원리금을 상환받게 되는데,  자동분산투자를 설정한 경우 상환받은 금액은 자동으로 재투자됩니다. 이 과정이 반복되면 이자에 이자가 붙게 되는 복리에 준하는 방식으로 투자 자금을 운용할 수 있습니다. 
					</li>
				</ul>
				<div class="mr-blue mainTop_btn autoInv_Btn" id="autoInvestSetBtn">
						&nbsp;&nbsp;&nbsp;자동분산투자 설정하기<span class="mr-cap"></span>
						<span class="mr-angle">
						<div><p>&gt;</p></div>
						</span>
				</div>
			</section>
		</div> 
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