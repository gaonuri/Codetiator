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
	    <section id="main-content">
	     	 <section class="wrapper">
	     	 	<br>
	       	 	<<div class="box">
								<div role="tabpanel">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist" id="notiTab">
										<li role="presentation" class="active">
											<a href="#allTab" aria-controls="all" role="tab" data-toggle="tab" id="all">전체</a>
										</li>
										<li role="presentation">
											<a href="#eventTab" aria-controls="event" role="tab" data-toggle="tab" id="event">이벤트</a>
										</li>
										<li role="presentation">
											<a href="#mngmntTab" aria-controls="mngmnt" role="tab" data-toggle="tab" id="mngmnt">운영사항</a>
										</li>
										<li role="presentation">
											<a href="#systemTab" aria-controls="system" role="tab" data-toggle="tab" id="system">시스템</a>
										</li>
										<li role="presentation">
											<a href="#rgstrDocuTab" aria-controls="rgstrDocu" role="tab" data-toggle="tab" id="rgstrDocu">등기서류</a>
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
												<tbody id="allBody"><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;91&quot;,&quot;EVENT&quot;)" name="">[상품권 발송안내]★오늘은 둘 다 땡긴다 TWO★ 부동산·홈쇼핑 '2개' 상품에 투자하면 '신세계 백화점 상품권'이 쑤욱!</a>	</td>	<td class="indDate">2019.08.07</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;89&quot;,&quot;EVENT&quot;)" name="">[동시투자 이벤트 2탄]★오늘은 둘 다 땡긴다 TWO★ 부동산·홈쇼핑 '2개' 상품에 투자하면 '신세계 백화점 상품권'이 쑤욱! (7/26 ~ 상품마감시까지)</a>	</td>	<td class="indDate">2019.07.26</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;86&quot;,&quot;EVENT&quot;)" name="">[출석체크 이벤트] 7월 ★여름맞이★ 룰렛 이벤트 (7/3~7/31, 룰렛으로 BR 아이스크림에 도전하세요!)</a>	</td>	<td class="indDate">2019.07.16</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;256&quot;,&quot;NOTI&quot;)" name="">[홈쇼핑] 최대박네 대창막창 스페셜리워드 추첨결과 안내_수정</a>	</td>	<td class="indDate">2019.06.18</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;253&quot;,&quot;NOTI&quot;)" name="">『농협은행 P2P자금관리(예치금) 3시간 지연출금제』시행 안내</a>	</td>	<td class="indDate">2019.06.14</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;251&quot;,&quot;NOTI&quot;)" name="">미드레이트대부 대부거래표준약관 개정 안내 (19.6.20 시행)</a>	</td>	<td class="indDate">2019.06.13</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;79&quot;,&quot;EVENT&quot;)" name="">[홈쇼핑] 한샘오젠 식기건조대 스페셜리워드 추첨결과 안내_수정</a>	</td>	<td class="indDate">2019.06.11</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;57&quot;,&quot;SYSTEM&quot;)" name="">[블록체인서비스 출시] NH스마트고지서 원리금수취권 발급 방법 안내</a>	</td>	<td class="indDate">2019.04.16</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;54&quot;,&quot;SYSTEM&quot;)" name="">상환 시 원금 차액보정 프로세스 적용완료(19.1.28)</a>	</td>	<td class="indDate">2019.01.28</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;48&quot;,&quot;NOTI&quot;)" name="">개인투자자 투자한도 상향 안내(시행일자 18.02.27) -소득적격 증빙서류 안내</a>	</td>	<td class="indDate">2018.02.26</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;43&quot;,&quot;NOTI&quot;)" name="">미성년자 P2P금융 플랫폼 이용 시 필요한 서류 안내</a>	</td>	<td class="indDate">2017.12.11</td></tr><tr class="noticeRow">	<td class="seq"><span class="noticeSeq">공지<span></span></span></td>	<td class="title noticeTitle">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;39&quot;,&quot;NOTI&quot;)" name="">미드레이트 투자 적립 포인트 비율 변경 안내 - 투자 대기 포인트 관련 (RPM)</a>	</td>	<td class="indDate">2017.09.25</td></tr><tr>	<td class="seq">92</td>	<td class="title">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;92&quot;,&quot;EVENT&quot;)" name="">[홈쇼핑] 쿠쿠 회전 블렌더(3차) 스페셜리워드 추첨결과 안내</a>	</td>	<td class="indDate">2019.08.08</td></tr><tr>	<td class="seq">270</td>	<td class="title">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;270&quot;,&quot;NOTI&quot;)" name="">[중도상환안내] 부동산 363호</a>	</td>	<td class="indDate">2019.08.08</td></tr><tr>	<td class="seq">269</td>	<td class="title">		<a href="javascript:(void(0));" onclick="fn_openBoardDetail(&quot;269&quot;,&quot;NOTI&quot;)" name="">[모집취소안내] 부동산 컨소시움33호</a>	</td>	<td class="indDate">2019.08.06</td></tr></tbody>
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
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade in active" id="systemTab">
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
												<tbody id="systemBody">
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane fade in active" id="rgstrDocuTab">
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
												<tbody id="rgstrDocuBody">
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
							</div>iv>
	        <!-- row -->
	      </section>
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