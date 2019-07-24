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
		var add = 0;
		var deposit = parseInt($("#inputDeposit771").val());
		var invest 	= parseInt($("#inputAmt771").val());
		var intrst 	= invest * $("#rate").val() * 0.01;
		var tax 	= intrst * 0.25;
		var benefit = invest + intrst - tax;
		var confirmYN = false;
		
		$("#amtPlus100_771").click(function() {
			addDeposit(1000000);
		});//amtPlus100_771
		
		$("#amtPlus50_771").click(function() {
			addDeposit(500000);
		});//amtPlus50_771
		
		$("#amtPlus10_771").click(function() {
			addDeposit(100000);
		});//amtPlus10_771
		
		$("#amtPlus5_771").click(function() {
			addDeposit(50000);
		});//amtPlus5_771
		
		$("#amtPlus1_771").click(function() {
			addDeposit(10000);
		});//amtPlus1_771
		
		$("#amtPlusAll_771").click(function() {
			$("#inputAmt771").val($("#inputDeposit771").val());
		});//amtPlusAll_771
		
		$("#amtReset_771").click(function() {
			$("#inputAmt771").val("0");
		});//amtReset_771
		
		$("#inputAmt771").blur(function() {
			calculating();
		});

		function addDeposit(add) {
			if(deposit > 0) {
				temp = parseInt($("#inputAmt771").val());
				temp += add;
				
				$("#inputAmt771").val(temp);
				calculating();
			} else {
				confirmYN = confirm("투자 가능 예치금이 부족합니다. 예치금 관리 페이지로 이동하시겠습니까?");
				if(confirmYN == true) {
					location.href = "${pageContext.request.contextPath}/my_depo_mgn";
				} else {
					return;
				}//if
			}//if
		}//addDeposit
		
		function calculating() {
			invest 	= parseInt($("#inputAmt771").val());
			intrst 	= invest * $("#rate").val() * 0.01;
			tax 	= intrst * 0.25;
			benefit = invest + intrst - tax;
			
			$("#investAmtL").text(invest);
			$("#intrstAmtL").text(intrst);
			$("#taxAmtL").text(tax);
			$("#benefitAmtL").text(benefit);
		}
		
		$("#invest_offer").click(function() {
			alert("실행");
// 			if($("#agreeCheckbox").val == "Y") {
// 				var confirmYN = false;
// 				confirmYN = confirm("정말 투자하시겠습니까?");
// 				if(confirmYN == true) {
					$.post("${pageContext.request.contextPath}/deposit_update",
							{
								user_num:$("#user_num").val(),
								deposit:$("#deposit").val()
							},
							function(data, status) {
								if(status == "success") {
									if(data == -1) {
										alert("오류");
									}else if(data > 0) {
										
									} else {
										alert("관리자 : 02-5555-7777");
									} 
								} else if (status == "error") {
									alert("잠시후 다시 시도해 주세요.");
								} else {
									alert("관리자 : 02-5555-7777");
								}
							}//call back function
						);//post
// 				} else {
// 					return;
// 				}
// 			} else {
// 				alert("약관에 동의해주시기 바랍니다.");
//			}//if
		});//invest_offer
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
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<!-- page start -->
					<div class="col-lg-12">
						<section id="content">
							<div class="container">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col">
										<div class="form">
											<div class="box-header"></div>
											<div class="box-body">
												<div class="box-wrap">
											
													<div class="top">
														<div class="title">
															투자신청서
														</div>
														<div class="line"></div>
													</div>
													<div class="block" id="goodList">
														<div id="inputSsn" style="display: none;">
															<div class="title">
																<font class="font-purple">
																	●
																</font> 투자자 주민등록번호 입력
															</div>
															<div class="ssn-box">
																<p>
																	<font color="red">주민등록번호가 등록되지 않은 상태입니다.</font>
																</p>
																<p>
																	<strong>※ 왜 주민등록번호가 필요한가요?</strong>
																	<br>
																	<font size="2">
																		주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다. 입력하지 않아도 대출상품 투자를 제외한 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.
																	</font>
																</p>
																<form class="form-inline" onsubmit="return false;">
																	<div class="form-group" id="ssnDiv">
																		<input class="form-control" id="ssnText" type="text" placeholder="'-'를 제외하고 입력하세요" maxlength="13">
																		<button type="button" class="btn btn-purple-transparent" onclick="fn_updateCusSsnNo()">등록</button>
																	</div>
																</form>
															</div>
														</div>
														
														<div id="inputMpNo" style="display: none;">
															<div class="title">
																<font class="font-purple">
																	●
																</font> 투자자 휴대전화번호 입력
															</div>
															<div class="ssn-box">
																<p>
																	<font color="red">휴대전화번호가 등록되지 않은 상태입니다.</font>
																</p>
																<p>
																	<strong>※ 왜 휴대전화번호가 필요한가요?</strong>
																	<br>
																	<font size="2">
																		휴대전화번호는 회원님의 투자정보 보호와 리워드(기프티콘 발송 등)에 사용되며, SMS수신 동의시 추천 투자상품을 안내해 드립니다.
																	</font>
																</p>
																<form class="form-inline" onsubmit="return false;">
																	<div class="form-group" id="mpNoDiv">
																		<input class="form-control" id="mpNoText" type="text" placeholder="'-'를 제외하고 입력하세요" maxlength="11">
																		<button type="button" class="btn btn-purple-transparent" onclick="fn_updateCusMpNo()">등록</button>
																	</div>
																</form>
															</div>
														</div>
														
														<div class="title">
															<font class="font-purple">
																●
															</font> 투자한도 현황
														</div>
														<div class="row" id="investLmt">
															<div class="col-xs-6 col-sm-6 col-md-6 investLmt">
																<div class="wrap">
																	<div class="investLmtTitle">
																		<strong>총 투자한도</strong>
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>금융위원회의 P2P대출 가이드라인 준수를 위해 투자자구분별 투자한도가 적용됩니다.</strong>
																							<br>1. 개인투자자
																							<br> - 동일차입자 500만원, 총 2,000만원
																							<br> ※ 단 부동산 상품이면 총 1,000만원
																							<br>2. 소득요건을 구비한 개인투자자
																							<br> - 동일차입자 2,000만원, 총 4,000만원
																							<br>3. 개인전문투자자 : 제한없음 
																							<br>4. 법인투자자 : 제한없음
																							<br>※ 2017년 5월 29일 이전 투자는 해당없음" data-original-title="" title="">
																		</span>
																	</div>
																	<hr>
																	<div class="investLmtContent display-none" id="invstrTypeOn" style="display: block;">
																		<strong><span id="invstrTypeLmtAmt">1,000</span>만원</strong> / <span id="invstrTypeLmtMaxAmt">1,000</span>만원
																	</div>
																	<div class="investLmtContent display-none" id="invstrTypeOff">
																		<strong>제한 없음</strong>
																	</div>
																</div>
															</div>
															<div class="col-xs-6 col-sm-6 col-md-6 investLmt">
																<div class="wrap">
																	<div class="investLmtTitle">
																		<strong>동일차입자 한도</strong>
																	</div>
																	<hr>
																	<div class="investLmtContent display-none" id="brrwrOn" style="display: block;">
																		<strong><span id="brrwrLmtAmtSum">500</span>만원</strong> / <span id="brrwrLmtMaxAmt">500</span>만원
																	</div>
																	<div class="investLmtContent display-none" id="brrwrOff">
																		<strong>제한 없음</strong>
																	</div>
																</div>
															</div>
														</div>
														
														<div class="title">
															<font class="font-purple">
																●
															</font> 투자 채권
														</div>
														
														<div class="goodlist-title">
															<div class="row">
																<div class="col-sm-5 col-md-5">
																	<div class="row" id="popoverPlaceL">
																		<div class="col-xs-10 col-sm-10 col-md-10 col">
																			<div class="name">상품명</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="grade">등급</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="rate">금리</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="period">기간</div>
																</div>
																<div class="col-sm-2 col-md-2">
																	<div class="amt">잔여금액</div>
																</div>
																<div class="col-sm-2 col-md-2">
																	<div class="amt">투자한도</div>
																</div>
															</div>
														</div>
														<div id="goodListBody">
															<div class="goodlist-item">
																<div class="row" id="popoverPlaceS">
																	<div class="col-xs-9 col-sm-5 col-md-5 col">
																		<div class="row">
																			<div class="col-xs-10 col-sm-10 col-md-10 col">
																				<div class="name" id="loanNm771">${projectVO.project_name}</div>
																			</div>
																		</div>
																	</div>
																	<div class="col-xs-3 col-sm-1 col-md-1 col">
																		<div class="grade">
																			<span id="grade771">${projectVO.grade}</span>
																		</div>
																	</div>
																	<div class="clearfix visible-xs-block"></div>
																	<div class="col-xs-3 col-sm-1 col-md-1 col">
																		<div class="rate">
																			<span id="rate771">${projectVO.rate}</span><font size="1">%</font>
																		</div>
																	</div>
																	<div class="col-xs-3 col-sm-1 col-md-1 col">
																		<div class="period">
																			<span id="period771">${projectVO.rate}</span><font size="1">개월</font>
																		</div>
																	</div>
																	<div class="col-xs-3 col-sm-2 col-md-2 col">
																		<div class="amt">
																			<span id="investOkAmt771">${projectVO.price - projectVO.current_price}</span><font size="1">만원</font>
																		</div>
																	</div>
																	<div class="col-xs-3 col-sm-2 col-md-2 col">
																		<div class="amt">
																			<span name="lmtAmt" id="lmtAmt771" class="font-purple">0</span><font size="1">만원</font>
																			 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto left" data-html="true" data-content="
																					총 투자한도 : 
																					
																					
																						10,000,000원
																					
																					<br>
																					동일차입자 한도 : 
																					
																					
																						5,000,000원
																					
																					<br>
																					투자잔여금액 : 118,280,000원<br>
																					현재 기본예치금 : 0원<br>
																				" data-original-title="" title="">
																			</span>
																		</div>
																	</div>
																</div>
																<hr>
																<div class="row">
																	<div class="col-xs-6 col-sm-8 col-md-8 col-lg-3 col">
																		<div class="inputAmtTitle">투자금액</div>
																	</div>
																	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 col">
																		<div class="form-group has-feedback inputForm" id="inputAmtDiv">
																			<input type="text" class="form-control text-right" id="inputAmt771" name="inputAmt" aria-describedby="inputAmtStatus" value="0">
																			<span class="form-control-feedback" aria-hidden="true">원</span>
																			<span id="inputAmtStatus" class="sr-only">(success)</span>
																			<input type="hidden" id="reqAmt771" name="reqAmt" value="0">
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col">
																		<form class="form-inline amtForm">
																			<div class="form-group">
																				<span name="amtPlus100" id="amtPlus100_771">+100만</span>
																				<span name="amtPlus50" id="amtPlus50_771">+50만</span>
																				<span name="amtPlus10" id="amtPlus10_771">+10만</span>
																				<span name="amtPlus5" id="amtPlus5_771">+5만</span>
																				<span name="amtPlus1" id="amtPlus1_771">+1만</span>
																				<span name="amtPlusAll" id="amtPlusAll_771">전액</span>
																				<span name="amtReset" id="amtReset_771" class="gray">정정</span>
																				<br><span>금액을 1만원이상, 만원단위로 입력해주시기 바랍니다.</span>
																			</div>
																		</form>
																	</div>
																</div>
																
																<div class="row" id="depositDiv">
																	<div class="col-xs-6 col-sm-8 col-md-8 col-lg-3 col">
																		<div class="inputDepositTitle">예치금 사용</div>
																	</div>
																	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 col">
																		<div class="form-group has-feedback inputForm" id="inputDepositDiv">
																			<input type="text" class="form-control text-right" id="inputDeposit771" name="inputDeposit" aria-describedby="inputDepositStatus" value="${accountVO.deposit}" readonly="readonly">
																			<input type="hidden" value="" />
																			<span class="form-control-feedback" aria-hidden="true">원</span>
																			<span id="inputDepositStatus" class="sr-only">(success)</span>
																			<input type="hidden" id="reqDeposit771" name="reqDeposit" value="0">
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 col">
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col">
																		<div class="inputDepositText">
																			투자 가능 예치금 : <span class="font-purple" name="availDeposit" id="availDeposit771&quot;">0</span><font size="1">원</font>
																			<div id="brrwrLmtGuideDiv" class="display-none">
																				(동일차입자 상품에 투자하신 적이 있습니다.)
																			</div>
																		</div>
																	</div>
																</div>
																
																<div class="row display-none" id="autoDepositDiv" style="display: none;">
																	<div class="col-xs-6 col-sm-8 col-md-8 col-lg-3 col">
																		<div class="inputAutoDepositTitle">
																			자동투자예치금을<br>기본예치금으로 이동
																		</div>
																	</div>
																	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 col">
																		<div class="form-group has-feedback inputForm" id="inputAutoDepositDiv">
																			<input type="text" class="form-control text-right" id="inputAutoDeposit771" name="inputAutoDeposit" aria-describedby="inputAutoDepositStatus">
																			<span class="form-control-feedback" aria-hidden="true">원</span>
																			<span id="inputAutoDepositStatus" class="sr-only">(success)</span>
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 col">
																		<form class="form-inline amtForm">
																			<div class="form-group">
																				<span name="autoDepositUse" id="autoDepositUse_771">이동</span>
																				<span name="autoDepositUseReset" id="autoDepositUseReset_771">정정</span>
																			</div>
																		</form>
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col">
																		<div class="inputAutoDepositText">
																			현재 자동투자예치금 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="투자 신청에 사용하기 위해 자동투자예치금을 기본예치금으로 즉시 이동시킵니다." data-original-title="" title="">
																					</span> : <span class="font-purple" name="availAutoDeposit" id="availAutoDeposit771">0</span><font size="1">원</font>
																		</div>
																	</div>
																</div>
															</div>	
															<input type="hidden" name="repayAmt" id="repayAmt771" value="164625000">
															<input type="hidden" name="loanAmt" id="loanAmt771" value="150000000">
															<input type="hidden" name="umbrellarRate" id="umbrellarRate771" value="0.0">
															<input type="hidden" name="umbrellarAplyYn" id="umbrellarAplyYn771" value="N">
															<input type="hidden" name="brrwrAmt" id="brrwrAmt771" value="5000000">
														</div>
														
														<div class="title">
															<font class="font-purple">
																●
															</font> 투자 요약
														</div>
														<input type="hidden" id="rate" value="${projectVO.rate}" />		<!-- 금리 -->
														<input type="hidden" id="user_num" value="${userVO.user_num}" />		<!-- 유저번호 -->
														<table class="table" id="summaryTableL">
															<thead>
																<tr>
																	<th scope="col">예치금 투자액</th>
																	<th scope="col">이자(+)</th>
																	<th scope="col">
																		세금(-) <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="실제 회차별 상환 이자에 따른 세금은 원 단위로 절삭되기 때문에 표기된 값보다 적을 수 있습니다." data-original-title="" title="">
																		</span>
																	</th>
																	<th scope="col">수익금(+)</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><span id="investAmtL" class="font-blue">0</span><font size="1">원</font></td>
																	<td><span id="intrstAmtL" class="font-blue">0</span><font size="1">원</font></td>
																	<td><span id="taxAmtL" class="font-red">0</span><font size="1">원</font></td>
																	<td><span id="benefitAmtL" class="font-blue">0</span><font size="1">원</font></td>
																</tr>
															</tbody>
														</table>
														<!-- 
														<div class="warning" id="depositWarn">
															예치금 계좌에 잔여금액이 부족합니다.
															<br/><br/>
															<button type="button" class="btn btn-purple-transparent" onclick="gfn_goMypageMenu('5');">
																즉시 충전하기 &#62;
															</button>
															
														</div>
														 -->
														<div>
															투자시 주의사항 안내
														</div>
														<div class="guide">
															<ol>
																<li>이자수익은 과세 대상으로 현행 세법에 따라 비영업대금에 대한 이자소득세(25%) 및 주민세(2.5%)가 추가되어 총 27.5%를 세금으로 원천징수합니다.</li>
																<li>당사는 원금 및 수익을 보장하지 않습니다. 다만, 채권 추심에 도의적 책임을 다합니다.</li>
																<li>상환 일정 및 상환액 안내, 연체 시 연체이율 안내, 연체 시 불이익 안내에 최선을 다하며 장기 연체시 채권 추심(매각 등) 후 투자자에게 배분합니다.</li>
																<li>투자 신청 취소는 해당 채권의 투자 모집이 마감되기 이전까지만 가능합니다. 마감 후에는 취소가 불가능합니다.</li>
																<li>매월 상환일에 상환금액에서 당사 서비스 이용료를 제외한 나머지 금액을 입금해드립니다. 또한 상환기간 중 차입자의 사정으로 중도 상환이 발생할 경우 SMS를 통해 상환일정 및 상환금에 대해 안내해드립니다.</li>
																<li>투자 상환금은 나의 예치금 계좌로 입금해드립니다.</li>
																<li>차입자가 대출을 취소할 경우, 투자금은 '기본 예치금' 또는 '자동투자 예치금'으로 회수됩니다.</li>
															</ol>
														</div>
														
														<div class="agree">
															<label class="ui-checkbox">
																<input type="checkbox" id="agreeCheckbox" value="N" /><span>위 내용을 이해하였으며 이에 동의합니다.</span>
															</label>
														</div>
													</div>
												</div>
					
												<div class="bottomLine">
													<button id="invest_offer">투자 신청</button>
<!-- 													<a href="javascript:(void(0));" onclick="fn_openInvestWarning();" style="position: relative; bottom: 0px;" disabled="disabled"> -->
<!-- 														<div style="margin-top: 30px;"> -->
<!-- 															투자 신청<span></span> -->
<!-- 															<span> -->
<!-- 																<div><p style="margin-top:0px;text-align: right;">&gt;</p></div> -->
<!-- 															</span> -->
<!-- 														</div> -->
<!-- 													</a> -->
												</div>
												<div class="bottomLine">
													<p>투자 신청시 <a href="" target="_blank">개인정보 처리방침</a> 및 
													<a href="" target="_blank">투자자 이용약관</a>에 동의하게 됩니다.</p>
												</div>
											</div>
											<div class="box-footer"></div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
					<!-- page end -->
				</div>
			</section>
			<!-- /wrapper -->
	    </section>
	    <!-- /MAIN CONTENT -->
	    <!--main content end-->
		
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