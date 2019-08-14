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
		var current_price = parseInt($("#current_price").val() * 10000);	// 투자 받은 금액
		var invest_price = parseInt($("#invest_price").val());				// 투자 한 금액
		var deposit = parseInt($("#inputDeposit771").val());				// 예치금
		var invest 	= parseInt($("#inputAmt771").val());					// 투자 할 금액
		var intrst 	= invest * $("#rate").val() * 0.01;						// 이자
		var limit	= parseInt($("#invest_limit").val());					// 최대 투자 가능 금액
		var tax 	= parseInt(intrst * 0.275);								// 세금
		var benefit = invest + intrst - tax;								// 이익
		var confirmYN = false;
		var check = $("input:checkbox[id=agreeCheckbox]:checked").is(":checked");

// 		$("#inputDeposit771").val(addComma(deposit));
		
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
			deposit = parseInt($("#inputDeposit771").val());
			limit = parseInt($("#invest_limit").val());
			if(deposit > limit) {
				$("#inputAmt771").val($("#invest_limit").val());
			} else {
				$("#inputAmt771").val($("#inputDeposit771").val());
			}
			calculating();
		});//amtPlusAll_771
		
		$("#amtReset_771").click(function() {
			$("#inputAmt771").val("0");
			calculating();
		});//amtReset_771
		
		$("#inputAmt771").keyup(function(event) {
			//alert(event.keyCode);
			$("#inputAmt771").val(
				$("#inputAmt771").val().replace(/[^0-9\.]/g,'')
			);//한글 입력 방지
		});//pass.keydown
		
		$("#inputAmt771").keyup(function() {
			invest = parseInt($("#inputAmt771").val());
			//alert("invest : " + invest); alert("limit : " + limit);
			if(invest > limit) {
				alert("동일 차입자에게 투자한도 이상의 투자를 할 수 없습니다.");
				$("#inputAmt771").val($("#invest_limit").val());
			}
			calculating();
		});
		
		$("#inputAmt771").blur(function() {
			var str = $("#inputAmt771").val();
			//alert(str.substr(str.length-4, 4)); 숫자 뒤 4자리가 0000인지 확인
			if("0000" != str.substr(str.length-4, 4)) {
				alert("만원 단위로 입력하시기 바랍니다.");
				$("#inputAmt771").val("0");
				calculating();
			}//if
		});//blur
	
		$("#invest_offer_u").click(function() {
			if(parseInt($("#inputAmt771").val()) == 0) {
				alert("투자금을 입력하세요."); return;
			} else {
				$("#deposit").val(deposit - invest);
				$("#invest_price").val(invest / 10000);
				$("#current_price").val((current_price + invest) / 10000);
				$("#project_num").val(${proVO.project_num});
	// 			alert("deposit : " + parseInt(deposit - invest));
	// 			alert("invest_price : " + $("#invest_price").val());
	// 			alert("current_price : " + $("#current_price").val());
				alert("project_num : " + $("#project_num").val());
				
				//alert($("input:checkbox[id=agreeCheckbox]:checked").is(":checked"));
				check = $("input:checkbox[id=agreeCheckbox]:checked").is(":checked");
				
				if(check == true) {
					var confirmYN = false;
					confirmYN = confirm("정말 투자하시겠습니까?");
					if(confirmYN == true) {
						$.post("${pageContext.request.contextPath}/deposit_update",
								{
									user_num:$("#user_num").val(),
									deposit:$("#deposit").val(),
									project_num:$("#project_num").val(),
									invest_price:$("#invest_price").val(),
									current_price:$("#current_price").val()
								},
								function(data, status) {
									alert(data); alert(status);
									if(status == "success") {
										if(data == -1) {
											alert("오류");
										}else if(data > 0) {
											location.href="${pageContext.request.contextPath}/my_invest_list?user_num=${memVO.user_num}";
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
					} else {
						return;
					}
				} else {
					alert("약관에 동의해주시기 바랍니다.");
				}//if
			}//if
		});//invest_offer_u

		
		$("#invest_offer_b").click(function() {
			$("#deposit").val(deposit - invest);
			$("#invest_price").val(invest / 10000);
			$("#current_price").val((current_price + invest) / 10000);
			$("#project_num").val(${proVO.project_num});
// 			alert("deposit : " + parseInt(deposit - invest));
// 			alert("invest_price : " + $("#invest_price").val());
// 			alert("current_price : " + $("#current_price").val());
			alert("project_num : " + $("#project_num").val());
			
			check = $("input:checkbox[id=agreeCheckbox]:checked").is(":checked");
			
			if(check == true) {
				var confirmYN = false;
				confirmYN = confirm("정말 투자하시겠습니까?");
				if(confirmYN == true) {
					$.post("${pageContext.request.contextPath}/deposit_update",
							{
								busi_num:$("#busi_num").val(),
								deposit:$("#deposit").val(),
								project_num:$("#project_num").val(),
								invest_price:$("#invest_price").val(),
								current_price:$("#current_price").val()
							},
							function(data, status) {
								alert(data); alert(status);
								if(status == "success") {
									if(data == -1) {
										alert("오류");
									}else if(data > 0) {
										location.href="${pageContext.request.contextPath}/my_invest_list?busi_num=${memVO.busi_num}";
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
				} else {
					return;
				}
			} else {
				alert("약관에 동의해주시기 바랍니다.");
			}//if
		});//invest_offer_b

		
		function addDeposit(add) {
			if(deposit > 0) {
				temp = parseInt($("#inputAmt771").val());
				temp += add;
				//deposit = parseInt($("#inputDeposit771").val());
				//alert(temp);alert(deposit);
				if(temp > limit) {
					alert("동일 차입자에게 투자한도 이상의 투자를 할 수 없습니다.");
				} else if(temp > deposit) {
					confirmYN = confirm("투자 가능 예치금이 부족합니다. 예치금 관리 페이지로 이동하시겠습니까?");
					if(confirmYN == true) {
						location.href = "${pageContext.request.contextPath}/my_depo_mgn";
					} else {
						return;
					}//if
				} else {
					$("#inputAmt771").val(temp);
					calculating();
				}
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
			tax 	= parseInt(intrst * 0.275);
			benefit = invest + intrst - tax;

			$("#investAmtL").text(addComma(invest));
			$("#intrstAmtL").text(addComma(intrst));
			$("#taxAmtL").text(addComma(tax));
			$("#benefitAmtL").text(addComma(benefit));
		}//calculating
		
		function addComma(num) {
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			return num.toString().replace(regexp, ',');
		}//addComma
	});//ready
	</script>
<style>
#invest-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 239px;
}

.text-center {
    text-align: center;
}
html, body, div, ul, li, a, header, footer, section, article, nav, p, span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
header, section, footer, article, nav {
    display: block;
}
body {
    color: #797979;
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
}
body {
    color: #797979;
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
}
body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
html {
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}
html {
    color: -internal-root-color;
}
#invest-banner .section-body {
    color: #fff;
    position: relative;
    padding: 135px 20px 0px 20px;
}
#invest-banner .section-body .title {
    color: #fff;
    text-shadow: 1px 2px #222;
}
#invest-banner .title {
    color: #fff;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
</style>
</head>

<body>
<section id="invest-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<div class="title">투자신청서</div>
			</div>
		</div>
</section>
<!--header start-->
<section>
	<%@ include file="../header.jsp" %>
    <section id="invest-content">
		<div class="container">
			<!-- Container -->
			
			<div class="row">
					
				<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
					<!-- ExcelDownload JavaScript -->
					<script type="text/javascript" src="/js/excel/jquery.table2excel.js"></script>
						<div class="wrap">
							<div class="box left">
								<div class="row">
									<div class="col-md-12">
										<div class="wrap">
											<div class="box right">
												<div class="row">
													<div class="col-md-12 rightLine">
														<div class="title">
															<font class="font-purple">
																●
															</font> 투자한도 현황
														</div>
														<div class="row" id="investLmt">
															<div class="col-xs-12 col-sm-12 col-md-12 investLmt">
																<div class="wrap">
																	<div class="investLmtTitle">
																		<strong>동일차입자 한도</strong>
																	</div>
																	<hr>
																	<div class="investLmtContent display-none" id="brrwrOn" style="display: block;">
																		<strong><span id="brrwrLmtAmtSum">${500 - inVO.invest_price}</span>만원</strong> / <span id="brrwrLmtMaxAmt">500</span>만원
																	</div>
																	<div class="investLmtContent display-none" id="brrwrOff">
																		<strong>제한 없음</strong>
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
								<div class="row">
									<div class="col-md-12">
										<div class="wrap">
											<div class="box right">
												<div class="row">
													<div class="col-md-12 rightLine">
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
															<div class="row">
																<div class="col-sm-5 col-md-5">
																	<div class="row" id="popoverPlaceL">
																		<div class="col-xs-10 col-sm-10 col-md-10 col">
																			<div class="name" style="margin-left: 120px;">${proVO.project_name}</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="grade">
																		<span id="grade771" style="margin-left: 10px;">${proVO.grade}</span>
																	</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="rate">
																		<span id="rate771" style="margin-left: 10px;">${proVO.rate}</span><font size="1">%</font>
																	</div>
																</div>
																<div class="col-sm-1 col-md-1">
																	<div class="period">
																		<span id="period771">${proVO.refund}</span><font size="1">개월</font>
																	</div>
																</div>
																<div class="col-sm-2 col-md-2">
																	<div class="amt">
																		<span id="investOkAmt771" style="margin-left: 20px;">${proVO.price - proVO.current_price}</span><font size="1">만원</font>
																	</div>
																</div>
																<div class="col-sm-2 col-md-2">
																	<div class="amt">
																		<span name="lmtAmt" id="lmtAmt771" class="font-purple" style="margin-left: 20px;">${500 - inVO.invest_price}</span><font size="1">만원</font>
																	</div>
																</div>
															</div>
															
																<hr>
																<div class="row">
																	<div class="col-xs-6 col-sm-8 col-md-8 col-lg-3 col">
																		<div class="inputAmtTitle" style="font-size:17px; margin-left: 20px; margin-top: 5px;"><strong>투자금액</strong></div>
																	<hr>
																	</div>
																	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 col">
																		<div class="form-group has-feedback inputForm" id="inputAmtDiv">
																			<input type="text" class="form-control text-right" id="inputAmt771" name="inputAmt" aria-describedby="inputAmtStatus" value="0">
																			<span class="form-control-feedback" aria-hidden="true">원</span>
																			<span id="inputAmtStatus" class="sr-only">(success)</span>
																		</div>
																	</div>
																		<div class="row">
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlus100" id="amtPlus100_771" border="1">+100만</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlus50" id="amtPlus50_771" border="1">+50만</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlus10" id="amtPlus10_771" border="1">+10만</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlus5" id="amtPlus5_771" border="1">+5만</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlus1" id="amtPlus1_771" border="1">+1만</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtPlusAll" id="amtPlusAll_771" border="1">전액</span></button>
																			</div>
																			<div class="col-sm-1 col-md-1">
																				<button style="width: 70px; margin-left: 315px;"><span name="amtReset" id="amtReset_771" class="gray" border="1">정정</span></button>
																			</div>
																		</div>
																		<hr>
																		<div style="font-size:13px; margin-left: 20px; margin-top: -15px;">
																			<br><span>금액을 1만원이상, 만원단위로 입력해주시기 바랍니다.</span><br>
																		</div>
																</div>
																<hr>
																<div class="row" id="depositDiv">
																	<div class="col-xs-6 col-sm-8 col-md-8 col-lg-3 col">
																		<div class="inputDepositTitle" style="font-size:17px; margin-left: 20px; margin-top: 5px;" ><strong>투자 가능 예치금</strong></div>
																	</div>
																	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 col">
																		<div class="form-group has-feedback inputForm" id="inputDepositDiv">
																			<input type="text" class="form-control text-right" id="inputDeposit771" name="inputDeposit" aria-describedby="inputDepositStatus" value="${accVO.deposit}" readonly="readonly">
																			<span class="form-control-feedback" aria-hidden="true">원</span>
																			<span id="inputDepositStatus" class="sr-only">(success)</span>
																		</div>
																	</div>
																	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 col">
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
														<div class="col-sm-12 col-md-12">
															<div class="title">
																<font class="font-purple">
																	●
																</font> 투자 요약
															</div>
															<table class="table" id="summaryTableL">
																<thead>
																	<tr>
																		<th scope="col">예치금 투자액</th>
																		<th scope="col">이자(+)</th>
																		<th scope="col">
																			세금(-) <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="실제 회차별 상환 이자에 따른 세금은 원 단위로 절삭되기 때문에 표기된 값보다 적을 수 있습니다." data-original-title="" title="">
																			</span>
																		</th>
																		<th scope="col">입금액(+)</th>
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
																	<li>차입자가 대출을 취소할 경우, 투자금은 '기본 예치금' 으로 회수됩니다.</li>
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
													<c:choose>
														<c:when test="${memVO.user_num != null}">
															<button id="invest_offer_u">투자 신청u</button>
														</c:when>
														<c:when test="${memVO.busi_num != null}">
															<button id="invest_offer_b">투자 신청b</button>
														</c:when>
													</c:choose>													
													</div>
													<div class="bottomLine">
														<p>투자 신청시 <a href="${pageContext.request.contextPath}/privacy_policy" target="_blank">개인정보 처리방침</a> 및 
														<a href="${pageContext.request.contextPath}/investor_terms_service" target="_blank">투자자 이용약관</a>에 동의하게 됩니다.</p>
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
			</section>
    
		<!-- hidden value -->
		<input type="hidden" id="reqAmt771" name="reqAmt" value="0">
		<input type="hidden" name="repayAmt" id="repayAmt771" value="164625000">
		<input type="hidden" name="loanAmt" id="loanAmt771" value="150000000">
		<input type="hidden" name="umbrellarRate" id="umbrellarRate771" value="0.0">
		<input type="hidden" name="umbrellarAplyYn" id="umbrellarAplyYn771" value="N">
		<input type="hidden" name="brrwrAmt" id="brrwrAmt771" value="5000000">
		<input type="hidden" id="deposit" value="" />											<!-- 예치금 -->
		<input type="hidden" id="rate" value="${proVO.rate}" />									<!-- 금리 -->
		<input type="hidden" id="user_num" value="${memVO.user_num}" />							<!-- 유저번호 -->
		<input type="hidden" id="busi_num" value="${memVO.busi_num}" />							<!-- 법인유저번호 -->
		<input type="hidden" id="project_num" value="${proVO.project_num}">						<!-- 프로젝트번호 -->
		<input type="hidden" id="current_price" value="${proVO.current_price}" />				<!-- 현재모금액 -->
		<input type="hidden" id="invest_price" value="${inVO.invest_price}">					<!-- 투자금액 -->
		<input type="hidden" id="invest_limit" value="${(500 - inVO.invest_price) * 10000}" />	<!-- 투자한도 -->
		<!-- hidden value -->


		<!--footer start-->
		<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
	<!-- js placed at the end of the document so the pages load faster -->
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
<style>
#invest-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 239px;
}
#invest-banner .section-body {
    color: #fff;
    position: relative;
    padding: 135px 20px 0px 20px;
}
#invest-banner .section-body .title {
    color: #fff;
    text-shadow: 1px 2px #222;
}
#invest-banner .title {
    color: #fff;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
#invest-content {
    padding: 41px 0 96px 0;
    margin-left: 310px;
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
#invest-content .wrap#smallMenu {
    display: none;
}
#invest-content .wrap {
    padding: 4px;
}
#invest-content .wrap .box.quick {
    padding: 10px 12px 10px 12px;
}
#invest-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
#invest-content .smallMenuTap {
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
#invest-content .smallMenuTap li {
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
#invest-content .smallMenuTap li.active a {
    background-color: #712594;
}
#invest-content .smallMenuTap a {
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
#invest-content .smallMenuTap li.active a .smallMenuItem {
    border-bottom: none;
}
.nav-pills > li + li {
    margin-left: 2px;
}
#invest-content .smallMenuTap a .smallMenuItem {
    border-bottom: #712594 1px solid;
}
#invest-content .wrap .box.left {
    padding: 15px;
}
.col-md-12 {
    width: 100%;
}
#invest-content .wrap .box.left .cusNm {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#invest-content .wrap .box.left .invstrTypeNm {
    font-size: 14px;
    font-weight: bold;
    color: #00A0DC;
}
#invest-content .wrap .box.left .email {
    font-size: 14px;
    color: #858585;
}
#invest-content .wrap .box .deposit-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 10px 20px;
    margin-top: 20px;
}
#invest-content .wrap .box .deposit-box .myDeposit {
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
#invest-content .wrap .box .deposit-box .tranList {
    font-size: 12px;
}
#invest-content .wrap .box .deposit-box .amt {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#invest-content .wrap .box.left .account-box {
    padding: 20px 10px 30px 10px;
    /* display: none; */
}
#invest-content .wrap .box.left .account-box .account {
    font-size: 14px;
}
.font-red {
    color: #e08484 !important;
}
#invest-content button.btn {
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
#invest-content .wrap#largeMenu {
    display: block;
}
#invest-content .wrap {
    padding: 4px;
}
#invest-content .wrap .menu {
    font-size: 15px;
    font-weight: bold;
    color: #3d3d3d;
    padding: 0px 0px;
}
#invest-content .wrap#largeMenu .menu .item.active {
    background-color: #ecdeec;
    border-radius: 4px;
}
#invest-content .wrap .menu .item {
    transition: all 0.8s, color 0.3s 0.3s;
}
#invest-content .wrap .menu img {
    padding: 12px 22px 12px 12px;
    width: 55px;
    height: 45px;
}
#invest-content .wrap#largeMenu .menu .item span {
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
#invest-content #mypage-main .wrap .box.right {
    padding: 30px;
}
#invest-content .wrap .box {
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
#invest-content #mypage-main .wrap .box.right .title {
    font-size: 18px;
    font-weight: bold;
    color: #3d3d3d;
}
#invest-content #mypage-main .wrap .box.right button.btn-gradiation {
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
#invest-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label {
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
#invest-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
}
#invest-content #mypage-main .wrap .box.right .investDetail .btn-group.cate {
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
#invest-content #mypage-main .wrap .box.right .investDetail .investList {
    padding: 0 15px;
    margin-top: 10px;
}
#invest-content #mypage-main .wrap .box.right table {
    margin: auto;
    font-size: 12px;
}
#invest-content #mypage-main .wrap .box.right .investDetail table.investTable1 tr {
    height: 30px;
}
#invest-content #mypage-main .wrap .box.right .investDetail table.investTable1 th {
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
#invest-content #mypage-main .wrap .box.right .subTitle {
    font-size: 15px;
    color: #3d3d3d;
}
#invest-content #mypage-main .wrap .box.right .loanReqGuide {
    text-align: center;
    padding: 10px;
}
#invest-content #mypage-main .wrap .box.right .loanReqGuide .box {
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
#invest-content #mypage-main .wrap .box.right .loanReqGuide .top {
    font-size: 22px;
    border-bottom-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    padding: 20px 10px;
    font-weight: bold;
}
#invest-content #mypage-main .wrap .box.right .loanReqGuide .middle {
    font-size: 16px;
    padding: 15px 45px 5px 45px;
    color: #712594;
    text-align: left;
    font-family: 'Noto Sans KR', sans-serif;
}
#invest-content #mypage-main .wrap .box.right .loanReqGuide .bottom {
    font-size: 14px;
    padding: 10px 0px 10px 40px;
    text-align: left;
}
.bottom ul {
	padding-left: 0px;
}
#invest-content #mypage-main .wrap .box.right .loanReqGuide .bottom li {
    list-style-type: square;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
#invest-content .wrap .box .withdrawGuide {
    font-size: 14px;
    padding: 20px;
}
#invest-content .wrap .box .withdrawGuide li {
    list-style-type: square;
}
#invest-content .wrap .box .withdraw-wrap {
    font-size: 16px;
}
#invest-content .wrap .box .withdraw-wrap .withdraw-title {
    font-weight: bold;
    color: #858585;
}
#invest-content .wrap .box .withdraw-wrap .withdraw-content {
    font-weight: bold;
}
.withdrawGuide ul {
    padding-left: 0px;
    font-family: 'Noto Sans KR', sans-serif;
    color: #5a5a5a;
    letter-spacing: -0.4px;
}
#invest-content .wrap .box .withdraw-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 15px 30px;
    font-size: 16px;
}
#invest-content .wrap .box .withdraw-box #withdrawAmt {
    text-align: right;
}
span.multiselect-native-select {
    position: relative;
}
span.multiselect-native-select select {
    border: 0!important;
    clip: rect(0 0 0 0)!important;
    height: 1px!important;
    margin: -1px -1px -1px -3px!important;
    overflow: hidden!important;
    padding: 0!important;
    position: absolute!important;
    width: 1px!important;
    left: 50%;
    top: 30px;
}
optgroup {
    font-weight: bold;
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
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#invest-content .goodlist-title {
    padding: 20px 0px;
    border-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    border-radius: 4px;
    background-color: #fff;
    margin-bottom: 8px;
    font-size: 15px;
    color: #858585;
    text-align: center;
}
#invest-content .goodlist-title .row {
    margin-left: 0px;
    margin-right: 0px;
}

</style>
</html>