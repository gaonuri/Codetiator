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
	</script>
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#unlockBtn").on("click", function() {
		$("#lockMode").css("display", "none");
		$("#unLockMode").css("display", "block");
	});
});
</script>     
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
										<li id="smallMenuLi1" class="active">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;1&quot;)">
												<span class="smallMenuItem">대시보드</span>
											</a>
										</li>
										<li id="smallMenuLi2">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;2&quot;)">
												<span class="smallMenuItem">투자 내역</span>
											</a>
										</li>
										<li id="smallMenuLi3">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;3&quot;)">
												<span class="smallMenuItem">자동투자 설정</span>
											</a>
										</li>
										<li id="smallMenuLi4">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;4&quot;)">
												<span class="smallMenuItem">대출 내역</span>
											</a>
										</li>
										<li id="smallMenuLi5">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;5&quot;)">
												<span class="smallMenuItem">예치금 관리</span>
											</a>
										</li>
										<li id="smallMenuLi6">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;6&quot;)">
												<span class="smallMenuItem">포인트 관리</span>
											</a>
										</li>										<li id="smallMenuLi9">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;9&quot;)">
												<span class="smallMenuItem">이벤트</span>
											</a>
										</li>

										<li id="smallMenuLi7">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;7&quot;)">
												<span class="smallMenuItem">크리에이터 알림</span>
											</a>
										</li>
										<li id="smallMenuLi8">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;8&quot;)">
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
									<span class="cusNm">김도엽</span>&nbsp;
									
										님
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="invstrTypeNm">개인투자자</span>
									
										<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>금융위원회의 가이드라인에 따라 아래와 같은 투자자 구분에 의한 인증 서류를 제출 시 해당 투자 한도가 적용됩니다.</strong>
															<br>1. 개인투자자	
															<br> - 동일차입자 500만원, 총 2,000만원
															<br> ※ 단, 부동산 상품이면 총 1,000만원
															<br> - 제출서류 없음
															<br>
															<br>2. 소득요건을 구비한 개인투자자
															<br> - 동일차입자 2,000만원, 총 4,000만원
															<br> - 아래 요건 중 하나 이상 해당 시 종합소득 과세표준 확정신고서, 종합소득세 신고서 접수증 제출
															<br>  1) 이자, 배당소득이 2천만원(종합과세기준금액)을 초과하는 자
															<br>  2) 사업, 근로소득 1억원을 초과하는 자
															<br>  3) 그 밖에 창업자·벤처기업 등에 대한 투자의 전문성 등을 고려하여 금융위원회가 정하여 고시하는 자
															<br>
															<br>3. 개인전문투자자 : 제한없음 
															<br> - 아래 세가지 요건 모두 충족 시, 금융투자협회 전문투자자 확인증 제출
															<br>  1) 금융 투자업자에게 계좌 개설 1년 경과
															<br>  2) 금융 투자 상품 잔고 5억원 이상
															<br>  3) 소득액 1억원 또는 재산가액 10억원 이상
															<br>
															<br>※ 인증서류 제출 : 고객센터(contact@creator.co.kr)" data-original-title="" title="">
										</span>
									
									
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">whitesky1203@naver.com</span>
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
										<div class="col-xs-5 text-right">
											<a href="/mypage/5#listWrap">
												<span class="tranList font-purple"><strong>거래 내역 &gt;</strong></span>
											</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">원</font></span>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;">
										<div class="col-xs-7">
											<span class="myDeposit">자동투자 예치금</span>
										</div>
										<div class="col-xs-5 text-right">
											<a href="/mypage/3#listWrap">
											<span class="tranList font-purple"><strong>투자 설정 &gt;</strong></span>
										</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">원</font></span>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;">
										<div class="col-xs-6">
											<span class="myDeposit">퍼플포인트</span>
										</div>
										<div class="col-xs-6 text-right">
											<a href="/mypage/6">
											<span class="tranList font-purple"><strong>포인트 내역 &gt;</strong></span>
										</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">pp</font></span>
										</div>
									</div>
								</div>
								<div class="account-box">
									
									
									<div class="row">
										<div class="col-xs-12">
											<span class="account">예치금 계좌 <a href="/mypage/5" class="font-red"><strong>미발급 상태</strong></a>입니다.</span>
										</div>
									</div>
									
								</div>
								<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_setMenu('5')" style="margin-top: 4px;">나의 예치금</button>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="largeMenu">
						<div class="menu">
							<div class="item active" id="menu2"> <a href="/creator/my_invest_list">
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
							<div class="item" id="menu8"> <a href="/creator/my_modify">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span> </a>
							</div>
						</div>
					</div>
					
				</div>
				
<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
<script type="text/javascript">
	var gvar_FbNoSetPswdCusYN = "N";

	$(function() {
		fn_selectBaseInfo();
	});
	
	function fn_selectBaseInfo() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectBaseInfo");
		comAjax.addParam("CUS_NO", "1000009711");
		comAjax.setCallback("fn_selectBaseInfoCallback");
		comAjax.ajax();
	}
	
	function fn_selectBaseInfoCallback(data){
		var cusGbCd = "01";
		if(cusGbCd == "01") {
			$("#crprtnDiv").hide();
		} else if(cusGbCd == "02") {	// 법인고객이면 법인정보 표시
			$("#inputCeoNm").val(data.crprtnMap.CEO_NM);
			$("#inputCrprtnNo").val(data.crprtnMap.CRPRTN_NO);
			$("#inputHmpgURL").val(data.crprtnMap.HMPG_URL);
			$("#inputMngrNm").val(data.crprtnMap.MNGR_NM);
			$("#inputMngrBirthDate").val(data.crprtnMap.MNGR_BIRTH_DATE);
			$("#inputMngrSexNm").val(data.crprtnMap.MNGR_SEX_NM);
			$("#inputMngrTelNo").val(data.crprtnMap.MNGR_TEL_NO);
			$("#inputMngrFaxNo").val(data.crprtnMap.MNGR_FAX_NO);
			$("#inputMngrWrkNm").val(data.crprtnMap.MNGR_WRK_NM);
			$("#inputMngrJobNm").val(data.crprtnMap.MNGR_JOB_NM);
			$("#inputMngrDeptNm").val(data.crprtnMap.MNGR_DEPT_NM);
			$("#inputHqAddr1").val(data.crprtnMap.HQ_ADDR1);
			$("#inputHqAddr2").val(data.crprtnMap.HQ_ADDR2);
			$("#inputHqZipCd").val(data.crprtnMap.HQ_ZIP_CD);
			$("#inputHqTelNo").val(data.crprtnMap.HQ_TEL_NO);
			$("#inputHqFaxNo").val(data.crprtnMap.HQ_FAX_NO);
			$("#inputPobAddr1").val(data.crprtnMap.POB_ADDR1);
			$("#inputPobAddr2").val(data.crprtnMap.POB_ADDR2);
			$("#inputPobZipCd").val(data.crprtnMap.POB_ZIP_CD);
			$("#inputPobTelNo").val(data.crprtnMap.POB_TEL_NO);
			$("#inputPobFaxNo").val(data.crprtnMap.POB_FAX_NO);
			$("#crprtnDiv").show();	
		}
		
		var mpNo = "12312312332";
		if(mpNo == "") {
			$("#mpNo").val("미등록 상태입니다.");
		} else {
			$("#mpNo").val(gfn_viewTelNo(mpNo));
		}
		
		$("#cusBankCdSelect").val("");
		$("#cusAccount").val("");
		
		if(data.agreeMap.EM_YN == "Y") {
			$("#emYnCheckbox").prop("checked", true);
			$("#emYnCheckbox").attr("checked", true);
		}
		if(data.agreeMap.SMS_YN == "Y") {
			$("#smsYnCheckbox").prop("checked", true);
			$("#smsYnCheckbox").attr("checked", true);
		}
		if(data.agreeMap.SNS_YN == "Y") {
			$("#snsYnCheckbox").prop("checked", true);
			$("#snsYnCheckbox").attr("checked", true);
		}
		if(data.agreeMap.LOGIN_ALARM_YN == "Y") {
			$("#loginAlarmYnCheckbox").prop("checked", true);
			$("#loginAlarmYnCheckbox").attr("checked", true);
		}
		if(data.agreeMap.REPAY_ALARM_YN == "Y") {
			$("#repayAlarmYnCheckbox").prop("checked", true);
			$("#repayAlarmYnCheckbox").attr("checked", true);
		}
		
		$("#cusAccount").on("keyup",
			function() {
				$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		
		$("#chkPswd").focus();
		
		var body = $("#logListBody");
		var str = "";
		// 리스트 생성
		$.each(data.logList, function(key, value) {
			str += "<tr>";
			str += "	<td>" + value.CUS_IP + "</td>";
			str += "	<td>" + value.LOG_DTM + "</td>";
			str += "</tr>";
		});
		body.append(str);
		
		// 페이스북 로그인이면 비밀번호 확인 없음
		fn_checkFbNoSetPswdCus();
	}
	
	function fn_checkFbNoSetPswdCus() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/common/checkFbNoSetPswdCus");
		comAjax.setCallback("fn_checkFbNoSetPswdCusCallback");
		comAjax.ajax();
	}
	
	function fn_checkFbNoSetPswdCusCallback(data){
		var resultMsg = data.resultMsg;
		var resultYn = data.resultYn;
		if(resultYn == "Y") {
			gvar_FbNoSetPswdCusYN = "Y";
			$("#oldPswd").attr("disabled", true);
			$("#lockMode").hide();
			$("#unLockMode").show();
		} else {
			return;
		}
	}

	function fn_unlock() {
		var chkPswd = $("#chkPswd").val();
		
		if(chkPswd == "") {
			alert("비밀번호를 입력하세요.");
			$("#chkPswd").focus();
			location.reload();
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/common/checkPswd");
		comAjax.setCallback("fn_unlockCallback");
		comAjax.addParam("PSWD",chkPswd);
		comAjax.ajax();
	}
	
	function fn_unlockCallback(data){
		var resultMsg = data.resultMsg;
		var resultYn = data.resultYn;
		if(resultYn == "Y") {
			$("#lockMode").hide();
			$("#unLockMode").show();
		} else {
			alert(resultMsg);
		}
	}
	
	function fn_setCusPswd() {
		// 비밀번호 유효성 검사
		var setPswd = $("#setPswd").val();
		if(setPswd == '') {
			alert("비밀번호를 입력해주세요.");
			$("#setPswd").focus();
			return;
		}
		
		if(!chkPswd($.trim(setPswd))){
			$('#setPswd').val('');
			$('#setPswd').focus();
			return false;
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateCusPswd");
		comAjax.setCallback("fn_setCusPswdCallback");
		comAjax.addParam("oldPswd", " ");
		comAjax.addParam("newPswd", setPswd);
		comAjax.addParam("newPswdChk", setPswd);
		comAjax.ajax();
	}
	
	function fn_setCusPswdCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}
	
	function fn_updateCusNm() {
		var cusNm = $("#cusNm").val();
		if(cusNm == ''){
			alert("이름을 입력해 주세요.");
			$('#cusNm').focus();
			return false;
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateCusNm");
		comAjax.setCallback("fn_updateCusNmCallback");
		comAjax.addParam("CUS_NM", cusNm);
		comAjax.ajax();
	}
	
	function fn_updateCusNmCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}
	
	function fn_updateEmail() {
		var email = $("#email").val();
		if(email == ''){
			alert("이메일을 입력해 주세요.");
			$('#email').focus();
			return false;
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateEmail");
		comAjax.setCallback("fn_updateEmailCallback");
		comAjax.addParam("EMAIL", email);
		comAjax.ajax();
	}
	
	function fn_updateEmailCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}
	
	function fn_checkNiceCert() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/checkNiceCert");
		comAjax.setCallback("fn_checkNiceCertCallback");
		comAjax.addParam("ciCheckYn", "N");
		comAjax.ajax();
	}
	
	function fn_checkNiceCertCallback(data){
		var sMessage = data.sMessage;
		var sEncData = data.sEncData;
		if(sMessage == "") {
			$("#EncodeData").val(sEncData);
			fn_openNicePopup();
		} else {
			alert(sMessage);
			return false;
		}
	}
	
	window.name ="Parent_window";
	function fn_openNicePopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	
	// 나이스 인증 성공
	function fn_niceCertSuccess() {
		fn_updateMpNo();
	}
	
	function fn_updateMpNo() {
		var mpNo = $("#mpNo").val();
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateMpNo");
		comAjax.setCallback("fn_updateMpNoCallback");
		comAjax.addParam("MP_NO", mpNo);
		comAjax.ajax();
	}
	
	function fn_updateMpNoCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}
	
	function fn_updateCusPswd() {
		if(fn_updateCusPswdValidation()) {	// 필수값 입력 체크  
			
			// 비밀번호 유효성 검사
			var oldPswd = $("#oldPswd").val();
			var newPswd = $("#newPswd").val();
			var newPswdChk = $("#newPswdChk").val();
			
			if($.trim(newPswd)!=$.trim(newPswdChk)){
				alert("비밀번호를 확인해 주세요.");
				$('#newPswd').focus();
				return false;
			}

			if($.trim(oldPswd)==$.trim(newPswd)){
				alert("기존 비밀번호와 다른 비밀번호를 입력해주세요.");
				$('#newPswd').focus();
				return false;
			}
			
			if(!chkPswd($.trim(newPswd))){
				$('#newPswd').val('');
				$('#newPswd').focus();
				return false;
			}
			
			var comAjax = new ComAjax();
			comAjax.setUrl("/mypage/updateCusPswd");
			comAjax.setCallback("fn_updateCusPswdCallback");
			comAjax.addParam("oldPswd", oldPswd);
			comAjax.addParam("newPswd", newPswd);
			comAjax.addParam("newPswdChk", newPswdChk);
			comAjax.ajax();
			
		} else {
			return;
		}
	}
	
	function fn_updateCusPswdCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}

	function fn_updateCusPswdValidation() {
		var oldPswd = $("#oldPswd").val();
		var newPswd = $("#newPswd").val();
		var newPswdChk = $("#newPswdChk").val();

		var chkBool = true;

		if(gvar_FbNoSetPswdCusYN != "Y") {
			if(!chkBool) { return; } else { chkBool = fn_checkVal("기존 비밀번호", oldPswd, "oldPswd"); }
		}
		if(!chkBool) { return; } else { chkBool = fn_checkVal("새 비밀번호", newPswd, "newPswd"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("재입력 비밀번호", newPswdChk, "newPswdChk"); }
		
		return chkBool;
	}

	// 값 체크
	function fn_checkVal(title, val, obj) {
		if(val == "" || val == undefined) {
			alert(title + "을(를) 확인해 주세요.");
			gfn_scrollLink(obj, 90);
			$("#" + obj).focus();
			return false;
		} else {
			return true;
		}
	}
	
	// 비밀번호 유효성 체크
	function chkPswd(str){
		var pswd = str;
		var num = pswd.search(/[0-9]/g);
		var eng = pswd.search(/[a-z]/ig);
		var spe = pswd.search(/[`~!@@#$%&^*|\\\\'\";:\/?]/gi);
		var amp = pswd.search(/&/gi);

		if(pswd.length < 8 || pswd.length > 20){
			alert("8~20자리 이내로 입력해 주세요.");
			return false;
		}
		if(pswd.search(/\s/) != -1){
			alert("비밀번호는 공백없이 입력해 주세요.");
			return false;
		}
		if(num < 0 || eng < 0 || spe < 0 ){
			alert("영문,숫자,특수문자(~,!,@,#,* 등)를 조합하여 입력해 주세요.");
			return false;
		}
		if(amp > -1){
			alert("특수문자 &는 사용하실 수 없습니다.");
			return false;
		}
		return true;
	}
	
	function fn_updateCusAccount() {
		var cusBankCd = $("#cusBankCdSelect").val();
		if(cusBankCd == "") {
			alert("은행명을 선택하세요.");
			$("#cusBankCdSelect").focus();
			return;
		}
		
		var cusAccount = $("#cusAccount").val();
		if(cusAccount == "") {
			alert("계좌번호를 입력해주세요.");
			$("#cusAccount").focus();
			return;
		}
		
		var cusNm = $("#cusNm").val();
		if(cusNm == "") {
			alert("이름을 입력해주세요.");
			$("#cusNm").focus();
			return;
		}
		
		$("#updateCusAccountBtn").attr("disabled", true);
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateCusAccount");
		comAjax.setCallback("fn_updateCusAccountCallback");
		comAjax.addParam("WD_ACNT_BNK_CD", cusBankCd);
		comAjax.addParam("WD_ACNT_NO", cusAccount);
		comAjax.addParam("CUS_NM", cusNm);
		comAjax.addParam("CUS_GB_CD", "01");
		comAjax.ajax();
	}
	
	function fn_updateCusAccountCallback(data){
		var resultMsg = data.resultMsg;
		var resultYn = data.resultYn;
		alert(resultMsg);
		$("#updateCusAccountBtn").attr("disabled", false);
		if(resultYn == "Y") {
			gfn_goMypageMenu(8);
		}
	}
	
	function fn_updateCusAgree() {
		var emYn = $("#emYnCheckbox").is(":checked");
		if(emYn) {
			emYn = "Y";
		} else {
			emYn = "N";
		}
		
		var smsYn = $("#smsYnCheckbox").is(":checked");
		if(smsYn) {
			smsYn = "Y";
		} else {
			smsYn = "N";
		}
		
		var snsYn = $("#snsYnCheckbox").is(":checked");
		if(snsYn) {
			snsYn = "Y";
		} else {
			snsYn = "N";
		}
		
		var loginAlarmYn = $("#loginAlarmYnCheckbox").is(":checked");
		if(loginAlarmYn) {
			loginAlarmYn = "Y";
		} else {
			loginAlarmYn = "N";
		}
		
		var repayAlarmYn = $("#repayAlarmYnCheckbox").is(":checked");
		if(repayAlarmYn) {
			repayAlarmYn = "Y";
		} else {
			repayAlarmYn = "N";
		}
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateCusAgree");
		comAjax.setCallback("fn_updateCusAgreeCallback");
		comAjax.addParam("EM_YN", emYn);
		comAjax.addParam("SMS_YN", smsYn);
		comAjax.addParam("SNS_YN", snsYn);
		comAjax.addParam("LOGIN_ALARM_YN", loginAlarmYn);
		comAjax.addParam("REPAY_ALARM_YN", repayAlarmYn);
		comAjax.ajax();
	}
	
	function fn_updateCusAgreeCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu(8);
	}
	
	function hitChkPwd(event) {
		if(event.keyCode == 13) {
			fn_unlock();
		} else {
			event.keyCode == 0;
			return;
		}
		event.preventDefault();
	}
	
	function fn_updateCusAdd() {
		var SCHOOL = $("#inputSchool").val();
		var LOCAL1 = $("#inputLocal").val();
		var HOMETOWN1 = $("#inputHometown").val();
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/updateCusAdd");
		comAjax.setCallback("fn_updateCusAddCallback");
		comAjax.addParam("SCHOOL", SCHOOL);
		comAjax.addParam("LOCAL1", LOCAL1);
		comAjax.addParam("HOMETOWN1", HOMETOWN1);
		comAjax.ajax();
	}
	
	function fn_updateCusAddCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu('8');
	}
	
	function fn_goLeaveCus(){
		location.href = "/leave";
	}
	
</script>
					<div id="lockMode">
						<div class="wrap">
							<div class="box right">
								<div class="row">
									<div class="col-xs-12">
										<div class="edit">
											<div class="edit-img">
												<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_lock.png" class="img-responsive" alt="brand_img">
											</div>
											<div class="edit-title">
												<font color="#873687" style="font-weight: bold;">김도엽</font>님의 회원정보는 안전하게 보호되고 있습니다.
											</div>
											
											
											
												<div class="edit-text">
													회원님의 정보를 수정하려면 비밀번호를 입력해주세요.
												</div>
												<div class="edit-input">
													<form class="form-inline">
														<div class="form-group">
															<input class="form-control" id="chkPswd" type="password" placeholder="*비밀번호" onkeypress="hitChkPwd(event)">
															<button type="button" class="btn btn-purple-transparent" onclick="fn_unlock()" id="unlockBtn">잠금 해제</button>
														</div>
													</form>
												</div>
												<div class="edit-text">
													<img src="${pageContext.request.contextPath}/resources/img/icon_login_lock.png">
													비밀번호가 기억나지 않으신다면? <a href="/findpwd" style="color: #712594;">비밀번호 찾기</a>
												</div>
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div id="unLockMode" class="display-none">
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
														<tbody><tr>
															<td class="condition-title">이름</td>
															<td class="condition-content">
																<input type="text" class="form-control" id="cusNm" maxlength="50" value="김도엽">
																<button type="button" class="btn btn-purple-transparent" onclick="fn_updateCusNm()" id="updateCusNmBtn">변경</button>
															</td>
														</tr>
														<tr>
															<td class="condition-title">이메일</td>
															<td class="condition-content">
															
																<input type="text" class="form-control" id="email" maxlength="50" value="whitesky1203@naver.com">
																<button type="button" class="btn btn-purple-transparent" onclick="fn_updateEmail()" id="updateEmailBtn">변경</button>
															
															
															</td>
														</tr>
														<tr>
															<td class="condition-title">
																휴대전화번호
															</td>
															<td class="condition-content">
															
															
																<input type="text" class="form-control" id="mpNo" maxlength="50" readonly="">
																<input type="hidden" id="ci">
																<button type="button" class="btn btn-purple-transparent" onclick="fn_checkNiceCert()" id="updateCusNmBtn">
																	변경
																</button>
															
																<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
																<form name="form_chk" method="post">
																	<input type="hidden" name="m" value="checkplusSerivce">	<!-- 필수 데이타로, 누락하시면 안됩니다. -->
																	<input type="hidden" id="EncodeData" name="EncodeData" value="">	<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
																</form>
															</td>
														</tr>
														<tr>
															<td class="condition-title">
																
																	주민등록번호
																
																
															</td>
															<td class="condition-content">
																
																	
																		미등록 상태입니다.
																	
																	
																
																
															</td>
														</tr>
														<tr>
															<td colspan="2" class="condition-content">
																<p>
																	
																		<span class="font-red"><strong>※ 왜 주민등록번호가 필요한가요?</strong></span>
																		<br>
																		<font size="2">
																			주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다. 입력하지 않아도 대출상품 투자를 제외한 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.
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
													<div class="autoConditionSet">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAccount()" id="updateCusAccountBtn">계좌 정보 저장</button>
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
														미드레이트가 추천하는 비밀번호 변경주기는 6개월입니다. 
													</div>
													<div class="subTitle" style="margin-top: 5px;">
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-title">기존 비밀번호</td>
															<td class="condition-content">
																<input class="form-control" id="oldPswd" type="password" placeholder="기존 비밀번호를 입력해주세요.">
															</td>
														</tr>
														<tr>
															<td class="condition-title">새 비밀번호</td>
															<td class="condition-content">
																<input class="form-control" id="newPswd" type="password" placeholder="영문,숫자,특수문자(~,!,# 등) 포함 8~20자">
															</td>
														</tr>
														<tr>
															<td class="condition-title">비밀번호 확인</td>
															<td class="condition-content">
																<input class="form-control" id="newPswdChk" type="password" placeholder="비밀번호를 한번 더 입력해주세요.">
															</td>
														</tr>
													</tbody></table>
													<div class="autoConditionSet" style="margin-top: 3px;">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusPswd()">
															새 비밀번호 저장
														</button>
													</div>
												</div>
											</div>
											
											<div class="col-xs-12 xd">
												<hr>
											</div>
											
											<!-- 추가 정보 -->
											<div class="col-xs-12 col-sm-6">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 추가 정보
													</div>
													<div class="subTitle" style="margin-top: 5px;">
														정확히 입력할수록 투자/대출시 유리해집니다.
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-title">거주지역</td>
															<td class="condition-content">
																<input class="form-control" id="inputLocal" type="text" value="">
															</td>
														</tr>
														<tr>
															<td class="condition-title">출신지역</td>
															<td class="condition-content">
																<input class="form-control" id="inputHometown" type="text" value="">
															</td>
														</tr>
														<tr>
															<td class="condition-title">출신학교</td>
															<td class="condition-content">
																<input class="form-control" id="inputSchool" type="text" value="">
															</td>
														</tr>
													</tbody></table>
													<div class="autoConditionSet" style="margin-top: 6px;">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAdd()">추가정보 저장</button>
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
											
											<!-- 수신동의 -->
											<div class="col-xs-12 col-sm-6 rightLine">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 미드레이트 안내 수신동의
													</div>
													<div class="subTitle" style="margin-top: 5px;">
														안내 수신 동의시 투자/상환정보와 미드레이트에서 제공하는 혜택을 받아보실 수 있습니다. 
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-content" style="padding: 0;">
																<form class="form-inline">
																	<div class="checkbox">
																		<label class="ui-checkbox">
																			<input type="checkbox" id="emYnCheckbox"> <span>이메일 수신에 동의합니다.</span>
																		</label>
																	</div>
																</form>
															</td>
														</tr>
														<tr>
															<td class="condition-content" style="padding: 0;">
																<form class="form-inline">
																	<div class="checkbox">
																		<label class="ui-checkbox">
																			<input type="checkbox" id="smsYnCheckbox"> <span>문자발송 수신에 동의합니다.</span>
																		</label>
																	</div>
																</form>
															</td>
														</tr>
														<tr>
															<td class="condition-content" style="padding: 0;">
																<form class="form-inline">
																	<div class="checkbox">
																		<label class="ui-checkbox">
																			<input type="checkbox" id="snsYnCheckbox"> <span>SNS 게시 설정에 동의합니다.</span>
																		</label>
																	</div>
																</form>
															</td>
														</tr>
														<tr>
															<td class="condition-content" style="padding: 0;">
																<form class="form-inline">
																	<div class="checkbox">
																		<label class="ui-checkbox">
																			<input type="checkbox" id="loginAlarmYnCheckbox"> <span>로그인 확인알림 설정에 동의합니다.</span>
																		</label>
																	</div>
																</form>
															</td>
														</tr>
														<tr>
															<td class="condition-content" style="padding: 0;">
																<form class="form-inline">
																	<div class="checkbox">
																		<label class="ui-checkbox">
																			<input type="checkbox" id="repayAlarmYnCheckbox"> <span>상환정보 알림 설정에 동의합니다.</span>
																		</label>
																	</div>
																</form>
															</td>
														</tr>
													</tbody></table>
													<div class="autoConditionSet">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAgree()">수신동의 저장</button>
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
														최근 4회 동안 접속하신 정보입니다.
													</div>
													<table class="table condition-table text-center">
														<colgroup>
															<col width="50%">
															<col width="50%">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="text-center">로그인IP</th>
																<th scope="col" class="text-center">로그인일시</th>
															</tr>
														</thead>
														<tbody id="logListBody">
														<tr>	<td>211.118.162.124</td>	<td>19.8.12 14:08</td></tr><tr>	<td>211.118.162.124</td>	<td>19.8.12 13:21</td></tr><tr>	<td>211.118.162.124</td>	<td>19.8.12 10:19</td></tr><tr>	<td>211.118.162.124</td>	<td>19.8.12 09:39</td></tr></tbody>
													</table>
													<div class="autoConditionSet" style="margin-top: 6px;">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_goLeaveCus()">회원 탈퇴</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<hr>
								
								<div class="row display-none" id="crprtnDiv" style="display: none;">
									<div class="col-xs-12 col-sm-12">
										<div class="row">
											
											<!-- 법인 정보 -->
											<div class="col-xs-12 col-sm-6 rightLine">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 담당자 정보
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-title">대표자명</td>
															<td class="condition-content">
																<input class="form-control" id="inputCeoNm" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">법인번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputCrprtnNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">홈페이지URL</td>
															<td class="condition-content">
																<input class="form-control" id="inputHmpgURL" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">담당자명</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrNm" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">생년월일</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrBirthDate" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">성별</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrSexNm" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">전화번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrTelNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">팩스번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrFaxNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">업무</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrWrkNm" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">직급</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrJobNm" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">부서</td>
															<td class="condition-content">
																<input class="form-control" id="inputMngrDeptNm" type="text">
															</td>
														</tr>
													</tbody></table>
												</div>
											</div>
											
											<div class="col-xs-12 xd">
												<hr>
											</div>
											
											<div class="col-xs-12 col-sm-6">
												<div class="editCusInfo">
													<div class="title">
														<font class="font-purple">
															●
														</font> 기업 정보
													</div>
													<table class="table condition-table">
														<tbody><tr>
															<td class="condition-title">본사주소</td>
															<td class="condition-content">
																<input class="form-control" id="inputHqAddr1" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">본사상세주소</td>
															<td class="condition-content">
																<input class="form-control" id="inputHqAddr2" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">본사우편번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputHqZipCd" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">본사전화번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputHqTelNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">본사팩스번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputHqFaxNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">사업장주소</td>
															<td class="condition-content">
																<input class="form-control" id="inputPobAddr1" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">사업장상세주소</td>
															<td class="condition-content">
																<input class="form-control" id="inputPobAddr2" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">사업장우편번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputPobZipCd" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">사업장전화번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputPobTelNo" type="text">
															</td>
														</tr>
														<tr>
															<td class="condition-title">사업장팩스번호</td>
															<td class="condition-content">
																<input class="form-control" id="inputPobFaxNo" type="text">
															</td>
														</tr>
													</tbody></table>
													<p class="font-purple" style="margin-top: 6px;">
														※ 정보 변경은 고객센터로 문의해 주시기 바랍니다.
													</p>
													<div class="autoConditionSet display-none" style="margin-top: 6px;">
														<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusCrprtn()">법인정보 저장</button>
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