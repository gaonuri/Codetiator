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
	/////////////////////////////////////////////////////////////////////////////////////////////금액 버튼 시작
	$(document).ready(function() {
		$("#depobu").click(function() {
			location.href = "${pageContext.request.contextPath}/my_depo_mgn";
		});//click
	});//ready
	
	$(document).ready(function() {
		var temp = 0;
		var add  = 0; 
		var deposit = parseInt($("#inputDeposit").val());			// 예치금
		var request	= parseInt($("#withdrawAmt").val());			// 출금액
		var limit	= parseInt($("#request_limit").val());			// 출금 제한 금액
		var input	= parseInt($("#in_history").val());				// 입금 총액
		var output	= parseInt($("#out_history").val());			// 출금 총액
		var confirmYN = false;
		var check = $("input:checkbox[id=agreeCheckbox]:checked").is(":checked");
		var count = 0; 
		
		$("#deposit").text(addComma(deposit));						// 예치금
		$("#out_able").text(addComma(deposit));						// 출금 가능액
		$("#DEPOSIT_AMT_SUM").text(addComma(input));				// 입금 총액
		$("#WTHDRW_AMT_SUM").text(addComma(output));				// 출금 총액
		
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
				alert("보유한 예치금을 초과하였습니다.");
				$("#withdrawAmt").val($("#request_limit").val());
			}
			calculating();
		});//keyup
		
		$("#withdrawAmt").blur(function() {
			var str = $("#withdrawAmt").val();
			//alert(str.substr(str.length-4, 4)); 숫자 뒤 4자리가 0000인지 확인
			if("00000" != str.substr(str.length-4, 4)) {
				alert("십만원 단위로 입력하시기 바랍니다.");
				$("#withdrawAmt").val("0");
				calculating();
			}//if
		});//blur

		function addComma(num) {
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			return num.toString().replace(regexp, ',');
		}//금액에 컴마 붙이기
		
		$("#withdrawReqBtn").click(function() {
			request = parseInt($("#withdrawAmt").val());
// 			alert("request : " + request);
			if(parseInt($("#withdrawAmt").val()) == 0) {
				alert("금액을 입력하세요");
				return;
			} else {
				$("#deposit").val(deposit - request);
				$("#output").val(output + request);
				var confirmYN = false;
				confirmYN = confirm("출금 요청하시겠습니까?");
				if(confirmYN == true) {
// 					alert($("#user_num").val());alert($("#busi_num").val());
					$.post("${pageContext.request.contextPath}/depo_update",
							{
								user_num:$("#user_num").val(),
								busi_num:$("#busi_num").val(),
								deposit:$("#deposit").val()
							},
							function(data, status) {
// 								alert(data); alert(status);
								if(status == "success") {
									if(data == -1) {
										alert("오류입니다. 관리자 : 02-5555-7777");
									} else if(data > 0) {
										alert("출금 요청이 완료되었습니다");
										location.href="${pageContext.request.contextPath}/my_depo_mgn";
									} else if (status == "error") {
										alert("잠시후 다시 시도해 주세요.");
									} else {
										alert("관리자 : 02-5555-7777");
											}//else
										}//if
									}//function
								);//post
							}//if
						}//else
					});//click
				});//ready
////////////////////////////////////////////////////////////////////////////////////////////////금액 버튼 끝

////////////////////////////////////////////////////////////////////////////////////////////////은행별 계좌 유형 시작
	$(document).ready(function(){
		$(".onlysan").change(function(){
		//alert($(this).val());
		var passStd = /^[0-9]{12,16}$/;
		if($(this).val().match(passStd)){
			//alert("ok");
		} else {
			alert("12~16자의 계좌번호 숫자만 입력해주시기 바랍니다.");
			$(this).val("");
			//$(this).focus();
			return;
			}
		});//onlyPass
	});//ready
	
	$(document).ready(function() {
// 		$("#cusBankCdSelect").click(function(){
// 		if($("#cusBankCdSelect").val() == ""){
// 			alert("은행을 선택해 주세요.");
// 			return;
// 		}
// 	});//click
		$("#cusAccount").blur(function() {
			$.post(
					"${pageContext.request.contextPath}/bankNumChk",
					{
						bank_num:$("#cusAccount").val()
					},
					function(data,status){
						if(data == 0){
							alert("사용 가능한 계좌 입니다.");
							chkemail = $("#cusAccount").val();
							return;
						}else{
							alert("이미 등록된 계좌 입니다.");
							return;
						}//else
					}//function
				);//post
		});//click
	});//ready

////////////////////////////////////////////////////////////////////////////////////////////////은행별 계좌 유형 끝

////////////////////////////////////////////////////////////////////////////////////////////////예치금 계좌 발급받기 시작
		$(document).ready(function(){
			$("#receaccn").click(function(){
				if($("#cusAccount").val() == ""){
					alert("계좌번호를 입력해 주세요.");
					return;
				}
				$.post (
						"${pageContext.request.contextPath}/account_insert",
						{
							user_num:$("#user_num").val(),
							busi_num:$("#busi_num").val(),
							account_name:$("#cusNm").val(),
							bank_name:$("#cusBankCdSelect").val(),
							bank_num:$("#cusAccount").val()
						},
						function(data, status) {
						if(status == "success") {
							if (data > 0) {
								alert("계좌 등록에 성공하였습니다 즐거운 투자 Creator펀딩!");
								$("#btn_cert2").modal("hide");
							} else {
								alert("다시 등록해주시기 바랍니다.");
							}
						}
					}
				);//post
			});//blur
		})//ready
// 		$(document).ready(function(){
// 			$("#receaccn").click(function(){
// 				if($("#cusAccount").val() == ""){
// 					alert("계좌번호를 입력해 주세요.");
// 					return;
// 				}
// 				$.post (
// 						"${pageContext.request.contextPath}/busiaccount_insert",
// 						{
// 							busi_num:$("#busi_num").val(),
// 							account_name:$("#account_name").val(),
// 							bank_name:$("#cusBankCdSelect").val(),
// 							bank_num:$("#cusAccount").val()
// 						},
// 						function(data, status) {
// 						if(status == "success") {
// 							if(data = -1){
// 								alert("다시 등록해주시기 바랍니다.");
// 							} else if (data > 0) {
// 								alert("계좌 등록에 성공하였습니다 즐거운 투자 Creator펀딩!");
// 							}
// 						}
// 					}
// 				);//post
// 			});//blur
// 		})//ready
/////////////////////////////////////////////////////////////////////////////////////////////예치금 계좌 발급받기 끝
/////////////////////////////////////////////////////////////////////////////////////////////모달 시작
		function tempFunction() {
			$("#btn_cert2");
			document.frmLoan.submit();
		}tempFunction
		
		var id;
		var min = 29;
		var sec = 59;
		var minZero = "";
		var secZero = "";
		function setClock() {
			id = setInterval(worker,1000);
		}
		function worker() {
			if(min < 10){minZero = "0";}else{minZero = "";}
			if(sec < 10){secZero = "0";}else{secZero = "";}
			var now = minZero + min + " : " + secZero + sec;
			clock.innerHTML = "<h6>"+now+"</h6>";
			sec = parseInt(sec) - 1;
			if(sec == -1) {
				sec = 59;
				min = parseInt(min) - 1;
				if(min == -1){
					clearInterval(id);
					alert("인증시간이 만료 되었습니다.");
					location.reload();
					//$("#btn_cert1").modal("hide");
				}
			}
		}
		$(document).ready(function(){
			$("#numre").click(function(){
				
// 				if($.trim($("#cusEmail").val()) == ""){
// 					alert("등록된 이메일이 없습니다.");
//		 			$("#cusEmail").focus();
// 					return;
// 				}
				$.post(
						"${pageContext.request.contextPath}/CertEmail"
						,{
							user_email:$("#cusEmail").val(),
							manager_email:$("#cusEmail").val(),
							email:$("#cusEmail").val()
						}
						,function(data,status){
							if(status == "success"){
								if(data > 0){
									alert("해당 이메일로 인증번호를 발송했습니다.");
									$("#cer_number").css("display","block");
									setClock();
								} else if(data == 0){
									alert("존재하지 않는 이메일 입니다.");
								} else {
									alert("잠시 후, 다시 시도해 주세요.");
								}
							} else {
								alert("시스템 관리자에게 문의 바랍니다.");
							}
						}
				);//post
			});//click
		});//ready
		$(document).ready(function() {
			$("#btn_certi_complete").click(function() {
				alert("btn_certi_complete");
				alert($("#cer_number").val());
				$.post(
						"${pageContext.request.contextPath}/DepocerNumber",
						{
							cer_number:$("#cer_number").val()
						}
						,function(data,status){
							if(status == "success"){
								if(data > 0){
									$("#btn_cert1").modal("hide");
									$("#btn_cert2").modal("show");
									alert("인증이 완료 되었습니다.");
								} else if(data == 0){
									alert("인증번호가 다릅니다.");
								} else {
									alert("잠시 후, 다시 시도해 주세요.");
								}
							} else {
								alert("시스템 관리자에게 문의 바랍니다.");
							}
						}
				);//post
			});
		});//ready
/////////////////////////////////////////////////////////////////////////////////////////////모달 끝
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
					<div class="wrap" id="smallMenu">
						<div class="wrap">
							<div class="box quick">
								<div role="tabpanel" class="smallMenuTap">
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist">
										<li id="smallMenuLi2">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">투자 내역</span>
											</a>
										</li>
										<li id="smallMenuLi4">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">대출 내역</span>
											</a>
										</li>
										<li id="smallMenuLi5">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">예치금 관리</span>
											</a>
										</li>
										<li id="smallMenuLi8">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">기본 정보 수정</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
					
					<div class="wrap">
						<div class="box left">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="cusNm">${acnt.account_name}</span>&nbsp;
									
										님
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">${user.email}${busi.manager_email}</span>
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
											<span class="amt">${acnt.deposit} <font size="2">원</font></span>
										</div>
									</div>
								</div>
								<br>
								<br>
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
							<div class="item" id="menu4"> <a href="/creator/my_loan_list">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span> </a>
							</div>
							<div class="item active" id="menu5">  <a href="/creator/my_depo_mgn">
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
		<div class="box left">
			<div class="row">
				<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-1 col-md-10">
					<div class="row" id="vtAcntYDiv">
						<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
							<c:choose>
								<c:when test="${acnt == null || acnt.account_name == null || acnt.account_name == ''}">
									<div class="row" id="vtAcntNDiv">
										<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
											<div style="padding:60px 0 10px 0; font-size: 18px; font-weight: bold;">
												투자 신청을 위해 예치금 계좌를 발급해 주세요.
											</div>
											<div style="padding:20px 0;">
												<button type="button" id="cert_start" class="btn btn-purple-transparent btn-block" data-toggle="modal" data-target="#btn_cert1" >
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
						</div>
					</div>
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
										자세한 내용은 <a href="/info/noticeDetail/10" target="_blank" style="color: #712594;"><strong>공지사항</strong></a>을 참고하시기 바랍니다.
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
														예치금
													</div>
													<div class="col-xs-6 col-sm-6 col-md-6 text-right" id="inputDeposit771" name="inputDeposit">
														<span id="deposit"></span> 원
														<input type="hidden" id="inputDeposit" value="${acnt.deposit}" />
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
														<span id="DEPOSIT_AMT_SUM" name="DEPOSIT_AMT_SUM"></span> 원
														<input type="hidden" id="in_history"  value="${Inout.input_history}">
													</div>
												</div>
												<div class="row" style="margin-top: 10px;">
													<div class="col-xs-6 col-sm-6 col-md-6">
														출금 총액
													</div>
													<div class="col-xs-6 col-sm-6 col-md-6 text-right">
														<span id="WTHDRW_AMT_SUM" name="WTHDRW_AMT_SUM"></span> 원
														<input type="hidden" id="out_history" value="${Inout.output_history}">
													</div>
												</div>
												<div class="row" style="margin-top: 10px;">
													<div class="col-xs-6 col-sm-6 col-md-6">
														출금 대기금액
													</div>
													<div class="col-xs-6 col-sm-6 col-md-6 text-right">
														<span id="WTHDRW_REQ_AMT_SUM" name="WTHDRW_REQ_AMT_SUM">0</span> 원
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
																				<li>
																					출금 요청 후 최대 1시간이내, 등록하신 계좌로 일괄 입금됩니다.(출금 요청 : 1일 2회)
																				</li>
																				<li>
																					출금은 본인 명의의 계좌만 가능합니다.
																				</li>
																				<li>
																					예치금 지연인출제도의 지연인출조건에 해당시 출금신청 후 72시간 이후 처리됩니다.
																					<br>
																					(자세한 내용은 공지사항 <a href="${pageContext.request.contextPath}/support_detail" target="_blank">"보이스피싱 피해 방지를 위한 [예치금 지연인출제도] 개발 및 시행 안내"</a>를 참고하시기 바랍니다.)
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
																		<font size="2"><span id="out_able"></span>원</font>
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
				
				<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
									<form name="form_chk" method="post">
										<input type="hidden" name="m" value="checkplusSerivce">	<!-- 필수 데이타로, 누락하시면 안됩니다. -->
										<input type="hidden" id="EncodeData" name="EncodeData" value=""><!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
									</form>

				<!-- Email 인증시작 -->
						<div class="modal fade" id="btn_cert1"  name="cert1" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<div class="modal-title" id="vtAcntModalLabel">
											<div style="">
												예치금 계좌 발급을 위한 인증을 진행하여 주십시오
											</div>
										</div>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<div class="modal-body-title">
													Email 인증
												</div>
											</div>
										</div>
										<div class="row">
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">이 름</label>
												<input class="form-control" id="cusName" type="text" value="${user.user_name}${busi.manager_name}" readonly="">
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label" >Email_주소</label>
												<input class="form-control" id="cusEmail" type="text" value="${user.email}${busi.manager_email}" readonly="">
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-4">
												<br style="line-height:24px";">
												<button type="button" class="btn btn-purple-transparent" id="numre" name="numre">인증번호 받기</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 인증번호를 받으실 수 있는 Email주소를 입력하시기 바랍니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 정상처리가 불가할 경우 1:1문의사항을 이용하시기 바랍니다.</span>
											</div>
										</div>
										<div id="pInfDiv" style="">
											<hr>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div class="modal-body-title">
														인증번호
													</div>
												</div>
											</div>
											<div class="row">
 
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="ssnNo" class="control-label">인증번호를 입력하세요.</label>
												</div>
											</div>		
											
											<div class="row">
												<div class="form-group col-md-4">
													<input class="form-control" id="cer_number" type="text" maxlength="13"  placeholder="" style="display:none;">
												</div>
												<div id="clock">
												</div>
											</div>		
											
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 정상처리가 불가할 경우 1:1문의사항을 이용하시기 바랍니다.</span>
											</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-light font-purple">&nbsp;● 주민등록번호 없이도 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 미성년자는 가상계좌 발급시 추가 인증이 필요합니다.</span>
													<span class="modal-body-light">&nbsp;<a href="${pageContext.request.contextPath}/support" target="_blank">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<input type="submit" class="btn btn-purple-transparent" id="btn_certi_complete" value="확 인" />
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- Email 인증 끝. -->
						
						<!-- 예치금 계좌 발급 Modal -->
						<div class="modal fade" id="btn_cert2" name="cert2" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
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
												<input class="form-control" id="cusNm" type="text" value="${user.user_name}${busi.manager_name}" readonly="">
											</div>
											<div class="form-group col-xs-7 col-sm-7 col-md-4">
												<label for="cusBankCdSelect" class="control-label">은행명</label>
												<select id="cusBankCdSelect" class="form-control" name="cusBankCd">
													<option id="san" value="신한은행">신한은행</option>
													<option id="ki" value="국민은행">국민은행</option>
													<option id="kb" value="우리은행">우리은행</option>
													<option id="su" value="하나은행">하나은행</option>
													<option id="chul" value="시티은행">시티은행</option>
													<option id="nh1" value="부산은행">부산은행</option>
													<option id="nh2" value="경남은행">경남은행</option>
													<option id="su3" value="광주은행">광주은행</option>
													<option id="woo" value="제주은행">제주은행</option>
													<option id="sc" value="산업은행">산업은행</option>
												</select>
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label">계좌번호</label>
												<input type="text" class="form-control onlysan" id="cusAccount" maxlength="14">
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
													<label for="mpNo" class="control-label">전화번호</label>
													<input class="form-control" id="mpNo" type="text" maxlength="11" value="${user.phone}${busi.pre_phone}" readonly="">
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
													<span class="modal-body-light">&nbsp;<a href="${pageContext.request.contextPath}/support" target="_blank">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-purple-transparent" id="receaccn"">예치금 계좌 발급받기</button>
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
		<input type="hidden" name="brrwrAmt" id="brrwrAmt771" value="5000000">
		<input type="hidden" id="user_num" value="${memVO.user_num}" />							<!-- 유저번호 -->
		<input type="hidden" id="busi_num" value="${memVO.busi_num}" />							<!-- 법인유저번호 -->
	    <input type="hidden" id="request_limit" value="${acnt.deposit}" />						<!-- 예치금한도 -->
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
#mypage-content .wrap .box .withdrawGuide {
    font-size: 14px;
    padding: 20px;
}
#mypage-content .wrap .box .withdrawGuide li {
    list-style-type: square;
}
#mypage-content .wrap .box .withdraw-wrap {
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-title {
    font-weight: bold;
    color: #858585;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-content {
    font-weight: bold;
}
.withdrawGuide ul {
    padding-left: 0px;
    font-family: 'Noto Sans KR', sans-serif;
    color: #5a5a5a;
    letter-spacing: -0.4px;
}
#mypage-content .wrap .box .withdraw-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 15px 30px;
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-box #withdrawAmt {
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
#mypage-content .goodlist-title {
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
#mypage-content .goodlist-title .row {
    margin-left: 0px;
    margin-right: 0px;
}

</style>
</html>