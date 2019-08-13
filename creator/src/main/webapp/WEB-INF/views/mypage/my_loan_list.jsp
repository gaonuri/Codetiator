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
			$("#").click(function() {
				location.href ="${pageContext.request.contextPath}/invest/invest_detail"
			});
		});
	
	$(document).ready(function() {
		$("#depobu").click(function() {
			location.href = "${pageContext.request.contextPath}/my_depo_mgn";
		});//click
	});//ready
	$(document).ready(function() {
		$("#myloan").click(function() {
			location.href = "${pageContext.request.contextPath}/getloan";
		});//click
	});//ready
	</script>
</head>
     
<body>
<!--header start-->
	   
	    <%@ include file="../header.jsp" %>
	<%@ include file="../mypage_banner.jsp" %>
    <section id="mypage-content">
		<div class="container">
			<!-- Container -->
			
				
			<div class="row">
				<div class="col-sm-12 col-md-3 col col-box">
					<div class="wrap">
						<div class="box left">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="cusNm">${useinfo.user_name}${businfo.manager_name}</span>&nbsp;
									
										님
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">${useinfo.email}${businfo.manager_email}</span>
								</div>
								<div class="col-xs-2 col-sm-1 col-md-1" style="margin-top: 8px;">
									<div id="depositUnFold" style="display: none;cursor: pointer;">
										<i class="glyphicon glyphicon-menu-down"></i>
									</div>
									<div id="depositFold" style="cursor: pointer;">
										<i class="glyphicon glyphicon-menu-up"></i>
									</div>
								</div>
							</div>
							<div id="deposit-div" style="">
								<div class="deposit-box">
									<div class="row">
										<div class="col-xs-7">
											<span class="myDeposit">기본 예치금</span>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">${acc.deposit} <font size="2">원</font></span>
										</div>
									</div>
								</div>
								<div class="account-box">
								</div>
								<button type="button" class="btn btn-purple-transparent btn-block" id="depobu" style="margin-top: 4px;">나의 예치금</button>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="largeMenu">	
						<div class="menu">
							<div class="item" id="menu2"> <a href="/creator/my_invest_list">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_invest_list.png">
								<span class="text" id="menuL2">투자 내역</span> </a>
							</div>
							<div class="item active" id="menu4"> <a href="/creator/my_loan_list">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span> </a>
							</div>
							<div class="item" id="menu5">  <a href="/creator/my_depo_mgn">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw.png">
								<span class="text" id="menuL5">예치금 관리</span> </a>
							</div>
							<div class="item" id="menu8"> <a href="/creator/my_modify">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span> </a>
							</div>
						</div>
					</div>
					
				</div>
				
<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
<!-- ExcelDownload JavaScript -->
<script type="text/javascript" src="/js/excel/jquery.table2excel.js"></script>

					<div class="wrap">
						<div class="box right">
							<div class="row">
								<c:choose>
									<c:when test="${ loanList == null || loanList.size() < 1}">
										<div class="col-md-12">
											<div class="title">
												대출 내역이 없습니다.
											</div>
											<div class="subTitle" style="margin-top: 10px;">
												미드레이트는 최적의 알고리즘으로 간편하면서도 합리적인 대출을 제공합니다.
											</div>
											<div class="loanReqGuide">
												<div class="row">
													<div class="col-sm-4 col-md-4 wrap">
														<div class="box">
															<div class="top">
																개인신용 대출
															</div>
															<div class="middle">
																금리 : 4.5 ~ 15.5%
																<br>한도 : 최대 3,000만원
															</div>
															<div class="bottom">
																<ul>
																	<li>
																		3개월 이상의 재직기간 및 소득증빙
																	</li>
																	<li>
																		NICE, KCB 신용등급 참고
																	</li>
																	<li>
																		고금리 대환 및 기타 목적 대출
																	</li>
																	<li>
																		현금서비스 3회 이내
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-sm-4 col-md-4 wrap">
														<div class="box">
															<div class="top">
																사업자 대출
															</div>
															<div class="middle">
																금리 : 5.5 ~ 15.5%
																<br>한도 : 최대 1억원
															</div>
															<div class="bottom">
																<ul>
																	<li>
																		6개월 이상 사업장 운영 및 3개월 매출 증빙자료
																	</li>
																	<li>
																		NICE, KCB 신용등급 참고
																	</li>
																	<li>
																		최근 대환대출 및 사업자금 마련
																	</li>
																	<li>
																		현금서비스 3회 이내
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-sm-4 col-md-4 wrap">
														<div class="box">
															<div class="top">
																담보 대출
															</div>
															<div class="middle">
																금리 : 5.5 ~ 15.5%
																<br>한도 : 최대 1억원
															</div>
															<div class="bottom">
																<ul>
																	<li>
																		본인 명의의 담보 제공
																	</li>
																	<li>
																		NICE, KCB 신용등급 참고
																	</li>
																	<li>
																		직장 정보 및 소득증빙 자료 참고
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12 col-md-12">
													<button class="btn btn-purple-transparent btn-block" type="button" id="myloan"">대출하기</button>
												</div>
											</div>
										</div>
								</c:when>
							<c:otherwise>
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div id="goodList" style="display: block;margin-top: 29px;">
									<div class="goodlist-title">
										<div class="row">
											<table class="table">
													<thead>
														<tr>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
																프로젝트번호<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleLOAN_NM">
																프로젝트명<span name="investListSortDesc" id="investListSortDescLOAN_NM"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
																신청일자<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_RATE">
																대출일자<span name="investListSortDesc" id="investListSortDescINVEST_RATE"></span>
															</th>
															<th scope="col" colspan="clickable" class="clickable" name="investListSortTitle" id="investListSortTitleRND_CNT">
																대출금액<span name="investListSortDesc" id="investListSortDescRND_CNT"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
																상환기간<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
																금리<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
															</th>
														</tr>
													</thead>
												<c:forEach items="${loanList}" var="vo" varStatus="status">
													<tr>
														<c:if test="${memberVO.busi_num != null && memberVO.busi_num !='' }">
														</c:if>
														<td>${vo.project_num}</td>
														<td><a href="invest_detail?detail_num=${vo.project_num}"/>${vo.project_name}</td>
														<td>${vo.refund_request}</td>
														<td>${vo.regi_date}</td>
														<td>${vo.price}</td>
														<td>${vo.refund}</td>
														<td>${vo.rate}%</td>
													</tr>
												</c:forEach>
											</table>
										</div>
									</div>
									<div id="repayListBody">
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
					
					<div class="display-none" id="loanCusDiv">
						<div class="wrap">
							<div class="box right">
								<div class="row">
									<div class="col-xs-12 col-sm-6 rightLine">
										<div class="title">
											<font class="font-purple">
												●
											</font> 대출금 상환계좌
										</div>
										<div class="repay-box">
											<div class="row">
												<div class="col-xs-4 repay-title">
													예금주
												</div>
												<div class="col-xs-8 repay-content">
													미드레이트 대부
												</div>
											</div>
											<div class="row">
												<div class="col-xs-4 repay-title">
													은행
												</div>
												<div class="col-xs-8 repay-content">
													농협
												</div>
											</div>
											<div class="row">
												<div class="col-xs-4 repay-title">
													계좌번호
												</div>
												<div class="col-xs-8 repay-content">
													317-0010-4234-81
												</div>
											</div>
										</div>
										<div class="repayAccountGuide">
											<ul>
												<li>
													대출 상환금 입금은 상환 당일 오전 9시부터 오후 9시까지 가능합니다.
												</li>
												<li>
													대부거래표준계약서에 따라 상환일에 입금되지 않으면 연체이자가 적용됩니다.
												</li>
												<li>
													해당 회차의 상환 금액과 실제 입금하는 금액이 다르면 상환이 되지 않은 것으로 간주합니다.
												</li>
												<li>
													문의사항 및 추가 대출이 필요하실 경우 고객센터로 연락 바랍니다.
												</li>
											</ul>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 상환현황
										</div>
										<div class="repay-box gray">
											<div class="row">
												<div class="col-xs-6 repay-title">
													대출금 잔액
												</div>
												<div class="col-xs-6 repay-content">
													<span name="REST_REPAY_AMT">0</span> <font size="2">원</font>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-6 repay-title">
													누적 상환금
												</div>
												<div class="col-xs-6 repay-content">
													<span name="REST_REPAY_AMT">0</span> <font size="2">원</font>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-6 repay-title">
													다음 상환금
												</div>
												<div class="col-xs-6 repay-content">
													<span name="NEXT_REPAY_AMT">0</span> <font size="2">원</font>
												</div>
											</div>
										</div>
										<div class="repayAccountGuide">
											<ul>
												<li>
													자세한 상환내역은 아래 상환일정을 확인해 주시기 바랍니다.
												</li>
												<li>
													중도상환 시 대출금 전부에 대한 상환만 가능하며 일부에 대한 상환은 불가능합니다.
												</li>
												<li>
													중도상환수수료는 없으며 상환약정일자가 있는 날만 가능합니다.
												</li>
												<li>
													중도 상환을 희망하실 경우 고객센터로 문의주시기 바랍니다.
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="wrap">
							<div class="box right">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 상환일정
										</div>
									</div>
									
									
								</div>
								
								<div class="row" id="repayListNextPageDiv">
									<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="alarm-box-bottom">
											<a href="javascript:(void(0));" onclick="fn_selectRepayListNextPage()" id="repayListNextPageBtn" class="display-none" style="display: none;">
												<i class="glyphicon glyphicon-menu-down"></i>
											</a>
											<a href="javascript:(void(0));" onclick="fn_repayListResetPage()" id="repayListResetPageBtn" class="display-none">
												<i class="glyphicon glyphicon-menu-up"></i>
											</a>
										</div>
									</div>
								</div>
								
								<table id="tblExport" style="display:none;" class="tblExport">
									<thead>
										<tr>
											<th scope="col">상품번호</th>
											<th scope="col">신청일자</th>
											<th scope="col">대출일자</th>
											<th scope="col">대출금액</th>
											<th scope="col">상환기간</th>
											<th scope="col">대출금리</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				
	<!-- 계약서 제출 Modal -->
	<div class="modal fade" id="docuPrintModal" role="dialog" aria-labelledby="docuPrintModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="docuPrintModalLabel">계약서 제출</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="radio-inline">
							<input type="radio" name="docuRadio" id="docuRadio1" value="1" checked="checked">계약서 출력
						</label>
						<label class="radio-inline">
							<input type="radio" name="docuRadio" id="docuRadio2" value="2">계약정보 등록
						</label>
					</div>
					<hr>
					<div id="docu1" name="docu" class="docu">
						
						<p align="right">
							<font size="3">
								- 제출용 -
							</font>
						</p>
						<p align="center">
							<font size="5">
								<strong>대부거래 표준계약서</strong>
							</font>
						</p>
						<div class="contents">
							<p style="font-size:14px;">
								본인 등은 아래의 대부거래 계약에 대하여 별첨 대부거래 표준약관을 승낙하고 성실히 이행하겠습니다.<br>
								<strong>(굵은 선 부분은 채무자가 자필로 기재합니다)</strong><br>
							</p>
							<p style="font-size:20px;font-weight: bold;text-align: center">
								- 계  약  내  용 -
							</p>
							<table class="table" border="1" cellspacing="0" cellpadding="3.5" style="border-collapse:collapse;border:none;font-size:12px;">
								<tbody><tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td rowspan="4" align="center" width="60">
										대부업자
									</td>
									<td align="center" width="110">
										상호 또는 성명
									</td>
									<td align="center">
										(주)미드레이트대부
									</td>
									<td align="center" width="170">
										TEL
									</td>
									<td align="center">
										02-546-4076
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										사업자등록번호
									</td>
									<td colspan="3" align="center">
										317-88-00338
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										대부업등록번호
									</td>
									<td colspan="3" align="center">
										2016-서울강남-0063
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										주소
									</td>
									<td colspan="3" align="center">
										서울특별시 강남구 논현로95길 12, 4층
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td rowspan="3" align="center">
										채 무 자
									</td>
									<td align="center">
										성	명
									</td>
									<td align="center">
										<span id="docCusNm"></span>&nbsp;(인)
									</td>
									<td align="center">
										TEL
									</td>
									<td align="center">
										<span id="docMpNo"></span>
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										생년월일
									</td>
									<td align="center">
										<span id="docBirthDate"></span>
									</td>
									<td align="center">
										성별
									</td>
									<td align="center">
										<span id="docSexNm"></span>
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										주	 소
									</td>
									<td colspan="3" align="center">
										<span id="docHomeAddr"></span>
									</td>
								</tr>
								
								<tr>
									<td colspan="5" align="center" style="border-left:none;border-right:none;">
										&lt;자필기입란&gt;
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대부금액<br>
										(채무자가 실제 수령한 금액)
									</td>
									<td colspan="3" align="left">
										&nbsp;금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docLoanAmtWon"></span></font>&nbsp;원 정( ￦  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docLoanAmt"></span></font>&nbsp;)
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										매월상환액
									</td>
									<td colspan="3" align="left">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docMonthRepayAmt"></span></font>원
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대출이율
									</td>
									<td align="right">
										&nbsp;<font color="#eeeeee"><span id="docLoanRate"></span></font> %
									</td>
									<td align="center">
										연체이율
									</td>
									<td align="right">
										&nbsp;<font color="#eeeeee"><span id="docDelayRate"></span></font> %
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										계약일자(대부일자)
									</td>
									<td colspan="3" align="left">
										
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대부기간 만료일
									</td>
									<td colspan="3" align="left">
										
									</td>
								</tr>
								
								<tr>
									<td colspan="5" align="left" style="border-left:none;border-right:none;">
										&nbsp;<font color="red">※ 대부업법에 따른 법정 최고 이자율은 연 27.9% 입니다.</font>
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										상환방법
									</td>
									<td colspan="3" align="left">
										&nbsp;<span id="docRepayTypeNm"></span>상환
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										상환약정일
									</td>
									<td colspan="3" align="left">
										&nbsp;매월  <span id="docAplyAmtTranDay"></span> 일
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										대부업자<br>
										은행계좌번호
									</td>
									<td colspan="3" align="left">
										&nbsp;아래 계좌로 매 월 상환일에 상환 바랍니다.<br>
										&nbsp;- 317-0010-4234-81 NH농협은행<br>
										&nbsp;- 예금주 : (주)미드레이트대부
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										변 제 방 법
									</td>
									<td colspan="3" class="left">
										&nbsp;1. 대출금의 상환 및 이자의 지급은 은행송금(채권자 입금계좌)등 당사자가 약정한 방법에 의한다.<br>
										&nbsp;2. 대출금의 상환 및 이자의 지급은 비용, 이자, 원금순으로 충당한다.
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										부대비용의 내용 및 금액<br>
										(자세하게 기재할 것)
									</td>
									<td colspan="3" align="left">
										&nbsp;플랫폼 이용료 및 신용 정보 조회 수수료 <span id="docCmmntAmt"></span>원
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										중도상환수수료
									</td>
									<td colspan="3" align="left">
										&nbsp;중도상환수수료 없음, 단, 대출금 전부에 대한 조기 상환만 가능하며 일부 상환은 불가능함.<br>
										&nbsp;중도 상환은 상환 약정일에 있는 날짜만 가능함.
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										채무 및 보증채무 증명서<br>
										발급비용
									</td>
									<td align="center">
										5,000원
									</td>
									<td align="center">
										채무 및 보증채무 증명서<br>
										발급기한
									</td>
									<td align="center">
										상환 완료 시 까지<br>
										(원금+이자+연체이자)
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										연체이율 적용
									</td>
									<td colspan="3" align="left">
										연체이자율은 약관에 정한 바에 따르며 대출금리에 10% 가산한 금리를 일할 적용하여 계산함.<br>
										채무자가 납부하여야 할 분할상환원리금을 그 기일에 제때 지급하지 아니한 경우 해당일자로부터 공휴일을 포함한 5일이 지난 시점부터 연체이율을 적용함.<br>
										대출기간 만료일에 채무를 이행하지 아니하거나 대부거래표준약관 12조에 의하여 기한의 이익을 상실한 때에는 그때부터 대출금 잔액에 대하여 연체지율을 적용하기로 함.
									</td>
								</tr>
								<tr>
									<td colspan="5" align="left" style="border-left:none;border-right:none;border-bottom:none;">
										※ 채무자는 다음 사항을 읽고 본인의 의사를 사실에 근거하여 자필로 기재하여 주십시오.<br>
									</td>
								</tr>
								<tr>
									<td colspan="5" align="right" style="border-left:none;border-right:none;border-top:none;">
										(기재예시 : 1. 수령함, 2 들었음, 3 들었음)
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;1. 위 계약서 및 대부거래표준약관을 확실히 수령하였습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">수  령  함</font>
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;2. 위 계약서 및 대부거래표준약관의 중요한 내용에 대하여 설명을 들었습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">들  었  음</font>
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;3. 중개수수료를 채무자로부터 받는 것이 불법이라는 설명을 들었습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">들  었  음</font>
									</td>
								</tr>
							</tbody></table>
						</div>
						
						<p align="right">
							<font size="3">
								- 보관용 -
							</font>
						</p>
						<p align="center">
							<font size="5">
								<strong>대부거래 표준계약서</strong>
							</font>
						</p>
						<div class="contents">
							<p style="font-size:14px;">
								본인 등은 아래의 대부거래 계약에 대하여 별첨 대부거래 표준약관을 승낙하고 성실히 이행하겠습니다.<br>
								<strong>(굵은 선 부분은 채무자가 자필로 기재합니다)</strong><br>
							</p>
							<p style="font-size:20px;font-weight: bold;text-align: center">
								- 계  약  내  용 -
							</p>
							<table class="table" border="1" cellspacing="0" cellpadding="3.5" style="border-collapse:collapse;border:none;font-size:12px;">
								<tbody><tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td rowspan="4" align="center" width="60">
										대부업자
									</td>
									<td align="center" width="110">
										상호 또는 성명
									</td>
									<td align="center">
										(주)미드레이트대부
									</td>
									<td align="center" width="170">
										TEL
									</td>
									<td align="center">
										02-546-4076
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										사업자등록번호
									</td>
									<td colspan="3" align="center">
										317-88-00338
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										대부업등록번호
									</td>
									<td colspan="3" align="center">
										2016-서울강남-0063
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										주소
									</td>
									<td colspan="3" align="center">
										서울특별시 강남구 논현로95길 12, 4층
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td rowspan="3" align="center">
										채 무 자
									</td>
									<td align="center">
										성	명
									</td>
									<td align="center">
										<span id="docCusNm"></span>&nbsp;(인)
									</td>
									<td align="center">
										TEL
									</td>
									<td align="center">
										<span id="docMpNo"></span>
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										생년월일
									</td>
									<td align="center">
										<span id="docBirthDate"></span>
									</td>
									<td align="center">
										성별
									</td>
									<td align="center">
										<span id="docSexNm"></span>
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td align="center">
										주	 소
									</td>
									<td colspan="3" align="center">
										<span id="docHomeAddr"></span>
									</td>
								</tr>
								
								<tr>
									<td colspan="5" align="center" style="border-left:none;border-right:none;">
										&lt;자필기입란&gt;
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대부금액<br>
										(채무자가 실제 수령한 금액)
									</td>
									<td colspan="3" align="left">
										&nbsp;금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docLoanAmtWon"></span></font>&nbsp;원 정( ￦  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docLoanAmt"></span></font>&nbsp;)
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										매월상환액
									</td>
									<td colspan="3" align="left">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#eeeeee"><span id="docMonthRepayAmt"></span></font>원
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대출이율
									</td>
									<td align="right">
										&nbsp;<font color="#eeeeee"><span id="docLoanRate"></span></font> %
									</td>
									<td align="center">
										연체이율
									</td>
									<td align="right">
										&nbsp;<font color="#eeeeee"><span id="docDelayRate"></span></font> %
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										계약일자(대부일자)
									</td>
									<td colspan="3" align="left">
										
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="2" align="center">
										대부기간 만료일
									</td>
									<td colspan="3" align="left">
										
									</td>
								</tr>
								
								<tr>
									<td colspan="5" align="left" style="border-left:none;border-right:none;">
										&nbsp;<font color="red">※ 대부업법에 따른 법정 최고 이자율은 연 27.9% 입니다.</font>
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										상환방법
									</td>
									<td colspan="3" align="left">
										&nbsp;<span id="docRepayTypeNm"></span>상환
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										상환약정일
									</td>
									<td colspan="3" align="left">
										&nbsp;매월  <span id="docAplyAmtTranDay"></span> 일
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										대부업자<br>
										은행계좌번호
									</td>
									<td colspan="3" align="left">
										&nbsp;아래 계좌로 매 월 상환일에 상환 바랍니다.<br>
										&nbsp;- 317-0010-4234-81 NH농협은행<br>
										&nbsp;- 예금주 : (주)미드레이트대부
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										변 제 방 법
									</td>
									<td colspan="3" class="left">
										&nbsp;1. 대출금의 상환 및 이자의 지급은 은행송금(채권자 입금계좌)등 당사자가 약정한 방법에 의한다.<br>
										&nbsp;2. 대출금의 상환 및 이자의 지급은 비용, 이자, 원금순으로 충당한다.
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										부대비용의 내용 및 금액<br>
										(자세하게 기재할 것)
									</td>
									<td colspan="3" align="left">
										&nbsp;플랫폼 이용료 및 신용 정보 조회 수수료 <span id="docCmmntAmt"></span>원
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										중도상환수수료
									</td>
									<td colspan="3" align="left">
										&nbsp;중도상환수수료 없음, 단, 대출금 전부에 대한 조기 상환만 가능하며 일부 상환은 불가능함.<br>
										&nbsp;중도 상환은 상환 약정일에 있는 날짜만 가능함.
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										채무 및 보증채무 증명서<br>
										발급비용
									</td>
									<td align="center">
										5,000원
									</td>
									<td align="center">
										채무 및 보증채무 증명서<br>
										발급기한
									</td>
									<td align="center">
										상환 완료 시 까지<br>
										(원금+이자+연체이자)
									</td>
								</tr>
								<tr style="border-left:solid #000000 1.0pt;border-right:solid #000000 1.0pt;border-top:solid #000000 1.0pt;border-bottom:solid #000000 1.0pt;">
									<td colspan="2" align="center">
										연체이율 적용
									</td>
									<td colspan="3" align="left">
										연체이자율은 약관에 정한 바에 따르며 대출금리에 10% 가산한 금리를 일할 적용하여 계산함.<br>
										채무자가 납부하여야 할 분할상환원리금을 그 기일에 제때 지급하지 아니한 경우 해당일자로부터 공휴일을 포함한 5일이 지난 시점부터 연체이율을 적용함.<br>
										대출기간 만료일에 채무를 이행하지 아니하거나 대부거래표준약관 12조에 의하여 기한의 이익을 상실한 때에는 그때부터 대출금 잔액에 대하여 연체지율을 적용하기로 함.
									</td>
								</tr>
								<tr>
									<td colspan="5" align="left" style="border-left:none;border-right:none;border-bottom:none;">
										※ 채무자는 다음 사항을 읽고 본인의 의사를 사실에 근거하여 자필로 기재하여 주십시오.<br>
									</td>
								</tr>
								<tr>
									<td colspan="5" align="right" style="border-left:none;border-right:none;border-top:none;">
										(기재예시 : 1. 수령함, 2 들었음, 3 들었음)
									</td>
								</tr>
								
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;1. 위 계약서 및 대부거래표준약관을 확실히 수령하였습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">수  령  함</font>
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;2. 위 계약서 및 대부거래표준약관의 중요한 내용에 대하여 설명을 들었습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">들  었  음</font>
									</td>
								</tr>
								<tr style="border-left:solid #000000 2.0pt;border-right:solid #000000 2.0pt;border-top:solid #000000 2.0pt;border-bottom:solid #000000 2.0pt;">
									<td colspan="4" align="left">
										&nbsp;3. 중개수수료를 채무자로부터 받는 것이 불법이라는 설명을 들었습니까?
									</td>
									<td colspan="1" align="center">
										<font color="#eeeeee">들  었  음</font>
									</td>
								</tr>
							</tbody></table>
						</div>
						
						<p align="center">
							<font size="5">
								<strong>대부거래 표준약관</strong>
							</font>
						</p>
						<div class="contents">
							<p>
								제1조(목적)<br>
								이 약관은 대부업자와 채무자간의 대부거래에 있어서 권리와 의무를 명확히 하고 공정하며 건전한 금전소비대차를 하는 것을 목적으로 한다.<br>
								<br>
								제2조 (적용범위)<br>
								이 약관은 대부업자와 채무자 사이의 가계 또는 기업의 자금대부 또는 그 중개 및 어음할인 등의 금전의 대부와 관련된 대부업자와 채무자 사이의 모든 거래에 적용된다.<br>
								<br>
								제3조(용어의 정의)  이 약관에서 사용하는 용어의 정의는 다음과 같다.<br>
								  1. “대부업”이라 함은 금전의 대부 또는 그 중개, 금전의 대부와 관련한 어음의 할인 및 이와 유사한 방법에 의한 금전의 교부와 관련된 사항을 그 업으로 행하는 사업을 말한다.<br>
								  2. “대부업자”라 함은 관할관청에 등록여부를 불문하고 대부업을 영위하는 개인 및 법인으로 한다.<br>
								  3. “채무자”라 함은 대부계약의 체결로 인하여 대부업자에 대하여 채무를 부담하는 자를 말한다.<br>
								  4. “보증인”이라 함은 채무자가 채무를 이행하지 않는 경우에 그 채무를 대신 이행할 종(從)된 채무를 부담하는 자를 말한다.<br>
								<br>
								제4조 (실명거래)<br>
								  ① 대부업자와 채무자 사이의 거래는 실명으로 한다.<br>
								  ② 대부업자는 채무자가 본인임을 확인할 의무가 있다.<br>
								  ③ 대부업자와 채무자 사이의 계약은 채무자 본인이 직접 체결하는 것을 원칙으로 하되, 채무자의 대리인과 계약을 체결하는 경우에는 채무자가 발급받은 인감증명서를 첨부한 위임장에 의하여야 한다.<br>
								<br>
								제5조(약관의 명시․설명․교부)<br>
								  ① 대부업자는 이 약관을 영업장에 비치하고, 채무자는 영업시간 중 언제든지 이를 열람하거나 그 교부를 청구할 수 있다.<br>
								  ② 대부업자는 계약체결 전에 이 약관 제7조를 포함한 중요내용을 채무자가 이해할 수 있도록 설명하고 약관을 교부한다.<br>
								<br>
								제6조(계약의 성립) 대부업자가 약관의 내용을 설명하고 채무자가 본계약서에 의하여 이의 적용을 동의한 경우 계약은 성립한다.<br>
								<br>
								제7조(계약서 필수기재사항) 대부거래 표준계약서에는 다음의 사항을 반드시 기재한다.<br>
								  1. 대부업자(그 영업소를 포함한다)의 성명 또는 상호, 주소, 전화번호, 생년월일(성별) 또는 사업자등록번호<br>
								  2. 대부업등록번호<br>
								  3. 채무자의 성명 또는 상호, 주소, 전화번호, 생년월일(성별) 또는 사업자등록번호<br>
								  4. 계약일자<br>
								  5. 대부금액<br>
								  6. 이자율(이자율의 세부내역 및 연이자율로 환산한 것을 포함)<br>
								  7. 연체이자율<br>
								  8. 변제기간 및 변제방법<br>
								  9. 대부금을 변제받을 은행 계좌번호<br>
								  10. 채무의 조기상환조건<br>
								  11. 부대비용이 있는 경우 그 내용 및 금액<br>
								  12. 보증인이 있는 경우 보증인의 성명 또는 상호, 주소, 생년월일(성별) 또는 사업자등록번호, 보증의 내용<br>
								<br>
								제8조(이자율 등의 제한)<br>
								  ① 대부업자는 관계법령이 정하는 이자율(연체이자율 포함)의 범위 내에서 계약을 체결하기로 한다.<br>
								  ② 제1항의 규정에 의한 이자율을 산정함에 있어 사례금, 할인금, 수수료, 공제금, 연체이자, 체당금, 그밖에 그 명칭에 불구하고 대부와 관련하여 대부업자가 받는 것은 이를 이자로 본다. 다만 당해 거래의 계약체결과 변제에 관한 부대비용으로서 관련 법령이 정한 사항은 그러하지 아니하다.<br> 
								  ③ 대부업자가 제1항의 규정에 의하지 않은 대부계약을 체결한 경우 제1항에 따른 이자율을 초과하는 부분에 대한 이자계약은 무효로 한다.<br>
								  ④ 채무자가 대부업자에게 제1항에 따른 이자율을 초과하는 이자를 지급한 경우 그 초과 지급된 이자 상당금액은 원본에 충당되고, 원본에 충당되고 남은 금액이 있으면 그 반환을 청구할 수 있다.<br>
								  ⑤ 대부업자가 선이자를 사전에 공제하는 경우에는 그 공제액을 제외하고 채무자가 실제로 받은 금액을 원본으로 하여 제1항에 따른 이자율을 산정한다.<br>
								<br>
								제9조 (비용의 부담)<br>
								  ① 다음 각 호의 비용은 채무자가 부담한다.<br>
								  1. 채무자ㆍ보증인에 대한 대부업자의 채권ㆍ담보권 등의 권리의 행사ㆍ보전(해지 포함)에 관한 비용<br>
								  2. 채무이행 지체에 따른 독촉 및 통지비용<br>
								  3. 채무 및 보증채무와 관련된 증명서의 발급 비용<br>
								  ② 대부업자나 대부업자가 지정하는 자가 제1항 각 호의 업무를 처리하고 그 비용을 채무자에게 청구하는 경우에는 실비를 초과할 수 없으며 소요비용이 최소화되도록 하여야 한다.<br>
								  ③ 제1항에 의한 비용을 대부업자가 대신 지급한 경우에는, 대부업자는 이를 즉시 채무자에게 통지하여 채무자가 이를 곧 변제하도록 하고 만일 채무자가 그러하지 아니하는 경우에는 대부업자가 대신 지급한 금액에 대하여, 대신 지급한 날부터 다 갚는 날까지의 날짜수 만큼, 상법 제54조(상사법정이율)에 의한 연 6푼의 범위내에서 약정금리로, 1년을 365일로 보고 1일 단위로 계산한 금액을 더하여 갚기로 한다.<br>
								  ④ 대부업자는 대부계약 약정시 채무자가 사전에 알 수 있도록, 약정이자외에 담보대출에 소요되는 부대비용의 항목과 금액을 알려주어야 한다.<br>
								<br>
								제10조(계약서의 교부 등)<br>
								  ① 계약내용을 명확히 하기 위하여 계약서는 2부를 작성하여 대부업자와 채무자가 각각 보관하는 것으로 한다.<br>
								  ② 상환 완료 후 채무자는 대부계약서 및 계약관계서류의 반환을 서면으로 요구할 수 있고, 이의 반환 요청이 있는 경우 대부업자는 대부계약서 및 계약관계서류를 즉시 반환하기로 한다.<br>
								  ③ 인터넷을 통해 전자적인 형태로 대부거래 약정을 체결하는 경우 대부업자는 지체없이 계약서를 전자우편 등으로 채무자에게 송부하고, 계약기간 동안 홈페이지에서 당해 계약사항의 열람, 인쇄가 가능하도록 조치하여야 한다. 다만, 채무자의 요청이 있는 경우에는 계약서를 서면으로 교부한다.<br>
								<br>
								제11조(담보의 제공)<br>
								  채무자 또는 보증인의 신용악화, 제공한 담보의 가치감소의 사유가 발생하여 대부업자가 채권보전상 필요하다고 인정되는 경우에는 채무자는 대부업자의 청구에 의하여 대부업자가 인정하는 담보를 제공하거나 보증인을 세우기로 한다. 다만, 담보의 제공이나 보증인을 세울 때에는 반드시 채권보전의 범위내 이어야 한다.<br> 
								<br>
								제12조(기한의 이익의 상실)<br>
								  ① 채무자에게 다음 각 호의 사유가 발생한 경우에는 대부업자로부터의 독촉ㆍ통지 등이 없어도, 채무자는 기한의 이익을 상실한다.<br>
								  1. 채무자가 제공한 담보재산에 대하여 압류명령이나 체납처분 압류 통지가 발송된 때 또는 기타의 방법에 의한 강제집행개시나 체납처분착수가 있는 때<br>
								  2. 채무불이행자명부 등재 신청이 있는 때<br>
								  3. 어음교환소의 거래정지처분이  있을때<br>
								  4. 도피 또는 기타의 사유로 금융기관에서 채무자에 대한 지급을 정지한 것으로 인정된 때<br>
								  5. 파산신청이 있는 때<br>
								  ② 채무자에게 다음 각 호의 사유가 발생한 경우에는 기한의 이익을 상실한다. 다만, 대부업자는 기한의 이익상실일 7영업일전까지 다음 각 호의 채무이행지체사실과 이에 따라 기한의 이익이 상실된다는 사실을 채무자에게 통지하여야 하며, 기한의 이익상실일 7영업일전까지 통지하지 않은 경우에는 채무자는 실제통지가 도달한 날부터 7영업일이 경과한 날에 기한의 이익을 상실한다.<br>  
								  1. 이자를 지급하여야 할 때부터 2개월간 지체한 때<br> 
								  2. 분할상환금 또는 분할상환원리금의 지급을 2회 이상 연속하여 지체하고 그 금액이 대출금의 10분의 1을 초과하는 경우<br>
								  ③ 채무자에 관하여 다음 각 호에서 정한 사유중 하나라도 발생하여 대부업자의 채권보전에 현저한 위험이 예상될 경우, 대부업자는 서면으로 당해 위험 및 신용의 회복 등을 독촉하고, 그 통지의 도달일부터 10영업일 이상으로 대부업자가 정한 기간이 경과하면, 채무자는 대부업자에 대한 당해 채무의 기한의 이익을 상실하여 곧 이를 갚아야 할 의무를 진다.<br> 
								  1. 채무자와 그의 보증인이 대출금을 수령한 후 당초 제출하기로 약속한 대부계약에 필요한 중요서류(대출계약서, 보증계약서 등)를 30일 이내에 제출하지 않을 때<br> 
								  2. 채무자가 채무의 상환을 거부하는 의사를 명시적으로 표시할 때<br>
								  3. 채무자 및 보증인이 계약서의 주요한 내용을 허위로 기재하거나 제출한 증빙서류가 위변조된 것으로 확인된 때<br>
								  ④ 제1항 내지 제3항에 의하여 채무자가 대부업자에 대한 채무의 기한의 이익을 상실한 경우라도, 대부업자의 명시적 의사표시가 있거나, 대부업자가 분할상환금ㆍ이자ㆍ지연배상금을 받는 등 정상적인 거래의 계속이 있는 때에는, 그 채무 또는 대부업자가 지정하는 채무의 기한의 이익은 그 때부터 부활되는 것으로 본다.<br>  
								<br>
								제13조(기한전의 임의 상환등)<br>
								  채무자는 약정한 상환기일이 도래하기전이라도 미리 아무런 부담없이 원금의 전부 또는 일부를 상환할 수 있다. 그러나 대부계약 체결시 채무자와 기한전의 임의 변제로 대부업자가 받을 손해에 대하여 미리 약정한 경우에 한하여 수수료등을 채무자가 부담한다.<br>
								<br>
								제14조(채무의 변제 등의 충당)<br>
								  ① 채무자의 채무변제시 채무 전액을 소멸시키기에 부족한 때에는 비용, 이자, 원금의 순서로 충당하기로 한다. 그러나 대부업자는 채무자에게 불리하지 않은 범위내에서 충당순서를 달리할 수 있으나 채무자에게 이러한 사실을 서면으로 통지하여야 한다.<br>
								  ② 변제될 채무가 수개인 경우로서 채무전액이 변제되지 않을 경우 강제집행 또는 담보권 실행경매에 의한 회수금에 대하여는 민법 기타 법률이 정하는 바에 따른다.<br>
								  ③ 변제될 채무가 수개인 경우로서 제2항에 해당되지 않는 임의의 상환금으로 채무자의 채무전액을 없애기에 부족한 때에는 채무자가 지정하는 순서에 따라 변제에 충당하기로 한다. 이 경우, 채무자가 지정하는 순서에 따를 경우, 대부업자의 채권보전에 지장이 생길 염려가 있는 때에는 대부업자는 지체없이 이의를 표시하고, 물적담보나 보증의 유무, 그 경중이나 처분의 난이, 변제기의 장단등을 고려하여 대부업자가 변제에 충당할 채무를 바꾸어 지정할 수 있으나 채무자에게 이러한 사실을 서면으로 통지하여야 한다.<br>
								  ④ 대부업자가 변제충당순서를 제3항에 따라 민법 기타 법률이 정하는바와 달리할 경우에는 대부업자의 채권보전에 지장이 없는 범위내에서 채무자와 담보제공자 및 보증인의 정당한 이익을 고려하여야 한다.<br>
								<br>
								제15조(영수증 등 서면교부) 대부업자는 채무자로부터 이자, 원금 등을 수령한 경우에는 영수증 및 대출잔액 확인서를 서면 또는 전자우편 등으로 교부하여야 한다.<br>
								<br>
								제16조(통지사항 및 효력)<br>
								  ① 채무자는 주소, 전화번호, 근무처가 변경된( 휴․퇴직 또는 해고되거나 전․폐업한 경우포함)경우 서면으로 대부업자에게 곧 통지하여야 한다.<br>
								  ② 채무자가 제1항에 의한 통지를 게을리하여 대부업자가 발송한 서면통지 또는 기타서류가 채무자에게 연착하거나 도달되지 않은 때에는 보통의 우송기간이 경과한 때에 도달한 것으로 본다. 이 경우 상계통지나 기한전의 채무변제 청구 등 중요한 의사표시는 반드시 배달증명부 내용증명에 의하여야 하며, 배달증명부 내용증명이 아닌 경우에는 도달한 것으로 보지 않고 다만 추정한다.<br> 
								  ③ 대부업자는 주소 및 전화번호가 변경된 경우 이를 채무자에게 서면으로 통지하여야 한다.<br>
								<br>
								제17조(채권양도)<br>
								  대부업자는 본 계약서상의 채권을 제3자에게 양도할 수는 있으나, 채권양도에 관하여는 반드시 사전에 채무자 및 보증인에게 동의를 얻어야 한다.<br>
								<br>
								제18조(신용정보)<br>
								  ① 채무자가 제공한 신용정보(성명, 생년월일, 주소 등 본인의 특정정보 및 차입내용, 상환사항, 연체 등의 객관적 정보)는 이 계약에 의한 법적인 권리행사를 위해서만 이용할 수 있다.<br>
								  ② 채무자 및 보증인은 그 주소지의 확인을 위하여 대부업자의 채권보전등의 목적에 따라 개인별 주민등록표의 열람을 승낙 하기로 한다.<br>
								  ③ 대부업자는 채무자 본인과 보증인에 대하여만 개인정보를 요구할 수 있다.<br>
								<br>
								제19조(이행장소ㆍ준거법)<br>
								  ① 채무의 이행장소는 다른 약정이 없는 한 거래 영업점으로 하고, 송금방법은 대부업자의 은행계좌에 입금하는 것을 원칙으로 한다. 다만, 부실채권의 관리 등 상당한 사유로 채권관리업무를 대부업자의 본점ㆍ지역본부 또는 다른 영업점으로 이관한 경우에는, 이관받은 본점ㆍ지역본부 또는 다른 영업점을 그 이행장소로 한다.<br>
								  ② 채무자가 내국인이 아닌 경우라도, 이 약관에 의한 대부거래에 관하여 적용될 법률은 국내법을 적용한다.<br>
								<br>
								제20조(불법적 채권추심 행위의 금지)<br>
								  ① 대부업자(대부업자로부터 대부계약에 따른 채권을 양도 받거나 채권의 추심을 위탁받은 자를 포함한다)는 대부거래 계약에 따른 채권을 추심함에 있어서 다음 각호의 방법을 사용하지 않기로 한다.<br>
								  1. 채무자 또는 관계인을 폭행․협박․체포 또는 감금하거나 그에게 위계나 위력을 사용하는 행위<br>
								  2. 정당한 사유없이 반복적으로 또는 야간(오후 9시 이후부터 다음날 오전 8시까지를 말한다)에 채무자나 관계인을 방문함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위<br>
								  3. 정당한 사유없이 반복적으로 또는 야간에 전화하는 등 말․글․음향․영상 또는 물건을 채무자나 관계인에게 도달하게 함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위<br>
								  4. 채무자 외의 사람(보증인을 포함한다)에게 채무에 관한 거짓 사실을 알리는 행위<br> 
								  5. 채무자 또는 관계인에게 금전의 차용이나 그 밖의 이와 유사한 방법으로 채무의 변제자금을 마련할 것을 강요함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위<br>
								  6. 채무를 변제할 법률상 의무가 없는 채무자 외의 사람에게 채무자를 대신하여 채무를 변제할 것을 반복적으로 요구함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위<br>
								  7. 엽서에 의한 채무변제요구 등 채무자 외의 자가 채무사실을 알 수 있게 하는 행위<br>
								  8. 채무자의 연락두절 등 소재파악이 곤란한 경우가 아님에도 채무자의 관계인에게 채무자의 소재, 연락처 또는 소재를 알 수 있는 방법 등을 문의하는 행위<br>
								  ② 대부업자는 기타 「채권의 공정한 추심에 관한 법률」에서 채권추심과 관련하여 금지하고 있는  행위를 하여서는 아니된다.<br>
								<br>
								제21조(약관의 변경)<br>
								  ① 대부업자가 이 약관을 변경하고자 할 경우, 채무자에게 불리한 내용이 될 때에는 서면통지의 방법으로 이를 알리고, 채무자에게 불리한 내용이 아닌 경우에는 거래영업점에 게시함으로써 이를 알려야 한다. 그러나 서면통지나 게시의 경우에는 반드시 제2항의 뜻을 명시하여야 한다.<br>
								  ② 통지가 도달한 때 또는 게시한 때부터 1개월 이내에 채무자의 서면에 의한 이의가 대부업자에게 도달하지 않은 때에는, 약관의 변경을 승인한 것으로 본다.<br>
								<br>
								제22조(규정의 준용)<br>
								  이 약관에서 정하지 아니한 사항에 관하여는 「대부업 등의 등록 및 금융이용자 보호에 관한 법률」 및 동법 시행령 등 관계 법령에 따른다.<br> 
								<br>
								제23조(관할법원의 합의)<br>
								  이 약관에 의한 대부거래 계약에 관하여 대부업자와 채무자 사이에 소송의 필요가 생긴 때에는 법이 정하는 관할법원과 아울러 대부업자의 거래영업점 소재지 지방법원을 관할법원으로 하기로 한다. 다만, 채무자의 책임있는 사유로 부실채권이 발생되어 그 채권의 관리를 위하여 대부업자가 본점. 지역본부 또는 다른 영업점으로 그 채권관리업무를 이관한 경우에는 법이 정하는 관할법원과 아울러 이관받은 본점. 지역본부 또는 다른 영업점 소재지 지방법원을 관할법원으로 하기로 한다.<br>
							</p>
						</div>
					</div>
					
					<div id="docu2" name="docu" style="display: none;">
						
						<div class="wrap">
							<div class="box right">
								<div class="row">
								
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 대부거래 표준계약서 사본 등록
										</div>
										<div class="subTitle" style="margin-top: 5px;">
											출력하신 계약서를 자필로 작성하신 뒤 스캔 또는 사진 이미지로 저장하여 첨부해 주세요.
										</div>
										<form id="fileForm" enctype="multipart/form-data">
											<div class="docuFileDiv">
												<input type="file" id="docuFile" name="docuFile">
											</div>
										</form>
										<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_insertDocuFile()" id="insertDocuFileBtn">등록하기</button>
									</div>
								
									<div class="col-xs-12 col-sm-6 col-sm-6 leftLine">
										<div class="title">
											<font class="font-purple">
												●
											</font> 대출금 입금계좌
										</div>
										<div class="subTitle" style="margin-top: 5px;">
											<span id="registAccountY" style="">
												입금계좌 정보를 등록해주세요.
											</span>
											<span id="registAccountN" style="display: none;">
												입금계좌 정보를 확인해주세요.
											</span>
										</div>
										<table class="table condition-table">
											<tbody><tr>
												<td class="condition-title">은행명</td>
												<td class="condition-content">
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
												</td>
											</tr>
											<tr>
												<td colspan="2" class="condition-content">
													<p>
														<font size="2">반드시 본인명의 계좌 은행을 선택해주세요.</font>
													</p>
												</td>
											</tr>
											<tr>
												<td class="condition-title">계좌번호</td>
												<td class="condition-content">
													<input type="text" class="form-control" id="cusAccount" maxlength="14">
												</td>
											</tr>
											<tr>
												<td colspan="2" class="condition-content">
													<p>
														<font size="2">계좌번호를 정확히 입력해주세요.</font>
													</p>
												</td>
											</tr>
										</tbody></table>
										<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAccount()" id="updateCusAccountBtn">계좌 정보 저장</button>
									</div>
									
								</div>
							</div>
						</div>
						
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-purple-transparent" id="docuPrintBtn">인쇄하기</button>
					<input type="hidden" id="selectedLoanReqNo" value="">
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
				
	<!-- 심사결과 Modal -->
	<div class="modal fade" id="loanReqEvalModal" role="dialog" aria-labelledby="loanReqEvalModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="loanReqEvalModalLabel">심사결과 안내</h4>
				</div>
				<div class="modal-body">
					<div class="nonBgArea">
						<ul>
							<li>고객님께서 제출해 주신 자료를 토대로 심사를 진행하였으나 안타깝게도 대출신청이 불승인되어 더이상 절차가 진행되지 않음을 알려드립니다.</li>
							<li>P2P금융서비스의 특성상 대출을 신청하신 분들과 투자자의 입장을 모두 고려하여 절차를 진행할 수 밖에 없음을 양해 부탁드립니다.<br><br></li>
							<li class="lineTxt">미드레이트와 제휴된 금융기관 대출을 안내 받으시길 원하신다면 하기 내용을 참고하여 주십시오. </li>
						</ul>
					</div>
			
					<div class="bgArea">
						<ul>
							<li class="clrTxt"><span class="clrBtxt">Q1.</span>제휴기관제휴 금융기관의 대출 안내는 무엇인가요?</li>
							<li>미드레이트의 심사 요건을 충족하진 못했지만, 고객님의 대출을 돕기 위해 제휴된 금융 기관을 소개해드리는 서비스입니다.</li>
						</ul>
			
						<ul>
							<li class="clrTxt"><span class="clrBtxt">Q2.</span>제휴 기관과 연결 시 어떤 혜택이 있나요?</li>
							<li>하기의 링크를 통해 제휴기관과 대출 상담을 할 시 금리 및 한도 혜택을 받으실 수 있습니다.</li>
						</ul>
					</div>
					<ul class="notification">
						<li class="clrBtxt">유의사항</li>
						<li><span class="clrSQ">■</span> 미드레이트는 신한카드와 제휴하고 있습니다.</li>
						<li><span class="clrSQ">■</span> 본 페이지를 통해 신청한 경우에만 혜택이 적용됩니다.</li>
						<li><span class="clrSQ">■</span> 미드레이트와 제휴 금융기관의 심사기준이 다르기 때문에, 고객님의 대출이 승인 또는 거절 될 수 있습니다.<br><br></li>
					</ul>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-purple-transparent btn-block" id="sinhanLinkBtn">제휴 금융기관 대출 안내</button>
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
    
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
</body>
<style>
#mypage-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/common_banner_title.jpg) center 0% no-repeat;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 239px;
}
#mypage-banner .section-body {
    color: #fff;
    position: relative;
    padding: 135px 20px 0px 20px;
}
#mypage-banner .section-body .title {
    color: #fff;
    text-shadow: 1px 2px #222;
}
#mypage-banner .title {
    color: #fff;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
#mypage-content {
    padding: 41px 0 96px 0;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    display: table;
    content: " ";
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
.col-md-3 {
    width: 25%;
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
#mypage-content .wrap#smallMenu {
    display: none;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .box.quick {
    padding: 10px 12px 10px 12px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
#mypage-content .smallMenuTap {
    font-size: 14px;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
ul, ol {
    padding: 0;
    webkit-padding: 0;
    moz-padding: 0;
}
ul, ol {
    margin-top: 0;
    margin-bottom: 10px;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#mypage-content .smallMenuTap li {
    min-width: 49%;
    text-align: center;
}
.nav-pills > li {
    float: left;
}
.nav > li {
    position: relative;
    display: block;
}
#mypage-content .smallMenuTap li.active a {
    background-color: #712594;
}
#mypage-content .smallMenuTap a {
    padding: 5px 10px;
}
.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
    color: #fff;
    background-color: #337ab7;
}
.nav-pills > li > a {
    border-radius: 4px;
}
.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
#mypage-content .smallMenuTap li.active a .smallMenuItem {
    border-bottom: none;
}
.nav-pills > li + li {
    margin-left: 2px;
}
#mypage-content .smallMenuTap a .smallMenuItem {
    border-bottom: #712594 1px solid;
}
#mypage-content .wrap .box.left {
    padding: 15px;
}
.col-md-12 {
    width: 100%;
}
#mypage-content .wrap .box.left .cusNm {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .invstrTypeNm {
    font-size: 14px;
    font-weight: bold;
    color: #00A0DC;
}
#mypage-content .wrap .box.left .email {
    font-size: 14px;
    color: #858585;
}
#mypage-content .wrap .box .deposit-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 10px 20px;
    margin-top: 20px;
}
#mypage-content .wrap .box .deposit-box .myDeposit {
    font-size: 14px;
    font-weight: bold;
    color: #858585;
}
a {
    color: #712594;
    text-decoration: none;
}
a {
    background-color: transparent;
}
#mypage-content .wrap .box .deposit-box .tranList {
    font-size: 12px;
}
#mypage-content .wrap .box .deposit-box .amt {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .account-box {
    padding: 20px 10px 30px 10px;
    /* display: none; */
}
#mypage-content .wrap .box.left .account-box .account {
    font-size: 14px;
}
.font-red {
    color: #e08484 !important;
}
#mypage-content button.btn {
    font-size: 14px;
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
#mypage-content .wrap#largeMenu {
    display: block;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .menu {
    font-size: 15px;
    font-weight: bold;
    color: #3d3d3d;
    padding: 0px 0px;
}
#mypage-content .wrap#largeMenu .menu .item.active {
    background-color: #ecdeec;
    border-radius: 4px;
}
#mypage-content .wrap .menu .item {
    transition: all 0.8s, color 0.3s 0.3s;
}
#mypage-content .wrap .menu img {
    padding: 12px 22px 12px 12px;
    width: 55px;
    height: 45px;
}
#mypage-content .wrap#largeMenu .menu .item span {
    cursor: pointer;
}
.tabbable-line>.nav-tabs {
    border: none;
    margin: 0px;
}
.tabbable-line>.nav-tabs>li {
    margin-right: 2px;
    border: 1px solid #d9d9de;
    border-bottom: 0px solid #d9d9de;
}
.nav-tabs > li {
    float: left;
    margin-bottom: -1px;
}
.nav > li {
    position: relative;
    display: block;
}
.tabbable-line>.nav-tabs>li>a {
    border: 0;
    margin-right: 0;
    color: #737373;
}
.nav-tabs > li > a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
}

.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
.tabbable-line>.nav-tabs>li>a>i {
    color: #a6a6a6;
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
.tabbable-line>.nav-tabs>li.active {
    border-bottom: 4px solid #712594;
    position: relative;
}
.tabbable-line>.nav-tabs>li.active>a {
    border: 0;
    color: #333333;
}
.tabbable-line>.nav-tabs>li.active>a>i {
    color: #404040;
}
.tabbable-line>.tab-content {
    border: 0;
    /* border-top: 1px solid #d9d9de; */
    /* padding: 15px 0; */
}
.tab-content > .tab-pane {
    display: none;
    visibility: hidden;
}
.fade {
    opacity: 0;
    -webkit-transition: opacity .15s linear;
    -o-transition: opacity .15s linear;
    transition: opacity .15s linear;
}
#mypage-content #mypage-main .wrap .box.right {
    padding: 30px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
.display-none {
    display: none;
}
.col-md-6 {
    width: 50%;
}
#mypage-content #mypage-main .wrap .box.right .title {
    font-size: 18px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right button.btn-gradiation {
    font-size: 12px;
}
.row-cat {
    padding: 0 15px;
    margin-top: 10px;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label {
    font-size: 12px;
    min-width: 16.7%;
}
.labelBtn-purple {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 14px;
    border-radius: 0px;
    border-color: #fff;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate {
    width: 100%;
}
body {
    color: #797979;
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .investList {
    padding: 0 15px;
    margin-top: 10px;
}
#mypage-content #mypage-main .wrap .box.right table {
    margin: auto;
    font-size: 12px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 tr {
    height: 30px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 th {
    text-align: center;
}
.col-md-push-6 {
    left: 50%;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.srchText{
    margin-right: 5px;
    font-size: 12px;
    min-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right .subTitle {
    font-size: 15px;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide {
    text-align: center;
    padding: 10px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .box {
    background: url(${pageContext.request.contextPath}/resources/img/bg_loaninfo_type.png) center 0% no-repeat;
    background-size: 100% 100%;
    background-color: #fff;
    border-style: solid;
    padding: 5px;
    border-width: 1px;
    border-color: #dadada;
    border-radius: 4px;
    min-height: 300px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .top {
    font-size: 22px;
    border-bottom-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    padding: 20px 10px;
    font-weight: bold;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .middle {
    font-size: 16px;
    padding: 15px 45px 5px 45px;
    color: #712594;
    text-align: left;
    font-family: 'Noto Sans KR', sans-serif;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom {
    font-size: 14px;
    padding: 10px 0px 10px 40px;
    text-align: left;
}
.bottom ul {
	padding-left: 0px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom li {
    list-style-type: square;
}

</style>
</html>