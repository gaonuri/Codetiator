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
			location.href = "${pageContext.request.contextPath}/invest?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}&project_num=${projectVO.project_num}";
		});//investBtn1
		
		$("#investBtn2").click(function() {
			alert("로그인 하시기 바랍니다.");
			location.href = "${pageContext.request.contextPath}/login";
		});//investBtn2
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
				<div style="background-color: orange; width: 60px; text-align: center; color: white; font-size: 15px;">${projectVO.ach_state}</div>
				<div style="width: 200px; color: black; font-size: 25px;">${projectVO.project_name}</div>
					<!-- page start -->
					<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col">
						<div class="card" style="float: right; border: solid 1px black">
							<div class="card-body">
								<table>
									<tr>
										<td>${projectVO.current_price / projectVO.price * 100}%</td>
									</tr>
									<tr>
										<td>${projectVO.current_price}</td>
										<td>${projectVO.price}</td>
									</tr>
									<tr>
										<td>상환방식</td>
										<td>${projectVO.repay_method}</td>
									</tr>
									<tr>
										<th>금리</th>
										<td>${projectVO.rate}</td>
									</tr>
									<tr>
										<td>투자기간</td>
										<td>${projectVO.refund}</td>
									</tr>
									<tr>
										<td>투자한도</td>
										<td>500만원</td>
									</tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${memberVO != null && (memberVO.user_num != '' && memberVO.user_num != null) || (memberVO.busi_num != '' && memberVO.busi_num != null)}">
													<input type="button" id="investBtn1" value="투자신청"/>
												</c:when>
												<c:otherwise>
													<input type="button" id="investBtn2" value="투자신청"/>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- 상품요약 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								상품요약
								<h1>${investVO.price}</h1>
							</div>
							<div class="card-body">
								<table>
									<tr>
										<th>기본정보</th>
									</tr>
									<tr>
										<td>담보유형</td>
										<td>만기</td>
										<td>대출금액</td>
										<td>대출잔액</td>
									</tr>
									<tr>
										<td>${guaranteeVO.guarantee_type}</td>
										<td>${projectVO.refund}</td>
										<td>${projectVO.price}</td>
										<td>${projectVO.guarantee_price}</td>
									</tr>
								</table>
								<table style="float:left;">
									<tr>
										<th>담보물건 정보</th>
									</tr>							
									<tr>
										<td>유형</td>
										<td>${guaranteeVO.guarantee_type}</td>
									</tr>
									<tr>
										<td>공급/전용</td>
										<td>${guaranteeVO.supply_area} / ${guaranteeVO.exclusive_area}</td>
									</tr>
									<tr>
										<td>LTV</td>
										<td>${projectVO.price / guaranteeVO.connoisseur * 100}%</td>
									</tr>
									<tr>
										<td>담보권</td>
										<td>근저당부질권</td>
									</tr>
								</table>
								<table style="float:right;">
									<tr>
										<th>차주 정보</th>
									</tr>							
									<tr>
										<td>유형</td>
										<td>${guaranteeVO.debtor_type}</td>
									</tr>
									<tr>
										<td>업종</td>
										<td>${guaranteeVO.business_type}</td>
									</tr>
									<tr>
										<td>대출목적</td>
										<td>사업운영자금</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 상품요약 end -->
						
						<!-- 담보상세 start -->
						<div class="card" style="width:800px; height: 1000px;">
							<div class="card-header">
								담보상세
							</div>
							<div class="card-body">
								<table border="1">
									<tr>
										<td>물건유형</td>
										<td>면적</td>
										<td>외부 감정가</td>
									</tr>
									<tr>
										<td>${guaranteeVO.object_type}</td>
										<td>${guaranteeVO.area}</td>
										<td>${guaranteeVO.connoisseur}</td>
									</tr>
									<tr>
										<td>선순위 금액</td>
										<td>LTV</td>
										<td>담보 설정비율</td>
									</tr>
									<tr>
										<td>모른다</td>
										<td>${projectVO.price / guaranteeVO.connoisseur * 100}%</td>
										<td>150%</td>
									</tr>
								</table>
								<div style="border: solid 1px black; width:800px; height:400px;">
									${guaranteeVO.guarantee_img}
								</div>
								<div id="map" style="width:800px;height:300px;"></div>
								<div style="">소재지 : ${guaranteeVO.location}</div>
							</div>
						</div>
						<!-- 담보상세 end -->
						
						<!-- 상환계획 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								상환계획
							</div>
							<div class="card-body">
								<table>
									<tr>
										<td>자체상환 - 고정적 수익을 바탕으로 자체상환 계획</td>
									</tr>
									<tr>
										<td>NPL매각 - 매입전문 업체에 매각진행</td>
									</tr>
									<tr>
										<td>경매회수 - 경매진행 후 회수</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 상환계획 end -->
						
						<!-- 투자자보호 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								투자자보호
							</div>
							<div class="card-body">
								<table>
									<tr>
										<td>담보권</td>
										<td>인출조건</td>
										<td>기타보강</td>
									</tr>
									<tr>
										<td>후순위 근저당부 질권</td>
										<td>대출약정서<br>근저당설정계약서</td>
										<td>임대차확인서<br>질권설정 승낙서</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 투자자보호 end -->
						
						<!-- 참고파일 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								참고파일
							</div>
							<div class="card-body">
								<button id="refFile1">첨부파일1</button>
								<button id="refFile2">첨부파일2</button>
								<button id="refFile3">첨부파일3</button>
							</div>
						</div>
						<!-- 참고파일 end -->
						
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
																투자 시 발생된 이자수익은 과세대상입니다. 현행 세법에 따라 비영업대금에 대한 이익은 이자소득으로 간주되어 25%의 세율이 적용됩니다. (소득세법 제16조 제1항 제11) 여기에 주민세가 2.5% 추가되어 총 27.5%를 세금으로 원천징수 하고있습니다. 미드레이트에서는 회원님의 이자 수익에대해서 납세금을 납부하며, 세후의 순수익에 대하여 회원님의 예치금 계좌로 입금해 드립니다.
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
																* 이메일 주소: contact@midrate.co.kr<br>
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
																투자 회원님의 이자소득에 대한 세금은 미드레이트에서 원천징수합니다. 따라서 별도로 소득 신고를 하실 필요가 없습니다.
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="investFaqHeading7">
															<h4 class="panel-title" id="FAQhead">
																<a data-toggle="collapse" data-parent="#investFaqAccordion" href="#investFaqCollapse7" aria-expanded="false" aria-controls="investFaqCollapse7" class="collapsed">
																	Q7. 미드레이트에 투자하면 원금이 보장되나요?
																</a>
															</h4>
														</div>
														<div id="investFaqCollapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="investFaqHeading7" aria-expanded="false">
															<div id="FAQbody" class="panel-body">
																미드레이트의 투자상품은 원금이 보장되지 않습니다. 미드레이트와 같은 P2P대출 플랫폼에서의 투자는 현행 법률상 '유사수신행위의 규제에 관한 법률'에 의해 원금과 수익을 보장할 수 없으며, '원금 보장이 안됨'을 명시하지 않는 것은 법률 위반입니다.
																미드레이트는 이에 대해 충분한 사전 고지 의무를 다하고자 합니다.
																투자고객님은 이를 인지하시고 신중한 결정 부탁드립니다. 다만, 미드레이트는 자체신용평가시스템을 통해 대출고객의 신용도를 세밀하고 정밀하게 평가하여 리스크를 낮추고 있습니다.
																투자고객님께서는 반드시 분산투자를 통해 부도에 대한 위험을 낮추실 수 있습니다. 분산투자가 어렵게 느껴지는 투자회원님을 위해 미드레이트에서는 자동 투자 시스템을 마련하였습니다.
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
																㈜미드레이트대부가 채권추심을 합니다. ㈜미드레이트대부는 채권자로서 채권추심을 대행하여 투자고객의 자산 보호에 최선을 다하며, 전화, 문자메시지, 방문 등 적법한 절차에 따른 추심 과정을 진행하게 됩니다. 
																2개월 동안은 ㈜미드레이트대부에서 자체추심을 진행하며, 2개월 이상 연체될 경우 채권추심업체에 의뢰하여 추심업무를 이행하게 됩니다. 
																차입자의 연체일수가 장기화되어 6개월 이상 연체된다면 부실채권을 매각하며, 투자금의 일부를 회수합니다. 
																미회수분에 대해서는 대손처리되어 원금 손실이 있을 수 있습니다. 참고로, P2P금융업체는 원금이 보장되지 않음을 명시해야 하며, 
																이를 고객에게 적극적으로 알려야 할 의무가 있습니다. 이를 지키지 않는 것은 유사수신행위의 규제에 관한 법률 위반입니다. 
																다만, 미드레이트는 단일 채권에 대한 투자금액 상한선을 정하는 등 분산투자를 권유해드리고 있으며, 분산투자가 이루어졌을 때 대손율은 약 1% 내외로 예상하고 있습니다.
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
						
						<!-- 투자시 위험 안내 start -->
						<div class="card" style="width:800px;">
							<div class="card-header">
								투자시 위험안내
							</div>
							<div class="card-body">
								<div>
									CREATOR는 원금과 수익률을 보장하지 않으며 투자 손실의 가능성이 있습니다. 
									엄격한 차입자 신용 평가와 금리 산정으로 평균 수익률 연 8%를 목표로 합니다.
								</div>
							</div>
						</div>
						<!-- 투자시 위험 안내 end -->
						
					</div>
					<!-- page end -->
					
				</div>
			</section>
			<!-- /wrapper -->
	    </section>
	    <!-- /MAIN CONTENT -->
	    <!--main content end-->
		
		<input type="hidden" id="user_num" value="${userVO.user_num}" />
		
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

	<!-- 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=634dddac053ddf6be0b6aa5a165b2da8"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	<!-- 지도 api -->
	
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