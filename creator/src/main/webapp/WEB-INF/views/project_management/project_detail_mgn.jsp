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
			$.post(
					"${pageContext.request.contextPath}/project_detail_success"
					,{
						project_num:$("#pro_num").val()
					}
					,function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("심사 완료");
								location.href = "${pageContext.request.contextPath}/main";
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
			);//post
		});//investBtn1
		
		$("#investBtn2").click(function() {
			$.post(
					"${pageContext.request.contextPath}/project_detail_delete"
					,{
						project_num:$("#pro_num").val()
					}
					,function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("심사 반려");
								location.href = "${pageContext.request.contextPath}/main";
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
			);//post
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
	<div id="wowslider_engine" style="position: absolute; left: -1000px; top: -1000px; opacity: 0.1;">
		<a href="http://wowslider.com">wowslider.com</a>
	</div>
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
			$(this).attr("src", "${pageContext.request.contextPath}/resources/img/btn_footer_sns_facebook_hover.png");
		}, function() {
			$(this).attr("src", "${pageContext.request.contextPath}/resources/img/btn_footer_sns_facebook_default.png");
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
	
// 	function fn_doInvest() {
// 		var LOAN_NOS = [];
// 		LOAN_NOS.push("790");
// 		var comSubmit = new ComSubmit();
// 		comSubmit.setUrl("/invest/req");
// 		comSubmit.addParam("LOAN_NOS", LOAN_NOS);
// 		comSubmit.submit();
// 	}
	
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
														<c:choose>
															<c:when test="${proVO.ach_state == '투자하기'}">
																<span>모집중</span>
															</c:when>
															<c:otherwise>
																${proVO.ach_state}
															</c:otherwise>
														</c:choose>
													</li>
													<li class="badge_deal" id="BANNER_TITLE">
														<span>부동산</span>
													</li>
												</ol>
											</div>
											<div class="col-md-10 col-sm-10 col-xs-12" style="text-align:left;">
												<div class="loanGdId" style="">
													04-19-136
												</div>
												<div class="loanNm" style="">[${proVO.genre}] ${proVO.project_name}</div>
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

							<div class="amt">
								<font class="font-purple">
										${proVO.current_price}</font><font size="2">만원</font>
									/ ${proVO.price}<font size="2">만원</font>
							</div>
							<hr>
							<div class="option">
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										상환방식
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										${proVO.repay_method}
									</div>
								</div>
							
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										연 수익률
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										${proVO.rate}<font size="2">%</font>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										투자기간
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										${proVO.refund}<font size="2">개월</font>
									</div>
								</div>
								<div class="row display-none" id="lmtAmtDiv">
									<div class="col-xs-5 col-sm-5 col-md-5 left">
										투자한도
									</div>
									<div class="col-xs-7 col-sm-7 col-md-7 right">
										<span class="font-light-blue" id="lmtAmt">${500 - inVO.invest_price}</span><font size="2" class="font-light-blue">만원</font>
										 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>※ 현재 이 상품에 투자 가능한 금액입니다.</strong>
												<br>
												<br>
												총 투자한도 : 
												
												${500 - inVO.invest_price}만원
												
												<br>
												동일차입자 한도 : 
												
													원
												
												<br>
												투자잔여금액 : 원" data-original-title="" title="">
										</span>
									</div>
								</div>
							</div>
									<button type="button" class="btn btn-purple-transparent btn-block" id="investBtn1" style="width: 116px;">
										심사승인 <i class="glyphicon glyphicon glyphicon-ok"></i>
									</button>
									<button type="button" class="btn btn-purple-transparent btn-block" id="investBtn2" style="width: 106px;margin-top: 0px;">
										심사반려 <i class="glyphicon glyphicon glyphicon-no"></i>
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
									${guaVO.guarantee_type}
								</td>
								<td>
									${proVO.refund}개월
								</td>
								<td>
									${proVO.price}만원
								</td>
								<td>
									${proVO.guarantee_price}만원
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
									${guaVO.guarantee_type}
								</td>
							</tr>
						
							<tr>
								<td scope="col" class="title_td">
									면적(㎡/py)
								</td>
								<td scope="col">
									${guaVO.supply_area} / ${guaVO.exclusive_area}
								</td>
							</tr>
							<tr>
								<td scope="col" class="title_td">
									LTV
								</td>
								<td scope="col">
									${(proVO.price / guaVO.connoisseur) * 100}%
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
									${guaVO.debtor_type}
								</td>
							</tr>
							<tr>
								<td scope="col" class="title_td">
									업종
								</td>
								<td scope="col">
									${guaVO.business_type}
								</td>
							</tr>
							<tr>
								<td scope="col" class="title_td">
									대출목적
								</td>
								<td scope="col">
									사업운영자금
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
								<td><span id="loanCnt">${proVO.loan_count}</span>건</td>
								<td><span id="repayCnt">1</span>건</td>
								<td><span id="loanAmtSum">${proVO.sum_price}</span>만원</td>
								<td><span id="loanRestPrncplAmtSum">${proVO.sum_guarantee_price}</span>만원</td>
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
									크리에이터 <b>${proVO.grade}</b> 등급입니다
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
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_1">9</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">환가성</td>
											<td scope="col">부실발생시 시장매각 또는 경매회수력</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_2">8</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">수익성</td>
											<td scope="col">상품 투자수익률</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_3">7</span>점</td>
										</tr>
										<tr>
											<td scope="col" class="title_td">상환성</td>
											<td scope="col">신용등급, 소득 등 상환가능성</td>
											<td scope="col" class="bgBL"><span id="NMVBLS_SCORE_4">9</span>점</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
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
								${guaVO.object_type}
							</td>
							<td align="center">
								토지(㎡/py) : ${guaVO.supply_area} / ${guaVO.exclusive_area}
							</td>
							<td align="center">
								${guaVO.connoisseur}원
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
								${guaVO.connoisseur}원
							</td>
							<td align="center">
								${proVO.price / guaVO.connoisseur * 100}%
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
			<div class="bottom_table">
				<div class="row">
					<div class="col-md-12">
						<div class="content">
						<!-- 카카오 지도 web API -->
						<div id="map" style="width:800px;height:400px;"></div>
						<div id="roadview" style="width:800px;height:400px;"></div>
						
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=634dddac053ddf6be0b6aa5a165b2da8"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new kakao.maps.LatLng(37.56669, 126.98089), // 지도의 중심좌표
							        level: 3, // 지도의 확대 레벨
							        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
							    }; 
							// 지도를 생성한다 
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							// 지도 타입 변경 컨트롤을 생성한다
							var mapTypeControl = new kakao.maps.MapTypeControl();
							// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
							map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	
							// 지도에 확대 축소 컨트롤을 생성한다
							var zoomControl = new kakao.maps.ZoomControl();
							// 지도의 우측에 확대 축소 컨트롤을 추가한다
							map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
							//로드뷰를 표시할 div
							var roadviewContainer = document.getElementById('roadview'); 
							// 로드뷰 위치
							var rvPosition = new kakao.maps.LatLng(37.56613, 126.97853);
							//로드뷰 객체를 생성한다
							var roadview = new kakao.maps.Roadview(roadviewContainer, {
								panoId : 1050215190, // 로드뷰 시작 지역의 고유 아이디 값
								panoX : 126.97853, // panoId가 유효하지 않을 경우 지도좌표를 기반으로 데이터를 요청할 수평 좌표값
								panoY : 37.56613, // panoId가 유효하지 않을 경우 지도좌표를 기반으로 데이터를 요청할 수직 좌표값
								pan: 180.16640000000007, // 로드뷰 처음 실행시에 바라봐야 할 수평 각
								tilt: 19.031999999999996, // 로드뷰 처음 실행시에 바라봐야 할 수직 각
								zoom: -1 // 로드뷰 줌 초기값
							}); 
						</script>
						<!-- 카카오 지도 web API -->
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
												${guaVO.location}
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
												${guaVO.supply_area} / ${guaVO.exclusive_area}
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
							인근 부동산 시세를 바탕으로 한 <span style="color:#f39c12;"><strong>*감정가액은 ${guaVO.connoisseur}억원</strong></span>이며 <span style="color:#f39c12;"><strong>LTV는 약 42.00%</strong></span>입니다. 부동산시장을 통한 급매가 및 인근지역 유사물건의 낙찰가액을 고려한 <strong>유효담보가액은 약 55.2억원</strong>입니다. 유효담보가액을 고려하더라도 <strong>약 19.5억원의 담보여력</strong>이 있습니다.<br>
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
					후순위 근저당부질권
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
								<!-- 자주묻는질문 start -->
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse1" aria-expanded="false" aria-controls="investFaqCollapse1" class="collapsed">
																	Q1. 투자는 어떻게 하나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading1" aria-expanded="false" style="height: 0px;">
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse2" aria-expanded="false" aria-controls="investFaqCollapse2" class="collapsed">
																	Q2. 자동투자는 무엇인가요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading2" aria-expanded="false" style="height: 0px;">
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse3" aria-expanded="false" aria-controls="investFaqCollapse3" class="collapsed">
																	Q3. 이자수익에 적용되는 세율은 몇 % 인가요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading3" aria-expanded="false" style="height: 0px;">
															<div id="FAQbody" class="panel-body">
																투자 시 발생된 이자수익은 과세대상입니다. 현행 세법에 따라 비영업대금에 대한 이익은 이자소득으로 간주되어 25%의 세율이 적용됩니다. (소득세법 제16조 제1항 제11) 여기에 주민세가 2.5% 추가되어 총 27.5%를 세금으로 원천징수 하고있습니다. 크리에이터에서는 회원님의 이자 수익에대해서 납세금을 납부하며, 세후의 순수익에 대하여 회원님의 예치금 계좌로 입금해 드립니다.
															</div>
														</div>
													</div>
													<div class="panel panel-default">
															<div class="panel-heading" role="tab" id="investFaqHeading4">
															<h4 class="panel-title" id="FAQhead">
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse4" aria-expanded="false" aria-controls="investFaqCollapse4" class="collapsed">
																	Q4. 가이드라인에 따른 투자한도 상향은 어떻게 하나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading4" aria-expanded="false" style="height: 0px;">
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse5" aria-expanded="false" aria-controls="investFaqCollapse5" class="collapsed">
																	Q5. 미성년자도 투자가 가능한가요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading5" aria-expanded="false">
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse6" aria-expanded="false" aria-controls="investFaqCollapse6" class="collapsed">
																	Q6. 투자 시 종합 소득세 신고는 어떻게 하나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading6" aria-expanded="false">
															<div id="FAQbody" class="panel-body">
																투자 회원님의 이자소득에 대한 세금은 크리에이터에서 원천징수합니다. 따라서 별도로 소득 신고를 하실 필요가 없습니다.
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="investFaqHeading7">
															<h4 class="panel-title" id="FAQhead">
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse7" aria-expanded="false" aria-controls="investFaqCollapse7" class="collapsed">
																	Q7. 크리에이터에 투자하면 원금이 보장되나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading7" aria-expanded="false">
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
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse8" aria-expanded="false" aria-controls="investFaqCollapse8" class="collapsed">
																	Q8. 차입자가 돈을 갚지 않으면 어떻게 되나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading8" aria-expanded="false">
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
						<!-- 자주묻는질문 end -->
								
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
	</section>
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
<input type="hidden" id="pro_num" value="${proVO.project_num}">
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