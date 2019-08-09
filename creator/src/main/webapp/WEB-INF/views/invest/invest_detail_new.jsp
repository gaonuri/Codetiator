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
		$("#investBtn1").click(function() {
			location.href = "${pageContext.request.contextPath}/invest?user_num=${memVO.user_num}&busi_num=${memVO.busi_num}&project_num=${proVO.project_num}";
		});//investBtn1
		
		$("#investBtn2").click(function() {
			alert("로그인 하시기 바랍니다.");
			location.href = "${pageContext.request.contextPath}/login";
		});//investBtn2
	});//ready
	</script>
</head>
<style>
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block;
}
section {
    display: block;
}
body, html {
    font-family: 'Noto Sans KR', sans-serif;
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
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
#investDetail-banner {
    overflow: hidden;
    position: relative;
    color: #fff;
    height: 400px;
}
.text-center {
    text-align: center;
}
#investDetail-banner .section-body {
    color: #fff;
    position: relative;
    padding: 110px 20px 0px 20px;
}
#investDetail-banner .bannerWrap {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    max-width: 1170px;
    margin: 0 auto;
    display: inline-block;
}
#investDetail-banner .bannerWrap img {
    min-width: 100%;
}
img {
    vertical-align: middle;
    border: 0;
}
#loanHeadNmWrap {
    width: 90%;
    max-width: 1140px;
    margin: 0 auto;
    z-index: 100;
}
#loanHeadNmWrap .row {
    margin-top: 32px;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-12 {
    width: 100%;
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
.col-xs-12 {
    width: 100%;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    float: left;
}
.investBadgeList {
    font-weight: bold;
    text-align: left;
    margin-bottom: 10px;
}
ul, ol {
    padding: 0;
    webkit-padding: 0;
    moz-padding: 0;
    margin-top: 0;
    margin-bottom: 10px;
}
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#loanHeadNmWrap .row ol li {
    float: left;
    margin-right: 6px;
    margin-top: 4px;
    padding: 4px;
}
.badge_status {
    border: 1px solid #fc576e;
    background-color: #fc576e;
}
li {
    list-style-type: none;
    display: list-item;
    text-align: -webkit-match-parent;
}
.badge_deal {
    border: 1px solid #72398a;
    background-color: #72398a;
}
.badge_percent {
    border: 1px solid #fff;
}
.col-md-10 {
    width: 83.33333333%;
}
.loanGdId {
    font-size: 17px;
    font-weight: bold;
    margin-top: 12px;
}
.loanNm {
    font-size: 23px;
    font-weight: bold;
}
.col-md-2 {
    width: 16.66666667%;
}
.social {
    text-align: right;
    line-height: 2;
    vertical-align: middle;
}
a {
    color: #712594;
}
a {
    color: #337ab7;
    text-decoration: none;
}
a {
    background-color: transparent;
}
.social .text {
    padding: 0 0 0 11px;
}
.rpm_banner {
    background: url(${pageContext.request.contextPath}/resources/img/rpm_bgIMG.png) center 0% repeat;
}
p {
    margin: 0 0 10px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.right-col {
    padding-left: 0px;
}
.col-md-push-9 {
    left: 75%;
}
.col-md-3 {
    width: 25%;
}
.wrap {
    margin: 2px;
    letter-spacing: -1px;
}
.wrap .box.right {
    padding: 23px 11px 14px 11px;
}
.wrap .box {
    border: 1px solid #d9d9de;
}
.wrap .box.right .title {
    color: #3d3d3d;
    padding: 0 11px;
    margin-bottom: 23px;
    font-size: 13px;
    font-weight: normal;
}
.wrap .box.right .title .day {
    font-size: 20px;
    font-weight: bold;
}
.wrap .box.right .title .time {
    font-size: 18px;
    padding: 5px 0 10px;
}
.wrap .box.right hr {
    margin-top: 0px;
    margin-bottom: 0px;
}
hr {
    margin: 0px 20px;
    border: 0;
    border-top: 1px solid #eee;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}
.wrap .box.right .chart {
    text-align: center;
    margin-top: 26px;
}
.wrap .box.right .chart canvas {
    max-width: 150px;
}
audio, canvas, progress, video {
    display: inline-block;
    vertical-align: baseline;
}
.wrap .box.right .amt {
    text-align: center;
    margin-top: 30px;
    font-size: 26px;
    font-weight: 600;
    letter-spacing: 1;
    color: #777;
}
.font-purple {
    color: #712594 !important;
}
font[Attributes Style] {
    font-size: small;
}
.wrap .box.right .option {
    padding: 20px 0;
    color: #3d3d3d;
}
.wrap .box.right .option .row {
    margin-top: 10px;
}
.wrap .box .row {
    margin-left: 0px;
    margin-right: 0px;
}
.wrap .box.right .option .left {
    text-align: right;
    font-size: 15px;
    margin-top: 10px;
}
.col-md-5 {
    width: 41.66666667%;
}
.wrap .box.right .option .right {
    text-align: left;
    font-weight: 600;
    font-size: 20px;
    margin-top: 4px;
    color: #555;
}
.col-md-7 {
    width: 58.33333333%;
}
.wrap .box.right button {
    font-size: 16px;
    color: #fff;
    font-weight: bold;
}
.btn-purple-transparent {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 16px;
    border-style: none;
}
.btn-block {
    display: block;
    width: 100%;
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
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, html input[type="button"], input[type="reset"], input[type="submit"] {
    -webkit-appearance: button;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
button {
	overflow: visible;
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
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
.display-none {
    display: none;
}
.left-col {
    padding-right: 0px;
}
.col-md-pull-3 {
    right: 25%;
}
.col-md-9 {
    width: 75%;
}
.wrap .box.umbrellar {
    padding: 20px 11px;
    font-size: 16px;
    color: #858585;
    text-align: center;
}
button.close {
    -webkit-appearance: none;
    padding: 0;
    cursor: pointer;
    background: transparent;
    border: 0;
}
.close {
    float: right;
    font-size: 21px;
    font-weight: bold;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    filter: alpha(opacity=20);
    opacity: .2;
}
b, strong {
    font-weight: bold;
}
.wrap .box.loanDet {
    padding: 0px 0px 80px 0px;
}
.wrap .box.loanDet .row {
    padding: 0px 26px;
}
.investCont_tit {
    font-size: 23px;
    font-weight: 600;
    color: #712594;
    margin-top: 50px;
}
.investCont_tit b {
    font-weight: 800;
}
.title_2nd {
    font-size: 18px;
    font-weight: 600;
    color: #5c5c5c;
    margin-top: 30px;
    margin-bottom: 6px;
    letter-spacing: -1px;
}
.wrap .box.loanDet .content {
    padding: 6px 0px 10px 0px;
}
.wrap .box.loanDet .content table {
    margin-bottom: 0px;
    border: none;
}
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
}
table {
    background-color: transparent;
    border-spacing: 0;
    border-collapse: collapse;
    display: table;
    border-color: grey;
}
colgroup {
    display: table-column-group;
}
col[Attributes Style] {
    width: 25%;
}
col {
    display: table-column;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
.wrap .box.loanDet .content table tr {
    text-align: center;
    border-color: #d9d9d9;
    border-width: 1px;
    color: #3d3d3d;
    font-size: 14px;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.wrap .box.loanDet .content table .purpleTop th {
    text-align: center;
    background-color: #712594;
    border: none;
    color: #fff;
    font-size: 14px;
    border-left: 2px solid #fff;
    border-right: 2px solid #fff;
}
.table > caption + thead > tr:first-child > th, .table > colgroup + thead > tr:first-child > th, .table > thead:first-child > tr:first-child > th, .table > caption + thead > tr:first-child > td, .table > colgroup + thead > tr:first-child > td, .table > thead:first-child > tr:first-child > td {
    border-top: 0;
}
.table > thead > tr > th {
    vertical-align: bottom;
    border-bottom: 2px solid #ddd;
}
.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
.wrap .box.loanDet .content table tbody {
    color: #3d3d3d;
    border-bottom: 1px solid #555;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.left_table, .right_table, .bottom_table {
    margin-bottom: 16px;
}
.col-md-6 {
    width: 50%;
}
.tb_vert {
    border-top: 1px solid #555;
}
.title_td {
    font-weight: 600;
    font-size: 14px;
    background-color: #f7f7fe;
    color: #000;
    opacity: 0.8;
}
.bottom_table table th {
    border-top: 1px solid #555;
    background-color: #f7f7fe;
    text-align: center;
    color: #333;
    border-left: 2px solid #fff;
    border-right: 2px solid #fff;
}
.sameBrrwrList {
    text-align: right;
    margin-right: 40px;
    font-weight: 600;
    font-size: 12px;
    color: #712594;
}
#gradeDiv {
    margin-bottom: 60px;
}
.wrap .box.loanDet .col {
    padding: 0px;
}
.wrap_gCont {
    margin-top: 10px;
}
.grade_txt p {
    font-size: 15pt;
    font-weight: 600;
    color: #666;
    margin-bottom: 0;
}
p {
    margin: 0 0 10px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.grade_txt p b {
    font-size: 26pt;
    font-weight: 900;
    color: #712594;
}
.grade_IMG img {
    width: 100%;
    display: block;
    margin: 0 auto;
    padding-bottom: 10px;
}
.bgBL {
    background-color: #f7f7fe;
}
.wrap_gGraph {
    margin-top: 24px;
}
svg:not(:root) {
    overflow: hidden;
}
.wrap .box.loanDet .htmlTable {
    font-size: 14px;
}
.wrap .box.loanDet .htmlTable table {
    font-size: 14px;
}
.wrap .box.loanDet .htmlTable table tr.active th {
    background-color: #712594;
    color: #fff;
    font-size: 14px;
    border-left: 2px solid #fff;
    border-right: 2px solid #fff;
}
.wrap .box.loanDet .htmlTable table th {
    text-align: center;
    vertical-align: middle;
}
.xd {
    display: none;
}
.wrap .box.loanDet .htmlTable table td {
    text-align: center;
    vertical-align: middle;
}
.table_underline {
    border-bottom: 1px solid #555;
}
.nmvblsImg ul li {
    margin-top: 16px;
}
.nmvblsImg ul li {
    list-style-type: none;
}
#wowslider-container1.ws_gestures {
    cursor: -webkit-grab;
    cursor: -moz-grab;
    cursor: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAQAAADZc7J/AAAABGdBT…h0ZGF0ZTptb2RpZnkAMjAxNC0wNy0wN1QxMzo0OToxMCswMjowMOroGqgAAAAASUVORK5CYII=), move;
}
#wowslider-container1 {
    display: table;
    zoom: 1;
    position: relative;
    width: 100%;
    max-width: 1024px;
    max-height: 824px;
    margin: 0px auto 0px;
    z-index: 90;
    text-align: left;
    font-size: 10px;
    text-shadow: none;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
#wowslider-container1 .ws_images, #wowslider-container1 .ws_shadow {
    margin-bottom: 7.1em;
}
#wowslider-container1 .ws_images {
    position: relative;
    left: 0;
    top: 0;
    height: 100%;
    max-height: 768px;
    max-width: 1024px;
    vertical-align: top;
    border: none;
    overflow: hidden;
}
#wowslider-container1 .ws_images ul {
    position: relative;
    width: 10000%;
    height: 100%;
    left: 0;
    list-style: none;
    margin: 0;
    padding: 0;
    border-spacing: 0;
    overflow: visible;
    /* table-layout: fixed; */
}
#wowslider-container1 a {
    text-decoration: none;
    outline: none;
    border: none;
}
#wowslider-container1 .ws_fullscreen {
    display: none;
    position: absolute;
    font-family: "ws-fullscreen";
    top: .5em;
    right: .5em;
    font-size: 2.25em;
    z-index: 61;
    color: #712594;
}
#wowslider-container1 .ws_thumbs {
    position: absolute;
    text-align: left;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 7.1em;
    overflow: auto;
    z-index: 60;
}
#wowslider-container1 .ws_thumbs div {
    position: relative;
    letter-spacing: -4px;
    /* width: 34.8em; */
    height: 100%;
}
#wowslider-container1 .ws_images, #wowslider-container1 .ws_shadow {
    margin-bottom: 7.1em;
}
.tabSubTit {
    font-size: 18px;
    font-weight: 600;
    margin-top: 30px;
}
.wrap .box.loanDet .content p.calcLtv {
    font-size: 12px;
}
.safeDivWrap {
    text-align: center;
    margin-top: 36px;
    margin-bottom: 24px;
}
.col-md-4 {
    width: 33.33333333%;
}
.safeDivCont {
    display: inline;
    line-height: 1.4;
}
.safeCont_tit {
    font-size: 19px;
    font-weight: 600;
    color: #712594;
    line-height: 0;
}
.safeDivNum {
    font-size: 30px;
    font-weight: 400;
    color: #712594;
    text-align: center;
    margin-top: 20px;
    margin-bottom: 10px;
}
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transform: translate(0, 0);
}

</style>
<script type="text/javascript">
$(document).ready(function() {
$("#waterbubbleChart").waterbubble({
	// bubble size
	radius : 100,

	// border width
	lineWidth : 5,

	// data to present
	data : TOTAL_INVEST_PCNT / 100,

	// color of the water bubble
	waterColor : 'rgba(113,37,148,1)',

	// text color
	textColor : 'rgba(179,134,180,0.8)',

	// custom font family
	font : '',

	// show wave
	wave : true,

	// custom text displayed inside the water bubble
	txt : Math.round(TOTAL_INVEST_PCNT * 100) / 100 + '%',

	// enable water fill animation
	animation : true
	});
});
</script>
<body>
	<div id="wowslider_engine" style="position: absolute; left: -1000px; top: -1000px; opacity: 0.1;"><a href="http://wowslider.com">wowslider.com</a></div>

	<!-- for all pages -->
	

	
 

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
</script>

	<!-- begin this page -->
	
	<!-- F/O, wow 공통 jsp -->

<script type="text/javascript">
$(document).ready(function() {
	$(function() {
		// 현황사진 슬라이드 //
		$('#eventBanner').each(function(){	
			$('#eventBanner').tab('display','none');
			$(this).eq(0).tab('show');
		});
		
		$('#fBLogo').hover(function() {
			$(this).attr("src", "/images/common/btn_footer_sns_facebook_hover.png");
		}, function() {
			$(this).attr("src", "/images/common/btn_footer_sns_facebook_default.png");
		});
		
		// 숫자만 입력 체크
		$("#reqTelNo").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		
		// 참고파일 다운로드
		$("a[name='file']").on("click", function(e) { // 파일 다운로드
			e.preventDefault();
			fn_downloadFile($(this));
		});
		
		// LOAN_TYPE_CD : 01 개인신용/02 사업자/03 소상공인/04 부동산/05 이벤트/06 동산(명품)
		var LOAN_TYPE_CD = "04";
		
		// 상품구분에 따른 세팅
		var SPECIAL_LOAN_YN = "N";
		var BANNER_IMG_URL = "";
		var BANNER_TYPE_CD = "07";
		var BANNER_TITLE = "부동산 431호";
		if(BANNER_TYPE_CD != "" && BANNER_TITLE != "") {
			$('#standardBanner').show();
		} else {
			if(BANNER_IMG_URL == "") {
				$('#specialBanner').hide();
			} else {
				$('#specialBanner').show();
			}
		}
	
		if(SPECIAL_LOAN_YN == "Y") {	// 특별상품
			$('#specialHtml').show();
			$('#rollingImgHtml').show();
			$('#loanFileHtml').show();
		} else {	// 일반상품
			$('#commonHtml').show();
		}
		
		// 대출유형에 따른 세팅
		if(LOAN_TYPE_CD == "01" ) {	// 개인신용
			$('#commonHtmlCrdt').show();
			$('#crdtHtml').show();
			fn_setCrdt();
		} else if(LOAN_TYPE_CD == "02"|| LOAN_TYPE_CD == "03") {	// 법인신용, 개인사업자신용
			$('#commonHtmlCrdt').show();
		} else if(LOAN_TYPE_CD == "04") {	// 부동산
		} else if(LOAN_TYPE_CD == "05") {	// 이벤트
		} else if(LOAN_TYPE_CD == "06") {	// 동산(명품)
			fn_setMvbls();
		}
		
		if(LOAN_TYPE_CD != "05") {	// 이벤트 제외
			// 예상 상환일정(기본값 100만원)
			fn_selectExpctRepayScheduleList(1000000);
			$('#excptRepayScheduleAmtSelect').val(100);
			
			var loanImgListSize = "0";
			if(loanImgListSize > 0) {
				$('#rollingImgHtml').show();
			}
			var loanFileListSize = "1";
			if(loanFileListSize > 0) {
				$('#loanFileHtml').show();
			}
		}
		
		if(LOAN_TYPE_CD == "04" || LOAN_TYPE_CD == "06") {	// 부동산, 동산만
			var eventDispYn = "N";
			if(eventDispYn == "S") {
				$('#eventHtml1').show();
			} else if(eventDispYn == "Y") {
				$('#eventHtml2').show();
			} else if(eventDispYn == "H") {
				$('#eventHtml3').show();
			}
		}
		
		// 엄브렐러 배너 표시
		var LOAN_PERIOD_NM = "9";
		var LOAN_AMT = "25000000";
		var REPAY_TYPE_CD = "3";
		if(LOAN_PERIOD_NM <= 18 && LOAN_AMT <= 30000000
			&& REPAY_TYPE_CD == '1' && LOAN_TYPE_CD == "01") {
			$('#umbrellarBanner').show();
		}
		
		// 자동투자 배너 표시
		var OPEN_AUTO_INVEST_YN = "Y";
		var AUTO_INVEST_YN = "Y";
		var APLY_RESULT_YN = "N";
		if(OPEN_AUTO_INVEST_YN == 'Y') {
			if(AUTO_INVEST_YN == 'Y') {
				if(APLY_RESULT_YN == 'N') {
					$('#runAutoInvestBanner').show();
				} else {
					
				}
			} else {
				$('#autoInvestBanner').show();
			}
		}
		
		var TOTAL_INVEST_PCNT = "58";
		if(TOTAL_INVEST_PCNT == "") {
			TOTAL_INVEST_PCNT = 0;
		}

		var REPAY_STATS_CD = "01";
		var INVEST_DISP_YN = "Y";
		if(INVEST_DISP_YN == "Y") {
			if(REPAY_STATS_CD == "01") {
				$('#alarmDiv').hide();
				// 마감까지 잔여 시간 표시
				setInterval(remaindEndTime,1000);
			} else {
				$('#timeTitle').html('모집 완료');
				$('#timeSub').html('');
				$('#alarmDiv').show();
			}
		} else {
			if(REPAY_STATS_CD == "01") {
				var openDate = "2019-08-07".replace(/-/gi, "");
				var openHour = "14:00:00".replace(/:/gi, "");
				// 상품 오픈까지 잔여 시간 표시
				if(openDate != "" && openHour != "") {
					setInterval(fn_remaindOpenTime, 1000);
				} else {
					$('#timeTitle').html('상품준비중');
					$('#timeSub').html('');
					$('#alarmDiv').show();
				}
			} else if(REPAY_STATS_CD == "07") {
				$('#alarmDiv').show();
			} else {
				$('#timeTitle').html('모집 종료');
				$('#timeSub').html('');
				$('#alarmDiv').show();
			}
		}
		
		$("#showScheduleListA").on("click", function() {
			$('#scheduleListBody').removeClass("animated fadeOut");
			$('#scheduleListBody').addClass("animated fadeIn");
			$('#scheduleListBody').show();
			$('#showScheduleListA').hide();
			$('#hideScheduleListA').show();
		});
		
		$("#hideScheduleListA").on("click", function() {
			$('#scheduleListBody').removeClass("animated fadeIn");
			$('#scheduleListBody').addClass("animated fadeOut");
			$('#scheduleListBody').hide();
			$('#showScheduleListA').show();
			$('#hideScheduleListA').hide();
		});
		
		if($(window).width() < 767) {
			$('#scheduleListBody').show();
		}
		
		// 툴팁 초기화
		$('[data-toggle="tooltip"]').tooltip();
		
		// 팝오버 초기화
		$('[data-toggle="popover"]').popover();
		
		$("#excptRepayScheduleAmtSelect").on("change", function() {
			fn_selectExpctRepayScheduleList(this.value * 10000);
		});
		
		// 로그인 상태면 투자한도 표시
		var LMT_DISP_YN = "N";
		if(LMT_DISP_YN == "Y") {
			var DEPOSIT_AMT = "";
			var POINT = "";
			var INVSTR_TYPE_LMT_AMT = "";
			var BRRWR_LMT_AMT = "";
			var INVEST_OK_AMT = "";
			var DEPOSIT_AMT_POINT = parseInt(DEPOSIT_AMT) + parseInt(POINT);
			
			var minArr = [];
			if(INVSTR_TYPE_LMT_AMT > -1) {
				minArr.push(INVSTR_TYPE_LMT_AMT);
				minArr.push(BRRWR_LMT_AMT);
			}
			minArr.push(INVEST_OK_AMT);
			var lmtAmtMin = parseInt(Math.floor(Math.min.apply(null, minArr) / 10000));
			
			$('#lmtAmtDiv').show();
			$('#lmtAmt').text(comma(lmtAmtMin));
		}
		
		var investorYn = "N";
		if(investorYn == "Y") {
			// 상품 진행상황 표시
			$('#loanNoticeListDiv').show();
			
			var P2PLoanInformationListYn = "";
			if(P2PLoanInformationListYn == "Y") {
				// P2P 대출정보 목록조회 표시
				var Dpnm = "";
				var BncdNm = "";
				var BrwAcno = "";
				var LonApcYmd = "";
				var LonTrm = "";
				var InvSumAmt = "";
				var RpaySumAmt = "";
				var str = "";
				
				var bodyS = $("#P2PLoanInformationListBodyS");
				bodyS.empty();
				str += "<tr>";
				str += "	<td>" + maskCusNm(Dpnm) + "</td>";
				str += "	<td>" + BncdNm + "</td>";
				str += "	<td>" + BrwAcno + "</td>";
				str += "</tr>";
				str += "<tr>";
				str += "	<td>" + LonApcYmd + "</td>";
				str += "	<td>" + LonTrm + "</td>";
				str += "	<td>" + comma(InvSumAmt) + "</td>";
				str += "</tr>";
				bodyS.append(str);
				
				str = "";
				var bodyL = $("#P2PLoanInformationListBodyL");
				bodyL.empty();
				str += "<tr>";
				str += "	<td>" + maskCusNm(Dpnm) + "</td>";
				str += "	<td>" + BncdNm + "</td>";
				str += "	<td>" + BrwAcno + "</td>";
				str += "	<td>" + LonApcYmd + "</td>";
				str += "	<td>" + LonTrm + "</td>";
				str += "	<td>" + comma(InvSumAmt) + "</td>";
				str += "</tr>";
				bodyL.append(str);
				
				$('#P2PLoanInformationListDiv').show();
			}
		}
		
		var REQ_STATS_CD = "08";
		var REPAY_STATS_NM = "모집중";
		if(REQ_STATS_CD == "08") {
			if(INVEST_DISP_YN == "Y") {
				$("#REQ_STATS_CD > span").text("모집중");
			} else {
				$("#REQ_STATS_CD > span").text("준비중");
			}
		} else {
			$("#REQ_STATS_CD > span").text(REPAY_STATS_NM);
		}
		
		var BANNER_TITLE = "부동산 431호";
		$("#BANNER_TITLE > span").text(BANNER_TITLE);
		
		var AUTO_INVEST_LIMIT_PCRNT = "100.0";
		if(AUTO_INVEST_YN == "Y") {
			$("#AUTO_INVEST_LIMIT_PCRNT > span").text(AUTO_INVEST_LIMIT_PCRNT);
		} else {
			if(OPEN_AUTO_INVEST_YN == "Y") {
				$("#AUTO_INVEST_LIMIT_PCRNT > span").text(AUTO_INVEST_LIMIT_PCRNT);
			}
		}
		
		// 정보공개여부 세팅
		var DET_OPEN_YN = "Y";
		if(DET_OPEN_YN == "N" && investorYn == "N") {
			$("div.infoOpenDiv").hide();
			$("#closedInfoTxt").text("\"본 투자 상품은 경매 낙찰가액에 영향을 줄 수 있는 정보가 포함되어 있으므로 상품모집이 완료된 후에는 투자하신 분에 한하여 정보가 열람됩니다.\"");
			$("#closedInfoDiv").show();
		} else {
			var CRPRTN_INVEST_CUS_NO = "";
			if(CRPRTN_INVEST_CUS_NO != "") {
				$("div.infoOpenDiv").hide();
				$("#closedInfoTxt").text("\"본 상품은 법인투자자의 모집금액 전액 투자가 예정된 상품으로 당사자간 협의에 따라 별도의 투자 상세페이지가 제공되지 않습니다.\"");
				$("#closedInfoDiv").show();
			}
		}
	});
	
	function fn_remaindOpenTime() {
		var timeTitle = $('#timeTitle');
		var timeSub = $('#timeSub');
		var now = new Date();
		var openDate = "2019-08-07".replace(/-/gi, "");
		var openHour = "14:00:00".replace(/:/gi, "");
		var openY = openDate.substring(0, 4);
		var openM = openDate.substring(4, 6);
		var openD = openDate.substring(6, 8);
		var openH = openHour.substring(0, 2);
		var openMin = openHour.substring(2, 4);
		var open = new Date(openY, openM-1, openD, openH, openMin, 00);
		var nt = now.getTime();
		var ot = open.getTime();
		
		sec = parseInt(ot - nt) / 1000;
		var orgSec = sec;
		if(sec > 1) {
			timeTitle.html('상품 오픈까지');
			
			sec = (sec - (hour * 60 * 60));
			min = parseInt(sec / 60);
			sec = parseInt(sec - (min * 60));
			
			var hourHtml = "";
			if(day > 0) {
				hourHtml += "<strong>" + day + "</strong>" + "<font size='2'>일</font> ";
			}
			if(hour > 0) {
				hourHtml += "<strong>" + hour + "</strong>" + "<font size='2'>시간</font> ";
			}
			if(min > 0) {
				hourHtml += "<strong>" + min + "</strong>" + "<font size='2'>분</font> ";
			}
			if(orgSec < 10) {
				hourHtml += "<span class='animated infinite flash'>" + sec + "</span>" + "<font size='2'>초 남았습니다.</font>";
			} else {
				hourHtml += "<strong>" + sec + "</strong>" + "<font size='2'>초 남았습니다.</font>";
			}
			if(orgSec < 60) {
				hourHtml = "<span class='font-red'>" + hourHtml + "</span>";
			}
			
			timeSub.html(hourHtml);
			$('#alarmDiv').show();
		} else {
			var CRPRTN_INVEST_CUS_NO = "";
			if(CRPRTN_INVEST_CUS_NO == "") {
				$('#autoInvestSetBtn').addClass('animated flipOutX');
				$('#autoInvestSetBtn').hide();
				$('#investBtn').addClass('animated flipInX');
				$('#investBtn').show();
				
				$('#timeTitle').html('모집중');
				$('#timeSub').html('');
				$('#alarmDiv').addClass('animated flipOutX').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
					$('#alarmDiv').hide();
				});
			}
		}
	}

	function remaindEndTime() {
		var timeTitle = $('#timeTitle');
		var timeSub = $('#timeSub');
		var now = new Date();
		var endDate = "2019-08-30".replace(/-/gi, "");
		var endY = endDate.substring(0, 4);
		var endM = endDate.substring(4, 6);
		var endD = endDate.substring(6, 8);
		var end = new Date(endY, endM-1, endD, 23, 59, 59);
		var nt = now.getTime();
		var et = end.getTime();
		
		sec = parseInt(et - nt) / 1000;
	}
	
	function fn_doInvest() {
		var LOAN_NOS = [];
		LOAN_NOS.push("790");
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/invest/req");
		comSubmit.addParam("LOAN_NOS", LOAN_NOS);
		comSubmit.submit();
	}
	
	function fn_doEventInvest() {
		var LOAN_NOS = [];
		LOAN_NOS.push("790");
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/invest/eventReq");
		comSubmit.addParam("LOAN_NOS", LOAN_NOS);
		comSubmit.submit();
	}
	
	function fn_openAlarm() {
		$('#alarmModal').modal('show');
	}
	
	function fn_insertAlarm() {
		var reqCusNm = $("#reqCusNm").val();
		var reqTelNo = $("#reqTelNo").val().replace(/-/gi, "");
		
		if(reqCusNm == "" || reqCusNm == undefined || reqCusNm == null) {
			alert("성함을 입력해 주세요.");
			$("#reqCusNm").focus();
			return false;
		}
		
		if(reqTelNo == "" || reqTelNo == undefined || reqTelNo == null) {
			alert("이메일 또는 전화번호를 입력해 주세요.");
			$("#reqEmail").focus();
			return false;
		}
		
		// 운영서버일때 페이스북 쿼리 실행
		var hostname = location.hostname;
		if(hostname.indexOf("creator.co.kr") > -1) {
			fbq('track', 'investDetailAlarmReq');
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/invest/insertInvestAlarmReq");
		comAjax.setCallback("fn_insertAlarmCallback");
		comAjax.addParam("reqCusNm", reqCusNm);
		comAjax.addParam("reqTelNo", reqTelNo);
		comAjax.ajax();
	}
	
	function fn_insertAlarmCallback(data) {
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		$('#alarmModal').modal('hide');
	}
	
	function fn_kakaoAddFriend() {
		// 운영서버일때 페이스북 쿼리 실행
		var hostname = location.hostname;
		if(hostname.indexOf("creator.co.kr") > -1) {
			fbq('track', 'kakaoAddFriend');
		}
		window.open("https://goto.kakao.com/@creator", "_blank");
	}
	
	function fn_goAutoInvest() {
		// 운영서버일때 페이스북 쿼리 실행
		var hostname = location.hostname;
		if(hostname.indexOf("creator.co.kr") > -1) {
			fbq('track', 'goAutoInvest');
		}
		gfn_goMypageMenu(3);
	}
	
	function fn_setCrdt() {
		var FINAL_CRDT_SCORE_1000 = "976.0";
		// 하프게이지 챠트
		var meter = new RGraph.Meter({
			id : 'halfGauge',
			min : 0,
			max : 1000,
			value : FINAL_CRDT_SCORE_1000,
			options : {
				anglesStart : RGraph.PI,
				anglesEnd : RGraph.TWOPI,
				linewidthSegments : 2,
				textSize : 10,
				strokestyle : 'white',
				linewidth: 15,
				segmentRadiusStart : 60,
				border : 0,
				tickmarksSmallNum : 0,
				tickmarksBigNum : 0,
				adjustable : true,
				needleRadius : 45,
				colorsRanges: [
					[0,47, '#e08484'],
					[47,95, '#e08484'],
					[95,143, '#e08484'],
					[143,190, '#e1b48f'],
					[190,238, '#e1b48f'],
					[238,286, '#e1b48f'],
					[286,333, '#fae053'],
					[333,381, '#fae053'],
					[381,429, '#fae053'],
					[429,476, '#93d193'],
					[476,524, '#93d193'],
					[524,571, '#93d193'],
					[571,619, '#99e0e0'],
					[619,667, '#99e0e0'],
					[667,714, '#99e0e0'],
					[714,762, '#8282cc'],
					[762,810, '#8282cc'],
					[810,857, '#8282cc'],
					[857,905, '#ac7fad'],
					[905,952, '#ac7fad'],
					[952,1000, '#ac7fad']
				],
				labels: false
			}
		}).on('beforedraw', function(obj) {
			RGraph.clear(obj.canvas, 'white');
		}).draw();
		
		var MONTH_LIV_COST = "";
		var MONTH_FIN_COST = "";
		var MONTH_DISPOS_SAL = "";
		var totalCost = parseInt(MONTH_LIV_COST) + parseInt(MONTH_FIN_COST) + parseInt(MONTH_DISPOS_SAL);
		
		var MONTH_LIV_PCRT = Math.round(MONTH_LIV_COST / totalCost * 100);
		var MONTH_FIN_PCRT = Math.round(MONTH_FIN_COST / totalCost * 100);
		var MONTH_DISPOS_PCRT = Math.round(MONTH_DISPOS_SAL / totalCost * 100);
		
		var pieData = [parseInt(MONTH_LIV_PCRT), parseInt(MONTH_FIN_PCRT), parseInt(MONTH_DISPOS_PCRT)];
		
		if(MONTH_LIV_PCRT == 0 ) {
			MONTH_LIV_PCRT = "";
		} else {
			MONTH_LIV_PCRT = MONTH_LIV_PCRT + "%";
		}
		if(MONTH_FIN_PCRT == 0 ) {
			MONTH_FIN_PCRT = "";
		} else {
			MONTH_FIN_PCRT = MONTH_FIN_PCRT + "%";
		}
		if(MONTH_DISPOS_PCRT == 0 ) {
			MONTH_DISPOS_PCRT = "";
		} else {
			MONTH_DISPOS_PCRT = MONTH_DISPOS_PCRT + "%";
		}
		
		var pieLabels = [ MONTH_LIV_PCRT, MONTH_FIN_PCRT, MONTH_DISPOS_PCRT];
		
		// 파이 챠트
		var pie = new RGraph.Pie({
			id: 'pieChart',
			data: pieData,
			options: {
				strokestyle: 'white',
				colors: ['#712594','#b383b4','#dac2e6'],
				linewidth: 2,
				exploded: [],
				shadowOffsetx: 0,
				shadowOffsety: 0,
				shadowBlur: 0,
				textColor: '#3d3d3d',
				textSize: 10,
				labels: pieLabels,
				labelsSticks: false,
				clearto: 'white',
				gutterLeft: 35,
				gutterRight: 35,
				gutterTop: 35,
				gutterBottom: 35
			}
		}).roundRobin();
		
		// 스코어 챠트
		var stndrdDate = new Array(); 
		var reqScoreArrStr = "";
		var reqStndrdArrStr = "";
		var reqScoreArr = reqScoreArrStr.split(",");
		var reqStndrdArr = reqStndrdArrStr.split(",");
		for(var i=0; i<reqScoreArr.length;i++) reqScoreArr[i] = +reqScoreArr[i];

		$('#scoreChart').highcharts({
			chart: {
				type: 'area',
				height: 260,
				animation: true
			},
			title: {
				text: ''
			},
			xAxis: {
				categories : reqStndrdArr,
				lineColor: '#712594',
				lineWidth: 1,
				tickColor: '#712594',
				tickWidth: 1
			},
			yAxis: {
				title: {
					text: ''
				}
			},
			legend: {
				enabled: false
			},
			credits: {
				enabled: false
			},
			tooltip: {
				pointFormat: '{series.name} 평균점수 : <b>{point.y:,.0f}</b>',
				borderColor: '#712594'
			},
			plotOptions: {
				area: {
					marker: {
						fillColor : '#712594',
						enabled: false,
						symbol: 'circle',
						radius: 1,
						states: {
							hover: {
								enabled: true
							}
						}
					}
				},
				series: {
					fillColor: {
						linearGradient: [0, 0, 0, 300],
						stops: [
							[0, '#712594'],
							[1, Highcharts.Color('#712594').setOpacity(0).get('rgba')]
						]
					},
					lineColor: '#712594'
				}
			},
			series: [{
				name: 'NICE',
				data: reqScoreArr
			}]
		});
	}
	
	function fn_setMvbls() {
		// 챠트 세팅
		Highcharts.setOptions({
			colors : [ '#b386b4', '#712594']
		});
		
		$('#mvblsValueChart').highcharts({
			chart: {
				type: 'column',
				height: 320,
				animation: true
			},
			title: {
				text: ''
			},
			xAxis: {
				categories : [''],
				lineColor: '#712594',
				lineWidth: 1,
				tickColor: '#712594',
				tickWidth: 1
			},
			yAxis: {
				min: 0,
				title: {
					text: ''
				},
				stackLabels: {
					enabled: true,
					style: {
						fontWeight: 'bold',
						color: (Highcharts.theme && Highcharts.theme.background2) || '#712594'
					},
					formatter: function () {
						return comma(Math.round(this.total/10000)) + " 만원";
					}
				}
			},
			credits: {
				enabled: false
			},
			tooltip: {
				headerFormat: '',
				pointFormat: '',
				formatter: function () {
					return this.series.name + ":" + comma(Math.round(this.point.y/10000)) + " 만원";
				},
				borderColor: '#712594'
			},
			plotOptions: {
				column: {
					stacking: 'normal'
				}
			},
			series: [{
				name: '여유금액',
				data: []
			}, {
				name: '대출금액',
				data: []
			}]
		});
		
		var BRRWR_INFOS_YN = "";
		// 차입자정보가 없으면 담보물건정보 + 투자자보호로 표시
		if(BRRWR_INFOS_YN == "Y") {
			// 차입자정보 세팅
			var BRRWR_INFOS = "";
			var BRRWR_INFOSArr = BRRWR_INFOS.split(";");
			var BRRWR_INFOSStr = "";
			for(var i=0; i<BRRWR_INFOSArr.length;i++) {
				BRRWR_INFOSStr += "<tr><td>";
				BRRWR_INFOSStr += BRRWR_INFOSArr[i];
				BRRWR_INFOSStr += "</tr></td>";
			}
			$('#mvblsBrrwrsInfoTbody').empty();
			$('#mvblsBrrwrsInfoTbody').html(BRRWR_INFOSStr);
			$('#mvblsBrrwrsInfoCol').show();
		// 차입자정보가 입력되어 있으면 차입자정보 + 담보물건정보로 표시
		} else {
			// 투자자 보호(상품요약) 세팅
			var GUARD_TYPE_NMS = "대출실행 전 등기부 등본파악;전문감정평가 법인을 통한 감정가 산정;부실시 전문 매입업체에 매각;대출실행 전 근저당권부 질권 설정;대출실행 전 후순위 근저당권 설정;대출실행 전 선순위 근저당권 설정;대출실행 전 우선수익권설정";
			var GUARD_TYPE_NMSArr = GUARD_TYPE_NMS.split(";");
			var GUARD_TYPE_NMSStr = "";
			for(var i=0; i<GUARD_TYPE_NMSArr.length;i++) {
				GUARD_TYPE_NMSStr += "<tr><td>";
				GUARD_TYPE_NMSStr += GUARD_TYPE_NMSArr[i];
				GUARD_TYPE_NMSStr += "</tr></td>";
			}
			$('#mvblsGuardTypeTbody').empty();
			$('#mvblsGuardTypeTbody').html(GUARD_TYPE_NMSStr);
			$('#mvblsGuardTypeCol').show();
		}
		
		// 담보물건정보 세팅
		var MVBLS_INFOS = "";
		var MVBLS_INFOSArr = MVBLS_INFOS.split(";");
		var MVBLS_INFOSStr = "";
		for(var i=0; i<MVBLS_INFOSArr.length;i++) {
			MVBLS_INFOSStr += "<tr><td>";
			MVBLS_INFOSStr += MVBLS_INFOSArr[i];
			MVBLS_INFOSStr += "</tr></td>";
		}
		$('#mvblsInfoTbody').empty();
		$('#mvblsInfoTbody').html(MVBLS_INFOSStr);
		
		// 투자자 보호(상품요약) 세팅
		var GUARD_TYPE_CDS = "";
		var GUARD_TYPE_CDSArr = GUARD_TYPE_CDS.split(",");
		for(var i=0; i<GUARD_TYPE_CDSArr.length;i++) {
			$('#mvblsGuardTypeDiv'+GUARD_TYPE_CDSArr[i]).show();
		}
		
		$('#commonHtmlMvbls').show();
	}
	
	function fn_openInvestDetail(loanNo) {
		location.href='/invest/detail/'+loanNo;
	}
	
	function fn_openInvestRepaySchedule(loanNo) {
		location.href='/mypage/investRepaySchedule/'+loanNo;
	}
	
	function fn_selectExpctRepayScheduleList(investAmt) {
		var comAjax = new ComAjax();
		comAjax.setUrl("/invest/selectExpctRepayScheduleList");
		comAjax.setCallback("fn_selectExpctRepayScheduleListCallback");
		comAjax.addParam("LOAN_NO", "790");
		comAjax.addParam("INVEST_AMT", investAmt);
		comAjax.addParam("DSTRBTN_STNDRD_DATE", "2018-01-11");
		comAjax.ajax();
	}
	
	function fn_selectExpctRepayScheduleListCallback(data) {
		var body = $("#scheduleListBody");
		body.empty();
		var str = "";
		var dstrbtnRnd = 0;
		var dstrbtnAmt = 0;
		var prncplAmt = 0;
		var intrstAmt = 0;
		var taxAmt = 0;
		var tranAmt = 0;
		$.each(data.list, function(key, value){
			dstrbtnAmt += value.RND_EXPCT_DSTRBTN_AMT;
			prncplAmt += value.RND_PRNCPL_DSTRBTN_AMT;
			intrstAmt += value.RND_INTRST_DSTRBTN_AMT;
			taxAmt += value.RND_TAX_AMT;
			tranAmt += value.RND_TRAN_AMT;
			dstrbtnRnd = value.RND_CNT;
			
			str += "<div class=\"goodlist-item\">";
			str += "	<div class=\"row\">";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">회차</div>";
			str += "			<div class=\"round\">";
			str += "				" + value.RND + "/" + value.RND_CNT + "";
			str += "			</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">상환예정금</div>";
			str += "			<div>";
			str += "				" + comma(value.RND_EXPCT_DSTRBTN_AMT) + "<font size=\"1\">원</font>";
			str += "			</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">원금(+)</div>";
			str += "			<div class=\"repayAmt\">";
			str += "				" + comma(value.RND_PRNCPL_DSTRBTN_AMT) + "<font size=\"1\">원</font>";
			str += "			</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-12 col xd\">";
			str += "			<hr>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">이자(+)</div>";
			str += "			<div class=\"interest\">";
			str += "				" + comma(value.RND_INTRST_DSTRBTN_AMT) + "<font size=\"1\">원</font>";
			str += "			</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">";
			str += "				세금(-)";
			str += "			</div>";
			str += "			<div class=\"tax\">";
			str += "				" + comma(value.RND_TAX_AMT) + "<font size=\"1\">원</font>";
			str += "			</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-md-2 col\">";
			str += "			<div class=\"item-title\">입금액</div>";
			str += "			<div class=\"tranAmt\">";
			str += "				" + comma(value.RND_TRAN_AMT) + "<font size=\"1\">원</font>";
			str += "			</div>";
			str += "		</div>";
			str += "	</div>";
			str += "</div>";
		});
		body.append(str);
		
		$('#dstrbtnRnd').text(dstrbtnRnd);
		$('#dstrbtnAmt').text(comma(dstrbtnAmt));
		$('#prncplAmt').text(comma(prncplAmt));
		$('#intrstAmt').text(comma(intrstAmt));
		$('#taxAmt').text(comma(taxAmt));
		$('#tranAmt').text(comma(tranAmt));
		
		$('#scheduleDiv').show();
	}
	
	function fn_downloadFile(seq, id, insDate, brdId) {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/common/downloadFile/" + insDate);
		comSubmit.addParam("BRD_ID", brdId);
		comSubmit.addParam("SEQ", seq);
		comSubmit.addParam("ID", id);
		comSubmit.submit();
	}
	
	function fn_showMoreSameBrrwrList() {
		$("a[name='moreSameBrrwrA']").hide();
		$("a[name='hideSameBrrwrA']").show();
	}
	
	function fn_calcLtv() {
		var calcOuterVlAmt = parseInt($("#calcOuterVlAmt").val());
		var calcPrrOrdrAmt = parseInt($("#calcPrrOrdrAmt").val());
		var calcLoanAmt = parseInt($("#calcLoanAmt").val());
		
		if($("#calcOuterVlAmt").val() == "") {
			alert("감정가를 입력해 주세요.");
			$("#calcOuterVlAmt").val(0);
			$("#calcOuterVlAmt").focus();
			return;
		}
		
		if($("#calcPrrOrdrAmt").val() == "") {
			alert("선순위금액을 입력해 주세요.");
			$("#calcPrrOrdrAmt").val(0);
			$("#calcPrrOrdrAmt").focus();
			return;
		}
		
		if($("#calcLoanAmt").val() == "") {
			alert("대출금액을 입력해 주세요.");
			$("#calcLoanAmt").val(0);
			$("#calcLoanAmt").focus();
			return;
		}
		var calcListRsrvAmt = calcOuterVlAmt - (calcPrrOrdrAmt + calcLoanAmt);
		
		
		fn_calcActn();
	}
	
	function fn_calcLtvReset() {
		$("#calcLtvDiv").hide();
		var NMVBLS_OUTER_VL_AMT = "8500000000";
		var NMVBLS_PRR_ORDR_AMT = "3420000000";
		var LOAN_AMT = "150000000";
		$("#calcOuterVlAmt").val(NMVBLS_OUTER_VL_AMT/10000);
		$("#calcPrrOrdrAmt").val(NMVBLS_PRR_ORDR_AMT/10000);
		$("#calcLoanAmt").val(LOAN_AMT/10000);
		$("#calcLtv").val(0);
		$("#calcListOuterVlAmt").text(0);
		$("#calcListPrrOrdrAmt").text(0);
		$("#calcListLoanAmt").text(0);
		$("#calcListRsrvAmt").text(0);
		fn_hideCalcLtvList();
		
		$("#calcActnCaseDiv").hide();
		$("#calcBidRate").val(0)
		$("#calcAllctnAmt").val(0);
		$("#calcAllctnRestAmt").val(0);
		$('#calcActnDiv').hide();
		$("#calcListBidRate").text(0);
		$("#calcListAllctnAmt").text(0);
		$("#calcListAllctnRestAmt").text(0);
		fn_hideCalcActnList();
		
		$("#calcOuterVlAmt").focus();
	}
	
	function fn_showCalcLtvList() {
		$('#calcLtvListDiv').show();
		$("#showCalcLtvListBtn").hide();
		$("#hideCalcLtvListBtn").show();
	}
	
	function fn_hideCalcLtvList() {
		$('#calcLtvListDiv').hide();
		$("#showCalcLtvListBtn").show();
		$("#hideCalcLtvListBtn").hide();
	}
	
	function fn_calcActn() {
		var calcBidRate = parseFloat($("#calcBidRate").val());
		if($("#calcBidRate").val() == "") {
			alert("낙찰가율을 입력해 주세요.");
			$("#calcBidRate").val(0);
			$("#calcBidRate").focus();
			return;
		}
		
		var calcOuterVlAmt = parseInt($("#calcOuterVlAmt").val());
		var calcPrrOrdrAmt = parseInt($("#calcPrrOrdrAmt").val().replace(/,/gi, ""));
		var calcLoanAmt = parseInt($("#calcLoanAmt").val().replace(/,/gi, ""));
		var calcAllctnAmt = Math.round(calcOuterVlAmt * calcBidRate / 100);
		var calcAllctnRestAmt = calcAllctnAmt - (calcPrrOrdrAmt + calcLoanAmt);
		$("#calcAllctnAmt").val(calcAllctnAmt);
		$("#calcAllctnRestAmt").val(calcAllctnRestAmt);
		$("#calcListBidRate").text(calcBidRate);
		$("#calcListAllctnAmt").text(comma(calcAllctnAmt));
		$("#calcListAllctnRestAmt").text(comma(calcAllctnRestAmt));
		$('#calcActnDiv').show();
	}
	
	function fn_calcActnReset() {
		$("#calcBidRate").val(0);
		$("#calcAllctnAmt").val(0);
		$("#calcAllctnRestAmt").val(0);
		$('#calcActnDiv').hide();
		$("#calcListBidRate").text(0);
		$("#calcListAllctnAmt").text(0);
		$("#calcListAllctnRestAmt").text(0);
		fn_hideCalcActnList();
		
		$("#calcBidRate").focus();
	}
	
	function fn_showCalcActnList() {
		$('#calcActnListDiv').show();
		$("#showCalcActnListBtn").hide();
		$("#hideCalcActnListBtn").show();
	}
	
	function fn_hideCalcActnList() {
		$('#calcActnListDiv').hide();
		$("#showCalcActnListBtn").show();
		$("#hideCalcActnListBtn").hide();
	}
	
	function hitCalcLtvEnterKey(event) {
		if(event.keyCode == 13) {
			fn_calcLtv();
		} else {
			event.keyCode == 0;
			return;
		}
	}
	
	function hitCalcActnEnterKey(event) {
		if(event.keyCode == 13) {
			fn_calcActn();
		} else {
			event.keyCode == 0;
			return;
		}
	}
});	
</script>

	<section id="invest-good">
		<div class="container">
			<section id="investDetail-banner" class="text-center">
				<div class="overlay">
					<div class="section-body">
						<div class="bannerWrap">
							
								
									<img src="${pageContext.request.contextPath}/resources/img/banner_bg_nmvbls.png">
								
								
								
								
								
								
								
								
							
						</div>
						
						<div id="loanHeadNmWrap">
							<div class="row">
								<div class="col-sm-12 col-md-12">
									<div class="loanHeadNm">
										<div class="row">
											<div id="BadgeList" class="col-xs-12">
												<ol class="investBadgeList" style="padding-left: 0px;margin-top: 0px;">
													<li class="badge_status" id="REQ_STATS_CD">
														<span>모집중</span>
													</li>
													<li class="badge_deal" id="BANNER_TITLE">
														<span>부동산 431호</span>
													</li>
													<li class="badge_percent" id="AUTO_INVEST_LIMIT_PCRNT">
														자동투자 <span>100.0</span>%
													</li>
												</ol>
											</div>
											<div class="col-md-10 col-sm-10 col-xs-12" style="text-align:left;">
												<div class="loanGdId" style="">
													04-19-136
												</div>
												<div class="loanNm" style="">[부동산] 경기도 파주시 문산읍 토지(3차)</div>
											</div>
											<div class="col-md-2 col-sm-2 col-xs-12" style=" margin-top:30px;">
												<div class="social">
														<img id="fBLogo" src="${pageContext.request.contextPath}/resources/img/btn_footer_sns_facebook_default.png" alt="creator">	
													<span class="text"> 공유하기 </span>
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
			<div class="rpm_banner col-sm-12 col-md-12">
				<p style="text-align:center; padding:16px 0 6px 0;">
					<a href="/info/noticeDetail/39" target="_blank">
						<img src="${pageContext.request.contextPath}/resources/img/rpm_txtIMG.png" class="" alt="Recovery Plan of creator" style="max-width:300px;">
					</a>
				</p>
			</div>
			<!-- 
			<div class="row">
				<div class="col-sm-12 col-md-12">
					<div class="wrap">
						<div class="box loanNm">
							<div class="row">
								<div class="col-xs-8">
									<div class="loanGdId">04-19-136</div>
									<div class="loanNm">[부동산] 경기도 파주시 문산읍 토지(3차)</div>
								</div>
								<div class="col-xs-4">
									<div class="social">
										<a href="javascript:(void(0));" onclick='gfn_sendSns("facebook","https://www.creator.co.kr/invest/detail/790","")' target="_blank">
											<img id="fBLogo" src="/images/common/btn_footer_sns_facebook_default.png" alt="creator">
										</a>
										<span class="text"> 공유하기 </span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 -->
			<div class="row">
				<div class="col-sm-12 col-md-3 col-md-push-9 right-col col-box">
					<div class="wrap">
						<div class="box right">
							<div class="title">
								<div class="day text-center" id="timeTitle">모집 마감까지</div>
								<div class="time text-center" id="timeSub">22<font size="2">일</font> 6<font size="2">시간</font> 41<font size="2">분</font> 55<font size="2">초 남았습니다.</font></div>
								<div class="display-none" id="alarmDiv" style="display: none;">
									<button type="button" class="btn btn-purple-transparent btn-block" style="font-size: 14px;margin: 0px" onclick="fn_openAlarm()">
										알림받기
									</button>
								</div>
							</div>
							<hr>
							<div class="chart">
								<canvas id="waterbubbleChart" width="205" height="205"></canvas>
							</div>
							<div class="amt">
								<font class="font-purple">
								
									
										1,473</font><font size="2">만원</font>
									
									
								
									/ 2,500<font size="2">만원</font>
							</div>
							<hr>
							<div class="option">
							
								
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										자동투자
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										100.0<font size="2">%</font>
									</div>
								</div>
								
							
							
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										상환방식
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										만기일시
									</div>
								</div>
							
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										연 수익률
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										13.0<font size="2">%</font>
									</div>
								</div>
							
							
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										투자기간
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
									
										9<font size="2">개월</font>
									
									
									</div>
								</div>
								<div class="row display-none" id="lmtAmtDiv">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										투자한도
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										<span class="font-light-blue" id="lmtAmt"></span><font size="2" class="font-light-blue">만원</font>
										 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>※ 현재 이 상품에 투자 가능한 금액입니다.</strong>
												<br>
												<br>
												총 투자한도 : 
												
												
													원
												
												<br>
												동일차입자 한도 : 
												
												
													원
												
												<br>
												투자잔여금액 : 원" data-original-title="" title="">
										</span>
									</div>
								</div>
							</div>
							
							
								
								
									
										
											<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_doInvest()">
												투자신청 <i class="glyphicon glyphicon glyphicon-ok"></i>
											</button>
										
										
									
									
								
								
							
						</div>
					</div>
				</div>
				
				<!-- 
				<div class="col-sm-12 col-md-12">
				 -->
				<div class="col-sm-12 col-md-9 col-md-pull-3 left-col">
					<div class="row display-none" id="autoInvestBanner">
						<div class="col-md-12 col-box">
							<div class="wrap">
								<div class="box umbrellar">
									<button type="button" class="close" aria-label="Close" onclick="gfn_closeDiv('autoInvestBanner')">
										<span aria-hidden="true">×</span>
									</button>
									<a href="/invest/guide#autoInvest"><strong>자동투자</strong></a>는 오픈예정시간 <strong><span class="font-purple">30분 전</span></strong> 실행됩니다.
								</div>
							</div>
						</div>
					</div>
					
					<div class="row display-none" id="runAutoInvestBanner" style="display: block;">
						<div class="col-md-12 col-box">
							<div class="wrap">
								<div class="box umbrellar">
									<button type="button" class="close" aria-label="Close" onclick="gfn_closeDiv('runAutoInvestBanner')">
										<span aria-hidden="true">×</span>
									</button>
									<a href="/invest/guide#autoInvest" style="color: #712594;"><strong>자동투자</strong></a>가 실행된 상태입니다.
								</div>
							</div>
						</div>
					</div>
					
					<div class="row display-none" id="umbrellarBanner">
						<div class="col-md-12 col-box">
							<div class="wrap">
								<div class="box umbrellar">
									<button type="button" class="close" aria-label="Close" onclick="gfn_closeDiv('umbrellarBanner')">
										<span aria-hidden="true">×</span>
									</button>
									<a href="/invest/guide#umbrellar"><strong>크리에이터 엄브렐러</strong></a>로<div class="xd"></div> 보호받을 수 있는 상품입니다.
								</div>
							</div>
						</div>
					</div>
					
					<div class="row display-none" id="specialBanner">
						<div class="col-md-12 col-box">
							<div class="wrap">
								<div class="specialBannerImage">
									<img src="" class="img-responsive">
								</div>
							</div>
						</div>
					</div>
					
					<div class="row display-none" id="standardBanner" style="display: block;">
					</div>
					
					<div class="row" id="loanDetDiv">
						<div class="col-md-12 col-box" style="padding-bottom:15px;">
							<div class="wrap">
								<div class="box loanDet">
								
									
										


<!-- 카카오 지도 web API -->
<!-- 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7dcba21d939640b5090083d64029a03"></script>
 -->
<!-- 네이버 Maps API -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0jj742ww77"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0jj742ww77&amp;submodules=panorama"></script><script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-panorama.js"></script>

<script type="text/javascript">
	$(function() {
		fn_setSameBrrwr();
		fn_setNmvbls();
		fn_setNmvblsScore();
		
		var MAP_DISP_YN = "Y";
		if(MAP_DISP_YN == "Y") {
			fn_setMap();
		} else {
			$("#map").hide();
		}
		
		var PANO_DISP_YN = "Y";
		if(PANO_DISP_YN == "Y") {
			fn_setPano();
		} else {
			$("#pano").hide();
		}
	});
	
	function fn_setNmvbls() {
		// 담보물 가치평가 세팅
		var NMVBLS_TYPE_CD = "06";
		if(NMVBLS_TYPE_CD == '07' || NMVBLS_TYPE_CD == '19') {	// 배당금, NPL 유형
			
			var title = "예상 간략배당표";
			$('#nmvblsValueTitle').text(title);
			
			Highcharts.setOptions({
				colors : ['#e4d9f7', '#8a3faa', '#e23b5b', '#443b3d']
			});
			$('#nmvblsValueChart').highcharts({
				chart: {
					type: 'column',
					backgroundColor: '#fbf9ff',
					height:400,
					marginTop:40,
					animation: true
				},
				title: {
					text: ''
				},
				xAxis: {
					categories : ['']
				},
				yAxis: {
					min: 0,
					title: {
						text: title + ' 항목별 비율'
					},
					stackLabels: {
						enabled: true,
						style: {
							color: (Highcharts.theme && Highcharts.theme.background2) || '#712594'
						},
						formatter: function () {
							return comma(Math.round(this.total/10000)) + "만원";
						}
					}
				},
				credits: {
					enabled: false
				},
				tooltip: {
					headerFormat: '',
					pointFormat: '',
					formatter: function () {
						return this.series.name + ":"
							+ comma(Math.round(this.point.y/10000)) + "만원"
							+ " (" + Math.round(this.point.percentage * 100) / 100 + "%)";
					},
					borderColor: '#712594'
				},
				plotOptions: {
					column: {
						stacking: 'percent'
					}
				},
				series: [{
					name: '잔여금액',
					data: [2980000000]
				}, {
					name: '대출금액',
					data: [150000000]
				}, {
					name: '집행비용&당해세 등',
					data: [5520000000]
				}, {
					name: '선순위금액',
					data: [3420000000]
				}]
			});
			
			$("#nmvblsValueDiv2Span1").text(comma(Math.round(0/10000)));
			$("#nmvblsValueDiv2Span2").text(comma(Math.round(5520000000/10000)));
			$("#nmvblsValueDiv2Span3").text(comma(Math.round(3420000000/10000)));
			$("#nmvblsValueDiv2Span4").text(comma(Math.round(150000000/10000)));
			$("#nmvblsValueDiv2Span5").text(comma(Math.round(2980000000/10000)));
			
			$('#nmvblsValueDiv2').show();
		} else {
			// 일반 유형
			var title = "담보물 가치평가";
			$('#nmvblsValueTitle').text(title);
			
			Highcharts.setOptions({
				colors : ['#e4d9f7', '#8a3faa', '#e23b5b', '#443b3d']
			});
			$('#nmvblsValueChart').highcharts({
				chart: {
					type: 'column',
					backgroundColor: '#fbf9ff',
					height: 400,
					marginTop:40,
					animation: true
				},
				title: {
					text: ''
				},
				xAxis: {
					categories : ['']
				},
				yAxis: {
					min: 0,
					title: {
						text: '단위 : %'
					},
					stackLabels: {
						enabled: true,
						style: {
							color: (Highcharts.theme && Highcharts.theme.background2) || '#712594'
						},
						formatter: function () {
							return comma(Math.round(this.total/10000)) + "만원";
						}
					}
				},
				credits: {
					enabled: false
				},
				tooltip: {
					headerFormat: '',
					pointFormat: '',
					formatter: function () {
						return this.series.name + ":"
							+ comma(Math.round(this.point.y/10000)) + "만원"
							+ " (" + Math.round(this.point.percentage * 100) / 100 + "%)";
					},
					borderColor: '#712594'
				},
				plotOptions: {
					column: {
						stacking: 'percent'
					}
				},
				series: [{
					name: '잔여금액',
					data: [2980000000]
				}, {
					name: '담보여력',
					data: [1950000000]
				}, {
					name: '대출금액',
					data: [150000000]
				}, {
					name: '선순위금액',
					data: [3420000000]
				}]
			});
			
			$("#nmvblsValueDiv1Span1").text(comma(Math.round(8500000000/10000)));
			$("#nmvblsValueDiv1Span2").text(comma(Math.round(5520000000/10000)));
			$("#nmvblsValueDiv1Span3").text(comma(Math.round(3420000000/10000)));
			$("#nmvblsValueDiv1Span4").text(comma(Math.round(150000000/10000)));
			$("#nmvblsValueDiv1Span5").text(comma(Math.round(2980000000/10000)));
			$("#nmvblsValueDiv1Span6").text(comma(Math.round(1950000000/10000)));
			
			$('#nmvblsValueDiv1').show();
			
			// LTV 계산기 세팅
			var NMVBLS_OUTER_VL_AMT = "8500000000";
			var NMVBLS_PRR_ORDR_AMT = "3420000000";
			var LOAN_AMT = "150000000";
			$("#calcOuterVlAmt").val(Math.round(NMVBLS_OUTER_VL_AMT/10000));
			$("#calcPrrOrdrAmt").val(Math.round(NMVBLS_PRR_ORDR_AMT/10000));
			$("#calcLoanAmt").val(LOAN_AMT/10000);
			
			$("#ltvCalcDiv").show();
		}
	}
	
	function fn_setNmvblsScore() {
		// 담보물 가치평가 세팅
		var NMVBLS_TOTAL_SCORE = "10";
		var NMVBLS_SCORE_1 = "8";
		var NMVBLS_SCORE_2 = "6.5";
		var NMVBLS_SCORE_3 = "7.5";
		var NMVBLS_SCORE_4 = "7";
		var NMVBLS_GRD = "MA";
		$("#NMVBLS_TOTAL_SCORE").text(NMVBLS_TOTAL_SCORE);
		$("#NMVBLS_SCORE_1").text(NMVBLS_SCORE_1);
		$("#NMVBLS_SCORE_2").text(NMVBLS_SCORE_2);
		$("#NMVBLS_SCORE_3").text(NMVBLS_SCORE_3);
		$("#NMVBLS_SCORE_4").text(NMVBLS_SCORE_4);
		$("#NMVBLS_GRD").text(NMVBLS_GRD);
		
		$("#nmvblsScoreChart").highcharts({
			chart: {
				polar : true,
				type : 'line',
				height: 250
			},
			exporting: {
				enabled: false
			},
			colors : ['#712594'],
			title : {
				text : ''
			},
			pane : {
				size : '85%'
			},
			xAxis : {
				categories : [ '안정성', '환가성', '수익성', '상환성' ],
				tickmarkPlacement : 'on',
				lineWidth : 0
			},
			yAxis : {
				gridLineInterpolation : 'polygon',
				lineWidth : 0,
				min : 0,
				max : 10,
				tickInterval: 2
			},
			tooltip : {
				formatter: function () {
					var s = '<b>' + this.x + '</b>';
					$.each(this.points, function () {
						if(this.x == "안정성") {
							s += '<br/>' + NMVBLS_SCORE_1 + '점';
						} else if(this.x == "환가성") {
							s += '<br/>' + NMVBLS_SCORE_2 + '점';
						} else if(this.x == "수익성") {
							s += '<br/>' + NMVBLS_SCORE_3 + '점';
						} else if(this.x == "상환성") {
							s += '<br/>' + NMVBLS_SCORE_4 + '점';
						}
					});
					return s;
				},
				shared : true
			},
			legend: {
				enabled: false
			},
			credits: {
				enabled: false
			},
			series : [
				{
					name : '',
					data : [ parseInt(NMVBLS_SCORE_1), parseInt(NMVBLS_SCORE_2), parseInt(NMVBLS_SCORE_3), parseInt(NMVBLS_SCORE_4) ],
					pointPlacement : 'on'
				}
			]
		});
		
		$("#nmvblsScoreChartDiv").show();
	}
	
	function fn_setSameBrrwr() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/invest/selectSameBrrwrInfo");
		comAjax.setCallback("fn_setSameBrrwrCallback");
		comAjax.addParam("LOAN_NO", "790");
		comAjax.ajax();
	}
	
	function fn_setSameBrrwrCallback(data) {
		var loanCnt	= data.map.LOAN_CNT;
		var repayCnt = data.map.REPAY_CNT;
		var loanAmtSum = data.map.LOAN_AMT_SUM;
		var loanRestPrncplAmtSum = data.map.LOAN_REST_PRNCPL_AMT_SUM;
		
		if(parseInt(loanCnt) > 0) {
			$("#loanCnt").text(comma(loanCnt));
			$("#repayCnt").text(comma(repayCnt));
			$("#loanAmtSum").text(comma(Math.round(loanAmtSum / 10000)));
			$("#loanRestPrncplAmtSum").text(comma(Math.round(loanRestPrncplAmtSum / 10000)));
			
			if(data.list.length > 0) {
				var body = $("#sameBrrwrListBody");
				body.empty();
				var str = "";
				$.each(data.list, function(key, value) {
					str += "<tr>";
					str += "	<td>";
					str += "		<a href=\"javascript:(void(0));\" onclick=\"fn_openInvestDetail(" + value.LOAN_NO + ")\">";
					str += "			" + value.LOAN_FULL_NM;
					str += "		</a>";
					str += "	</td>";
					str += "</tr>";
				});
				body.append(str);
				$("#sameBrrwrListA").show();
			}
		} else {
			$("#loanCnt").text("0");
			$("#repayCnt").text("0");
			$("#loanAmtSum").text("0");
			$("#loanRestPrncplAmtSum").text("0");
		}
	}
	
	function fn_openSameBrrwrModal() {
		$("#sameBrrwrModal").modal('show');
	}
	
	function fn_setMap() {
		var NMVBLS_LAT = "37.862049";
		var NMVBLS_LNG = "126.782824";
			
		var HOME_PATH = window.HOME_PATH || '.';
		var position = new naver.maps.LatLng(NMVBLS_LAT, NMVBLS_LNG);
		var draggable = true;
		if($(window).width() < 767) {
			draggable = false;
		}
		var map = new naver.maps.Map('map', {
			center: position,
			draggable : draggable,
			zoom: 10
		});
	
		var markerOptions = {
			position: position,
			map: map,
			icon: {
				url: HOME_PATH +'/img/example/pin_default.png',
				size: new naver.maps.Size(22, 35),
				origin: new naver.maps.Point(0, 0),
				anchor: new naver.maps.Point(11, 35)
			}
		};
	
		var marker = new naver.maps.Marker(markerOptions);
	}
	
	function fn_setPano() {
		var NMVBLS_LAT = "37.862049";
		var NMVBLS_LNG = "126.782824";
		var NMVBLS_POV_PAN = "0";
		var NMVBLS_POV_TILT = "25";
		var NMVBLS_POV_FOV = "100";
		var panoramaOptions = {
			position: new naver.maps.LatLng(NMVBLS_LAT, NMVBLS_LNG),
			//size: new naver.maps.Size(800, 600),
			pov: {
				pan: NMVBLS_POV_PAN,
				tilt: NMVBLS_POV_TILT,
				fov: NMVBLS_POV_FOV
			}
		};
		
		if($(window).width() < 767) {
			$("#pano").css("height", "300px");
		}
		
		var pano = new naver.maps.Panorama("pano", panoramaOptions);
	}
</script>

<div id="loanNoticeListDiv" class="display-none">
	<div class="row">
		<div class="col-md-12">
			<div class="title_2nd">
				상품 진행상황
			</div>
			<div class="content">
				<table class="table">
					<colgroup>
						<col width="25%">
						<col width="75%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="LNLtit table_topline">일자</th>
							<th scope="col" class="LNLtit table_topline">내용</th>
						</tr>
					</thead>
					<tbody>
					
						
						
							<tr>
								<td colspan="2">
									모집중인 상품입니다.
								</td>
							</tr>
						
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div id="summary">
	<div class="top_table">
		<div class="row">
			<div class="investCont_tit col-md-12">
				<b>|</b>&nbsp;상품요약
			</div>
			<div class="col-md-12">
				<div class="title_2nd">
					기본정보
				</div>
				<div class="content">
					<table border="0" class="table" id="loanReqDet">
						<colgroup>
							<col width="25%">
							<col width="25%">
							<col width="25%">
							<col width="25%">
						</colgroup>
						<thead>
							<tr class="purpleTop">
								<th scope="col">구분(상품)</th>
								<th scope="col">만기</th>
								<th scope="col">대출금액</th>
								<th scope="col">대출잔액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									부동산담보
								</td>
								<td>
									9개월
								</td>
								<td>
									2,500만원
								</td>
								<td>
									0만원
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="left_table">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6">
				<div class="title_2nd">
					담보물건 정보
				</div>
				<div class="content">
					<table class="table" align="left">
						<colgroup>
							<col width="40%">
							<col width="60%">
						</colgroup>
						<tbody class="tb_vert">
						
							
								
									<tr>
										<td scope="col" class="title_td">
											유형
										</td>
										<td scope="col">
											토지
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											면적(㎡/py)
										</td>
										<td scope="col">
											18,703 / 5,658
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											LTV
										</td>
										<td scope="col">
											42.00%
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											담보권
										</td>
										<td scope="col">
											근저당부질권
										</td>
									</tr>
								
							
							
						
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-6">
				<div class="title_2nd">
					차주 정보
				</div>
				<div class="content">
					<table class="table" align="right">
						<colgroup>
							<col width="40%">
							<col width="60%">
						</colgroup>
						<tbody class="tb_vert" style="border-top:1px solid #333;">
						
							
								
									<tr>
										<td scope="col" class="title_td">
											유형
										</td>
										<td scope="col">
											법인
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											업종
										</td>
										<td scope="col">
											대부업
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											대출목적
										</td>
										<td scope="col">
											유동화 자금
										</td>
									</tr>
								
									<tr>
										<td scope="col" class="title_td">
											　
										</td>
										<td scope="col">
											　
										</td>
									</tr>
								
							
							
						
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_table">
		<div class="row">
			<div class="col-md-12">
				<div class="title_2nd">
					동일차입자 상품 현황 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="대출실행 이후의 상품 기준이며 모집 당시가 아닌 현재 상황의 정보로 표시됩니다." data-original-title="" title=""></span>
				</div>
				<div class="content">
					<table border="0" class="table" id="sameBrrwrTbl">
						<colgroup>
							<col width="25%">
							<col width="25%">
							<col width="25%">
							<col width="25%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">당사 대출건수</th>
								<th scope="col">상환건수</th>
								<th scope="col">누적대출액</th>
								<th scope="col">현재대출잔액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span id="loanCnt">5</span>건</td>
								<td><span id="repayCnt">1</span>건</td>
								<td><span id="loanAmtSum">41,000</span>만원</td>
								<td><span id="loanRestPrncplAmtSum">35,500</span>만원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="sameBrrwrList">
			<a href="javascript:(void(0));" onclick="fn_openSameBrrwrModal();" id="sameBrrwrListA" class="display-none" style="display: inline;">
				상환 중 상품보기 &gt;
			</a>
		</div>
	</div>
	
	<div id="gradeDiv">
		<div class="row">
			<div class="col-md-12">
				<div class="title_2nd">
					크리에이터 종합등급
				</div>
				<div class="row wrap_grade col">
					<div class="col-xs-12 col-sm-12 col-md-6 col wrap_gCont">
						<div class="row wrap_grade_IMG">
							<div class="col-sm-12 col-md-12 col grade_txt">
								<p style="text-align: center;">
									크리에이터 <b>MA</b> 등급입니다
								</p>
							</div>
							<div class="col-sm-12 col-md-12 col grade_IMG">
								<p style="text-align: center;">
									<img src="${pageContext.request.contextPath}/resources/img/img_invest_detail_grade_MA.png">
								</p>
							</div>
						</div>
						
						<div class="wrap_gTable" style="margin-bottom:10px;">
							<div class="content">
								<table class="table" align="right">
									<colgroup>
										<col width="20%">
										<col width="60%">
										<col width="20%">
									</colgroup>
									<tbody class="tb_vert">
										<tr>
											<td scope="col" class="title_td">안정성</td>
											<td scope="col">선순위 금액을 고려한 유효담보력</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_1">8</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">환가성</td>
											<td scope="col">부실발생시 시장매각 또는 경매회수력</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_2">6.5</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">수익성</td>
											<td scope="col">상품 투자수익률</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_3">7.5</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">상환성</td>
											<td scope="col">신용등급, 소득 등 상환가능성</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_4">7</span>점</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col wrap_gGraph display-none" id="nmvblsScoreChartDiv" style="display: block;">
						<div id="nmvblsScoreChart" data-highcharts-chart="1"><div id="highcharts-2wv0c4m-6" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 387px; height: 250px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="387" height="250" viewBox="0 0 387 250"><desc>Created with Highcharts 6.2.0</desc><defs><clipPath id="highcharts-2wv0c4m-7"><rect x="0" y="0" width="367" height="225" fill="none"></rect></clipPath><clipPath id="highcharts-2wv0c4m-12"><circle cx="183.5" cy="112.5" r="95.625"></circle></clipPath></defs><rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="387" height="250" rx="0" ry="0"></rect><rect fill="none" class="highcharts-plot-background" x="10" y="10" width="367" height="225"></rect><g class="highcharts-pane-group" data-z-index="0"></g><g class="highcharts-grid highcharts-xaxis-grid " data-z-index="1"><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 193.5 26.875" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 289.125 122.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 193.5 218.125" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 97.875 122.50000000000001" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 193.49999999999997 26.875" opacity="1"></path></g><g class="highcharts-grid highcharts-yaxis-grid " data-z-index="1"><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 122.5 L 193.5 122.5 L 193.5 122.5 L 193.5 122.5 L 193.5 122.5 L 193.5 122.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 103.375 L 193.5 103.375 L 174.375 122.5 L 193.5 141.625 L 212.625 122.5 L 193.5 103.375" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 84.25 L 193.5 84.25 L 155.25 122.5 L 193.5 160.75 L 231.75 122.5 L 193.5 84.25" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 65.125 L 193.5 65.125 L 136.125 122.5 L 193.5 179.875 L 250.875 122.5 L 193.5 65.125" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 46 L 193.5 46 L 117 122.50000000000001 L 193.5 199 L 270 122.5 L 193.5 46" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 193.5 26.875 L 193.49999999999997 26.875 L 97.875 122.50000000000001 L 193.5 218.125 L 289.125 122.5 L 193.5 26.875" opacity="1"></path></g><rect fill="none" class="highcharts-plot-border" data-z-index="1" x="10" y="10" width="367" height="225"></rect><g class="highcharts-axis highcharts-xaxis " data-z-index="2"><path fill="none" class="highcharts-axis-line" data-z-index="7" d="M 193.5 26.875 A 95.625 95.625 0 1 1 193.40437501593746 26.87504781249602 M 193.5 122.5 A 0 0 0 1 0 193.5 122.5 "></path></g><g class="highcharts-axis highcharts-yaxis " data-z-index="2"><path fill="none" class="highcharts-axis-line" data-z-index="7" d="M 193.5 122.5 L 193.5 26.875"></path></g><g class="highcharts-series-group" data-z-index="3"><g data-z-index="0.1" class="highcharts-series highcharts-series-0 highcharts-line-series highcharts-color-0 " transform="translate(10,10) scale(1 1)" clip-path="url(#highcharts-2wv0c4m-12)"><path fill="none" d="M 183.5 36 L 240.875 112.5000000000002 L 183.49999999999952 179.4375 L 116.5625 112.49999999999929 L 183.5 36" class="highcharts-graph" data-z-index="1" stroke="#712594" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 173.5 36 L 183.5 36 L 240.875 112.5000000000002 L 183.49999999999952 179.4375 L 116.5625 112.49999999999929 L 183.5 36 L 193.5 36" stroke-linejoin="round" stroke="rgba(192,192,192,0.0001)" stroke-width="22" visibility="visible" data-z-index="2" class="highcharts-tracker-line"></path></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-0 highcharts-line-series highcharts-color-0 highcharts-tracker" transform="translate(10,10) scale(1 1)"><path fill="#712594" d="M 187 36 A 4 4 0 1 1 186.99999800000018 35.99600000066666 Z" class="highcharts-point highcharts-color-0"></path><path fill="#712594" d="M 244 113 A 4 4 0 1 1 243.99999800000018 112.99600000066667 Z" class="highcharts-point highcharts-color-0"></path><path fill="#712594" d="M 187 179 A 4 4 0 1 1 186.99999800000018 178.99600000066667 Z" class="highcharts-point highcharts-color-0"></path><path fill="#712594" d="M 120 112 A 4 4 0 1 1 119.99999800000016 111.99600000066667 Z" class="highcharts-point highcharts-color-0"></path></g></g><text x="194" text-anchor="middle" class="highcharts-title" data-z-index="4" style="color:#333333;font-size:18px;fill:#333333;" y="24"></text><text x="194" text-anchor="middle" class="highcharts-subtitle" data-z-index="4" style="color:#666666;fill:#666666;" y="24"></text><g class="highcharts-axis-labels highcharts-xaxis-labels " data-z-index="7"><text x="193.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="15.875" opacity="1">안정성</text><text x="304.125" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="start" y="126.5" opacity="1">환가성</text><text x="193.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="237.125" opacity="1">수익성</text><text x="82.875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="end" y="126.50000000000001" opacity="1">상환성</text><text x="0" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="-9999">4</text></g><g class="highcharts-axis-labels highcharts-yaxis-labels " data-z-index="7"><text x="190.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="120.5" opacity="1">0</text><text x="190.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="101.375" opacity="1">2</text><text x="190.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="82.25" opacity="1">4</text><text x="190.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="63.125" opacity="1">6</text><text x="190.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="44" opacity="1">8</text><text x="0" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="-9999">10</text></g></svg></div></div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>
<hr>

<div id="assrDetailDiv" class="infoOpenDiv">
	<div class="row">
		<div class="investCont_tit col-md-12">
			<b>|</b>&nbsp;담보 상세
		</div>
		
			
			
			
			
			
		
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="htmlTable" style="margin-top:30px;">
				<table border="0" class="table">
					<colgroup>
						<col width="33%">
						<col width="33%">
						<col width="33%">
					</colgroup>
					<thead>
						<tr class="active">
							<th scope="col">물건유형</th>
							<th scope="col">면적</th>
							<th scope="col">
								외부<div class="xd"></div>
								감정가 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="KB시세 조회, 국토교통부 실거래가 조회 및 인근 부동산 매물의 시세 등을 종합적으로 고려하여 산출한 감정가입니다." data-original-title="" title="">
									</span>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">
								토지
							</td>
							<td align="center">
								토지(㎡/py) : 18,703 / 5,658
							</td>
							<td align="center">
								8,500,000,000원
							</td>
						</tr>
					</tbody>
					<thead>
						<tr class="active">
							<th scope="col">
								선순위<div class="xd"></div>
								금액 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="본 건 대출금액보다 선순위의 대출금액 또는 전세권 설정 보증금 등 모든 선순위 금액을 말합니다." data-original-title="" title="">
									</span>
							</th>
							<th scope="col">
								LTV <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="주택담보대출비율 (Loan To Value ratio)로 담보가치 대비 최대 대출가능 한도를 의미합니다.(대출금액/담보감정가)" data-original-title="" title="">
									</span>
							</th>
							<th scope="col">
								담보<div class="xd"></div>
								설정비율 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="담보감정가, LTV, 수익률 및 차입자의 상환능력을 종합적으로 고려하여 설정한 채권최고액 설정 비율입니다." data-original-title="" title="">
									</span>
							</th>
						</tr>
					</thead>
					<tbody class="table_underline">
						<tr>
							<td align="center">
								3,420,000,000원
							</td>
							<td align="center">
								42.0%
							</td>
							<td align="center">
								150.0%
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="title_2nd">
				현황사진
			</div>
			<div class="nmvblsImg">
				<ul>
					<li>
						<div class="display-none" id="rollingImgHtml">
							<div id="wowslider-container1" class="ws_gestures" style="font-size: 10px;">
								<div class="ws_images" style="overflow: visible;"><div style="position: relative; width: 100%; font-size: 0px; line-height: 0; max-height: 100%; overflow: hidden;"></div>
									
								<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: hidden;"><div class="ws_list" style="position: absolute; top: 0px; height: 100%; transform: translate3d(0px, 0px, 0px); width: 0%;"><div class="ws_swipe_left" style="position: absolute; top: 0px; height: 100%; overflow: hidden;"></div><ul style="width: 100%;">
									
									</ul><div class="ws_swipe_right" style="position: absolute; top: 0px; height: 100%; overflow: hidden;"></div></div></div><div class="ws_cover" style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; z-index: 10; background: rgb(255, 255, 255); opacity: 0;"><a href="http://wowslider.com/" style="display: block; position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" target=""></a></div><div class="ws_effect ws_basic_linear" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden;"><div style="position: absolute; display: none; z-index: 2; width: 200%; height: 100%; transform: translate3d(0px, 0px, 0px);"><div style="position: absolute; left: auto; top: auto; width: 50%; height: 100%; overflow: hidden;"></div><div style="position: absolute; left: auto; top: auto; width: 50%; height: 100%; overflow: hidden;"></div></div></div><div style="position: absolute; padding: 0px; z-index: 56; right: 15px; bottom: 15px;"><a href="http://wowslider.com" style="position: relative; display: block; font-size: 15px; width: auto; height: auto; font-family: Arial; font-weight: normal; font-style: normal; padding: 1px 5px; margin: 0px; border-radius: 10px; outline: none;" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div><div class="ws_controls"></div><a href="#" class="ws_fullscreen"></a></div>
								<div class="ws_thumbs" style="overflow: hidden;">
									<div style="transition: all 0ms linear 0s; top: -30px; left: 50px;">
									
									</div>
								</div>
								<div class="ws_shadow"></div>
							</div>
							<script type="text/javascript" src="/js/wowSlider/wowslider.js"></script>
							<script type="text/javascript" src="/js/wowSlider/script.js"></script>
						</div>
					</li>
					<li>
						<div id="pano" style="width: 775px; height: 400px; margin-bottom: 20px; position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat scroll transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 775px; height: 400px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 101; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 102; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 103; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 104; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 105; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 106; display: block;"></div><div style="position: absolute; width: 100%; height: 100%; z-index: 90;"><div class="cube cube_0" style="position: absolute; top: 50%; left: 50%; display: none; perspective-origin: 50% 50%; perspective: 324.941px;"><div class="cube_face_0_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -128px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div><div class="cube_face_1_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -256px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div><div class="cube_face_2_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -384px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div><div class="cube_face_3_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: 0px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div><div class="cube_face_4_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -640px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div><div class="cube_face_5_1" width="256" height="256" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -512px 0px; transform: translate(64px, 64px) scale(2.00781);"></div></div></div><div class="cube cube_1" style="position: absolute; top: 50%; left: 50%; display: none; perspective-origin: 50% 50%; perspective: 324.941px;"><div class="cube_face_0_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -128px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div><div class="cube_face_1_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -256px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div><div class="cube_face_2_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -384px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div><div class="cube_face_3_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: 0px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div><div class="cube_face_4_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -640px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div><div class="cube_face_5_2" width="512" height="512" style="position: absolute;"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -512px 0px; transform: translate(192px, 192px) scale(4.00781);"></div></div></div><div class="cube cube_2" style="position: absolute; top: 50%; left: 50%; display: block; perspective-origin: 50% 50%; perspective: 324.941px;"><div class="cube_face_0_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(0, 0.845, -1.813, 0, 0, 1.813, 0.845, 0, 2, 0, 0, 0, -1024, -1360.82, 820.239, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -128px 0px; transform: translate(448px, 448px) scale(8.00781);"></div><canvas class="cube_face_canvas_0_4" width="1024" height="1024" style="position: absolute;"></canvas></div><div class="cube_face_1_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(2, 0, 0, 0, 0, 1.813, 0.845, 0, 0, -0.845, 1.813, 0, -1024, -495.298, -1035.88, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -256px 0px; transform: translate(448px, 448px) scale(8.00781);"></div><canvas class="cube_face_canvas_1_4" width="1024" height="1024" style="position: absolute;"></canvas></div><div class="cube_face_2_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(0, -0.845, 1.813, 0, 0, 1.813, 0.845, 0, -2, 0, 0, 0, 1024, -495.298, -1035.88, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -384px 0px; transform: translate(448px, 448px) scale(8.00781);"></div><canvas class="cube_face_canvas_2_4" width="1024" height="1024" style="position: absolute;"></canvas></div><div class="cube_face_3_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(-2, 0, 0, 0, 0, 1.813, 0.845, 0, 0, 0.845, -1.813, 0, 1024, -1360.82, 820.239, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: 0px 0px; transform: translate(448px, 448px) scale(8.00781);"></div></div><div class="cube_face_4_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(0, 0.845, -1.813, 0, -2, 0, 0, 0, 0, 1.813, 0.845, 0, 1024, -1360.82, 820.239, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -640px 0px; transform: translate(448px, 448px) scale(8.00781);"></div><canvas class="cube_face_canvas_4_4" width="1024" height="1024" style="position: absolute;"></canvas></div><div class="cube_face_5_4" width="1024" height="1024" style="position: absolute; transform: matrix3d(0, 0.845, -1.813, 0, 2, 0, 0, 0, 0, -1.813, -0.845, 0, -1024, 495.298, 1685.76, 1);"><div class="cube_face_preview" style="position: absolute; width: 128px; height: 128px; background-image: url(&quot;https://pvimg.pstatic.net/api/get?type=img&amp;pano_id=sPgzN7J+JOJcRxYVRH2Gcg==&amp;suffix=_P &quot;); background-repeat: no-repeat; background-position: -512px 0px; transform: translate(448px, 448px) scale(8.00781);"></div></div></div></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 91; display: block;"></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 107; display: block; perspective: 357.435px; perspective-origin: 50% 50%;"><div class="arrow_container_#0" style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 1; transform: matrix3d(-0.895, -1.546, 3.315, 0, -3.658, 0.378, -0.811, 0, 0, -7.963, -3.713, 0, 653.819, 1625.78, -782.849, 1);"><img class="arrow_image" src="https://ssl.pstatic.net/static/maps/mantle/1x/panorama_arrow.png" width="126" height="126" style="max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; width: 126px; height: 126px;"></div><div class="arrow_container_#1" style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 1; transform: matrix3d(-0.852, 1.55, -3.324, 0, 3.668, 0.36, -0.772, 0, 0, -7.963, -3.713, 0, -545.418, 1433.68, -370.908, 1);"><img class="arrow_image" src="https://ssl.pstatic.net/static/maps/mantle/1x/panorama_arrow.png" width="126" height="126" style="max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; width: 126px; height: 126px;"></div></div><div style="position: absolute; width: 0px; height: 0px; left: 50%; top: 50%; z-index: 108; display: block;"><div style="position: absolute; pointer-events: none; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; box-sizing: content-box;"><span style="position: relative; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box; text-shadow: rgb(0, 0, 0) -1px -1px 0px, rgb(0, 0, 0) 1px -1px 0px, rgb(0, 0, 0) 1px -1px 0px, rgb(0, 0, 0) 1px 1px 0px, rgb(0, 0, 0) 0px 0px 1px; width: 200px; height: 20px; left: -100px; top: -30px; text-align: center; font-weight: bold; color: rgb(255, 255, 255); font-size: 14px; line-height: 20px; letter-spacing: -0.5px;">문향로75번길</span></div><div style="position: absolute; pointer-events: none; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; box-sizing: content-box;"><span style="position: relative; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box; text-shadow: rgb(0, 0, 0) -1px -1px 0px, rgb(0, 0, 0) 1px -1px 0px, rgb(0, 0, 0) 1px -1px 0px, rgb(0, 0, 0) 1px 1px 0px, rgb(0, 0, 0) 0px 0px 1px; width: 200px; height: 20px; left: -100px; top: -30px; text-align: center; font-weight: bold; color: rgb(255, 255, 255); font-size: 14px; line-height: 20px; letter-spacing: -0.5px;">문향로75번길</span></div></div></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 22px;"><a href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html" target="_blank" style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png" width="48" height="17" alt="NAVER" style="display:block;width:48px;height:17px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div></div>
						<div id="map" style="width: 100%; height: 300px; margin-bottom: 20px; position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; zoom: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none; zoom: 1; display: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div draggable="false" unselectable="on" style="position: absolute; top: 62px; left: 173px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-17"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/205/193/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 318px; left: 173px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-20"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/205/192/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -194px; left: 173px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-16"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/205/194/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -194px; left: 429px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-18"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/206/194/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 318px; left: -83px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-19"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/204/192/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 62px; left: 429px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-21"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/206/193/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 62px; left: -83px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-22"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/204/193/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 318px; left: 429px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-26"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/206/192/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -194px; left: -83px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-24"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/204/194/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -194px; left: 685px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-27"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/207/194/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 318px; left: -339px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-23"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/203/192/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 62px; left: 685px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-25"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/207/193/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 62px; left: -339px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-28"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/203/193/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 318px; left: 685px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-29"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/207/192/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -194px; left: -339px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-30"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/8/203/194/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none; zoom: 1;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div draggable="false" unselectable="on" style="position: absolute; top: 116px; left: 184px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-31"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/412/386/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 372px; left: 184px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-32"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/412/385/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -140px; left: 184px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-34"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/412/387/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -140px; left: 440px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-35"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/413/387/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 372px; left: -72px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-33"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/411/385/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 116px; left: 440px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-41"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/413/386/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 116px; left: -72px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-36"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/411/386/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 372px; left: 440px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-37"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/413/385/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -140px; left: -72px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-38"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/411/387/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -140px; left: 696px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-39"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/414/387/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 372px; left: -328px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-40"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/410/385/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 116px; left: 696px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-42"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/414/386/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 116px; left: -328px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-43"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/410/386/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 372px; left: 696px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-44"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/414/385/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -140px; left: -328px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-45"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/203/0/0/9/410/387/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"><div title="" style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; left: 552px; top: 150px; width: 22px; height: 33px;"><img draggable="false" unselectable="on" src="https://ssl.pstatic.net/static/maps/mantle/1x/marker-default.png" alt="" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; position: absolute; cursor: pointer; width: 22px; height: 33px; left: 0px; top: 0px;"></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 52px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">400m</span><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png" width="44" height="4" alt="" style="position:absolute;left:4px;;bottom:0;z-index:2;display:block;width:44px;height:4px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: -1px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 22px;"><a href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html" target="_blank" style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png" width="48" height="17" alt="NAVER" style="display:block;width:48px;height:17px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 19px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">╳</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left;"> /OpenStreetMap</a></div></div></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="bottom_table">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<table border="0" class="table">
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tbody>
						
							
								
									<tr>
										<td class="bgBL">
											소재지
										</td>
										<td class="text-left">
											경기도 파주시 문산읍 당동리 3필지
										</td>
									</tr>
								
									<tr>
										<td class="bgBL">
											용도지역
										</td>
										<td class="text-left">
											제1종일반주거지역
										</td>
									</tr>
								
									<tr>
										<td class="bgBL">
											지목
										</td>
										<td class="text-left">
											전 및 임야
										</td>
									</tr>
								
									<tr>
										<td class="bgBL">
											면적(㎡/py)
										</td>
										<td class="text-left">
											18,703 / 5,658
										</td>
									</tr>
								
							
							
						
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
		
			
				<div class="row">
					<div class="col-md-12">
						<div class="tabSubTit">
							담보개요
						</div>
						<div class="content">
							본 부동산 목적물은 경기도 파주시 문산읍 당동리 소재 토지 3필지로 <span style="color:#f39c12;"><strong>후순위</strong> <strong>근저당부 질권 대출 목적의 투자모집 진행 건</strong></span>입니다.<br>
본건 토지는 파주 당동산업단지 맞은편에 위치하며 주변에 주거단지 개발이 확장중에 있습니다.
						</div>
					</div>
				</div>
			
				<div class="row">
					<div class="col-md-12">
						<div class="tabSubTit">
							감정가액 및 유효담보가액
						</div>
						<div class="content">
							인근 부동산 시세를 바탕으로 한 <span style="color:#f39c12;"><strong>*감정가액은 85.0억원</strong></span>이며 <span style="color:#f39c12;"><strong>LTV는 약 42.00%</strong></span>입니다. 부동산시장을 통한 급매가 및 인근지역 유사물건의 낙찰가액을 고려한 <strong>유효담보가액은 약 55.2억원</strong>입니다. 유효담보가액을 고려하더라도 <strong>약 19.5억원의 담보여력</strong>이 있습니다.<br>
<br>
*본건 토지는 제1종일반주거지역으로 부동산시장을 통해 확인된 실거래가액은 평단가 200~230만원 수준이나, 대형 물건임을 감안하여 평단가 150만원 수준으로 저감 평가하였습니다.(2019년도 공시지가액 67.4억원)
						</div>
					</div>
				</div>
			
				<div class="row">
					<div class="col-md-12">
						<div class="tabSubTit">
							선순위 채권 및 임대차
						</div>
						<div class="content">
							선순위 금액으로 <strong>농협 34.2억원(채권최고액 : 50.16억원)</strong>이 있습니다.
						</div>
					</div>
				</div>
			
				<div class="row">
					<div class="col-md-12">
						<div class="tabSubTit">
							기타사항
						</div>
						<div class="content">
							등기부 상 질권 대환으로 진행됩니다. 기존 질권 대출금 5.0억원 중 3.5억원은 담보소유자가 직접 상환하였으며 이전보다 훨씬 안정적인 수준으로 대출 진행됩니다.
						</div>
					</div>
				</div>
			
		
		
	
	
	
	
	<div class="row valuation">
		<div class="col-md-12">
			<div class="title_2nd">
				<span id="nmvblsValueTitle">담보물 가치평가</span>
			</div>
			<div class="content">
				<div class="row col">
					<div class="col-xs-12 col-sm-5 col-md-5 col">
						<div id="nmvblsValueChart" data-highcharts-chart="0"><div id="highcharts-2wv0c4m-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 323px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="323" height="400" viewBox="0 0 323 400"><desc>Created with Highcharts 6.2.0</desc><defs><clipPath id="highcharts-2wv0c4m-1"><rect x="0" y="0" width="241" height="276" fill="none"></rect></clipPath></defs><rect fill="#fbf9ff" class="highcharts-background" x="0" y="0" width="323" height="400" rx="0" ry="0"></rect><rect fill="none" class="highcharts-plot-background" x="72" y="40" width="241" height="276"></rect><g class="highcharts-pane-group" data-z-index="0"></g><g class="highcharts-grid highcharts-xaxis-grid " data-z-index="1"><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 312.5 40 L 312.5 316" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 71.5 40 L 71.5 316" opacity="1"></path></g><g class="highcharts-grid highcharts-yaxis-grid " data-z-index="1"><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 72 316.5 L 313 316.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 72 247.5 L 313 247.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 72 178.5 L 313 178.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 72 109.5 L 313 109.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 72 39.5 L 313 39.5" opacity="1"></path></g><rect fill="none" class="highcharts-plot-border" data-z-index="1" x="72" y="40" width="241" height="276"></rect><g class="highcharts-axis highcharts-xaxis " data-z-index="2"><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 313.5 316 L 313.5 326" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 71.5 316 L 71.5 326" opacity="1"></path><path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" data-z-index="7" d="M 72 316.5 L 313 316.5"></path></g><g class="highcharts-axis highcharts-yaxis " data-z-index="2"><text x="26.078125" data-z-index="7" text-anchor="middle" transform="translate(0,0) rotate(270 26.078125 178)" class="highcharts-axis-title" style="color:#666666;fill:#666666;" y="178"><tspan>단위 : %</tspan></text><path fill="none" class="highcharts-axis-line" data-z-index="7" d="M 72 40 L 72 316"></path></g><g class="highcharts-series-group" data-z-index="3"><g data-z-index="0.1" class="highcharts-series highcharts-series-0 highcharts-column-series highcharts-color-0 highcharts-tracker " transform="translate(72,40) scale(1 1)" clip-path="url(#highcharts-2wv0c4m-1)"><rect x="62.5" y="-0.5" width="116" height="98" fill="rgb(228,217,247)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0 "></rect></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-0 highcharts-column-series highcharts-color-0 " transform="translate(72,40) scale(1 1)" clip-path="none"></g><g data-z-index="0.1" class="highcharts-series highcharts-series-1 highcharts-column-series highcharts-color-1 highcharts-tracker " transform="translate(72,40) scale(1 1)" clip-path="url(#highcharts-2wv0c4m-1)"><rect x="62.5" y="97.5" width="116" height="63" fill="rgb(138,63,170)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1 "></rect></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-1 highcharts-column-series highcharts-color-1 " transform="translate(72,40) scale(1 1)" clip-path="none"></g><g data-z-index="0.1" class="highcharts-series highcharts-series-2 highcharts-column-series highcharts-color-2 highcharts-tracker " transform="translate(72,40) scale(1 1)" clip-path="url(#highcharts-2wv0c4m-1)"><rect x="62.5" y="160.5" width="116" height="5" fill="rgb(226,59,91)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-2 highcharts-column-series highcharts-color-2 " transform="translate(72,40) scale(1 1)" clip-path="none"></g><g data-z-index="0.1" class="highcharts-series highcharts-series-3 highcharts-column-series highcharts-color-3 highcharts-tracker " transform="translate(72,40) scale(1 1)" clip-path="url(#highcharts-2wv0c4m-1)"><rect x="62.5" y="165.5" width="116" height="111" fill="rgb(68,59,61)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-3 "></rect></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-3 highcharts-column-series highcharts-color-3 " transform="translate(72,40) scale(1 1)" clip-path="none"></g></g><g class="highcharts-exporting-group" data-z-index="3"><g class="highcharts-button highcharts-contextbutton" stroke-linecap="round" transform="translate(289,10)"><title>Chart context menu</title><rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect><path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" data-z-index="1" stroke="#666666" stroke-width="3"></path><text x="0" data-z-index="1" style="font-weight:normal;color:#333333;cursor:pointer;fill:#333333;" y="12"></text></g></g><text x="162" text-anchor="middle" class="highcharts-title" data-z-index="4" style="color:#333333;font-size:18px;fill:#333333;" y="24"></text><text x="162" text-anchor="middle" class="highcharts-subtitle" data-z-index="4" style="color:#666666;fill:#666666;" y="24"></text><g class="highcharts-stack-labels" visibility="visible" data-z-index="6" transform="translate(72,40)"><text x="121" style="color:#712594;font-size:11px;font-weight:bold;fill:#712594;" text-anchor="middle" visibility="hidden" transform="translate(0,0)" y="-6"><tspan x="121" y="-6" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round" style="">850,000만원</tspan><tspan x="121" y="-6">850,000만원</tspan></text></g><g class="highcharts-legend" data-z-index="7" transform="translate(67,338)"><rect fill="none" class="highcharts-legend-box" rx="0" ry="0" x="0" y="0" width="190" height="47" visibility="visible"></rect><g data-z-index="1"><g><g class="highcharts-legend-item highcharts-column-series highcharts-color-0 highcharts-series-0" data-z-index="1" transform="translate(8,3)"><text x="21" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" data-z-index="2" y="15"><tspan>잔여금액</tspan></text><rect x="2" y="4" width="12" height="12" fill="#e4d9f7" rx="6" ry="6" class="highcharts-point" data-z-index="3"></rect></g><g class="highcharts-legend-item highcharts-column-series highcharts-color-1 highcharts-series-1" data-z-index="1" transform="translate(105,3)"><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" data-z-index="2"><tspan>담보여력</tspan></text><rect x="2" y="4" width="12" height="12" fill="#8a3faa" rx="6" ry="6" class="highcharts-point" data-z-index="3"></rect></g><g class="highcharts-legend-item highcharts-column-series highcharts-color-2 highcharts-series-2" data-z-index="1" transform="translate(8,21)"><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" data-z-index="2"><tspan>대출금액</tspan></text><rect x="2" y="4" width="12" height="12" fill="#e23b5b" rx="6" ry="6" class="highcharts-point" data-z-index="3"></rect></g><g class="highcharts-legend-item highcharts-column-series highcharts-color-3 highcharts-series-3" data-z-index="1" transform="translate(105,21)"><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" data-z-index="2"><tspan>선순위금액</tspan></text><rect x="2" y="4" width="12" height="12" fill="#443b3d" rx="6" ry="6" class="highcharts-point" data-z-index="3"></rect></g></g></g></g><g class="highcharts-axis-labels highcharts-xaxis-labels " data-z-index="7"><text x="192.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="335" opacity="1"></text></g><g class="highcharts-axis-labels highcharts-yaxis-labels " data-z-index="7"><text x="57" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="320" opacity="1">0</text><text x="57" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="251" opacity="1">25</text><text x="57" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="182" opacity="1">50</text><text x="57" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="113" opacity="1">75</text><text x="57" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="44" opacity="1">100</text></g><g class="highcharts-label highcharts-tooltip highcharts-color-0" style="pointer-events:none;white-space:nowrap;" data-z-index="8" transform="translate(107,-9999)" opacity="0" visibility="visible"><path fill="none" class="highcharts-label-box highcharts-tooltip-box highcharts-shadow" d="M 3.5 0.5 L 79.5 0.5 85.5 -5.5 91.5 0.5 170 0.5 C 173.5 0.5 173.5 0.5 173.5 3.5 L 173.5 31.5 C 173.5 34.5 173.5 34.5 170.5 34.5 L 3.5 34.5 C 0.5 34.5 0.5 34.5 0.5 31.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#000000" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)"></path><path fill="none" class="highcharts-label-box highcharts-tooltip-box highcharts-shadow" d="M 3.5 0.5 L 79.5 0.5 85.5 -5.5 91.5 0.5 170 0.5 C 173.5 0.5 173.5 0.5 173.5 3.5 L 173.5 31.5 C 173.5 34.5 173.5 34.5 170.5 34.5 L 3.5 34.5 C 0.5 34.5 0.5 34.5 0.5 31.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#000000" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)"></path><path fill="none" class="highcharts-label-box highcharts-tooltip-box highcharts-shadow" d="M 3.5 0.5 L 79.5 0.5 85.5 -5.5 91.5 0.5 170 0.5 C 173.5 0.5 173.5 0.5 173.5 3.5 L 173.5 31.5 C 173.5 34.5 173.5 34.5 170.5 34.5 L 3.5 34.5 C 0.5 34.5 0.5 34.5 0.5 31.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)"></path><path fill="rgba(247,247,247,0.85)" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 79.5 0.5 85.5 -5.5 91.5 0.5 170 0.5 C 173.5 0.5 173.5 0.5 173.5 3.5 L 173.5 31.5 C 173.5 34.5 173.5 34.5 170.5 34.5 L 3.5 34.5 C 0.5 34.5 0.5 34.5 0.5 31.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#712594" stroke-width="1"></path><text x="8" data-z-index="1" style="font-size:12px;color:#333333;cursor:default;fill:#333333;" y="20"><tspan>잔여금액:298,000만원 (35.06%)</tspan></text></g></svg></div></div> 
					</div>
					<div id="nmvblsValueList" class="col-xs-12 col-sm-push-1 col-sm-5 col-md-push-1 col-md-5 col">
						<div class="panel panel-default">
							<div class="panel-body nmvblsValue display-none" id="nmvblsValueDiv1" style="display: block;">
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #eaeaea;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										외부감정가(A)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span1">850,000</span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #420058;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										유효담보가(B)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span2">552,000</span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #443b3d;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										선순위금액(C)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span3">342,000</span>만원
									</div>
								</div> 
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #e23b5b;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										대출금액(D)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span4">15,000</span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #e4d9f7;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										잔여금액=A-B
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span5">298,000</span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #8a3faa;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-center">
										담보여력=B-(C+D)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-center">
										<span id="nmvblsValueDiv1Span6">195,000</span>만원
									</div>
								</div>
							</div>
							
							<div class="panel-body nmvblsValue display-none" id="nmvblsValueDiv2">
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #afb6bb;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-left">
										예상배당금액(A)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-right">
										<span id="nmvblsValueDiv2Span1"></span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #ff874d;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-left">
										집행비용&amp;당해세 등(B)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-right">
										<span id="nmvblsValueDiv2Span2"></span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #ef8e8e;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-left">
										선순위금액(C)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-right">
										<span id="nmvblsValueDiv2Span3"></span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #814595;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-left">
										대출금액(D)
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-right">
										<span id="nmvblsValueDiv2Span4"></span>만원
									</div>
								</div>
								<div class="row col nmvblsValueTxt">
									<div class="col-xs-1 col-sm-1 col-md-1 col">
										<span style="color: #7aadf2;">■</span>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col text-left">
										잔여금액=A-B-C-D
									</div>
									<div class="col-xs-5 col-sm-5 col-md-5 col text-right">
										<span id="nmvblsValueDiv2Span5"></span>만원
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="display-none" id="ltvCalcDiv" style="display: block;">
					<div class="row col">
						<div class="col-xs-5 col-sm-6 col-md-6 col">
							<div class="title_2nd">
								LTV 계산기
							</div>
						</div>
						<div class="col-xs-7 col-sm-6 col-md-6 text-right col">
							<div class="title_2nd">
								<button type="button" class="btn btn-purple-transparent" onclick="fn_calcLtv()">
									계산
								</button>
								<button type="button" class="btn btn-purple-transparent" onclick="fn_calcLtvReset()">
									초기화
								</button>
							</div>
						</div>
					</div>
					<div class="row col">
						<div class="col-md-4 col" style="margin-top:10px;">
							<div class="input-group">
								<span class="input-group-addon" id="calcOuterVlAmt-addon">감정가<sup>1)</sup></span>
								<input type="text" class="form-control text-right" id="calcOuterVlAmt" onkeypress="hitCalcLtvEnterKey(event);return gfn_setNumber(event, 6);" aria-describedby="calcOuterVlAmt-addon" value="0">
								<span class="input-group-addon">만원</span>
							</div>
						</div>
						<div class="col-md-4 xd-col" style="margin-top:10px;">
							<div class="input-group">
								<span class="input-group-addon" id="calcPrrOrdrAmt-addon">선순위금액<sup>2)</sup></span>
								<input type="text" class="form-control text-right" id="calcPrrOrdrAmt" onkeypress="hitCalcLtvEnterKey(event);return gfn_setNumber(event, 6);" aria-describedby="calcPrrOrdrAmt-addon" value="0">
								<span class="input-group-addon">만원</span>
							</div>
						</div>
						<div class="col-md-4 col" style="margin-top:10px;">
							<div class="input-group">
								<span class="input-group-addon" id="calcLoanAmt-addon">대출금액<sup>3)</sup></span>
								<input type="text" class="form-control text-right" id="calcLoanAmt" onkeypress="hitCalcLtvEnterKey(event);return gfn_setNumber(event, 6);" aria-describedby="calcLoanAmt-addon" value="0">
								<span class="input-group-addon">만원</span>
							</div>
						</div>
					</div>
					<div class="row col display-none" id="calcLtvDiv">
						<div class="col-md-push-9 col-md-3 col" style="margin-top:10px;">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon1">LTV</span>
								<input type="text" class="form-control text-right font-purple font-bold" id="calcLtv" aria-describedby="basic-addon1" value="0.0">
								<span class="input-group-addon">%</span>
							</div>
						</div>
						<div class="col-md-1 xd-col">
						</div>
						<div class="col-md-pull-4 col-md-8 col text-center" style="margin-top:10px;">
							<div id="showCalcLtvListBtn">
								<button type="button" class="btn btn-default btn-block" onclick="fn_showCalcLtvList()">
									계산내역 보기 <i class="glyphicon glyphicon-menu-down"></i>
								</button>
							</div>
							<div class="display-none" id="hideCalcLtvListBtn">
								<button type="button" class="btn btn-default btn-block" onclick="fn_hideCalcLtvList()">
									계산내역 닫기 <i class="glyphicon glyphicon-menu-up"></i>
								</button>
							</div>
							<div class="display-none" id="calcLtvListDiv" style="margin-top:1px;">
								<table class="table table-bordered">
									<colgroup>
										<col width="65%">
										<col width="20%">
										<col width="15%">
									</colgroup>
									<tbody>
										<tr>
											<td class="text-right">
												1. 감정가
											</td>
											<td class="text-right">
												<span id="calcListOuterVlAmt"></span>
											</td>
											<td class="text-left">
												만원
											</td>
										</tr>
										<tr>
											<td class="text-right">
												2. 선순위 금액
											</td>
											<td class="text-right">
												<span id="calcListPrrOrdrAmt"></span>
											</td>
											<td class="text-left">
												만원
											</td>
										</tr>
										<tr>
											<td class="text-right">
												3. 대출금액
											</td>
											<td class="text-right">
												<span id="calcListLoanAmt"></span>
											</td>
											<td class="text-left">
												만원
											</td>
										</tr>
										<tr>
											<td class="text-right">
												담보여력=1-(2+3)
											</td>
											<td class="text-right">
												<span id="calcListRsrvAmt"></span>
											</td>
											<td class="text-left">
												만원
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				
					<div class="display-none" id="calcActnCaseDiv">
						<div class="row col">
							<div class="col-xs-6 col-sm-6 col-md-6 col" style="margin-top:20px;">
								<div style="font-size: 16px; font-weight: bold;">
									<div style="border-width: 1px; border-color: #712594; padding: 0px 0px 0px 20px; border-left-style: solid;">
										경매 진행시
									</div>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 text-right col" style="margin-top:20px;">
								<button type="button" class="btn btn-purple-transparent" onclick="fn_calcActn()">
									계산
								</button>
								<button type="button" class="btn btn-purple-transparent" onclick="fn_calcActnReset()">
									초기화
								</button>
							</div>
						</div>
						<div class="row col">
							<div class="col-md-4 col" style="margin-top:10px;">
								<div class="input-group">
									<span class="input-group-addon" id="calcBidRate-addon">낙찰가율</span>
									<input type="text" class="form-control text-right" id="calcBidRate" onkeypress="hitCalcActnEnterKey(event);return gfn_setNumber(event, -2);" aria-describedby="calcBidRate-addon" value="0">
									<span class="input-group-addon">%</span>
								</div>
							</div>
							<div class="col-md-4 xd-col" style="margin-top:10px;">
								<div class="input-group">
									<span class="input-group-addon" id="calcAllctnAmt-addon">배당가능액<sup>4)</sup></span>
									<input type="text" class="form-control text-right" id="calcAllctnAmt" aria-describedby="calcAllctnAmt-addon" value="0">
									<span class="input-group-addon">만원</span>
								</div>
							</div>
							<div class="col-md-4 col" style="margin-top:10px;">
								<div class="input-group">
									<span class="input-group-addon" id="calcLoanAmt-addon">배당잔액</span>
									<input type="text" class="form-control text-right font-purple font-bold" id="calcAllctnRestAmt" aria-describedby="calcLoanAmt-addon" value="0">
									<span class="input-group-addon">만원</span>
								</div>
							</div>
						</div>
						
						<div class="row col display-none" id="calcActnDiv">
							<div class="col-md-8 col text-center" style="margin-top:10px;">
								<div id="showCalcActnListBtn">
									<button type="button" class="btn btn-default btn-block" onclick="fn_showCalcActnList()">
										계산내역 보기 <i class="glyphicon glyphicon-menu-down"></i>
									</button>
								</div>
								<div class="display-none" id="hideCalcActnListBtn">
									<button type="button" class="btn btn-default btn-block" onclick="fn_hideCalcActnList()">
										계산내역 닫기 <i class="glyphicon glyphicon-menu-up"></i>
									</button>
								</div>
								<div class="display-none" id="calcActnListDiv" style="margin-top:1px;">
									<table class="table table-bordered">
										<colgroup>
											<col width="65%">
											<col width="20%">
											<col width="15%">
										</colgroup>
										<tbody>
											<tr>
												<td class="text-right">
													낙찰가율
												</td>
												<td class="text-right">
													<span id="calcListBidRate"></span>
												</td>
												<td class="text-left">
													%
												</td>
											</tr>
											<tr>
												<td class="text-right">
													배당가능금액<sup>4)</sup>=감정가<sup>1)</sup>×낙찰가율
												</td>
												<td class="text-right">
													<span id="calcListAllctnAmt"></span>
												</td>
												<td class="text-left">
													만원
												</td>
											</tr>
											<tr>
												<td class="text-right">
													배당잔액=4-(2+3)
												</td>
												<td class="text-right">
													<span id="calcListAllctnRestAmt"></span>
												</td>
												<td class="text-left">
													만원
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div style="margin-top:10px;">
						<p class="calcLtv">
							* 감정가액은 임의로 입력 가능합니다.<br>
							* 선순위 및 대출 금액은 원금 또는 채권최고액 기준으로 입력 가능합니다.<br>
							* 낙찰가율은 임의로 입력 가능합니다.<br>
							* 본 계산은 투자자의 이해를 돕기 위함이오니, 권리분석에 참고하시기 바랍니다.
						</p>
					</div>
					<div class="text-center valuationBtn">
						<a href="http://nland.kbstar.com/quics?page=B025914&amp;cc=b043428:b043506/" target="_blank">
							<img src="${pageContext.request.contextPath}/resources/img/img_invest_kbstar.png">
						</a>
						<a href="http://rt.molit.go.kr/" target="_blank">
							<img src="${pageContext.request.contextPath}/resources/img/img_invest_molit.png">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="strctrDiv" class="infoOpenDiv">
	<div class="row">
		<div class="investCont_tit col-md-12">
			<b>|</b>&nbsp;상품구조<span style="color:#5a5a5a;font-size:20px;"> : 근저당부질권</span>
		</div>
		<div class="col-md-12 planCont" style="margin-bottom: 30px;">
		
		
			<div class="md">
				<img src="${pageContext.request.contextPath}/resources/img/img_invest_nmvbls_strctr2_l.png" class="img-responsive" style="margin: 30px auto;">
			</div>
			<div class="xd">
				<img src="${pageContext.request.contextPath}/resources/img/img_invest_nmvbls_strctr2_s.png" class="img-responsive" style="margin: 30px auto;">
			</div>
		
		
		
		
		
		</div>
	</div>
	<hr>
</div>


<div id="planDiv" class="infoOpenDiv">
	<div class="row">
		<div class="investCont_tit col-md-12">
			<b>|</b>&nbsp;상환계획
		</div>
		<div class="col-md-12 planCont" style="margin-bottom: 30px;">
		
			
				
					<div class="tabSubTit">
						자체상환 또는 리파이낸싱
					</div>
					<div>
						차주는 고정적인 수익을 바탕으로 자체상환 계획입니다. 만기 전 연장 신청할 경우 담보물 재평가 후 리파이낸싱을 통하여 상환됩니다.
					</div>
				
					<div class="tabSubTit">
						NPL매각
					</div>
					<div>
						만약 본 상품 부실발생시, NPL매입전문 업체에게 채권매각하여 회수합니다. 크리에이터는 물건 심사시 사전에 NPL매입의 수익률 민감도 분석을 통하여 합리적으로 매입 가능한 수준의 대출금액을 승인합니다.

					</div>
				
					<div class="tabSubTit">
						경매회수
					</div>
					<div>
						시장의 예기치 못한 상황으로 채권매각이 원활하지 않을 시, 담보권리를 기반으로 경매진행하여 회수합니다. 크리에이터는 경매 낙찰가율을 고려한 유효담보가액을 산정하여 담보여력을 평가한 뒤 대출금액을 승인합니다.
					</div>
				
			
			
		
		
		
			<img src="${pageContext.request.contextPath}/resources/img/img_invest_nmvbls_auction.png" class="img-responsive" style="margin: 30px auto;">
		
		
		</div>
	</div>
	<hr>
</div>

<div id="safeDiv" class="infoOpenDiv">
	<div class="row" style="margin-bottom: 30px;">
		<div class="investCont_tit col-md-12">
			<b>|</b>&nbsp;투자자보호
		</div>
		
			
			
			
				
					<div class="col-xs-12 col-sm-4 col-md-4 safeDivWrap">
						<div class="safeDivCont">
							<div class="safeCont_tit">
								담보권
							</div>
						</div>
						<div class="safeDivNum">
							<i class="fa fa-check-circle"></i>
						</div>
						<div class="safeDivCont">
							<div class="safeCont_txt">
								후순위 근저당부 질권
							</div>
						</div>
					</div>
				
					<div class="col-xs-12 col-sm-4 col-md-4 safeDivWrap">
						<div class="safeDivCont">
							<div class="safeCont_tit">
								인출조건
							</div>
						</div>
						<div class="safeDivNum">
							<i class="fa fa-check-circle"></i>
						</div>
						<div class="safeDivCont">
							<div class="safeCont_txt">
								대출약정서<br>
근저당설정계약서
							</div>
						</div>
					</div>
				
					<div class="col-xs-12 col-sm-4 col-md-4 safeDivWrap">
						<div class="safeDivCont">
							<div class="safeCont_tit">
								기타보강
							</div>
						</div>
						<div class="safeDivNum">
							<i class="fa fa-check-circle"></i>
						</div>
						<div class="safeDivCont">
							<div class="safeCont_txt">
								질권설정 승낙서<br>
대표이사 연대보증
							</div>
						</div>
					</div>
				
			
			
		
	</div>
</div>

<!-- 동일차입자 상품 Modal -->
<div class="modal fade" id="sameBrrwrModal" role="dialog" aria-labelledby="sameBrrwrModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content font-purple">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				동일차입자 상품
			</div>
			<div class="modal-body">
				<table class="table table-bordered">
					<tbody id="sameBrrwrListBody"><tr>	<td>		<a href="javascript:(void(0));" onclick="fn_openInvestDetail(777)">			04-19-126 [부동산 425호] 경기도 파주시 문산읍 토지(2차)		</a>	</td></tr><tr>	<td>		<a href="javascript:(void(0));" onclick="fn_openInvestDetail(771)">			04-19-121 [부동산 422호] 경기도 파주시 문산읍 토지(1차)		</a>	</td></tr><tr>	<td>		<a href="javascript:(void(0));" onclick="fn_openInvestDetail(741)">			04-19-99 [부동산 402호] 제주 서귀포시 오피스텔 수익권(2차)		</a>	</td></tr><tr>	<td>		<a href="javascript:(void(0));" onclick="fn_openInvestDetail(707)">			04-19-74 [부동산 399호] 제주 서귀포시 오피스텔 수익권(1차)		</a>	</td></tr></tbody>
				</table>
			</div>
		</div>
	</div>
</div>
									
									
									
									
									
								
								
								

								<div class="display-none infoOpenDiv" id="loanFileHtml" style="display: block;">
									<hr>
									
									<div class="row">
										<div class="investCont_tit col-md-12">
											<b>|</b>&nbsp;참고파일
										</div>
										<div class="col-md-12" style=" margin-top:30px;">
										
											
												
													<div class="loanFile">
														<a class="fileItem" target="_blank" href="https://creator.co.kr/img/loan/790/cde5c5a80901478486e01a27b4b8eba3.pdf">
															
															
															등기부등본
														</a>
													</div>
												
											
											
										
										</div>
									</div>
								</div>
									
								<div class="display-none infoOpenDiv" id="eventHtml1">
									<hr>
									<div class="row">
										<div class="investCont_tit col-md-12">
											<b>|</b>&nbsp;스페셜 리워드
										</div>
										
									</div>
								</div>
									
								<div class="display-none infoOpenDiv" id="eventHtml2">
									<hr>
									<div class="row">
										<div class="investCont_tit col-md-12">
											<b>|</b>&nbsp;스페셜 리워드
										</div>
										
									</div>
								</div>
									
								<div class="display-none infoOpenDiv" id="eventHtml3">
									<hr>
									<div class="row">
										<div class="investCont_tit col-md-12">
											<b>|</b>&nbsp;스페셜 리워드
										</div>
									</div>
									<div class="html">
										<p>&nbsp;</p>
									</div>
								</div>
								
								<div class="infoOpenDiv">
									<div class="row black mt40">
										<div class="col-md-12">
											<div class="title_2nd_w"> 심사총론
											</div>
											<div class="content">
												<p>
													본 부동산 담보 목적물은 경기도 파주시 문산읍 당동리 소재 토지 3필지로 근저당권부 질권 대출 목적의 투자모집 진행 건 입니다.<br>
해당 담보물은 제1종일반주거지역 내 전 및 임야로 인근에 개발이 진행중입니다. 차입자는 여신회사로 국세, 지방세 체납없이 영업을 영위하고 있습니다.<br><br>

해당 건물의 최근 시세를 바탕으로 책정한 외부감정가액은 85.0억원이며, 유효담보가액은 55.2억원입니다. 크리에이터 대출금액과 선순위 반영 금액을 고려하더라도 유효담보가액을 기준으로 한 남은 담보여력은 약 19.5억원으로 채권보전이 가능할 것으로 판단됩니다.<br><br>

크리에이터대부 명의로 해당 모집 분에 대해서 근저당권부 질권 150%가 설정되며, 부실 발생 시 NPL전문매입업체에 매각 또는 직접경매를 통해 투자자를 보호합니다.<br><br>

본 상품의 이자기산일은 투자모집 마감일의 익일이며, 당일 투자 모집이 완료되지 않는다면 투자일부터 마감일까지의 투자대기포인트가 지급됩니다.<br><br>
												</p>
											</div>
										</div>
									</div>
								</div>
								
								<div class="display-none infoOpenDiv" id="scheduleDiv" style="display: block;">
									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 investCont_tit">
											<b>|</b>&nbsp;예상 상환일정 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="금일 기준으로 대출이 실행되었다고 가정할 때의 예상 일정이며, 실 상황일정은 대출 실행 후 마이페이지 > 투자 내역에서 투자상품을 클릭하시면 확인 가능합니다." data-original-title="" title=""></span>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6 investCont_tit_right">
											<div class="excptRepaySchedule">
												<div class="excptRepaySchedule1">이 상품에&nbsp;</div>
												<div class="excptRepaySchedule2">
													<select class="form-control" id="excptRepayScheduleAmtSelect">
														
															
																<option value="1000">1000만원 투자시</option>
															
															
																<option value="500">500만원 투자시</option>
															
															
																<option value="300">300만원 투자시</option>
															
															<option value="100">100만원 투자시</option>
															<option value="50">50만원  투자시</option>
															<option value="20">20만원 투자시</option>
															<option value="10">10만원 투자시</option>
															<option value="5">5만원 투자시</option>
															<option value="1">1만원 투자시</option>
														
														
													</select>
												</div>
											</div>
										</div>
										
										<div class="clearfix visible-sm-block visible-md-block visible-lg-block"></div>
										
										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="content">
												<div id="scheduleList">
													<div class="goodlist-title">
														<div class="row">
															<div class="col-xs-4 col-md-2 col">
																<div class="round">
																	회차
																	<a href="javascript:(void(0));" id="showScheduleListA">
																		<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																	</a>
																	<a href="javascript:(void(0));" id="hideScheduleListA" class="display-none">
																		<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																	</a>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="repayAmt">상환예정금</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="repayAmt">원금(+)</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="interest">이자(+)</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="tax">
																	세금(-) <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="2회(이자소득세, 주민세)에 걸쳐 원단위로 절사되었습니다."> <="" span="" data-original-title="" title="">
																</span></div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="tranAmt">입금액</div>
															</div>
														</div>
													</div>
													<div id="scheduleListBody" class="display-none"><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				1/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				11,397<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				11,397<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				3,120<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				8,277<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				2/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				9,973<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				9,973<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,730<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				7,243<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				3/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,930<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				7,755<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				4/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,930<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				7,755<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				5/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				11,041<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				11,041<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				3,030<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				8,011<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				6/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,930<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				7,755<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				7/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				11,753<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				11,753<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				3,220<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				8,533<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				8/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				10,329<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				0<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				10,329<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,830<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				7,499<font size="1">원</font>			</div>		</div>	</div></div><div class="goodlist-item">	<div class="row">		<div class="col-xs-4 col-md-2 col">			<div class="item-title">회차</div>			<div class="round">				9/9			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">상환예정금</div>			<div>				1,010,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">원금(+)</div>			<div class="repayAmt">				1,000,000<font size="1">원</font>			</div>		</div>		<div class="col-xs-12 col xd">			<hr>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">이자(+)</div>			<div class="interest">				10,685<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">				세금(-)			</div>			<div class="tax">				2,930<font size="1">원</font>			</div>		</div>		<div class="col-xs-4 col-md-2 col">			<div class="item-title">입금액</div>			<div class="tranAmt">				1,007,755<font size="1">원</font>			</div>		</div>	</div></div></div>
													<div class="goodlist-title" style="font-weight: bold;">
														<div class="row">
															<div class="col-xs-4 col-md-2 col">
																<div>
																	<font size="1">총</font> <span id="dstrbtnRnd">9</span><font size="1">회</font>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div>
																	<span id="dstrbtnAmt">1,097,233</span><font size="1">원</font>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="font-blue">
																	<span id="prncplAmt">1,000,000</span><font size="1">원</font>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="font-blue">
																	<span id="intrstAmt">97,233</span><font size="1">원</font>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="font-red">
																	<span id="taxAmt">26,650</span><font size="1">원</font>
																</div>
															</div>
															<div class="col-xs-4 col-md-2 col">
																<div class="font-navy">
																	<span id="tranAmt">1,070,583</span><font size="1">원</font>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div id="closedInfoDiv" class="closedInfo display-none" style="margin-bottom: 20px;">
									<div class="row">
										<div class="closedInfoCont_tit col-md-12" id="closedInfoTxt"></div>
									</div>
								</div>
								
								<div>
									<hr>
									<div class="row">
										<div class="investCont_tit col-md-12">
											<b>|</b>&nbsp;자주 묻는 질문
										</div>
										<div class="col-md-12" style=" margin-top:20px;">
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane fade in active" id="investTab">
													<div class="wrap" id="investFaqWrap investDetail_FAQ">
														<div class="panel-group" id="investFaqAccordion" role="tablist" aria-multiselectable="true">
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="investFaqHeading1">
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse1" aria-expanded="false" aria-controls="investFaqCollapse1">
																			Q1. 투자는 어떻게 하나요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading1">
																	<div id="FAQbody" class="panel-body">
																		투자를 희망하는 회원님은 다음과 같은 과정을 통해 투자에 참여하실 수 있습니다.?
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
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse2" aria-expanded="false" aria-controls="investFaqCollapse2">
																			Q2. 자동투자는 무엇인가요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading2">
																	<div id="FAQbody" class="panel-body">
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
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse3" aria-expanded="false" aria-controls="investFaqCollapse3">
																			Q3. 이자수익에 적용되는 세율은 몇 % 인가요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading3">
																	<div id="FAQbody" class="panel-body">
																		투자 시 발생된 이자수익은 과세대상입니다. 현행 세법에 따라 비영업대금에 대한 이익은 이자소득으로 간주되어 25%의 세율이 적용됩니다. (소득세법 제16조 제1항 제11) 여기에 주민세가 2.5% 추가되어 총 27.5%를 세금으로 원천징수 하고있습니다. 크리에이터에서는 회원님의 이자 수익에대해서 납세금을 납부하며, 세후의 순수익에 대하여 회원님의 예치금 계좌로 입금해 드립니다.
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																	<div class="panel-heading" role="tab" id="investFaqHeading4">
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse4" aria-expanded="false" aria-controls="investFaqCollapse4">
																			Q4. 가이드라인에 따른 투자한도 상향은 어떻게 하나요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading4">
																	<div id="FAQbody" class="panel-body">
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
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse5" aria-expanded="false" aria-controls="investFaqCollapse5">
																			Q5. 미성년자도 투자가 가능한가요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading5">
																	<div id="FAQbody" class="panel-body">
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
																		* 이메일 주소: contact@creator.co.kr<br>
																		* 우편 주소: (우)06131 서울특별시 강남구 논현로95길 12, 4층
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="investFaqHeading6">
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse6" aria-expanded="false" aria-controls="investFaqCollapse6">
																			Q6. 투자 시 종합 소득세 신고는 어떻게 하나요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading6">
																	<div id="FAQbody" class="panel-body">
																		투자 회원님의 이자소득에 대한 세금은 크리에이터에서 원천징수합니다. 따라서 별도로 소득 신고를 하실 필요가 없습니다.
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="investFaqHeading7">
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse7" aria-expanded="false" aria-controls="investFaqCollapse7">
																			Q7. 크리에이터에 투자하면 원금이 보장되나요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading7">
																	<div id="FAQbody" class="panel-body">
																		크리에이터의 투자상품은 원금이 보장되지 않습니다. 크리에이터와 같은 P2P대출 플랫폼에서의 투자는 현행 법률상 '유사수신행위의 규제에 관한 법률'에 의해 원금과 수익을 보장할 수 없으며, '원금 보장이 안됨'을 명시하지 않는 것은 법률 위반입니다.
																		크리에이터는 이에 대해 충분한 사전 고지 의무를 다하고자 합니다.
																		투자고객님은 이를 인지하시고 신중한 결정 부탁드립니다. 다만, 크리에이터는 자체신용평가시스템을 통해 대출고객의 신용도를 세밀하고 정밀하게 평가하여 리스크를 낮추고 있습니다.
																		투자고객님께서는 반드시 분산투자를 통해 부도에 대한 위험을 낮추실 수 있습니다. 분산투자가 어렵게 느껴지는 투자회원님을 위해 크리에이터에서는 자동 투자 시스템을 마련하였습니다.
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="investFaqHeading8">
																	<h4 class="panel-title" id="FAQhead">
																		<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse8" aria-expanded="false" aria-controls="investFaqCollapse8">
																			Q8. 차입자가 돈을 갚지 않으면 어떻게 되나요?
																		</a>
																	</h4>
																</div>
																<div id="investFaqCollapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading8">
																	<div id="FAQbody" class="panel-body">
																		㈜크리에이터대부가 채권추심을 합니다. ㈜크리에이터대부는 채권자로서 채권추심을 대행하여 투자고객의 자산 보호에 최선을 다하며, 전화, 문자메시지, 방문 등 적법한 절차에 따른 추심 과정을 진행하게 됩니다. 
																		2개월 동안은 ㈜크리에이터대부에서 자체추심을 진행하며, 2개월 이상 연체될 경우 채권추심업체에 의뢰하여 추심업무를 이행하게 됩니다. 
																		차입자의 연체일수가 장기화되어 6개월 이상 연체된다면 부실채권을 매각하며, 투자금의 일부를 회수합니다. 
																		미회수분에 대해서는 대손처리되어 원금 손실이 있을 수 있습니다. 참고로, P2P금융업체는 원금이 보장되지 않음을 명시해야 하며, 
																		이를 고객에게 적극적으로 알려야 할 의무가 있습니다. 이를 지키지 않는 것은 유사수신행위의 규제에 관한 법률 위반입니다. 
																		다만, 크리에이터는 단일 채권에 대한 투자금액 상한선을 정하는 등 분산투자를 권유해드리고 있으며, 분산투자가 이루어졌을 때 대손율은 약 1% 내외로 예상하고 있습니다.
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
								
								<div class="display-none bottom_table infoOpenDiv" id="P2PLoanInformationListDiv">
									<hr>
									<div class="row">
										<div class="col-md-12 investCont_tit">
											<b>|</b>&nbsp;P2P 대출정보 목록조회 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="크리에이터는 NH오픈플랫폼의 'P2P 투자금 지급 지시' API를 이용하여 모집된 투자금을 차입자에게 전달합니다. 이 지급 지시의 처리결과를 'P2P 대출정보 목록조회' API를 통해 실시간으로 조회하여 보여드립니다." data-original-title="" title=""></span>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="content xd">
												<table class="table table-bordered">
													<colgroup>
														<col width="50%">
														<col width="20%">
														<col width="50%">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">차입자명</th>
															<th scope="col">은행명</th>
															<th scope="col">차입자계좌번호</th>
														</tr>
														<tr>
															<th scope="col">
																대출신청일자 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="'P2P 투자금 지급 지시' API가 실행된 날짜를 의미합니다." data-original-title="" title=""></span>
															</th>
															<th scope="col">대출기간</th>
															<th scope="col">투자합계금액</th>
														</tr>
													</thead>
													<tbody id="P2PLoanInformationListBodyS">
													</tbody>
												</table>
											</div>
											<div border="0" class="content md">
												<table class="table">
													<colgroup>
														<col width="18%">
														<col width="17%">
														<col width="18%">
														<col width="18%">
														<col width="10%">
														<col width="20%">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">차입자명</th>
															<th scope="col">은행명</th>
															<th scope="col">차입자계좌번호</th>
															<th scope="col">
																대출신청일자 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-content="'P2P 투자금 지급 지시' API가 실행된 날짜를 의미합니다." data-original-title="" title=""></span>
															</th>
															<th scope="col">대출기간</th>
															<th scope="col">투자합계금액</th>
														</tr>
													</thead>
													<tbody id="P2PLoanInformationListBodyL">
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
									
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="notice">
											<div class="title">투자시 위험안내</div>
											<div class="text">creator는 원금과 수익률을 보장하지 않으며 투자 손실의 가능성이 있습니다. 엄격한 차입자 신용 평가와 금리 산정으로 평균 수익률 연 8%를 목표로 합니다.</div>
										</div>
									</div>
								</div>
									
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div></section>
	<!-- for all pages -->
	
	<!-- 알림 신청 Modal -->
	<div class="modal fade" id="alarmModal" role="dialog" aria-labelledby="alarmModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content font-purple">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<div class="">이벤트 정보와 투자 상품 알림</div>
				</div>
				<div class="modal-body">
					<div class="alarm-title-top">이벤트 정보와 따근한 투자 상품 소식을</div>
					<div class="alarm-title">먼저 받아보고 싶으시다면?</div>
					<div class="alarm-subtitle">
						SMS를 통해 크리에이터의 최신 소식과 투자정보를 보내드립니다.
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input class="form-control" id="reqCusNm" type="text" placeholder="이름" maxlength="50">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input class="form-control" id="reqTelNo" type="text" placeholder="휴대전화" maxlength="11">
							</div>
						</div>
					</div>
					<div class="row" style="margin-bottom: 15px;">
						<div class="col-md-12">
							<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_insertAlarm()">알림 신청하기</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<a href="javascript:(void(0));" onclick="fn_kakaoAddFriend();">
								<img src="/images/common/btn_kakao_add_friend.png" alt="kakao talk" style="width: 100%">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
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
		
		
		$("#loanCopyright").show();
		$("#loanNotification").show();
		
		// 운영서버일때 페이스북 뷰컨텐츠 추적 실행
		var hostname = location.hostname;
		var pathname = location.pathname;
		if(hostname.indexOf("creator.co.kr") > -1) {
			if(pathname.indexOf("/invest/detail/") > -1) {	// 투자상세
				window.onload = function() { typeof fbq==="function" && fbq('track', 'ViewContent'); };
			}
		}
	});
	
	window.fbAsyncInit = function() {
		var hostname = location.hostname;
		var appId = "";
		if(hostname.indexOf("creator.co.kr") > -1) {
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

<script type="text/javascript" src="/js/bootstrap.min.js"></script>


<!-- Javascripts
================================================== -->
<!-- bootstrap-multiselect -->
<script type="text/javascript" src="/js/bootstrap-multiselect.js"></script>
<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","1004949496302293",{em:"too@root.com"},{agent:"tmgoogletagmanager"});fbq("track","PageView");</script>


<form id="commonForm" name="commonForm"></form>
</body>

</html>