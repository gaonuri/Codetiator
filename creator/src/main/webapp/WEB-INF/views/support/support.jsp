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
	<link href="${pageContext.request.contextPath}/resources/bootstrap/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/bootstrap/css/style-responsive.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/chart-master/Chart.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!-- =======================================================
	  Template Name: Dashio
	  Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
	  Author: TemplateMag.com
	  License: https://templatemag.com/license/
	======================================================= -->
	<script type="text/javascript">
			$(document).ready(function() {
				$("#write_new").click(function() {
					location.href = "${pageContext.request.contextPath}/formi";
				});//btn_write
			});
				
			$(document).ready(function() {
				$("#write_op").click(function() {
					location.href = "${pageContext.request.contextPath}/formi2";
				});//btn_write2
			});
				
				$("#newtab").click(function() {
					$.get("/support/support"
						,{
							notice_type:$("#newtab").val()
						}//data
						,function(data,status) {
							if(status == "success") {
							
							}//if
						}//function
					);//get
				});
				
				$("#operationtab").click(function() {
					$.get("/support/support"
						,{
							notice_type:$("#operationtab").val()
						}//data
						,function(data,status) {
							if(status == "success") {
							
							}//if
						}//function
					);//get
				});
				
		</script>
		
</head>
<style>
body{
	background-color: #f7f7f7;
}

#notice-banner{
	width: 100%;
	height: 430px;
	color: #fff;
	background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png)center 0% no-repeat;
				/*
				linear-gradient(120deg,  #712594, #9968fe, #ff5c5c, #a55cff, #712594);
				*/
	background-size: 100%;/*100% 110%, 600% 100%;
	-webkit-animation: Gradient 100s ease normal;
	-moz-animation: Gradient 100s ease normal;
	animation: Gradient 100s ease normal;
	*/
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	
	
}
/*
@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}
*/

/* Banner Style */

#notice-banner{
	position: relative;
	overflow: hidden;
	/*  그라데이션 백그라운드 테스트용
	background: url(/images/common/common_banner_title.jpg) center 0% no-repeat;
	background-color:#712594;
	background-size: 100%;
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	*/
	color: #fff;
}

@media (max-width: 767px) {
	#notice-banner{
		height: 347px;
	}
}

#notice-banner .section-body{
	color: #fff;
	position: relative;
	padding: 200px 20px 0px 20px;
}

@media (max-width: 767px) {
	#notice-banner .section-body{
		padding: 160px 20px 0px 20px;
	}
}

#notice-banner .notice-title{
	font-size:26pt;
	line-height:1.2;
	text-shadow:2px 2px 2px #555;
	
	
}

@media (max-width: 767px) {
	#notice-banner .notice-title{
		font-size:21pt;
		line-height:1.2;
		text-shadow:2px 2px 2px #555;
	}
}

#board .section-body .wrap {
	padding: 50px 0 111px 0;
}
@media (max-width: 767px) {
	#board .section-body .wrap {
		padding: 5px;
	}
}

#board .section-body .wrap .box {
	border-color: #d9d9de;
	border-style: solid;
	border-width: 1px;
	border-radius: 4px;
	padding: 20px 40px;
	background-color: #fff;
	font-size: 14px;
}

@media (max-width: 767px) {
	#board .section-body .wrap .box {
		padding: 5px;
	}
}

#board .section-body .wrap .box .title {
	font-size: 14px;
	font-weight: normal;
}

#board .section-body .wrap .box .title a {
	color: #5a5a5a;
}

#board .section-body .wrap .box .noticeRow {
	background-color: #fafafa;
	font-weight: bold;
}

#board .section-body .wrap .box .noticeSeq {
	border-style: none;
	background-color: #712594;
	border-radius: 2px;
	color: #fff;
	padding: 5px;
	font-size: 12px;
}

#board .section-body .wrap .box th {
	text-align: center;
	padding: 5px;
}

#board .section-body .wrap .box .seq {
	text-align: center;
	font-weight: bold;
	color: #712594;
}

#board .section-body .wrap .box .readCnt {
	text-align: center;
}

#board .section-body .wrap .box .indDate {
	text-align: center;
}

@media (max-width: 767px) {
	#board .section-body .wrap .box .seq {
		/*display: none;*/
		font-size: 12px;
	}
	#board .section-body .wrap .box .noticeSeq {
		padding: 2px;
		font-size: 10px;
	}
	#board .section-body .wrap .box .title a {
		font-size: 12px;
	}
	#board .section-body .wrap .box .readCnt {
		font-size: 12px;
	}
	#board .section-body .wrap .box .indDate {
		/*display: none;*/
		font-size: 12px;
	}
}

#board .section-body .wrap .box .hrTop {
	margin-top: 5px;
	margin-bottom: 20px;
}

#board .section-body .wrap .box .detTitle {
	font-size: 18px;
	font-weight: bold;
}

#board .section-body .wrap .box .detInsNm {
	font-size: 12px;
}

#board .section-body .wrap .box .detInsDate {
	font-size: 12px;
	color: #8c8c8c;
}

#board .section-body .wrap .box .detContent {
	padding: 5px;
}

#board .section-body .wrap .box .detContent img{
	max-width: 100%;
	height: auto;
}

#board .section-body .wrap .box .button {
	text-align: center;
}

@media (max-width: 767px) {
	#board .section-body .wrap .box .detTitle {
		font-size: 14px;
	}
	#board .section-body .wrap .box .detContent {
		font-size: 12px;
	}
	#board .section-body .wrap .box .button button {
		font-size: 12px;
	}
}

.board_view {border-bottom:1px solid #ccc;width: 100%}
.board_view tbody th {text-align:left;background:#f7f7f7;color:#3b3a3a}
.board_view tbody th.list_tit {font-size:13px;color:#000;letter-spacing:0.1px}
.board_view tbody .no_line_b th, .board_view tbody .no_line_b td {border-bottom:none}
.board_view tbody th, .board_view tbody td {padding:15px 0 16px 16px;border-bottom:1px solid #ccc}
.board_view tbody td.view_text {border-top:1px solid #ccc; border-bottom:1px solid #ccc;padding:20px 15px 20px 15px}
.board_view tbody th.th_file {padding:0 0 0 15px; vertical-align:middle}


.nav-tabs > li > a {
	
}
/* xd �쟻�슜�떆 */
@media (max-width: 767px) {
	.nav-tabs > li > a {
		padding: 5px 10px;
		font-size: 12px;
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
		   <section id="notice-banner" class="text-center">
				<div class="overlay">
					<div class="section-body">
						<h1 class="notice-title">공지사항</h1>
						<!--  **그라데이션 백그라운드 test용**
						<div class="notice-image"> </div>
						 -->
					</div>
				</div>
			</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->

		

		<!--main content start-->
	    <section id="board">
		<div class="container">
			<div class="section-body">
				<div class="row">
					<div class="col-md-12">
						<div class="wrap">
							<div class="box">
								<div role="tabpanel">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist" id="notiTab">
										<li role="presentation" class="active">
											<a href="#allTab" aria-controls="all" role="tab" data-toggle="tab" id="all">전체</a>
										</li>
										<li role="presentation">
											<a href="#eventTab" aria-controls="event" role="tab" data-toggle="tab" id="event">새소식</a>
										</li>
										<li role="presentation">
											<a href="#mngmntTab" aria-controls="mngmnt" role="tab" data-toggle="tab" id="mngmnt">운영사항</a>
										</li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content" style="margin-top:5px;">
										<div role="tabpanel" class="tab-pane fade in active" id="allTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="allBody">
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class="title noticeTitle">		<a href="javascript:(void(0));">[상품권 발송안내]★오늘은 둘 다 땡긴다 TWO★ 부동산·홈쇼핑 '2개' 상품에 투자하면 '신세계 백화점 상품권'이 쑤욱!</a>	</td>
												<td class="indDate">2019.08.07</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >[동시투자 이벤트 2탄]★오늘은 둘 다 땡긴다 TWO★ 부동산·홈쇼핑 '2개' 상품에 투자하면 '신세계 백화점 상품권'이 쑤욱! (7/26 ~ 상품마감시까지)</a>	</td>
												<td class="indDate">2019.07.26</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >[출석체크 이벤트] 7월 ★여름맞이★ 룰렛 이벤트 (7/3~7/31, 룰렛으로 BR 아이스크림에 도전하세요!)</a>	</td>
												<td class="indDate">2019.07.16</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >[홈쇼핑] 최대박네 대창막창 스페셜리워드 추첨결과 안내_수정</a>	</td>
												<td class="indDate">2019.06.18</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >『농협은행 P2P자금관리(예치금) 3시간 지연출금제』시행 안내</a>	</td>
												<td class="indDate">2019.06.14</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >크리에이트대부 대부거래표준약관 개정 안내 (19.6.20 시행)</a>	</td>
												<td class="indDate">2019.06.13</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >[홈쇼핑] 한샘오젠 식기건조대 스페셜리워드 추첨결과 안내_수정</a>	</td>
												<td class="indDate">2019.06.11</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >[블록체인서비스 출시] NH스마트고지서 원리금수취권 발급 방법 안내</a>	</td>
												<td class="indDate">2019.04.16</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >상환 시 원금 차액보정 프로세스 적용완료(19.1.28)</a>	</td>
												<td class="indDate">2019.01.28</td>
												</tr>
												
												<tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >개인투자자 투자한도 상향 안내(시행일자 18.02.27) -소득적격 증빙서류 안내</a>	</td>
												<td class="indDate">2018.02.26</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class="title noticeTitle">		<a href="javascript:(void(0));" >미성년자 P2P금융 플랫폼 이용 시 필요한 서류 안내</a>	</td>
												<td class="indDate">2017.12.11</td>
												</tr>
												
												<tr class="noticeRow">	
												<td class="seq"><span class="noticeSeq">공지<span></span></span></td>
												<td class>크리에이트 투자 적립 포인트 비율 변경 안내 - 투자 대기 포인트 관련 (RPM)</a>	</td>
												<td class="indDate">2017.09.25</td>
												</tr>
												
												<tr>	
												<td class="seq">92</td>
												<td class="title">		<a href="javascript:(void(0));" >[홈쇼핑] 쿠쿠 회전 블렌더(3차) 스페셜리워드 추첨결과 안내</a>	</td>
												<td class="indDate">2019.08.08</td>
												</tr>
												
												<tr>	
												<td class="seq">270</td>
												<td class="title">		<a href="javascript:(void(0));" >[중도상환안내] 부동산 363호</a>	</td>
												<td class="indDate">2019.08.08</td>
												</tr>
												
												<tr>	
												<td class="seq">269</td>	
												<td class="title">		<a href="javascript:(void(0));" >[모집취소안내] 부동산 컨소시움33호</a>	</td>
												<td class="indDate">2019.08.06</td>
												</tr>
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="eventTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="eventBody">
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="mngmntTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="mngmntBody">
</style>

<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <%@ include file="../header.jsp" %>
	    <!--header end-->
		   <section id="notice-banner" class="text-center">
				<div class="overlay">
					<div class="section-body">
						<h1 class="notice-title">공지사항</h1>
						<!--  **그라데이션 백그라운드 test용**
						<div class="notice-image"> </div>
						 -->
					</div>
				</div>
			</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->

		

		<!--main content start-->
	    <section id="board">
		<div class="container">
			<div class="section-body">
				<div class="row">
					<div class="col-md-12">
						<div class="wrap">
							<div class="box">
								<div role="tabpanel">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist" id="notiTab">
										<li role="presentation" class="active">
											<a href="#allTab" aria-controls="all" role="tab" data-toggle="tab" id="all">전체</a>
										</li>
										<li role="presentation">
											<a href="#eventTab" aria-controls="event" role="tab" data-toggle="tab" id="event">새소식</a>
										</li>
										<li role="presentation">
											<a href="#mngmntTab" aria-controls="mngmnt" role="tab" data-toggle="tab" id="mngmnt">운영사항</a>
										</li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content" style="margin-top:5px;">
										<div role="tabpanel" class="tab-pane fade in active" id="allTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="allBody">
													<c:forEach items="${supportlist}" var="vo">
														<tr class="noticeRow">	
															<td class="seq"><span class="noticeSeq">${vo.notice_type}<span></span></span></td>
															<td class="title noticeTitle">		<a href="support_detail?notice_num=${vo.notice_num}">${vo.title}</a>	</td>
															<td class="indDate">${vo.notice_date}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="eventTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="eventBody">
													<c:forEach items="${supportlist2}" var="vo">
														<tr class="noticeRow">	
															<td class="seq"><span class="noticeSeq">${vo.notice_type}<span></span></span></td>
															<td class="title noticeTitle">		<a href="support_detail?notice_num=${vo.notice_num}">${vo.title}</a>	</td>
															<td class="indDate">${vo.notice_date}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="mngmntTab">
											<table class="table table-hover">
												<colgroup>
													<col width="15%">
													<col width="*">
													<col width="15%">
												</colgroup>
												<thead style="display: none;">
													<tr>
														<th scope="col">순번</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody id="mngmntBody">
													<c:forEach items="${supportlist3}" var="vo">
														<tr class="noticeRow">	
															<td class="seq"><span class="noticeSeq">${vo.notice_type}<span></span></span></td>
															<td class="title noticeTitle">		<a href="support_detail?notice_num=${vo.notice_num}">${vo.title}</a>	</td>
															<td class="indDate">${vo.notice_date}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-push-6 col-md-6">
										<form id="srchForm" class="text-right" onsubmit="return false;">
											<div style="display: inline-block;">
												<input type="text" class="form-control srchText" name="SRCH_TEXT" onkeypress="hitEnterKey(event)" placeholder="제목 또는 내용으로 검색" maxlength="20">
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	    <!-- /MAIN CONTENT -->
	    <!--main content end-->
		<!--footer start-->
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