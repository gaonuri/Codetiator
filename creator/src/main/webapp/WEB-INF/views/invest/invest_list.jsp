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
#investList-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png)no-repeat center center fixed;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 520px;
}
.text-center {
    text-align: center;
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block;
}
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
user agent stylesheet
section {
    display: block;
}
body, html {
    font-family: 'Noto Sans KR', sans-serif;
    /* font-family: "Seoul Namsan", sans-serif; */
    /* font-family: "NanumSquareRound", sans-serif; */
    /* text-rendering: optimizeLegibility !important; */
    /* -webkit-font-smoothing: antialiased !important; */
    color: #5a5a5a;
    letter-spacing: -0.4px;
}
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
    color: -internal-root-color;
}
#investList-banner .section-body {
    color: #fff;
    position: relative;
    padding: 140px 20px 0px 20px;
}
#investList-banner .section-body .title {
    margin-bottom: 20px;
}
#investList-banner .title {
    color: #fff;
    line-height: 2;
    vertical-align: middle;
    font-size: 26pt;
    font-weight: 500;
    text-shadow: 1px 1px 1px #834e94;
    letter-spacing: -0.3pt;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
#investList-banner .wrap {
    display: inline-table;
}
#investList-banner .box-wrap {
    padding: 1px;
    display: inline-block;
}
#investList-banner .box {
    background-color: rgba(135,53,135,0.8);
    border-radius: 2px;
    display: inline-block;
    padding: 17px;
    margin: 2px;
    width: 230px;
}
#investList-banner .text {
    font-size: 15px;
}
#investList-banner .amt {
    font-size: 20px;
}
#investList-banner .content-text.large {
    display: block;
    text-shadow: 1px 2px #333;
}
#investList-banner .content-text {
    position: relative;
    padding: 0 0 55px 0;
}
#investList-banner a.btn.btn-transparent.solid {
    color: #fff;
    padding: 10px 20px;
    font-size: 15px;
    margin: 10px 4px;
    background-color: rgba (255,255,255,0.8);
    border-color: #fff;
    border-width: 2px;
    border-radius: 3px;
    width: 124px;
    height: 76px;
}
#investList-banner .content-text.large a {
    background-color: rgba(139,82,158,0.4);
    min-width: 120px;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
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
#investList-banner .content-text.small {
    display: none;
    text-shadow: 1px 2px #333;
}
#invest-good {
    padding: 41px 0 111px 0;
    background-color: #fff;
    color: #3d3d3d;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.section-title {
    padding: 30px 0 27px 0;
}
#invest-good .section-title .date {
    font-size: 30px;
    color: #3d3d3d;
    font-weight: bold;
    margin-top: 12px;
}
.section-title .subTitle {
    margin-top: 12px;
    color: #3d3d3d;
    font-size: 19px;
}
.font-purple {
    color: #712594 !important;
}
b, strong {
    font-weight: bold;
}
#invest-good .section-cat {
    text-align: left;
}
#invest-good .section-cat .item a.active {
    color: #853986;
    font-weight: bold;
}
#invest-good .section-cat .item a {
    font-size: 16px;
    color: #3d3d3d;
}
#invest-good .section-selector {
    text-align: right;
    margin-top: -30px;
    font-size: 16px;
}
#invest-good .section-selector select {
    max-width: 150px;
    display: inline-block;
    vertical-align: text-bottom;
    margin-right: 10px;
}
.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, select {
    text-transform: none;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
#invest-good .section-selector .selector-box {
    display: inline-block;
}
#invest-good .section-selector a.active {
    color: #712594;
    max-height: 30px;
}
#invest-good .section-selector a {
    color: #d9d9de;
    font-size: 30px;
    max-height: 30px;
}
#invest-good #goodThum {
    display: none;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
#invest-good #goodList {
    display: block;
}
#invest-good .goodlist-title {
    padding: 20px 0px;
    border-style: solid;
    border-width: 3px;
    border-color: #d9d9de;
    border-radius: 4px;
    background-color: #fff;
    margin-bottom: 8px;
    font-size: 14px;
    color: #858585;
    text-align: center;
}
#invest-good .goodlist-title .row {
    margin-left: 0px;
    margin-right: 0px;
}

.col {
    padding-left: 0px;
    padding-right: 0px;
}
.col-md-4 {
    width: 33.33333333%;
}
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.col-md-1 {
    width: 8.33333333%;
}
.col-md-2 {
    width: 16.66666667%;
}
#invest-good .goodlist-title-short {
    display: none;
}
#invest-good #goodListBody {
    padding: 5px 0;
}
#invest-good .goodlist-item {
    padding: 9px 0px;
    border-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    border-radius: 4px;
    background-color: #fff;
    margin-bottom: 10px;
    font-size: 14px;
    color: #3d3d3d;
    text-align: center;
    vertical-align: middle;
}
a {
    color: #712594;
}
#invest-good .goodlist-item .title {
    font-size: 14px;
    color: #3d3d3d;
    font-weight: 500;
    text-align: left;
}
#invest-good .goodlist-item .id {
    font-size: 12px;
    color: #858585;
    text-align: left;
}
#invest-good .goodlist-item .col {
    padding-left: 5px;
    padding-right: 5px;
}
#invest-good .goodlist-item .item-title {
    display: none;
}
#invest-good .goodlist-item .grade, #invest-good .goodlist-item .rate, #invest-good .goodlist-item .period, #invest-good .goodlist-item .amt {
    margin-top: 12px;
    font-weight: 500;
    font-size: 14px;
}
.grade-font-MA {
    color: #ac7fad !important;
}
#invest-good .goodlist-item .progress {
    max-width: 87%;
    margin: auto;
    margin-top: 15px;
}
#invest-good .progress {
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
#invest-good .progress-bar {
    background-color: #712594;
    line-height: 15px;
    -webkit-animation-direction: reverse;
    -moz-animation-direction: reverse;
    -ms-animation-direction: reverse;
    -o-animation-direction: reverse;
    animation-direction: reverse;
}
.progress-striped .progress-bar, .progress-bar-striped {
    background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
    background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
    background-image: linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
    -webkit-background-size: 40px 40px;
    background-size: 40px 40px;
}
.progress-bar {
    float: left;
    width: 0;
    height: 100%;
    font-size: 12px;
    line-height: 20px;
    color: #fff;
    text-align: center;
    background-color: #337ab7;
    -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
    box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
    -webkit-transition: width .6s ease;
    -o-transition: width .6s ease;
    transition: width .6s ease;
}
#invest-good .goodlist-item .invest {
    margin-top: 12px;
}
#invest-good .goodlist-item .invest span {
    margin-top: 12px;
    border-style: solid;
    padding: 5px 10px;
    border-radius: 4px;
    border-color: #858585;
    border-width: 2px;
    color: #858585;
    font-size: 14px;
    font-weight: 500;
    background-color: #fff;
}
.col-md-push-6 {
    left: 50%;
}
.col-md-6 {
    width: 50%;
}
form {
    display: block;
    margin-top: 0em;
}
.srchText {
    margin-right: 5px;
    font-size: 12px;
    min-width: 200px;
}
.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.btn-purple-transparent {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 16px;
    border-style: none;
}
#invest-good .goodlist-item .row {
    margin-left: 0px;
    margin-right: 0px;
}

</style>
<body>
	<body>
	<!-- for all pages -->

<form id="commonForm" name="commonForm"></form>

 

<!-- Navigation
==========================================-->
<!--header start-->
	<%@ include file="../header.jsp" %>
<!--header end-->
<script type="text/javascript">

	$(function() {
		$("#topGuideButton").on("click", function() {
			$("#topGuideText").removeClass("animated fadeIn");
			$("#topGuideText").addClass("animated fadeOut");
			$('#topGuideTextDiv').hide();
		});
		
		var pathname = location.pathname;
		if(pathname.substr(0,5) == "/loan") {
			$("#top-guide").show();
		} else {
			$("#top-guide").hide();
		}
		
	});
	
	function fn_setTopGuidePop() {
		var disp = $('#topGuideTextDiv').css('display');
		if(disp == 'block') {
			$("#topGuideText").removeClass("animated fadeIn");
			$("#topGuideText").addClass("animated fadeOut");
			$('#topGuideTextDiv').hide();
		} else {
			$("#topGuideText").removeClass("animated fadeOut");
			$("#topGuideText").addClass("animated fadeIn");
			$("#topGuideTextDiv").show();
		}
	}
	
	
	

	// 대출유형 전역변수
	var gvar_loanTypeCd = "";
	
	// 페이지로우 전역변수
	var gvar_pageRow = 6; 

	$(function() {
		// 날짜 세팅
		fn_setToday('today');
		
		// 투자표시상태인 이벤트 채권이 있으면 섹션 표시
		/*var eventCnt = "";
		if(eventCnt != "0") {
			$('#invest-event').show();
		} else {
			$('#invest-event').hide();
		}*/
		
		// 전역 변수 세팅
		gvar_loanTypeCd = "";
		
		// 카테고리를 선택한 상태면 해당 위치로 스크롤
		if(gvar_loanTypeCd != "") {
			var position = $("#loanTypeSelector"+gvar_loanTypeCd).offset(); // 위치값
			$('html,body').animate({ scrollTop : position.top-250 }, 300); // 이동
		}
		
		// 전체선택 이벤트 세팅
		$("input:checkbox[name='allCheckbox']").on("change", function() {
			if($(this).is(":checked")){
				$("input:checkbox[name='itemCheckbox']").prop("checked", true);
				$("input:checkbox[name='itemCheckbox']").attr("checked", true);
			}else{
				$("input:checkbox[name='itemCheckbox']").prop("checked", false);
				$("input:checkbox[name='itemCheckbox']").attr("checked", false);
			}
		});
		
		$('#pageSelector').change(function(){
			gvar_pageRow = $('#pageSelector option:selected').val();
			// 목록 ajax 리로드시 첫번째 페이지로 세팅
			gfv_pageIndex = 1;
			fn_selectInvestList(1);
		});
		
		// 대출채권, 투자건수 세팅
		var totalLoanCnt = "796";
		var totalInvestCnt = "117185";
		$('#totalLoanCnt').html(comma(totalLoanCnt));
		$('#totalInvestCnt').html(comma(totalInvestCnt));
		
		// 기본 리스트 세팅 : 모바일은 썸네일, PC는 리스트
		if($(window).width() < 767) {
			fn_showThum();
		}
		
		$("#srchTextBtn").click(function(e) {
			e.preventDefault();
			fn_selectInvestList(1);
		});

		// 대출리스트 조회
		fn_selectInvestList(1);
	});
	
	// 아이폰 뒤로가기 오류 방지
	$(window).bind("pageshow", function(event) {
		if(event.originalEvent.persisted) {
			document.location.href = document.URL;
		}
	});
	
	function fn_setToday(obj) {
		var now = new Date();
		var year= now.getFullYear();
		var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
		var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
				
		var chan_val = year + '.' + mon + '.' + day;
		$("#"+obj).html(chan_val);
	}
	
	function fn_showThum() {
		$('#goodThum').show();
		$('#goodList').hide();
		$('#thumSelector').addClass("active");
		$('#listSelector').removeClass("active");
	}
	
	function fn_showList() {
		$('#goodThum').hide();
		$('#goodList').show();
		$('#thumSelector').removeClass("active");
		$('#listSelector').addClass("active");
	}
	
	function fn_selectInvestList(pageNo) {
		$('#curPageNo').val(pageNo);
		var comAjax = new ComAjax("srchForm");
		comAjax.setUrl("/loan/selectLoanList");
		comAjax.setCallback("fn_selectInvestListCallback");
		comAjax.addParam("LOAN_TYPE_CD",gvar_loanTypeCd);
		comAjax.addParam("PAGE_INDEX",pageNo);
		comAjax.addParam("PAGE_ROW",gvar_pageRow);
		comAjax.ajax();
	}
	
	function fn_selectInvestListCallback(data){
		var loanTypeCd = data.LOAN_TYPE_CD;
		fn_setActiveCat(loanTypeCd);
		
		var total = data.TOTAL;
		var goodThumBody = $("#goodThum");
		var goodListBody = $("#goodListBody");
		goodThumBody.empty();
		goodListBody.empty();
		var params = {
			divId : "PAGE_NAVI",
			pageIndex : "PAGE_INDEX",
			totalCount : total,
			eventName : "fn_selectInvestList",
			recordCount : gvar_pageRow
		};
		gfn_renderPaging(params);
		
		var str = "";
		if(total == 0) {
			str += "<div class=\"goodlist-title\">";
			str += "곧 투자상품이 준비될 예정입니다.";
			str += "</div>";
			goodListBody.append(str);
			
			str = "";
			str += "<div class=\"col-md-12\"><div class=\"goodlist-title\">";
			str += "곧 투자상품이 준비될 예정입니다.";
			str += "</div></div>";
			goodThumBody.append(str);
		} else {
			var loginSchool = "null";
			var loginLocal1 = "null";
			var loginHometown1 = "null";
			var index = 0;
			
			// 썸네일 생성
			$.each(data.list, function(key, value){
				index += 1;
				str += "<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap\">";
				str += "	<div class=\"good-item\">";
				str += "		<div class=\"item-top\">";
				str += "			<a href='javascript:(void(0));' onclick='fn_openInvestDetail("+value.LOAN_NO+")'>";
				str += "				<div class=\"hover-text\">";
				str += "					<div class=\"clearfix\"></div>";
				str += "					<div class=\"hover-button\"></div>";
				str += "				</div>";
				str += "			</a>";
				str += "			<div class=\"item-top-badge\">";
				if(value.RWRDGD_YN == "Y") {
					str += "			<span class=\"label label-rwrdgd\">리워드</span>";
				}
				if(value.LOAN_TYPE_CD == "04") {
					if(value.NMVBLS_LTV != "") {
						var ltv = Math.round(value.NMVBLS_LTV * 100) / 100;
						str += "		<span class=\"label label-primary\">LTV "+ltv+"%</span>";
					}
					if(value.NMVBLS_PRR_ORDR_AMT != "" && parseInt(value.NMVBLS_PRR_ORDR_AMT) == 0) {
						str += "		<span class=\"label label-primary\">선순위</span>";
					}
				}
				str += "			</div>";
				str += "			<div class=\"item-top-badge text-right\">";
				if(value.REQ_STATS_CD == "08") {
					if(value.INVEST_DISP_YN == "Y") {
						str += "		<span class=\"label label-primary animated infinite flash\">모집중</span>";
					} else {
						str += "		<span class=\"label label-primary\">준비중</span>";
					}
				} else {
					str += "			<span class=\"label label-primary\">" + value.REPAY_STATS_NM + "</span>";
				}
				str += "			</div>";
				if(value.BANNER_TYPE_CD != "" && value.BANNER_TITLE != "") {
					str += "		<div class=\"item-middle-badge\">";
					str += "			<div style=\"display: inline-block;\">" + value.BANNER_TITLE + "</div>";
					if(value.BANNER_TYPE_CD == "07") {	// 부동산
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_nmvbls.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "02") {	// 컨소시움
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_consortium.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "05") {	// 배당금
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_dividend.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "06") {	// 브롱스
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_bronx.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "01") {	// 홈쇼핑
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_homeshopping.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "09") {	// 개인사업자
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_indvdlBiz.png\"></div>";
					} else if(value.BANNER_TYPE_CD == "10") {	// 축산물
						str += "		<div style=\"display: inline-block;\"><img src=\"/images/investV2/banner_icon_meat.png\"></div>";
					}
					str += "		</div>";
				}
				str += "			<div class=\"item-bottom-badge text-right\">";
				if(value.AUTO_INVEST_YN == "Y") {
					str += "			<span>자동투자 "+value.AUTO_INVEST_LIMIT_PCRNT+"%</span>";
				} else {
					if(value.OPEN_AUTO_INVEST_YN == "Y") {
						str += "		<span>자동투자 "+value.AUTO_INVEST_LIMIT_PCRNT+"%</span>";
					}
				}
				str += "			</div>";
				if(value.BANNER_TYPE_CD != "" && value.BANNER_TITLE != "") {
					if(value.BANNER_TYPE_CD == "07") {	// 부동산
						str += "	<img src=\"/images/investV2/banner_bg_nmvbls.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "02") {	// 컨소시움
						str += "	<img src=\"/images/investV2/banner_bg_consortium.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "05") {	// 배당금
						str += "	<img src=\"/images/investV2/banner_bg_dividend.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "06") {	// 브롱스
						str += "	<img src=\"/images/investV2/banner_bg_bronx.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "01") {	// 홈쇼핑
						str += "	<img src=\"/images/investV2/banner_bg_homeshopping.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "09") {	// 개인사업자
						str += "	<img src=\"/images/investV2/banner_bg_indvdlBiz.png\" class=\"img-responsive\">";
					} else if(value.BANNER_TYPE_CD == "10") {	// 축산물
						str += "	<img src=\"/images/investV2/banner_bg_meat.png\" class=\"img-responsive\">";
					}
				} else {
					if(value.SPECIAL_LOAN_YN == "Y") {
						if(value.BANNER_S_IMG_URL == '') {
							str += "	<img src=\""+value.BANNER_IMG_URL+"\">";
						} else {
							str += "	<img src=\""+value.BANNER_S_IMG_URL+"\">";
						}
					} else {
						str += "	<img src=\"/images/invest/invest_item_loanpurpose"+value.LOAN_PURPOSE_CD+".png\" class=\"img-responsive\">";
					}
				}
				str += "		</div>";
				str += "		<div class=\"item-bottom\">";
				str += "			<div class=\"item-bottom-text\">";
				str += "				<div class=\"row\">";
				str += "					<div class=\"col-xs-6\">";
				str += "						<h5>"+value.LOAN_GD_ID+"</h5>";
				str += "					</div>";
				if(value.REQ_STATS_CD == "08") {
					if(value.INVEST_DISP_YN != "Y") {
						str += "			<div class=\"col-xs-6 text-right\">";
						str += "				<h5>"+value.OPEN_MH+"</h5>";
						str += "			</div>";
					}
				}
				str += "				</div>";
				str += "				<h4 style=\"text-align:center;\">"+value.LOAN_NM+"</h4>";
				/*str += "				<div class=\"text-cut3\">";
				str += "					<p>"+value.COMMENTS+"</p>";
				str += "				</div>";*/
				str += "				<div class=\"progress\">";
				if(value.TOTAL_INVEST_PCNT >= 100) {
					str += "				<div class=\"progress-bar progress-bar-striped\" role=\"progressbar\"";	
				} else {
					str += "				<div class=\"progress-bar progress-bar-striped active\" role=\"progressbar\"";
				}
				str += "						aria-valuenow=\""+value.TOTAL_INVEST_PCNT+"\" aria-valuemin=\"0\" ";
				str += "						aria-valuemax=\"100\" style=\"min-width:20px;width: "+value.TOTAL_INVEST_PCNT+"%\">";
				str += "						"+value.TOTAL_INVEST_PCNT+"%";
				str += "					</div>";
				str += "				</div>";
				str += "				<div class=\"item-top-text-num\">";
				str += "					<small>("+value.INVEST_CUS_CNT+"명)</small>";
				str += "				</div>";
				str += "			</div>";
				str += "			<hr>";
				str += "			<div class=\"grade\">";
				str += "				<div class=\"circle grade-"+value.INNER_CRDT_GRD_NM.substring(0,2)+"\">"+value.INNER_CRDT_GRD_NM+"</div>";
				str += "			</div>";
				str += "			<div class=\"cat\">";
				str += "				<div class=\"title\">연 수익률</div>";
				str += "				<div class=\"sub\">"+value.INVEST_RATE+"<font size=\"1\">%</font></div>";
				str += "			</div>";
				str += "			<div class=\"cat\">";
				str += "				<div class=\"title\">기간</div>";
				str += "				<div class=\"sub\">"+value.LOAN_PERIOD_NM+"<font size=\"1\">개월</font></div>";
				str += "			</div>";
				str += "			<div class=\"cat\">";
				str += "				<div class=\"title\">모집금액</div>";
				str += "				<div class=\"sub\">"+value.LOAN_AMT_COMMA+"<font size=\"1\">만원</font></div>";
				str += "			</div>";
				str += "			<div class=\"cat\">";
				str += "				<div class=\"title\">상환방식</div>";
				str += "				<div class=\"sub\">"+value.REPAY_TYPE_NM+"</div>";
				str += "			</div>";
				str += "		</div>";
				str += "	</div>";
				str += "</div>";
				if(index%3 == 0) {
					str += "<div class=\"clearfix\"></div>";
				}
			});
			
			goodThumBody.append(str);
			
			str = "";
			
			// 리스트 생성
			$.each(data.list, function(key, value){
				str += "<div class=\"goodlist-item\">";
				str += "	<div class=\"row\">";
				/*
				str += "		<div class=\"col-xs-2 col-sm-2 col-md-1\">";
				str += "			<div class=\"check\">";
				if(value.TOTAL_INVEST_PCNT >= 100) {
				} else {
					if(value.INVEST_DISP_YN == "Y") {
						str += "			<input type=\"checkbox\" name=\"itemCheckbox\" value=\""+value.LOAN_NO+"\">";
					} else {
					}
				}
				str += "			</div>";
				str += "		</div>";
				*/
				//str += "		<div class=\"col-xs-7 col-sm-7 col-md-2 col\">";
				str += "		<div class=\"col-xs-9 col-sm-9 col-md-4\">";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				str += "				<div class=\"id\">"+value.LOAN_GD_ID+"</div>";
				str += "				<div class=\"title\">"+value.LOAN_NM+"</div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-1 col\">";
				str += "			<div class=\"item-title\">등급</div>";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				/*str += "				<div class=\"grade large\">";
				str += "					<div class=\"circle grade-"+value.INNER_CRDT_GRD_NM.substring(0,2)+"\">"+value.INNER_CRDT_GRD_NM+"</div>";
				str += "				</div>";
				str += "				<div class=\"grade small\">"+value.INNER_CRDT_GRD_NM+"</div>";*/
				str += "				<div class=\"grade grade-font-"+value.INNER_CRDT_GRD_NM.substring(0,2)+"\">"+value.INNER_CRDT_GRD_NM+"</div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-1 col\">";
				str += "			<div class=\"item-title\">연 수익률</div>";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				str += "				<div class=\"rate\">"+value.INVEST_RATE+"<font size=\"1\">%</font></div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-1 col\">";
				str += "			<div class=\"item-title\">기간</div>";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				str += "				<div class=\"period\">"+value.LOAN_PERIOD_NM+"<font size=\"1\">개월</font></div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-1 col\">";
				str += "			<div class=\"item-title\">모집금액</div>";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				str += "				<div class=\"amt\">"+value.LOAN_AMT_COMMA+"<font size=\"1\">만원</font></div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-1 col\">";
				str += "			<div class=\"item-title\">상환방식</div>";
				str += "			<a href=\"javascript:(fn_openInvestDetail("+value.LOAN_NO+"));\">";
				str += "				<div class=\"amt\">"+value.REPAY_TYPE_NM+"</div>";
				str += "			</a>";
				str += "		</div>";
				str += "		<div class=\"col-xs-9 col-sm-9 col-md-1 col\">";
				str += "			<div class=\"progress\">";
				if(value.TOTAL_INVEST_PCNT >= 100) {
					str += "					<div class=\"progress-bar progress-bar-striped\" role=\"progressbar\"";	
				} else {
					str += "					<div class=\"progress-bar progress-bar-striped active\" role=\"progressbar\"";
				}
				str += "					aria-valuenow=\""+value.TOTAL_INVEST_PCNT+"\" aria-valuemin=\"0\" ";
				str += "					aria-valuemax=\"100\" style=\"min-width:20px;width: "+value.TOTAL_INVEST_PCNT+"%\">";
				str += "					"+value.TOTAL_INVEST_PCNT+"%";
				str += "				</div>";
				str += "			</div>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-3 col-md-2 col\">";
				str += "			<div class=\"invest\">";
				if(value.TOTAL_INVEST_PCNT >= 100 || value.CRPRTN_INVEST_CUS_NO != '') {
					str += "			<span>" + value.REPAY_STATS_NM + "</span>";
				} else {
					if(value.INVEST_DISP_YN == "Y") {
						str += "		<a href=\"javascript:(fn_openInvestReq("+value.LOAN_NO+"));\">";
						str += "			<span class=\"active\">투자하기</span>";
						str += "		</a>";
					} else {
						str += "		<a href=\"javascript:(fn_goAutoInvest());\">";
						str += "			<span class=\"active\">준비중</span>";
						str += "		</a>";
					}
				}
				str += "			</div>";
				str += "		</div>";
				str += "	</div>";
				str += "</div>";
			});
			
			goodListBody.append(str);
			
			// 모바일 페이지 네비게이션 처리
			$('#prevPage').hide();
			$('#nextPage').hide();
			var firstPageNo = 1;
			var curPageNo = $('#curPageNo').val();
			var lastPageNo = parseInt((total-1) / gvar_pageRow) + 1;
			
			if(firstPageNo < curPageNo) {
				$('#prevPage').show();
			}
			
			if(lastPageNo > curPageNo) {
				$('#nextPage').show();
			}
			
			//gfn_scrollLink("pageTitle", 90);
		}
	}
	
	function fn_openInvestDetail(loanNo) {
		location.href='/invest/detail/'+loanNo;
	}
	
	function fn_openInvestReq(loanNo) {
		var chkArr = new Array();
		chkArr.push(loanNo);
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/invest/req");
		comSubmit.addParam("LOAN_NOS", chkArr);
		comSubmit.submit();
	}
	
	function fn_openEventInvestReq(loanNo) {
		var chkArr = new Array();
		chkArr.push(loanNo);
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/invest/eventReq");
		comSubmit.addParam("LOAN_NOS", chkArr);
		comSubmit.submit();
	}
	
	function fn_openSelectedInvestReq() {
		var chkArr = new Array();
		$('input:checkbox[name="itemCheckbox"]').each(function() {
			if(this.checked) {//checked 처리된 항목의 값
				chkArr.push(this.value);
			}
		});
		
		if(chkArr.length == 0) {
			alert("선택된 상품이 없습니다.");
			return false;
		} else {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("/invest/req");
			comSubmit.addParam("LOAN_NOS", chkArr);
			comSubmit.submit();
		}
	}
	
	function fn_setActiveCat(loanTypeCd) {
		$(".section-cat .item a").removeClass("active");
		$("#loanTypeSelector"+loanTypeCd).addClass("active");
	}
	
	function fn_selectLoanType(loanTypeCd) {
		gvar_loanTypeCd = loanTypeCd;
		
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/invest/list");
		comSubmit.addParam("LOAN_TYPE_CD", loanTypeCd);
		comSubmit.submit();
	}
	
	function fn_goAutoInvest() {
		if(confirm("자동투자를 설정해 두시면 오픈 직후 바로 투자하실 수 있습니다. 지금 설정하시겠습니까?")){
			// 운영서버일때 페이스북 쿼리 실행
			var hostname = location.hostname;
			if(hostname.indexOf("midrate.co.kr") > -1) {
				fbq('track', 'goAutoInvest');
			}
			gfn_goMypageMenu(3);
		} else {
			return;
		}
	}
	
	// input에서 enter키 입력시
	function fn_hitEnterKey(event) {
		if(event.keyCode == 13) {
			fn_selectInvestList(1);
		} else {
			event.keyCode == 0;
			return;
		}
	}
</script>

	<!-- begin this page -->
	<section id="investList-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<div class="title">투자상품</div>
				<div class="content">
					<div class="wrap">
						<div class="box-wrap">
							<div class="box">
								<div class="text">
									총 투자금액
								</div>
								<div class="amt">
									${inVO.sum_invest_price * 10000} <font size="4">원</font>
								</div>
							</div>
						</div>
						<div class="box-wrap">
							<div class="box">
								<div class="text">
									평균 연 수익률
								</div>
								<div class="amt">
									${proCalcVO.rate_average} <font size="4">%</font>
								</div>
							</div>
						</div>
						<!-- 
						<div class="box-wrap">
							<div class="box">
								<div class="text">
									총 투자자
								</div>
								<div class="amt">
									3,969 <font size="4">명</font>
								</div>
							</div>
						</div>
						 -->
						<div class="content-text large">
							<a href="/invest/guide" class="btn btn-transparent solid">
								<i class="glyphicon glyphicon-info-sign" style="font-size: 25px;"></i>
								<br>
								투자안내
							</a>
							<a href="/invest/history" class="btn btn-transparent solid">
								<i class="glyphicon glyphicon-folder-open" style="font-size: 25px;"></i>
								<br>
								상환완료 투자
							</a>
						</div>
						<div class="content-text small">
							<a href="/invest/guide" class="btn btn-transparent solid">
								<i class="glyphicon glyphicon-info-sign" style="font-size: 25px;"></i>
								<br>
								투자안내
							</a>
							<a href="/invest/history" class="btn btn-transparent solid">
								<i class="glyphicon glyphicon-folder-open" style="font-size: 25px;"></i>
								<br>
								상환완료 투자
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Event Section
	==========================================-->
	<section id="invest-event" style="display: none;">
		<div class="container"> <!-- Container -->
			<div class="section-title text-center">
				<div class="title" id="pageTitle"><strong>이벤트 투자상품</strong></div>
				<div class="line"></div>
			</div>
			<div id="eventList">
				<div class="eventlist-title">
					<div class="row">
						<div class="col-md-3">
							<div class="title">상품명</div>
						</div>
						<div class="col-md-1">
							<div class="grade">등급</div>
						</div>
						<div class="col-md-1">
							<div class="rate">리워드</div>
						</div>
						<div class="col-md-1">
							<div class="period">기간</div>
						</div>
						<div class="col-md-1">
							<div class="amt">모집금액</div>
						</div>
						<div class="col-md-1">
							<div class="period">상환방식</div>
						</div>
						<div class="col-md-2">
							<div class="stats">모집현황</div>
						</div>
						<div class="col-md-2">
						</div>
					</div>
				</div>
				
				<!-- 
				<div id="eventListBody">
					
						
					
				</div>
				 -->
				
			</div>
		</div>
	</section>
	
	<!-- Good Section
	==========================================-->
	<section id="invest-good">
		<div class="container"> <!-- Container -->
			<div class="section-title text-center">
				<div class="date" id="today">2019.08.08</div>
				<div class="subTitle">
					현재까지 <font class="font-purple"><strong><span id="totalLoanCnt">792</span></strong></font> 개, 총 투자건수 <font class="font-purple"><strong><span id="totalInvestCnt">116,600</span></strong></font> 회
				</div>
			</div>
			<div class="section-cat">
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('')" id="loanTypeSelector" class="active">
						전체
					</a>
				</span>| 
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('01')" id="loanTypeSelector01">
						개인신용
					</a>
				</span>| 
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('02')" id="loanTypeSelector02">
						법인신용
					</a>
				</span>|
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('03')" id="loanTypeSelector03">
						개인사업자
					</a>
				</span>|
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('04')" id="loanTypeSelector04">
						부동산담보
					</a>
				</span>|
				<span class="item">
					<a href="javascript:(void(0));" onclick="fn_selectLoanType('06')" id="loanTypeSelector06">
						동산담보
					</a>
				</span>
			</div>
			<div class="section-selector">
				<select class="form-control" name="pageSelector" id="pageSelector">
					<option value="6">6개씩 보기</option>
					<option value="12">12개씩 보기</option>
					<option value="24">24개씩 보기</option>
					<option value="48">48개씩 보기</option>
				</select>
				<div class="selector-box">
					<a href="javascript:(void(0));" onclick="fn_showList()" id="listSelector" class="active">
						<i class="glyphicon glyphicon-th-list"></i>
					</a>
				</div>
				<div class="selector-box">
					<a href="javascript:(void(0));" onclick="fn_showThum()" id="thumSelector">
						<i class="glyphicon glyphicon-th"></i>
					</a>
				</div>
			</div>
			<div class="row" id="goodThum">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">
					<div class="good-item">
						<div class="item-top">
							<a href="javascript:(void(0));" onclick="fn_openInvestDetail(790)">
								<div class="hover-text">
									<div class="clearfix"></div>
									<div class="hover-button"></div>
								</div>
							</a>
							<div class="item-top-badge">
								<span class="label label-primary">LTV 42%</span>
							</div>
							<div class="item-top-badge text-right">
								<span class="label label-primary animated infinite flash">모집중</span>
							</div>
							<div class="item-middle-badge">
								<div style="display: inline-block;">부동산 431호</div>
								<div style="display: inline-block;">
									<img src="/images/investV2/banner_icon_nmvbls.png">
								</div>
							</div>
							<div class="item-bottom-badge text-right">
								<span>자동투자 100%</span>
							</div>
							<img src="/images/investV2/banner_bg_nmvbls.png" class="img-responsive">
						</div>
						<div class="item-bottom">
							<div class="item-bottom-text">
								<div class="row">
									<div class="col-xs-6">
										<h5>04-19-136</h5>
									</div>
								</div>
								<h4 style="text-align:center;">[부동산] 경기도 파주시 문산읍 토지(3차)</h4>
								<div class="progress">
									<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 57%">
										57%					
									</div>
								</div>
								<div class="item-top-text-num">
									<small>(168명)</small>
								</div>
							</div>
							<hr>
							<div class="grade">
								<div class="circle grade-MA">MA</div>
							</div>
							<div class="cat">
								<div class="title">연 수익률</div>
								<div class="sub">13<font size="1">%</font></div>
							</div>
							<div class="cat">
								<div class="title">기간</div>
								<div class="sub">9<font size="1">개월</font></div>
							</div>
							<div class="cat">
								<div class="title">모집금액</div>
								<div class="sub">2,500<font size="1">만원</font></div>
							</div>
							<div class="cat">
								<div class="title">상환방식</div>
								<div class="sub">만기일시</div>
							</div>
						</div>
					</div>
				</div>
<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">
<div class="good-item">		<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(784)">				<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">		<span class="label label-primary">LTV 65.22%</span>			</div>			<div class="item-top-badge text-right">		<span class="label label-primary">준비중</span>			</div>		<div class="item-middle-badge">			<div style="display: inline-block;">부동산 432호</div>		<div style="display: inline-block;"><img src="/images/investV2/banner_icon_nmvbls.png"></div>		</div>			<div class="item-bottom-badge text-right">		<span>자동투자 100%</span>			</div>	<img src="/images/investV2/banner_bg_nmvbls.png" class="img-responsive">		</div>		<div class="item-bottom">			<div class="item-bottom-text">				<div class="row">					<div class="col-xs-6">						<h5>04-19-130</h5>					</div>			<div class="col-xs-6 text-right">				<h5>8/8 14</h5>			</div>				</div>				<h4 style="text-align:center;">[부동산] 인천 서구 석남동 다세대</h4>				<div class="progress">				<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 0%">						0%					</div>				</div>				<div class="item-top-text-num">					<small>(0명)</small>				</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				<div class="title">연 수익률</div>				<div class="sub">12<font size="1">%</font></div>			</div>			<div class="cat">				<div class="title">기간</div>				<div class="sub">9<font size="1">개월</font></div>			</div>			<div class="cat">				<div class="title">모집금액</div>				<div class="sub">1,500<font size="1">만원</font></div>			</div>			<div class="cat">				<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	</div></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(792)">				<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">		<span class="label label-primary">LTV 44.74%</span>			</div>			<div class="item-top-badge text-right">			<span class="label label-primary">상환중</span>			</div>		<div class="item-middle-badge">			<div style="display: inline-block;">부동산 430호</div>		<div style="display: inline-block;"><img src="/images/investV2/banner_icon_nmvbls.png"></div>		</div>			<div class="item-bottom-badge text-right">			<span>자동투자 100%</span>			</div>	<img src="/images/investV2/banner_bg_nmvbls.png" class="img-responsive">		</div>		<div class="item-bottom">			<div class="item-bottom-text">				<div class="row">					<div class="col-xs-6">						<h5>04-19-137</h5>					</div>				</div>				<h4 style="text-align:center;">[부동산] 서울시 관악구 봉천동 다세대</h4>				<div class="progress">				<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">						100%					</div>				</div>				<div class="item-top-text-num">					<small>(186명)</small>				</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				<div class="title">연 수익률</div>				<div class="sub">11<font size="1">%</font></div>			</div>			<div class="cat">				<div class="title">기간</div>				<div class="sub">9<font size="1">개월</font></div>			</div>			<div class="cat">				<div class="title">모집금액</div>				<div class="sub">3,500<font size="1">만원</font></div>			</div>			<div class="cat">				<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	</div></div><div class="clearfix"></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(791)">				<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">			<span class="label label-rwrdgd">리워드</span>			</div>			<div class="item-top-badge text-right">			<span class="label label-primary">모집완료</span>			</div>		<div class="item-middle-badge">			<div style="display: inline-block;">홈쇼핑 120호</div>		<div style="display: inline-block;"><img src="/images/investV2/banner_icon_homeshopping.png"></div>		</div>			<div class="item-bottom-badge text-right">			<span>자동투자 100%</span>			</div>	<img src="/images/investV2/banner_bg_homeshopping.png" class="img-responsive">		</div>		<div class="item-bottom">			<div class="item-bottom-text">				<div class="row">					<div class="col-xs-6">						<h5>02-19-42</h5>					</div>				</div>				<h4 style="text-align:center;">[홈쇼핑] 쿠쿠 회전 블렌더(3차)</h4>				<div class="progress">				<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">						100%					</div>				</div>				<div class="item-top-text-num">					<small>(277명)</small>				</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				<div class="title">연 수익률</div>				<div class="sub">15.5<font size="1">%</font></div>			</div>			<div class="cat">				<div class="title">기간</div>				<div class="sub">6<font size="1">개월</font></div>			</div>			<div class="cat">				<div class="title">모집금액</div>				<div class="sub">7,000<font size="1">만원</font></div>			</div>			<div class="cat">				<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	</div></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(785)">				<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">		<span class="label label-primary">LTV 66.67%</span>			</div>			<div class="item-top-badge text-right">			<span class="label label-primary">상환중</span>			</div>		<div class="item-middle-badge">			<div style="display: inline-block;">부동산 429호</div>		<div style="display: inline-block;"><img src="/images/investV2/banner_icon_nmvbls.png"></div>		</div>			<div class="item-bottom-badge text-right">			<span>자동투자 100%</span>			</div>	<img src="/images/investV2/banner_bg_nmvbls.png" class="img-responsive">		</div>		<div class="item-bottom">			<div class="item-bottom-text">				<div class="row">					<div class="col-xs-6">						<h5>04-19-131</h5>					</div>				</div>				<h4 style="text-align:center;">[부동산] 서울 마포구 망원동 다세대</h4>				<div class="progress">				<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">						100%					</div>				</div>				<div class="item-top-text-num">					<small>(277명)</small>				</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				<div class="title">연 수익률</div>				<div class="sub">12<font size="1">%</font></div>			</div>			<div class="cat">				<div class="title">기간</div>				<div class="sub">9<font size="1">개월</font></div>			</div>			<div class="cat">				<div class="title">모집금액</div>				<div class="sub">5,000<font size="1">만원</font></div>			</div>			<div class="cat">				<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	</div></div><div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 good-item-wrap">	<div class="good-item">		<div class="item-top">			<a href="javascript:(void(0));" onclick="fn_openInvestDetail(782)">				<div class="hover-text">					<div class="clearfix"></div>					<div class="hover-button"></div>				</div>			</a>			<div class="item-top-badge">			<span class="label label-rwrdgd">리워드</span>			</div>			<div class="item-top-badge text-right">			<span class="label label-primary">상환중</span>			</div>		<div class="item-middle-badge">			<div style="display: inline-block;">홈쇼핑 119호</div>		<div style="display: inline-block;"><img src="/images/investV2/banner_icon_homeshopping.png"></div>		</div>			<div class="item-bottom-badge text-right">			<span>자동투자 100%</span>			</div>	<img src="/images/investV2/banner_bg_homeshopping.png" class="img-responsive">		</div>		<div class="item-bottom">			<div class="item-bottom-text">				<div class="row">					<div class="col-xs-6">						<h5>02-19-41</h5>					</div>				</div>				<h4 style="text-align:center;">[홈쇼핑] 도깨비방망이(V9000)</h4>				<div class="progress">				<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">						100%					</div>				</div>				<div class="item-top-text-num">					<small>(186명)</small>				</div>			</div>			<hr>			<div class="grade">				<div class="circle grade-MA">MA</div>			</div>			<div class="cat">				<div class="title">연 수익률</div>				<div class="sub">15<font size="1">%</font></div>			</div>			<div class="cat">				<div class="title">기간</div>				<div class="sub">6<font size="1">개월</font></div>			</div>			<div class="cat">				<div class="title">모집금액</div>				<div class="sub">5,000<font size="1">만원</font></div>			</div>			<div class="cat">				<div class="title">상환방식</div>				<div class="sub">만기일시</div>			</div>		</div>	</div></div><div class="clearfix"></div></div>
			<div id="goodList">
				<div class="goodlist-title">
					<div class="row col">
						<!-- 
						<div class="col-md-1">
							<div class="check">
								<input type="checkbox" name="allCheckbox">
							</div>
						</div>
						 -->
						<div class="col-md-4 col">
							<div class="title">상품명</div>
						</div>
						<div class="col-md-1 col">
							<div class="grade">등급</div>
						</div>
						<div class="col-md-1 col">
							<div class="rate">연 수익률</div>
						</div>
						<div class="col-md-1 col">
							<div class="period">기간</div>
						</div>
						<div class="col-md-1 col">
							<div class="amt">모집금액</div>
						</div>
						<div class="col-md-1 col">
							<div class="amt">상환방식</div>
						</div>
						<div class="col-md-1 col">
							<div class="stats">모집현황</div>
						</div>
						<div class="col-md-2 col">
							<!-- 
							<div class="invest">
								<a href="javascript:(void(0));" onclick='fn_openSelectedInvestReq()'>
									<span>일괄투자</span>
								</a>
							</div>
							 -->
							모집상태
						</div>
					</div>
				</div>
				
				<div class="goodlist-title-short">
					<hr>
				</div>
				<div id="goodListBody"><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(790));">				<div class="id">04-19-136</div>				<div class="title">[부동산] 경기도 파주시 문산읍 토지(3차)</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(790));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(790));">				<div class="rate">13<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(790));">				<div class="period">9<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(790));">				<div class="amt">2,500<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(790));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 57%">					57%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">		<a href="javascript:(fn_openInvestReq(790));">			<span class="active">투자하기</span>		</a>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(784));">				<div class="id">04-19-130</div>				<div class="title">[부동산] 인천 서구 석남동 다세대</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(784));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(784));">				<div class="rate">12<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(784));">				<div class="period">9<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(784));">				<div class="amt">1,500<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(784));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 0%">					0%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">		<a href="javascript:(fn_goAutoInvest());">			<span class="active">준비중</span>		</a>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(792));">				<div class="id">04-19-137</div>				<div class="title">[부동산] 서울시 관악구 봉천동 다세대</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(792));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(792));">				<div class="rate">11<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(792));">				<div class="period">9<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(792));">				<div class="amt">3,500<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(792));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">					100%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">			<span>상환중</span>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(791));">				<div class="id">02-19-42</div>				<div class="title">[홈쇼핑] 쿠쿠 회전 블렌더(3차)</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(791));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(791));">				<div class="rate">15.5<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(791));">				<div class="period">6<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(791));">				<div class="amt">7,000<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(791));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">					100%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">			<span>모집완료</span>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(785));">				<div class="id">04-19-131</div>				<div class="title">[부동산] 서울 마포구 망원동 다세대</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(785));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(785));">				<div class="rate">12<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(785));">				<div class="period">9<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(785));">				<div class="amt">5,000<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(785));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">					100%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">			<span>상환중</span>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-9 col-sm-9 col-md-4">			<a href="javascript:(fn_openInvestDetail(782));">				<div class="id">02-19-41</div>				<div class="title">[홈쇼핑] 도깨비방망이(V9000)</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">등급</div>			<a href="javascript:(fn_openInvestDetail(782));">				<div class="grade grade-font-MA">MA</div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">연 수익률</div>			<a href="javascript:(fn_openInvestDetail(782));">				<div class="rate">15<font size="1">%</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">기간</div>			<a href="javascript:(fn_openInvestDetail(782));">				<div class="period">6<font size="1">개월</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">모집금액</div>			<a href="javascript:(fn_openInvestDetail(782));">				<div class="amt">5,000<font size="1">만원</font></div>			</a>		</div>		<div class="col-xs-3 col-sm-3 col-md-1 col">			<div class="item-title">상환방식</div>			<a href="javascript:(fn_openInvestDetail(782));">				<div class="amt">만기일시</div>			</a>		</div>		<div class="col-xs-9 col-sm-9 col-md-1 col">			<div class="progress">					<div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width:20px;width: 100%">					100%				</div>			</div>		</div>		<div class="col-xs-3 col-sm-3 col-md-2 col">			<div class="invest">			<span>상환중</span>			</div>		</div>	</div></div></div>
			</div>
			<div class="row">
				<div class="col-md-push-6 col-md-6">
					<form id="srchForm" class="text-right" onsubmit="return false;">
						<div style="display: inline-block;">
							<input type="text" class="form-control srchText" name="SRCH_TEXT" style="min-width: 260px;" onkeypress="fn_hitEnterKey(event)" placeholder="상품명, 상품ID 또는 상품별호수로 검색" maxlength="20">
						</div>
						<div style="display: inline-block;">
							<button type="button" class="btn btn-purple-transparent" id="srchTextBtn">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
						<div class="clearfix"></div>
					</form>
				</div>
				<div class="col-md-pull-6 col-md-6 text-left">
					<ul class="pagination pagination-sm" id="PAGE_NAVI"><li class="page-item first disabled"><a href="#" class="page-link">«</a></li><li class="page-item prev disabled"><a href="#" class="page-link">&lt;</a></li><li class="page-item active"><a href="#" class="page-link">1</a></li><li class="page-item"><a href="#" class="page-link">2</a></li><li class="page-item"><a href="#" class="page-link">3</a></li><li class="page-item"><a href="#" class="page-link">4</a></li><li class="page-item"><a href="#" class="page-link">5</a></li><li class="page-item next"><a href="#" class="page-link">&gt;</a></li><li class="page-item last"><a href="#" class="page-link">»</a></li></ul>
				</div>
			</div>
		</div>
	</section>
	<!-- for all pages -->
	
<!-- 카카오톡 세팅 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<!--footer start-->
			<%@ include file="../footer.jsp" %>
	<!--footer end-->
<script>
	<!-- Google Tag Manager -->
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-NFBRQ46');
</script>

<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1893138164280089'); // Insert your pixel ID here.
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1893138164280089&ev=PageView&noscript=1"
/></noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->

<script type="text/javascript">
	$(function() {
		// footer 로고 호버
		$('#fBLogo').hover(function() {
			$(this).attr("src", "/images/common/btn_footer_sns_facebook_hover.png");
		}, function() {
			$(this).attr("src", "/images/common/btn_footer_sns_facebook_default.png");
		});
		$('#brunchLogo').hover(function() {
			$(this).attr("src", "/images/common/btn_footer_sns_brunch_hover.png");
		}, function() {
			$(this).attr("src", "/images/common/btn_footer_sns_brunch_default.png");
		});
		$('#naverLogo').hover(function() {
			$(this).attr("src", "/images/common/btn_footer_sns_naver_hover.png");
		}, function() {
			$(this).attr("src", "/images/common/btn_footer_sns_naver_default.png");
		});
		$('#kakaoLogo').hover(function() {
			$(this).attr("src", "/images/common/btn_footer_sns_kakao_hover.png");
		}, function() {
			$(this).attr("src", "/images/common/btn_footer_sns_kakao_default.png");
		});
		
		//$('[data-toggle="popover"]').popover();
		//$('#top-guide-pop').popover();
		
		/*var pathname = location.pathname;
		if(pathname.substr(0,5) == "/loan") {
			$("#loanCopyright").show();
			$("#loanNotification").show();
		} else {
			$("#loanCopyright").hide();
			$("#loanNotification").hide();
		}*/
		
		$("#loanCopyright").show();
		$("#loanNotification").show();
		
		// 운영서버일때 페이스북 뷰컨텐츠 추적 실행
		var hostname = location.hostname;
		var pathname = location.pathname;
		if(hostname.indexOf("midrate.co.kr") > -1) {
			if(pathname.indexOf("/invest/detail/") > -1) {	// 투자상세
				window.onload = function() { typeof fbq==="function" && fbq('track', 'ViewContent'); };
			}
		}
	});
	
	window.fbAsyncInit = function() {
		var hostname = location.hostname;
		var appId = "";
		if(hostname.indexOf("midrate.co.kr") > -1) {
			appId = '779679155494047';
		} else {
			appId = '602706249888667';
		}
		FB.init({
			//appId : '602706249888667', // 개발 appID
			//appId : '779679155494047', // 실운영 appID
			appId : appId,
			cookie : true,
			xfbml : true,
			version : 'v2.5'
		});
	};
	
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if(d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
	function fn_notReady() {
		alert("곧 준비될 예정입니다.");
		return;
	}
	
</script>

<script type="text/javascript">
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('c7dcba21d939640b5090083d64029a03');
	Kakao.PlusFriend.createAddFriendButton({
		container: '#plusfriend-addfriend-button',
		plusFriendId: '_IIxkxeM' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
	});
	// 플러스친구 1:1채팅 버튼을 생성합니다.
	Kakao.PlusFriend.createChatButton({
		container: '#plusfriend-chat-button',
		plusFriendId: '_IIxkxeM' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
	});
</script>

<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","1004949496302293",{em:"too@root.com"},{agent:"tmgoogletagmanager"});fbq("track","PageView");</script>
</body>
</body>

</html>