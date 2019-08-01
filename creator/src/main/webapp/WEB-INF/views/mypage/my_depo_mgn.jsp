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
		var temp = 0;
		var add  = 0;
		var current_price = parseInt($("#current_price").val() * 10000);
		var invest_price = parseInt($("#invest_price").val());
		var deposit = parseInt($("#inputDeposit771").val());
		var invest 	= parseInt($("#inputAmt771").val());
		var intrst 	= invest * $("#rate").val() * 0.01;
		var limit	= parseInt($("#invest_limit").val());
		var confirmYN = false;
		var check = $("input:checkbox[id=agreeCheckbox]:checked").is(":checked");


		
		$("#amtPlus100_771").click(function() {
			tmpInt = parseInt($("#withdrawAmt").val()) + 1000000;
			$("#withdrawAmt").val(tmpInt);
		});//1,000,000원
		
		$("#amtPlus10_771").click(function() {
			tmpInt = parseInt($("#withdrawAmt").val()) + 100000;
			$("#withdrawAmt").val(tmpInt);
		});//100,000원
		
		$("#amtPlusAll_771").click(function() {
			$("#withdrawAmt").val($("#inputDeposit").val());
		});//전체
		
		$("#amtReset_771").click(function() {
			$("#withdrawAmt").val("0");
			calculating();
		});//정정
		
		$("#withdrawAmt").keyup(function(event) {
			//alert(event.keyCode);
			$("#withdrawAmt").val(
				$("#withdrawAmt").val().replace(/[^0-9\.]/g,'')
			);//한글 입력 방지
		});//pass.keydown
		
		$("#withdrawAmt").keyup(function() {
			deposit = parseInt($("#withdrawAmt").val());
			//alert("invest : " + invest); alert("limit : " + limit);
			if(deposit > limit) {
				alert("동일 차입자에게 투자한도 이상의 투자를 할 수 없습니다.");
				$("#withdrawAmt").val($("#invest_limit").val());
			}
			calculating();
		});		
		
		function depositLimit(limit) {
			if(deposit > limit) {
				alert("예치금 잔액에 초과한 금액입니다.");
			}
		}//depositLimit
		
		$("#").ready(function() {
			
		});
	});//ready
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

	   <!--sidebar start-->
	    <aside>
	      <div id="sidebar" class="nav-collapse">
	        <!-- sidebar menu start-->
	        <ul class="sidebar-menu" id="nav-accordion">
	          <li class="mt">
	            <a href="/creator/my_dashboard">
	              <i class="fa fa-dashboard"></i>
	              <span>대시 보드</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_invest_list">
	              <i class="fa fa-ticket"></i>
	              <span>투자 내역</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_loan_list">
	              <i class="fa fa-ticket"></i>
	              <span>대출 내역</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_depo_mgn">
	              <i class="fa fa-money"></i>
	              <span>예치금 관리</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_modify">
	              <i class="fa fa-gear"></i>
	              <span>기본 정보 수정</span>
	              </a>
	          </li>
	        </ul>
	        <!-- sidebar menu end-->
	      </div>
	    </aside>
	    <!--sidebar end-->					
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<section id="main-content">
			<section class="wrapper">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
					<!-- ExcelDownload JavaScript -->
					<script type="text/javascript" src="/js/excel/jquery.table2excel.js"></script>
								<div class="wrap">
									<div class="box left">
										<div class="row">
											<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-1 col-md-10">
												<c:choose>
													<c:when test="${acnt == null || acnt.account_name == null || acnt.account_name == ''}">
														<div class="row" id="vtAcntNDiv">
															<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
																<div style="padding:60px 0 10px 0; font-size: 18px; font-weight: bold;">
																	투자 신청을 위해 예치금 계좌를 발급해 주세요.
																</div>
																<div style="padding:20px 0;">
																
																	<button type="button" class="btn btn-purple-transparent btn-block" data-toggle="modal" data-target="#btn_cert" >
																		예치금 계좌 발급을 위해 본인 인증하기
																	</button>
																
																
																</div>
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<div class="row" id="vtAcntYDiv" style="">
															<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
																<div style="padding:60px 0 10px 0; font-size: 18px; font-weight: bold;">
																	예치금 계좌정보
																</div>
																<div class="withdraw-wrap">
																	<div class="row" style="margin-top: 20px;">
																		<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
																			예금주
																		</div>
																		<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
																			<font size="1">크리에이터</font>${acnt.account_name}
																		</div>
																	</div>
																	<div class="row" style="margin-top: 10px;">
																		<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
																			은행
																		</div>
																		<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
																			${acnt.bank_name}
																		</div>
																	</div>
																	<div class="row" style="margin-top: 10px;">
																		<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
																			입금계좌
																		</div>
																		<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
																			<span class="font-purple" id="vtAcntNoSpan">${acnt.bank_num}</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:otherwise>
												</c:choose>
												
												<hr>
												<div class="row">
													<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-1 col-md-10">
														<div class="withdrawGuide">
															<ul>
																<li>
																	예치금 계좌는 고객님 명의의 투자를 위한 전용 가상계좌입니다.
																</li>
																<li>
																	미성년자는 가상계좌 발급시 추가 인증이 필요합니다. 고객센터로 문의 부탁드립니다.
																</li>
																<li>
																	예치금 계좌로 예치금 충전금액을 정확히 이체하여 주십시오.
																</li>
																<li>
																	창구 또는 자동화기기(CD/ATM)에서는 예치금 입금이 불가능합니다.
																</li>
																<li>
																	입금처리 시간은 1분 이내이며 고객메세지를 통해 알려드립니다.(단, 은행망전산 점검시간 0시~0시30분에는 불가능합니다.)
																</li>
																<li>
																	자세한 내용은 <a href="/info/noticeDetail/10" target="_blank"><strong>공지사항</strong></a>을 참고하시기 바랍니다.
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-12">
										<div class="wrap">
											<div class="box right">
												<div class="row">
													<div class="col-md-6 rightLine">
														<div class="title">
															<font class="font-purple">
																●
															</font> 예치금 현황
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		기본 예치금
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right" id="inputDeposit771" name="inputDeposit">
																		${acnt.deposit} 원
																		<input type="hidden" id="inputDeposit" value="${acnt.deposit}" />
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-xs-6 col-sm-6 col-md-6">총 예치금</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		<span class="font-purple" id="inputDeposit771" name="inputDeposit"><strong>
																			${acnt.deposit} <font size="2">원</font>
																		</strong></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
													<div class="col-md-6">
														<div class="title">
															<font class="font-purple">
																●
															</font> 입/출금 현황
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		입금 총액
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		<span name="DEPOSIT_AMT_SUM">${Inout.input_history}</span> 원
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		출금 총액
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		<span name="WTHDRW_AMT_SUM">${Inout.output_history}</span> 원
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		출금 대기금액
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		<span name="WTHDRW_REQ_AMT_SUM">${acnt.deposit}</span> 원
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
								
								<div class="wrap">
									<div class="box right">
										<div class="row">
											<div class="col-xs-12 col-sm-12">
													<div class="row">
														<div class="col-sm-6 col-md-6">
															<div class="title">
																<font class="font-purple">
																	●
																</font> 나의 계좌로 출금
															</div>
															<div class="withdraw-wrap">
																<div class="row" style="margin-top: 20px;">
																	<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
																		예금주
																	</div>
																	<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content" id="withdrawCusNm">
																		${vo.account_name}
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
																		은행
																	</div>
																	<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content">
																		${vo.bank_name}
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
																		나의 계좌 
																	</div>
																	<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content">
																		<span id="WD_ACNT_NO">${vo.bank_num}</span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<div class="withdrawGuide">
																			<ul>
																			<!-- 
																			
																			 -->
																				<li>
																					출금 요청 후 최대 1시간이내, 등록하신 계좌로 일괄 입금됩니다.(출금 요청 : 1일 2회)
																				</li>
																				<li>
																					출금은 본인 명의의 계좌만 가능합니다.
																				</li>
																				<li>
																					예치금 지연인출제도의 지연인출조건에 해당시 출금신청 후 72시간 이후 처리됩니다.
																					<br>
																					(자세한 내용은 공지사항 <a href="/info/noticeDetail/253" target="_blank">"보이스피싱 피해 방지를 위한 [예치금 지연인출제도] 개발 및 시행 안내"</a>를 참고하시기 바랍니다.)
																				</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-sm-6 col-md-6">
															<div class="withdraw-box">
																<div class="row">
																	<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
																		출금 가능액
																	</div>
																	<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content text-right">
																		0<font size="2">원</font>
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-md-12">
																		<input type="text" class="form-control" id="withdrawAmt" maxlength="12" value="0">
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-md-12 text-center">
																		<button name="amtPlusAll" id="amtPlusAll_771">+전체</button>
																		<button name="amtPlus100" id="amtPlus100_771">+100만</button>
																		<button name="amtPlus10" id="amtPlus10_771">+10만</button>
																		<button name="amtReset" id="amtReset_771" class="gray">정정</button>
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;">
																	<div class="col-md-12">
																		<button type="button" class="btn btn-purple-transparent btn-block" id="withdrawReqBtn">예치금 출금요청</button>
																		<input type="hidden" id="WTHDRW_REQ_YN" value="Y">
																	</div>
																</div>
																<div class="row" style="margin-top: 10px;font-size: 14px;">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="wrap" id="listWrap">
										<div class="box right">
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div class="title">
														<font class="font-purple">
															●
														</font> 거래내역
													</div>
													<hr>
												</div>
											</div>
											<div class="row">
												<div class="col- text-right">
													<div style="margin-top: 12px;">
														<a id="btnExport">
															<button type="button" class="btn btn-purple-transparent btn-gradiation">
																EXCEL <i class="glyphicon glyphicon-download-alt"></i>
															</button>
														</a>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div id="goodList" style="margin-top: 10px;">
														<div class="goodlist-title">
															<div class="row">
																<div class="col-xs-4 col-md-2">
																	<div class="name">거래일자</div>
																</div>
																<div class="col-xs-4 col-md-3">
																	<div class="name">거래명</div>
																</div>
																<div class="col-xs-4 col-md-2">
																	<div class="round">거래구분</div>
																</div>
																<div class="col-xs-4 col-md-2">
																	<div class="day">거래금액</div>
																</div>
																<div class="col-xs-4 col-md-3">
																	<div class="investAmt">
																		거래 후 예치금 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="기본 예치금(자동투자 예치금)" data-original-title="" title="">
																				</span>
																	</div>
																</div>
															</div>
														</div>
					
														<div id="goodListBody"></div>
														
														<table id="tblExport" style="display:none;" class="tblExport">
															<thead>
																<tr>
																	<th scope="col">거래일자</th>
																	<th scope="col">거래명</th>
																	<th scope="col">거래구분</th>
																	<th scope="col">거래금액</th>
																	<th scope="col">거래 후 기본예치금</th>
																	<th scope="col">거래 후 자동투자 예치금</th>
																	<th scope="col">거래 후 총 예치금</th>
																</tr>
															</thead>
															<tbody>
															</tbody>
														</table>
														
														<div class="row" style="margin-top: 10px;">
															<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
																<form id="depositHisListSrchForm" class="text-right" onsubmit="return false;">
																	<div style="display: inline-block;">
																		<input type="text" class="form-control srchText" name="SRCH_TEXT" placeholder="거래명으로 검색" maxlength="20">
																	</div>
																	<div style="display: inline-block;">
																		<button type="button" class="btn btn-purple-transparent" id="depositHisListSrchTextBtn">
																			<i class="glyphicon glyphicon-search"></i>
																		</button>
																	</div>
																	<div class="clearfix"></div>
																</form>
															</div>
															<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;">
																<ul class="pagination pagination-sm margin-0" id="PAGE_NAVI"></ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
									<form name="form_chk" method="post">
										<input type="hidden" name="m" value="checkplusSerivce">	<!-- 필수 데이타로, 누락하시면 안됩니다. -->
										<input type="hidden" id="EncodeData" name="EncodeData" value="">	<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
									</form>
									<c:when test="">
									<!-- 예치금 계좌 발급 Modal -->
						<div class="modal fade" id="btn_cert"  name="cert" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<div class="modal-title" id="vtAcntModalLabel">
											<div style="">
												예치금 계좌 발급을 위한 정보를 입력하여 주십시오
											</div>
										</div>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<div class="modal-body-title">
													출금계좌 등록
												</div>
											</div>
										</div>
										<div class="row">
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">예금주</label>
												<input class="form-control" id="cusNm" type="text" value="${acnt.account_name}" readonly="">
											</div>
											<div class="form-group col-xs-7 col-sm-7 col-md-4">
												<label for="cusBankCdSelect" class="control-label">은행명</label>
												<select id="cusBankCdSelect" class="form-control" name="cusBankCd">
													<option value="">선택하세요</option>
													
														
															
																<option value="002">산업은행</option>
															
																<option value="003">기업은행</option>
															
																<option value="004">국민은행</option>
															
																<option value="007">수협중앙회</option>
															
																<option value="008">수출입은행</option>
															
																<option value="010">농협</option>
															
																<option value="011">농협중앙회</option>
															
																<option value="012">지역농·축협</option>
															
																<option value="020">우리은행</option>
															
																<option value="023">SC제일은행</option>
															
																<option value="027">한국씨티은행</option>
															
																<option value="031">대구은행</option>
															
																<option value="032">부산은행</option>
															
																<option value="034">광주은행</option>
															
																<option value="035">제주은행</option>
															
																<option value="037">전북은행</option>
															
																<option value="039">경남은행</option>
															
																<option value="045">새마을금고중앙회</option>
															
																<option value="048">신협중앙회</option>
															
																<option value="050">상호저축은행</option>
															
																<option value="052">모건스탠리은행</option>
															
																<option value="054">HSBC은행</option>
															
																<option value="055">도이치은행</option>
															
																<option value="057">제이피모간체이스은행</option>
															
																<option value="058">미즈호은행</option>
															
																<option value="059">미쓰비시도쿄UFJ은행</option>
															
																<option value="060">BOA은행</option>
															
																<option value="061">비엔피파리바은행</option>
															
																<option value="062">중국공상은행</option>
															
																<option value="063">중국은행</option>
															
																<option value="065">대화은행</option>
															
																<option value="066">교통은행</option>
															
																<option value="071">우체국</option>
															
																<option value="081">KEB하나은행</option>
															
																<option value="088">신한은행</option>
															
																<option value="089">케이뱅크</option>
															
																<option value="090">카카오뱅크</option>
															
																<option value="096">한국전자금융(주)</option>
															
																<option value="102">대신저축은행</option>
															
																<option value="103">에스비아이저축은행</option>
															
																<option value="104">에이치케이저축은행</option>
															
																<option value="105">웰컴저축은행</option>
															
																<option value="209">유안타증권</option>
															
																<option value="218">KB증권</option>
															
																<option value="221">골든브릿지투자증권</option>
															
																<option value="222">한양증권</option>
															
																<option value="223">리딩투자증권</option>
															
																<option value="224">BNK투자증권</option>
															
																<option value="225">IBK투자증권</option>
															
																<option value="227">KTB투자증권</option>
															
																<option value="238">미래에셋대우</option>
															
																<option value="240">삼성증권</option>
															
																<option value="243">한국투자증권</option>
															
																<option value="247">NH투자증권</option>
															
																<option value="261">교보증권</option>
															
																<option value="262">하이투자증권</option>
															
																<option value="263">HMC투자증권</option>
															
																<option value="264">키움증권</option>
															
																<option value="265">이베스트투자증권</option>
															
																<option value="266">SK증권</option>
															
																<option value="267">대신증권</option>
															
																<option value="269">한화투자증권</option>
															
																<option value="270">하나금융투자</option>
															
																<option value="278">신한금융투자</option>
															
																<option value="279">동부증권</option>
															
																<option value="280">유진투자증권</option>
															
																<option value="287">메리츠종합금융증권</option>
															
																<option value="290">부국증권</option>
															
																<option value="291">신영증권</option>
															
																<option value="292">케이프투자증권</option>
															
																<option value="293">한국증권금융</option>
															
																<option value="294">펀드온라인코리아</option>
															
																<option value="295">우리종합금융</option>
															
																<option value="296">삼성선물</option>
															
																<option value="297">외환선물</option>
															
																<option value="298">현대선물</option>
												</select>
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label">계좌번호</label>
												<input type="text" class="form-control" id="cusAccount" maxlength="14">
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-strong">*출금계좌란?</span>
												<span class="modal-body-light">&nbsp;투자 원리금 및 상환 수익금을 출금받으실 계좌입니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-strong">*카카오뱅크를 이용하신다면?</span>
												<span class="modal-body-light">&nbsp;자유적금 계좌는 출금처리가 되지 않으니 입출금통장 계좌로 등록하시기 바랍니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 display-none" id="cusGb02Div">
												<span class="modal-body-strong">*사업자고객일 경우 거래은행 정책에 따라 예금주명이 변경될 수 있습니다.</span>
											</div>
										</div>
										<div id="pInfDiv" style="">
											<hr>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div class="modal-body-title">
														개인정보 등록
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="mpNo" class="control-label">휴대전화번호</label>
													<input class="form-control" id="mpNo" type="text" maxlength="11" readonly="">
												</div>
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="ssnNo" class="control-label">주민등록번호</label>
													<input class="form-control" id="ssnNo" type="text" maxlength="13">
													<input type="hidden" id="ci" value="">
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 왜 주민등록번호가 필요한가요?</span>
													<span class="modal-body-light">&nbsp;주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-light font-purple">&nbsp;주민등록번호 없이도 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 미성년자는 가상계좌 발급시 추가 인증이 필요합니다.</span>
													<span class="modal-body-light">&nbsp;<a href="https://www.midrate.co.kr/info/noticeDetail/43" target="_blank">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-purple-transparent" onclick="fn_insertVtAcnt()">예치금 계좌 발급받기</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						</c:when>
						<!-- 예치금 계좌 발급 Modal -->
						<div class="modal fade" id="btn_cert"  name="cert" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<div class="modal-title" id="vtAcntModalLabel">
											<div style="">
												예치금 계좌 발급을 위한 정보를 입력하여 주십시오
											</div>
										</div>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<div class="modal-body-title">
													출금계좌 등록
												</div>
											</div>
										</div>
										<div class="row">
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">예금주</label>
												<input class="form-control" id="cusNm" type="text" value="${acnt.account_name}" readonly="">
											</div>
											<div class="form-group col-xs-7 col-sm-7 col-md-4">
												<label for="cusBankCdSelect" class="control-label">은행명</label>
												<select id="cusBankCdSelect" class="form-control" name="cusBankCd">
													<option value="">선택하세요</option>
													
														
															
																<option value="002">산업은행</option>
															
																<option value="003">기업은행</option>
															
																<option value="004">국민은행</option>
															
																<option value="007">수협중앙회</option>
															
																<option value="008">수출입은행</option>
															
																<option value="010">농협</option>
															
																<option value="011">농협중앙회</option>
															
																<option value="012">지역농·축협</option>
															
																<option value="020">우리은행</option>
															
																<option value="023">SC제일은행</option>
															
																<option value="027">한국씨티은행</option>
															
																<option value="031">대구은행</option>
															
																<option value="032">부산은행</option>
															
																<option value="034">광주은행</option>
															
																<option value="035">제주은행</option>
															
																<option value="037">전북은행</option>
															
																<option value="039">경남은행</option>
															
																<option value="045">새마을금고중앙회</option>
															
																<option value="048">신협중앙회</option>
															
																<option value="050">상호저축은행</option>
															
																<option value="052">모건스탠리은행</option>
															
																<option value="054">HSBC은행</option>
															
																<option value="055">도이치은행</option>
															
																<option value="057">제이피모간체이스은행</option>
															
																<option value="058">미즈호은행</option>
															
																<option value="059">미쓰비시도쿄UFJ은행</option>
															
																<option value="060">BOA은행</option>
															
																<option value="061">비엔피파리바은행</option>
															
																<option value="062">중국공상은행</option>
															
																<option value="063">중국은행</option>
															
																<option value="065">대화은행</option>
															
																<option value="066">교통은행</option>
															
																<option value="071">우체국</option>
															
																<option value="081">KEB하나은행</option>
															
																<option value="088">신한은행</option>
															
																<option value="089">케이뱅크</option>
															
																<option value="090">카카오뱅크</option>
															
																<option value="096">한국전자금융(주)</option>
															
																<option value="102">대신저축은행</option>
															
																<option value="103">에스비아이저축은행</option>
															
																<option value="104">에이치케이저축은행</option>
															
																<option value="105">웰컴저축은행</option>
															
																<option value="209">유안타증권</option>
															
																<option value="218">KB증권</option>
															
																<option value="221">골든브릿지투자증권</option>
															
																<option value="222">한양증권</option>
															
																<option value="223">리딩투자증권</option>
															
																<option value="224">BNK투자증권</option>
															
																<option value="225">IBK투자증권</option>
															
																<option value="227">KTB투자증권</option>
															
																<option value="238">미래에셋대우</option>
															
																<option value="240">삼성증권</option>
															
																<option value="243">한국투자증권</option>
															
																<option value="247">NH투자증권</option>
															
																<option value="261">교보증권</option>
															
																<option value="262">하이투자증권</option>
															
																<option value="263">HMC투자증권</option>
															
																<option value="264">키움증권</option>
															
																<option value="265">이베스트투자증권</option>
															
																<option value="266">SK증권</option>
															
																<option value="267">대신증권</option>
															
																<option value="269">한화투자증권</option>
															
																<option value="270">하나금융투자</option>
															
																<option value="278">신한금융투자</option>
															
																<option value="279">동부증권</option>
															
																<option value="280">유진투자증권</option>
															
																<option value="287">메리츠종합금융증권</option>
															
																<option value="290">부국증권</option>
															
																<option value="291">신영증권</option>
															
																<option value="292">케이프투자증권</option>
															
																<option value="293">한국증권금융</option>
															
																<option value="294">펀드온라인코리아</option>
															
																<option value="295">우리종합금융</option>
															
																<option value="296">삼성선물</option>
															
																<option value="297">외환선물</option>
															
																<option value="298">현대선물</option>
												</select>
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label">계좌번호</label>
												<input type="text" class="form-control" id="cusAccount" maxlength="14">
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-strong">*출금계좌란?</span>
												<span class="modal-body-light">&nbsp;투자 원리금 및 상환 수익금을 출금받으실 계좌입니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-strong">*카카오뱅크를 이용하신다면?</span>
												<span class="modal-body-light">&nbsp;자유적금 계좌는 출금처리가 되지 않으니 입출금통장 계좌로 등록하시기 바랍니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 display-none" id="cusGb02Div">
												<span class="modal-body-strong">*사업자고객일 경우 거래은행 정책에 따라 예금주명이 변경될 수 있습니다.</span>
											</div>
										</div>
										<div id="pInfDiv" style="">
											<hr>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div class="modal-body-title">
														개인정보 등록
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="mpNo" class="control-label">휴대전화번호</label>
													<input class="form-control" id="mpNo" type="text" maxlength="11" readonly="">
												</div>
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="ssnNo" class="control-label">주민등록번호</label>
													<input class="form-control" id="ssnNo" type="text" maxlength="13">
													<input type="hidden" id="ci" value="">
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 왜 주민등록번호가 필요한가요?</span>
													<span class="modal-body-light">&nbsp;주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-light font-purple">&nbsp;주민등록번호 없이도 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 미성년자는 가상계좌 발급시 추가 인증이 필요합니다.</span>
													<span class="modal-body-light">&nbsp;<a href="https://www.midrate.co.kr/info/noticeDetail/43" target="_blank">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-purple-transparent" onclick="fn_insertVtAcnt()">예치금 계좌 발급받기</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
    
    	<!-- hidden value -->
		<input type="hidden" id="reqAmt771" name="reqAmt" value="0">
		<input type="hidden" name="repayAmt" id="repayAmt771" value="164625000">
		<input type="hidden" name="loanAmt" id="loanAmt771" value="150000000">
		<input type="hidden" name="umbrellarRate" id="umbrellarRate771" value="0.0">
		<input type="hidden" name="umbrellarAplyYn" id="umbrellarAplyYn771" value="N">
		<input type="hidden" name="brrwrAmt" id="brrwrAmt771" value="5000000">
		<input type="hidden" id="rate" value="${proVO.rate}" />									<!-- 금리 -->
		<input type="hidden" id="user_num" value="${memVO.user_num}" />							<!-- 유저번호 -->
		<input type="hidden" id="busi_num" value="${memVO.busi_num}" />							<!-- 법인유저번호 -->
	    <input type="hidden" id="invest_limit" value="${acnt.deposit}" />					<!-- 예치금한도 -->
	    <!-- hidden value -->
    
		<div class="modal fade" id="eventModal" role="dialog" aria-labelledby="eventModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="eventModalLabel">가상계좌 관련기능 제한 안내</h4>
				</div>
				<div class="modal-body">
					<div class="modal-body-img event">
						<p style="font-size: 16px;">
							NH오픈플랫폼 서버점검에 따라 <strong>7/17 00~06:00</strong>까지 가상계좌 발급 및 예치금 충전이 제한됩니다.
						</p>
					</div>
				</div>
				<div class="modal-footer event">
					<span aria-hidden="true" class="close1day" id="close1day">오늘 하루 이 팝업 열지 않기</span>
				</div>
			</div>
		</div>
	</div>
		
		
		
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