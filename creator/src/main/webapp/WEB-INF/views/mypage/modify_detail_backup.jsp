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

$(document).ready(function() {
	$("#userDataUpdate").click(function() {
			$("#btn_cert1").modal(); return;
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
	            <a href="creator/my_desktop">
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
<!--    =======================================================    -->	        
<section id="main-content">
	<section class="wrapper">
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 고객정보</h4>
				<hr>
                <div class="panel-body text-center">
                <table class="table condition-table">
					<tbody>
					<tr>
						<td class="condition-title">이름</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="cusNm" maxlength="50" readonly="readonly" value="${mypagemem.user_name}${mypagemem.manager_name}">
						</td>
						<td>
							<button type="button" class="btn btn-purple-transparent" id="userDataUpdate" name="userDataUpdate">변경</button>
						</td>
					</tr>
					<tr>
						<td class="condition-title">휴대전화번호</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="mpNo" maxlength="50" readonly="readonly" value="${mypagemem.phone}${mypagemem.manager_phone}">
						</td>
					</tr>
					<tr>
						<td class="condition-title">주민등록번호</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="jumin" maxlength="50" readonly="readonly" value="${mypagemem.jumin}${mypagemem.manager_birth}"></td>
						<td>
						</td>
					</tr>
					<tr>
						<td class="condition-title">이메일</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="email" maxlength="50" readonly="readonly" value="${mypagemem.email}${mypagemem.manager_email}">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="condition-content">
						<span class="font-red"><strong>※ 왜 주민등록번호가 필요한가요?</strong></span><br>
						<font size="2">
							주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다. 입력하지 않아도 
							대출상품 투자를 제외한 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.
						</font>
					</td>
					</tr>
					</tbody>
				</table>
               	</div>
			  </div>
            </div>
            
<!--    =======================================================    -->

            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 계좌정보</h4>
                <hr>
                <div class="panel-body text-center">
					<table class="table condition-table">
						<tbody>
						<tr>
							<td class="condition-title">출금 시 기본 예치금을 수취할 은행계좌 정보를 등록해주세요.</td>
							<td></td>
						</tr>		
						<tr>
							<td class="condition-title">은행명
							<br><br><span><font size="2">반드시 본인명의 계좌 은행을 선택해주세요.</font></span><br>
							</td>
							<td class="condition-content">
								<input type="text" class="form-control" id="cusBankCdSelect" maxlength="14" name="cusBankCd" readonly="readonly" value="${mypagebank.bank_name}">
							</td>
						</tr>
						<tr>
							<td class="condition-title">계좌번호
							<br><br><p><font size="2">계좌번호를 정확히 입력해주세요.</font></p>
							</td>
							<td class="condition-content">
								<input type="text" class="form-control" id="cusAccount" maxlength="14" readonly="readonly" value="${mypagebank.bank_num}">
							</td>
							<td></td>
						</tr>
						
						<tr>
							<td></td>
							<td></td>
						</tr>
						</tbody>
					</table>
					<div class="autoConditionSet" >
						<button type="button" class="btn btn-purple-transparent btn-block" id="updateCusAccountBtn">예치금 계좌 발급</button>
					</div><br>
                </div>
              </div>
            </div>
          </div>
          
<!--    =======================================================    -->
          
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 비밀번호 재설정</h4>
                <hr>
                <div class="panel-body text-center">
                
					<table class="table condition-table">
						<tbody>
						<tr>
							<td class="condition-title">크리에이터가 추천하는 비밀번호 변경주기는 6개월입니다.</td>
							<td></td>
						</tr>		
						<tr>
							<td class="condition-title">기존 비밀번호
							</td>
							<td class="condition-content">
							<input type="password" class="form-control" id="cusAccount" maxlength="14" value="${mypagemem.user_password}${mypagemem.busi_password}">
							</td>
						</tr>
						<tr>
							<td class="condition-title">새 비밀번호
							</td>
							<td class="condition-content">
								<input type="password" class="form-control onlyPass" id="updatePassword" maxlength="14" placeholder="">
							</td>
							<td></td>
						</tr>
						
						<tr>
							<td class="condition-title">비밀번호 확인
							</td>
							<td class="condition-content">
								<input type="password" class="form-control onlyPass" id="updatePassword1" maxlength="14" placeholder="">
							</td>						
							<td></td>
						</tr>
						</tbody>
					</table>
					<div class="autoConditionSet" >
						<c:choose>
							<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
								<input type="button" class="btn btn-purple-transparent btn-block" id="updatePassBtn1" value="새 비밀번호 저장"/>
							</c:when>
							<c:otherwise>
								<input type="button" class="btn btn-purple-transparent btn-block" id="updatePassBtn" value="새 비밀번호 저장"/>																		
							</c:otherwise>
						</c:choose>							
					</div>
					<font size="1"><br></font>       
                
                </div>
              </div>
            </div>
            
<!--    =======================================================    -->
            
            
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>접속이력</h4>
				<hr>
                <div class="panel-body text-center">
					<table class="table condition-table">
		                <thead>
		                  <tr>
		                    <th>로그인 일시</th>
		                    <th>로그아웃 일시</th>
		                  </tr>
		                </thead>
						<tbody>
		                  	<tr>
		                  		<td>
									<c:forEach items="${hInList}" var="vo" varStatus="status">
			                    		<a>${vo.log_in_out_time}<br><p><font size="2"></font></p></a>
									</c:forEach>
								</td>
								<td>
			                    	<c:forEach items="${hOutList}" var="vo" varStatus="status">
										<a>${vo.log_in_out_time}<br><p><font size="2"></font></p></a>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td class="condition-title">최근 3회 동안 접속하신 정보입니다.</td>
								<td></td>
							</tr>		
						</tbody>
					</table>
					<form name="removeuser">
						<div class="autoConditionSet" >
							<c:choose>
								<c:when test="${memVO != null && (memVO.user_num != '' && memVO.user_num != null)}">
									<input type="button" class="btn btn-purple-transparent btn-block1" id="deleteUserBtn1" value="회원 탈퇴" />
								</c:when>
								<c:otherwise>
									<input type="button" class="btn btn-purple-transparent btn-block" id="deleteUserBtn" value="회원 탈퇴" />
								</c:otherwise>
							</c:choose>								
						</div>
					</form>
					<font size="2"></font>                
                
                </div>
              </div>
            </div>
          </div>
	</section>
</section>   

   	<input type="hidden" id="numChk" value="${memVO.user_num}"/>
	<input type="hidden" id="numChk1" value="${memVO.busi_num}"/>

<!--    =======================================================    -->    <!--    =======================================================    -->   

							<div class="bottom">
								<input type="button" class="btn btn-purple-transparent btn-block" id="userDataUpdate"
										value="본인 인증 및 대출 가능여부 확인" data-toggle="modal"/>
									<p>※ 대출 신청은 신용등급에 영향을 끼치지 않습니다.</p>
									<div class="page" style="text-align: right;">1/4</div>
							</div>
						<!-- Email 인증시작 -->
						<div class="modal fade" id="btn_cert1" name="cert1" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
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
 
<!--    =======================================================    -->    <!--    =======================================================    -->   	
	
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













