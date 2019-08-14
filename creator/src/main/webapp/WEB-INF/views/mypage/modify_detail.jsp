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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
		$("#unlockBtn").on("click", function() {
			$("#lockMode").css("display", "none");
			$("#unLockMode").css("display", "block");
		});
	});
	$(document).ready(function() {
		$("#depobu").click(function() {
			location.href = "${pageContext.request.contextPath}/my_modify";
		});//click
	});//ready
	
<<<<<<< HEAD
</script>  
=======
	$(document).ready(function() {
		$("#userDataUpdatee").change(function() {
			$("#btn_certt").modal(); 
			return;
		});
	});
	
</script>   

>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
<script type="text/javascript">
	$(document).ready(function(){
		$(".onlyPass").change(function(){
			//alert($(this).val());
			var passStd = /^[0-9a-zA-Z!@#$%^&*]{8,20}$/;
			if($(this).val().match(passStd)){
				//alert("ok");
			}else{
				alert("8~20자 영문,숫자,특수문자만 입력해 주세요.");
				$(this).val("");
				//$(this).focus();
				return;
			}
		});//onlyPass
	});//ready
	
	var id;
	var min = 29;
	var sec = 59;
	var minZero = "";
	var secZero = "";
	function setClock() {
		if(doubleSubmitCheck()) return;
		id = setInterval(worker,1000);
	} 
	function worker() {
		if(min < 10){minZero = "0";}else{minZero = "";}
		if(sec < 10){secZero = "0";}else{secZero = "";}
		var now = minZero + min + " : " + secZero + sec;
		clock.innerHTML = "<h4>"+now+"</h4>";
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
	
	var doubleSubmitFlag = false;
	function doubleSubmitCheck(){
	    if(doubleSubmitFlag){
	        return doubleSubmitFlag;
	    }else{
	        doubleSubmitFlag = true;
	        return false;
	    }
	}
	
	var doubleSubmitFlag1 = false;
	function doubleSubmitCheck1(){
	    if(doubleSubmitFlag1){
	        return doubleSubmitFlag1;
	    }else{
	        doubleSubmitFlag1 = true;
	        return false;
	    }
	}
	
	$(document).ready(function(){
		$("#inputcommit").click(function(){
			if(confirm("수정하시겠습니까?") == true) {
				$("#manager_name").attr("readonly",true);
				$("#manager_phone").attr("readonly",true);
				$("#manager_birth").attr("readonly",true);	
				alert("이메일 인증을 해주세요");
				$("#inputcommit").attr("disabled",true);	
				$("#btn_certi1").attr("disabled",false);
				$("#btn_certi").attr("disabled",false);
			} else {
				return false;
			}
		});//click
	});//ready
	
	/*
	$(document).ready(function(){
		$("#inputinsert").click(function(){
			if(confirm("다시 입력하시겠습니까?") == true) {
				$("#manager_name").attr("readonly",false);
				$("#manager_phone").attr("readonly",false);
				$("#manager_birth").attr("readonly",false);
	// 			$("#manager_name").css("readonly","readonly");
	// 			$("#manager_phone").css("disabled","disabled");
			} else {
				return false;
			}
		});//click
	});//ready
	*/
	
	$(document).ready(function(){
		var chkemail = '';
		$("#manager_email1").blur(function(){
			var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
			if($.trim($("#manager_email1").val()) != $(this).val().match(emailStd)){
				alert("올바르지 않은 이메일 입니다.");
				return;
			}
			$.post(
					"${pageContext.request.contextPath}/userfindchk",
					{
						email:$("#manager_email1").val()
					},
					function(data,status){
						if(data == 1){
	// 						alert("이메일이 확인 되었습니다. 인증번호 받기 버튼을 눌러주세요.");
							chkemail = $("#manager_email1").val();
						}else{
							alert("등록된 이메일이 없습니다.");
						}
					}//function
			);//post
		});//blur
	});//ready
	
	$(document).ready(function(){
		$("#btn_certi1").click(function(){
			if($.trim($("#manager_email1").val()) == ""){
				alert("등록된 이메일이 없습니다.");
	// 			$("#manager_email").focus();
				return;
			}
			$.post(
					"${pageContext.request.contextPath}/userceremail"
					,{
						email:$("#manager_email1").val()
					}
					,function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("해당 이메일로 인증번호를 발송했습니다.");
								$("#cer_number").css("display","block");
								$("#btn_certi_complete1").css("display","block");
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
		$("#btn_certi_complete1").click(function() {
			var numChk = $("#numChk").val();
			$.post(
					"${pageContext.request.contextPath}/usercheckcernumber",
					{
						user_num:$("#numChk").val(),
						user_name:$("#manager_name").val(),
						phone:$("#manager_phone").val(),
						jumin:$("#manager_birth").val(),
						cer_number:$("#cer_number").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("인증이 완료 되었습니다.");
								$("#cer_number").attr("readonly",true);	
								$("#btn_certi_complete1").attr("disabled",true);
	// 							$("#clock").css("display", "none");
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
	});
	
	$(document).ready(function() {
		$("#userDataUpdateFinal1").click(function() {
			var numChk = $("#numChk").val();
			$.post(
					"${pageContext.request.contextPath}/userdataupdatefinal1",
					{
						user_num:$("#numChk").val(),
						user_name:$("#manager_name").val(),
						phone:$("#manager_phone").val(),
						jumin:$("#manager_birth").val(),
						cer_number:$("#cer_number").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("변경되었습니다. 다시 로그인 해주시기 바랍니다");
								location.href="${pageContext.request.contextPath}/logout";
							} else if(data == 0){
								alert("이메일 인증 해주시기 바랍니다.");
							} else {
								alert("이메일 인증 해주시기 바랍니다!!!!");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
			);//post
		});
	});
	
	//////////////////////////////////////////////////////////////////////////////////// user
	
	$(document).ready(function(){
		var chkemail = '';
		
		$("#manager_email").blur(function(){
			var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
			
			if($.trim($("#manager_email").val()) != $(this).val().match(emailStd)){
				alert("올바르지 않은 이메일 입니다.");
				return;
			}
			$.post(
					"${pageContext.request.contextPath}/busifindChk",
					{
						manager_email:$("#manager_email").val()
					},
					function(data,status){
						if(data == 1){
	// 						alert("이메일이 확인 되었습니다. 인증번호 받기 버튼을 눌러주세요.");
							chkemail = $("#manager_email").val();
						}else{
							alert("등록된 이메일이 없습니다.");
						}
					}//function
			);//post
		});//blur
	});//ready
	
	$(document).ready(function(){
		$("#btn_certi").click(function(){
			if($.trim($("#manager_email").val()) == ""){
				alert("등록된 이메일이 없습니다.");
	// 			$("#manager_email").focus();
				return;
			}
			$.post(
					"${pageContext.request.contextPath}/CerEmail"
					,{
						manager_email:$("#manager_email").val()
					}
					,function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("해당 이메일로 인증번호를 발송했습니다.");
								$("#cer_number").css("display","block");
								$("#btn_certi_complete").css("display","block");
								$("#aaaaa").css("display","block");
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
			var numChk1 = $("#numChk1").val();
			$.post(
					"${pageContext.request.contextPath}/CheckCerNumber",
					{
						busi_num:$("#numChk1").val(),
						manager_name:$("#manager_name").val(),
						manager_phone:$("#manager_phone").val(),
						manager_birth:$("#manager_birth").val(),
						cer_number:$("#cer_number").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("인증이 완료 되었습니다.");
								$("#cer_number").attr("readonly",true);	
								$("#btn_certi_complete").attr("disabled",true);
	// 							$("#clock").css("display", "none");
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
	});
	
	$(document).ready(function() {
		$("#userDataUpdateFinal").click(function() {
			var numChk1 = $("#numChk1").val();
			$.post(
					"${pageContext.request.contextPath}/userdataupdatefinal",
					{
						busi_num:$("#numChk1").val(),
						manager_name:$("#manager_name").val(),
						manager_phone:$("#manager_phone").val(),
						manager_birth:$("#manager_birth").val(),
						cer_number:$("#cer_number").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("변경되었습니다. 다시 로그인 해주시기 바랍니다");
								location.href="${pageContext.request.contextPath}/logout";
							} else if(data == 0){
								alert("이메일 인증 해주시기 바랍니다.");
							} else {
								alert("이메일 인증 해주시기 바랍니다!!!!");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
			);//post
		});
	});
	
	//////////////////////////////////////////////////////////////////////////////////// busi
	
	$(document).ready(function() {
		$("#updateCusAccountBtn").click(function(){
			location.href="${pageContext.request.contextPath}/my_depo_mgn";
		});//click
	});//ready
	
	$(document).ready(function() {
		$("#updatePassBtn1").click(function(){
			var numChk = $("#numChk").val();
			var numChk1 = $("#numChk1").val();
			
			if($.trim($("#updatePassword").val()) == ""){
				alert("비밀번호를 입력해 주세요.");
				return;
			}
			
			if($.trim($("#updatePassword1").val()) == ""){
				alert("비밀번호를 입력해 주세요.");
				return;
			}
			
			if($("#updatePassword").val() != $("#updatePassword1").val()){
				alert("비밀번호를 똑같이 입력해 주세요.");
				$("#updatePassword").focus();
				return;
			}
				$.post(
						"${pageContext.request.contextPath}/updatepass",
						{
							user_num:$("#numChk").val(),
							user_password:$("#updatePassword").val()
						},
						function(data,status){
							if(status == "success"){
								if(data > 0){
									alert("@@@@@@@@@@@@@@@@@@@@@@@@@");
								} else if(data == 0){
									alert("변경 되었습니다.");
									location.href="${pageContext.request.contextPath}/my_modify";
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
		$("#deleteUserBtn1").click(function(){
			var numChk = $("#numChk").val();
			var numChk1 = $("#numChk1").val();
			if(confirm("정말로 탈퇴 하시겠습니까??") == true) {
				$.post(
						"${pageContext.request.contextPath}/deleteuser",
						{
							user_num:$("#numChk").val()
						},
						function(data,status){
							if(status == "success"){
								if(data > 0){
									alert("@@@@@@@@@@@@@@@@@@@@@@@@@");
								} else if(data == 0){
									alert("그동안 크리에이터를 이용해 주셔서 감사합니다.");
									location.href="${pageContext.request.contextPath}/logout";
								} else {
									alert("잠시 후, 다시 시도해 주세요.");
								}
							} else {
								alert("시스템 관리자에게 문의 바랍니다.");
							}
						}
					);//post
				} else{
					return false;
				} 
		});//click
	});//ready
	
	$(document).ready(function() {
		$("#updatePassBtn").click(function(){
			var numChk = $("#numChk").val();
			var numChk1 = $("#numChk1").val();
			
			if($.trim($("#updatePassword").val()) == ""){
				alert("비밀번호를 입력해 주세요.");
				return;
			}
			
			if($.trim($("#updatePassword1").val()) == ""){
				alert("비밀번호를 입력해 주세요.");
				return;
			}
			
			if($("#updatePassword").val() != $("#updatePassword1").val()){
				alert("비밀번호를 똑같이 입력해 주세요.");
				$("#updatePassword").focus();
				return;
			}
				$.post(
						"${pageContext.request.contextPath}/updatepass1",
						{
							busi_num:$("#numChk1").val(),
							busi_password:$("#updatePassword").val()
						},
						function(data,status){
							if(status == "success"){
								if(data > 0){
									alert("@@@@@@@@@@@@@@@@@@@@@@@@@");
								} else if(data == 0){
									alert("변경 되었습니다.");
									location.href="${pageContext.request.contextPath}/my_modify";
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
		$("#deleteUserBtn").click(function(){
			var numChk = $("#numChk").val();
			var numChk1 = $("#numChk1").val();
			if(confirm("정말로 탈퇴 하시겠습니까??") == true) {
				$.post(
						"${pageContext.request.contextPath}/deletebusi",
						{
							busi_num:$("#numChk1").val()
						},
						function(data,status){
							if(status == "success"){
								if(data > 0){
									alert("@@@@@@@@@@@@@@@@@@@@@@@@@");
								} else if(data == 0){
									alert("그동안 크리에이터를 이용해 주셔서 감사합니다.");
									location.href="${pageContext.request.contextPath}/logout";
								} else {
									alert("잠시 후, 다시 시도해 주세요.");
								}
							} else {
								alert("시스템 관리자에게 문의 바랍니다.");
							}
						}
					);//post
				} else{
					return false;
				} 
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
									<span class="cusNm">${memVO.user_name}${memVO.manager_name}</span>&nbsp;
										님
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">${memVO.email}${memVO.manager_email}</span>
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
											<span class="amt">${mypagebank.deposit} <font size="2">원</font></span>
										</div>
									</div>
								</div>
								<br>
								<br>
								<button type="button" class="btn btn-purple-transparent btn-block" id="depobu" style="margin-top: 4px;">기본 정보 수정</button>
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
							<div class="item" id="menu5">  <a href="/creator/my_depo_mgn">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw.png">
								<span class="text" id="menuL5">예치금 관리</span> </a>
							</div>
							<div class="item active" id="menu8"> <a href="/creator/my_modify">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span> </a>
							</div>
						</div>
					</div>
				</div>
				
					<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
						<div class="wrap">
							<div class="box right">
								<div class="row">
									<div class="col-xs-12 col-sm-12">
										<div class="row">
										
											<!-- 고객정보 -->
											<div class="col-xs-12 col-sm-6 rightLine">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 고객 정보
													</div>
													<div class="subTitle" style="margin-top: 5px;">
													</div>
													<table class="table condition-table">
														<tbody>
															<tr>
																<td class="condition-title">이름</td>
																<td class="condition-content">
																	<input type="text" class="form-control" id="memNm" maxlength="50" readonly="readonly" value="${mypagemem.user_name}${mypagemem.manager_name}">
																</td>
															</tr>
															<tr>
																<td class="condition-title">휴대전화번호</td>
																<td class="condition-content">
																	<input type="text" class="form-control" id="cusNo" readonly="readonly" value="${mypagemem.phone}${mypagemem.manager_phone}">
																</td>
															</tr>
															<tr>
																<td class="condition-title">주민등록번호</td>
																<td class="condition-content">
																	<input type="text" class="form-control" id="cusNo" readonly="readonly" value="${mypagemem.jumin}${mypagemem.manager_birth}">
																</td>
															</tr>
															<tr>
																<td class="condition-title">이메일</td>
																<td class="condition-content">
																	<input type="text" class="form-control" id="mememail" readonly="readonly" value="${mypagemem.email}${mypagemem.manager_email}">
																</td>
															</tr>
															<tr>
															<td></td>
															<td>
																<div class="autoConditionSet">
																	<input type="button" style="margin-left: 200px; width: 100px;" class="btn btn-purple-transparent btn-block" 
																			id="userDataUpdatee" name="userDataUpdatee" value="변경" data-toggle="modal">
																</div>
																</td>
															</tr>
															<tr>
																<td colspan="2" class="condition-content">
																	<p>
																		<span class="font-red"><strong>※ 투자, 대출 시 주의 사항</strong></span>
																		<br>
																		<font size="2">
																			투자, 대출시 본인의 개인정보와 일치하여야 합니다. 개인정보가 다를 시 불이익을 받을 수 있습니다.
																		</font>
																	</p>
																</td>
															</tr>
													</tbody></table>
												</div>
											</div>
											
											<div class="col-xs-12 xd">
												<hr>
											</div>
											
											<!-- 계좌정보 -->
											<div class="col-xs-12 col-sm-6">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 계좌 정보
													</div>
													<div class="subTitle" style="margin-top: 5px;">
														출금 시 기본 예치금을 수취할 은행계좌 정보를 등록해주세요.
													</div>
													<table class="table condition-table">
														<tbody>
														<tr>
															<td class="condition-title">은행명</td>
															<td class="condition-content">
																<input type="text" class="form-control" id="cusAccount" readonly="readonly" value="${mypagebank.bank_name}">
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
																<input type="text" class="form-control" id="cusAccount" readonly="readonly" value="${mypagebank.bank_num}">
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
													<div class="autoConditionSet">
														<button type="button" class="btn btn-purple-transparent btn-block" id="updateCusAccountBtn">예치금 계좌 발급</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<hr>
								
								<div class="row">
									<div class="col-xs-12 col-sm-12">
										<div class="row">
											
											<!-- 비밀번호 재설정 -->
											<div class="col-xs-12 col-sm-6 rightLine">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 비밀번호 재설정
													</div>
													<div class="subTitle" style="margin-top: 5px;">
														크리에이터가 추천하는 비밀번호 변경주기는 6개월입니다. 
													</div>
													<div class="subTitle" style="margin-top: 5px;">
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-title">기존 비밀번호</td>
															<td class="condition-content">
																<input class="form-control" id="cusAccount" type="password" placeholder="기존 비밀번호를 입력해주세요." value="${mypagemem.user_password}${mypagemem.busi_password}">
															</td>
														</tr>
														<tr>
															<td class="condition-title">새 비밀번호</td>
															<td class="condition-content">
																<input class="form-control onlyPass" id="updatePassword" type="password" placeholder="영문,숫자,특수문자(~,!,# 등) 포함 8~20자">
															</td>
														</tr>
														<tr>
															<td class="condition-title">비밀번호 확인</td>
															<td class="condition-content">
																<input class="form-control onlyPass" id="updatePassword1" type="password" placeholder="비밀번호를 한번 더 입력해주세요.">
															</td>
														</tr>
														<tr>
															<td colspan="2" class="condition-content">
																<p>
																	<font size="2">비밀번호는 타인이 많은 곳에서 변경하지 말아주세요.</font>
																</p>
															</td>
														</tr>														
													</tbody></table>
													<div class="autoConditionSet" style="margin-top: 3px;">
														<c:choose>
															<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
																<input type="button" class="btn btn-purple-transparent btn-block" id="updatePassBtn1" value="새 비밀번호 저장"/>
															</c:when>
															<c:otherwise>
																<input type="button" class="btn btn-purple-transparent btn-block" id="updatePassBtn" value="새 비밀번호 저장"/>																		
															</c:otherwise>
														</c:choose>														
													</div>
												</div>
											</div>
											
											<div class="col-xs-12 xd">
												<hr>
											</div>
											
											<!-- 접속이력 -->
											<div class="col-xs-12 col-sm-6">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 접속이력
													</div>
													<div class="subTitle" style="margin-top: 5px;">
														최근 3회 동안 접속하신 정보입니다.
													</div>
													<table class="table condition-table text-center">
														<colgroup>
															<col width="50%">
															<col width="50%">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="text-center">로그인 일시</th>
																<th scope="col" class="text-center">로그아웃 일시</th>
															</tr>
														</thead>
														<tbody id="logListBody">
															<tr>
																<td colspan="2" class="condition-content">
																	<p>
																		<font size="2">로그인 로그아웃을 확인해 주세요.</font>
																	</p>
																</td>
															</tr>
										                  	<tr>
										                  		<td>
																	<c:forEach items="${hInList}" var="vo" varStatus="status">
											                    		<a>${vo.log_in_out_time}<br></a>
																	</c:forEach>
																</td>
																<td>
											                    	<c:forEach items="${hOutList}" var="vo" varStatus="status">
																		<a>${vo.log_in_out_time}<br></a>
																	</c:forEach>
																</td>
															</tr>
															<tr>
																<td colspan="2" class="condition-content">
																	<p>
																		<font size="2">접속이력이 이상할 시 문의하여 주시기 바랍니다.</font>
																	</p>
																</td>
															</tr>
														</tbody>
													</table>
													<div class="autoConditionSet" style="margin-top: 6px;">
														<c:choose>
															<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
																<input type="button" class="btn btn-purple-transparent btn-block" id="deleteUserBtn1" value="회원 탈퇴" />
															</c:when>
															<c:otherwise>
																<input type="button" class="btn btn-purple-transparent btn-block" id="deleteUserBtn" value="회원 탈퇴" />
															</c:otherwise>
														</c:choose>															
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	
   	<input type="hidden" id="numChk" value="${memVO.user_num}"/>
	<input type="hidden" id="numChk1" value="${memVO.busi_num}"/>

				<!-- Email 인증시작 -->
						<div class="modal fade" id="btn_certt" name="cert1" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<div class="modal-title" id="vtAcntModalLabel">
											<div style="">
												기본정보 변경을 위한 인증 절차 입니다.
											</div>
										</div>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">이 름</label>
												<input class="form-control" id="manager_name" type="text" value="${memVO.manager_name}${memVO.user_name}">
											</div>
											<div class="form-group col-xs-5 col-sm-5 col-md-4">
												<label for="cusNm" class="control-label">휴대전화번호</label>
												<input class="form-control" id="manager_phone" type="text" value="${memVO.manager_phone}${memVO.phone}">
											</div>
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">주민등록번호</label>
												<input class="form-control" id="manager_birth" type="text" value="${memVO.manager_birth}${memVO.jumin}">
											</div>
											<div class="form-group col-xs-5 col-sm-5 col-md-1">
												<label for="cusNm" class="control-label">&nbsp;</label>
												<input class="btn btn-purple-transparent" id="inputcommit" type="submit" value="완료">
											</div>
<!-- 											<div class="form-group col-xs-5 col-sm-5 col-md-1"> -->
<!-- 												<label for="cusNm" class="control-label">&nbsp;</label> -->
<!-- 												<input class="btn btn-purple-transparent" id="inputinsert" type="submit" value="수정"> -->
<!-- 											</div>											 -->
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label" >Email_주소</label>
												<c:choose>
													<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
														<input class="form-control" id="manager_email1" type="text" value="${memVO.email}" readonly="readonly">
													</c:when>
													<c:otherwise>
														<input class="form-control" id="manager_email" type="text" value="${memVO.manager_email}" readonly="readonly">
													</c:otherwise>
												</c:choose>														
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-4">
												<br style="line-height:24px";">
												<c:choose>
													<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
													<input type="submit" class="btn btn-purple-transparent" id="btn_certi1" name="numre" disabled="disabled" value="인증번호 받기" />
													</c:when>
													<c:otherwise>
														<input type="submit" class="btn btn-purple-transparent" id="btn_certi" name="numre" disabled="disabled" value="인증번호 받기" />												
													</c:otherwise>
												</c:choose>														
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 인증된 이메일로 인증번호를 발송합니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 타인 도용시 법적인 제제를 받을 수 있습니다.</span>
											</div>
										</div>
										<div id="pInfDiv" style="">
											<hr>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
												</div>
											</div>
											<div class="row">
 
											<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="ssnNo" id="aaaaa" class="control-label" style="display:none;">인증번호를 입력하세요.</label>
												</div>
											</div>		
											
											<div class="row">
												<div class="form-group col-md-4">
													<input class="form-control" id="cer_number" type="text" maxlength="13"  placeholder="" style="display:none;">
												</div>
												<div class="form-group col-md-2">
													<c:choose>
														<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
															<input type="submit" id="btn_certi_complete1" class="btn btn-purple-transparent" style="display:none;" value="인증 확인"/>
														</c:when>
														<c:otherwise>
															<input type="submit" id="btn_certi_complete" class="btn btn-purple-transparent" style="display:none;" value="인증 확인"/>																						
														</c:otherwise>
													</c:choose>														
												</div>
												<div class="form-group col-md-2" id="clock">
												</div>													
											</div>
											
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 투자 및 대출 시 본인의 개인정보와 일치해야 합니다.</span>
											</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-light ">&nbsp;● 정상처리가 불가할 경우 <a href="${pageContext.request.contextPath}/inquiry" target="_blank" class="font-purple">1:1문의사항</a>을 이용하시기 바랍니다.</span>
												</div>
												<div class="clearfix"></div>
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 본인과 다를시 불이익이 발생 할 수 있습니다.</span>
													<span class="modal-body-light">&nbsp;<a href="${pageContext.request.contextPath}/support" target="_blank" class="font-purple">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<c:choose>
											<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
												<input type="submit" id="userDataUpdateFinal1" class="btn btn-purple-transparent" value="변 경"/>
											</c:when>
											<c:otherwise>
												<input type="submit" id="userDataUpdateFinal" class="btn btn-purple-transparent" value="변 경"/>																							
											</c:otherwise>
										</c:choose>											
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- Email 인증끝. -->
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
<script type="text/javascript"> 
	$(document).ready(function() {
		$("#userDataUpdatee").click(function() {
			$("#btn_certt").modal(); 
		});
	});
</script>	
</body>
<style>
#mypage-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/banner_bg_nmvbls.png) center 0% no-repeat;
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
#mypage-content #mypage-main .wrap .box.right .edit {
    padding: 100px 180px;
    text-align: center;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-img {
    width: 100%;
    text-align: center;
    padding: 0px 100px 50px 100px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-img img {
    margin: 0 auto;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-title {
    text-align: center;
    font-size: 18px;
    padding: 0px 0px 40px 0px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-text {
    font-size: 14px;
    padding: 0 40px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-input {
    padding: 20px 40px;
}
.form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
}
.form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
}
input[type="password"] {
    font-family: 'Arial',sans-serif !important;
}
#mypage-content #mypage-main .wrap .box.right .rightLine {
    border-right-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo {
    padding: 0px 10px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo .subTitle {
    font-size: 14px;
}
#mypage-content #mypage-main .wrap .box.right .condition-table {
    margin-top: 10px;
    font-size: 14px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo tr {
    height: 30px;
}
#mypage-content #mypage-main .wrap .box.right .condition-table td.condition-title {
    font-size: 14px;
    font-weight: bold;
}
#mypage-content #mypage-main .wrap .box.right .condition-table td {
    font-size: 14px;
    padding: 5px 0 0 0;
}
#mypage-content #mypage-main .wrap .box.right table td {
    border-style: none;
    vertical-align: middle;
    padding: 0px;
}
#mypage-content #mypage-main .wrap .box.right #cusNm {
    display: inline;
    max-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right #updateCusNmBtn {
    vertical-align: bottom;
}
#mypage-content #mypage-main .wrap .box.right #email {
    display: inline;
    max-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right #updateEmailBtn {
    vertical-align: bottom;
}
#mypage-content #mypage-main .wrap .box.right #mpNo {
    display: inline;
    max-width: 200px;
}
.form-inline .radio, .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
}
.ui-checkbox input[type=checkbox]+span {
    font-weight: 400;
}
.form-inline .radio input[type="radio"], .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
}

.ui-checkbox input[type=checkbox] {
    display: none;
}
#mypage-content label {
    font-size: 14px;
}
.form-inline .radio label, .form-inline .checkbox label {
    padding-left: 0;
}
.ui-checkbox {
    position: relative;
    margin: 0 20px 0 15px;
    display: inline;
}
.ui-checkbox input[type=checkbox]+span:before {
    content: "";
    width: 18px;
    height: 18px;
    display: inline-block;
    vertical-align: top;
    margin-right: 10px;
    margin-left: -17px;
    background-color: transparent;
    /* border-radius: 2px; */
    border: 2px solid #555;
}
.ui-checkbox input[type=checkbox]:checked+span:after {
    content: "\f00c";
    width: 8px;
    height: 8px;
    position: absolute;
    top: 0;
    left: -14px;
    color: #712594;
    font-family: FontAwesome;
    background-size: 14px 14px;
    display: block;
}
.ui-checkbox input[type=checkbox]:checked+span:before {
    border: 1px solid #712594;
}
</style>
</html>