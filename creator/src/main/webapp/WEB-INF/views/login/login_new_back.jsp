<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>

<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<title>CREATOR</title>
	
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="apple-touch-icon">
	
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
	$("#login_btn").click(function(){
		if($.trim($("#email").val()) == ""){
			alert("이메일을 확인하세요.");
			$("#email").focus();
			return;
		}
		if($.trim($("#user_password").val()) == ""){
			alert("비밀번호를 확인하세요.");
			$("#user_password").focus();
			return;
		}

		$.post(
				"${pageContext.request.contextPath}/loginuser"
				,{
					email:$("#email").val(),
					user_password:$("#user_password").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("로그인 되었습니다.");
							location.href="/creator/main";
						} else if(data == 0){
							alert("존재하지 않는 이메일 또는 비밀번호 입니다.");
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
</script>

<script type="text/javascript">
$(document).ready(function(){
	$("#login_btn1").click(function(){
		if($.trim($("#busi_resi_num").val()) == ""){
			alert("사업자등록번호를 확인하세요.");
			$("#busi_resi_num").focus();
			return;
		}
		if($.trim($("#busi_password").val()) == ""){
			alert("비밀번호를 확인하세요.");
			$("#busi_password").focus();
			return;
		}
		
		$.post(
				"${pageContext.request.contextPath}/loginbusi"
				,{
					busi_resi_num:$("#busi_resi_num").val(),
					busi_password:$("#busi_password").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("로그인 되었습니다.");
							location.href="/creator/main";
						} else if(data == 0){
							alert("존재하지 않는 사업자등록번호 또는 비밀번호 입니다.");
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
</script>
	
</head>
<style>
.text-center {
    text-align: center;
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block;
}
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
section {
    display: block;
}
body, html {
    font-family: 'Noto Sans KR', sans-serif;
    /* font-family: "Seoul Namsan", sans-serif; */
    /* font-family: "NanumSquareRound", sans-serif; */
    /* text-rendering: optimizeLegibility !important; */
    /* -webkit-font-smoothing: antialiased !important; */
    color: #5a5a5a;
    letter-spacing: -0.4px;
}

body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #EAEAEA;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
    color: -internal-root-color;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
#login .section-body {
    position: relative;
    padding: 180px 20px 107px 20px;
}
#login .section-body .wrap {
    max-width: 400px;
    margin: auto;
}
#login .section-body .wrap .logo {
    margin-bottom: 24px;
}
#login .section-body .wrap .logo img {
    max-width: 160px;
}
img {
    vertical-align: middle;
    border: 0;
}
#login .section-body .wrap .box {
    border: 2px solid #555;
}
.margin-b-40 {
    margin-bottom: 40px;
}
#login .section-body .wrap .box .row-cat {
    padding: 0 15px;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
#login .section-body .wrap .box .btn-group.cusGb {
    width: 100%;
    border-bottom: 2px solid #555;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
.col-md-6 {
    width: 50%;
}
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}
#login .section-body .wrap .box .btn-group.cusGb label {
    font-size: 16px;
    min-width: 50%;
    padding: 10px;
}
.labelBtn-purple {
    color: #fff;
    font-weight: 600;
    background-color: #712594;
    opacity: 1.0;
    border-radius: 0px;
}

.btn-block {
    display: block;
    width: 100%;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
label {
    float: left;
    font-size: 12px;
    font-weight: 400;
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
}
#login .section-body .wrap .box .btn-group.cusGb label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
}
#login .section-body .wrap .box .body {
    padding: 40px 40px 60px 40px;
}
.margin-b-6 {
    margin-bottom: 6px;
}
.form-group {
    margin-bottom: 15px;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.form-control-lgn {
    width: 100%;
    height: 36px;
    margin-bottom: 22px;
    padding: 12px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #EAEAEA;
    background-image: none;
    border: none;
    border-bottom: 2px solid #555;
}
body input {
    margin-bottom: 14px;
}
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
input {
    line-height: normal;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
.pswdWrap {
    position: relative;
}
input[type="password"] {
    font-family: 'Arial',sans-serif !important;
}
.pswdWrap i {
    position: absolute;
    top: 10px;
    left: 90%;
}
.fa-lg {
    font-size: 1.33333333em;
    line-height: 0.75em;
    vertical-align: -15%;
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
.ui-checkbox {
    position: relative;
    margin: 0 20px 0 15px;
    display: inline;
}
.ui-checkbox input[type=checkbox] {
    display: none;
}
#saveInfoCb01 input {
	border-width: 0px;
}
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    -webkit-appearance: checkbox;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}
.ui-checkbox input[type=checkbox]+span {
    font-weight: 400;
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
#login .section-body .wrap .form-group button {
    border-radius: 0px;
    border: 2px solid #555;
    padding: 10px 26px;
    /* margin-bottom: 12px; */
    font-size: 16px;
    font-weight: bold;
    color: #fff;
}
.btn-purple-transparent {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 16px;
    border-style: none;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
     height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
hr {
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}
.display-none {
    display: none;
}
.font-red {
    color: #e08484 !important;
}
.margin-b-12 {
    margin-bottom: 12px;
}
#login .section-body .wrap .form-group.facebook img {
    position: absolute;
    margin-top: 10px;
    margin-left: 45px;
    display: block;
    max-width: 11px;
}
.btn-facebook {
    color: #fff;
    background-color: #425f9f;
    opacity: 1.0;
    font-size: 14px;
}
#login .section-body .wrap .form-group .left {
    text-align: left;
    display: inline-block;
    margin-top: 0px;
    margin-bottom: 0px;
    color: #838383;
    float: left;
}
#login .section-body .wrap .form-group .left a {
    font-size: 14px;
}
.text-muted {
    color: #777;
}
a {
    color: #712594;
}
a {
    color: #337ab7;
    text-decoration: none;
}
a {
    background-color: transparent;
}
#login .section-body .wrap .form-group .right {
    text-align: right;
    display: inline-block;
    margin-top: 0px;
    margin-bottom: 0px;
    color: #838383;
    float: right;
}
#login .section-body .wrap .form-group .right a {
    font-size: 14px;
    color: #838383;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#cusGbLabel01").on("click", function() {
		$("#cusGb01").css("display", "block");
		$("#cusGb02").css("display", "none");
		$("#cusGbLabel02").removeClass("btn labelBtn-purple btn-block active");
		$("#cusGbLabel01").removeClass("btn labelBtn-purple btn-block checked");
		$("#cusGbLabel02").addClass("btn labelBtn-purple btn-block active checked");
		$("#cusGbLabel01").addClass("btn labelBtn-purple btn-block active");
	});
	$("#cusGbLabel02").on("click", function() {
		$("#cusGb01").css("display", "none");
		$("#cusGb02").css("display", "block");
		$("#cusGbLabel02").removeClass("btn labelBtn-purple btn-block active checked");
		$("#cusGbLabel01").removeClass("btn labelBtn-purple btn-block active");
		$("#cusGbLabel02").addClass("btn labelBtn-purple btn-block active");
		$("#cusGbLabel01").addClass("btn labelBtn-purple btn-block checked");
	});
});
</script>
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	   
	    <%@ include file="../header.jsp" %>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		
<section id="login" class="text-center">
		<div class="container">
			<div class="section-body">
				<div class="wrap">
					<div class="logo">
						<img src="${pageContext.request.contextPath}/resources/img/img_login_logo.png" alt="login_img">
					</div>
					<div class="loginComment">
					</div>
					<div class="box margin-b-40 lgn_wrap">
						<div class="tap">
							<div class="row row-cat">
								<div class="btn-group cusGb" data-toggle="buttons">
									<div class="col-xs-6 col-sm-6 col-md-6 col" style="padding-left: 0px;padding-right: 0px;">
										<label class="btn labelBtn-purple btn-block" id="cusGbLabel01" style="font-weight: 600;opacity: 1.0;border-radius: 0px;">
											일반회원
										</label>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col" style="padding-left: 0px;padding-right: 0px;">
										<label class="btn labelBtn-purple btn-block checked" id="cusGbLabel02" style="font-weight: 600;opacity: 1.0;border-radius: 0px;">
											법인회원
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="body" id="cusGb01">
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<input class="form-control-lgn" id="loginId01" type="text" placeholder="*이메일(대소문자 구분 입력)">
							</div>
							<div class="form-group margin-b-6 pswdWrap">
								<input class="form-control-lgn" id="loginPswd01" type="password" placeholder="*비밀번호" onkeypress="fn_hitEnterKey(event, 'login')">
								<i class="fa fa-eye-slash fa-lg"></i>
							</div>
							<div class="form-group margin-b-6 text-left">
								<label class="ui-checkbox" style="margin: 5px 20px 10px;">
									<input type="checkbox" name="saveInfoCb01" id="saveInfoCb01"> <span>내 아이디 기억하기</span>
								</label>
							</div>
							<!-- 
							<div class="sep-line"></div>
							 -->
							<div class="form-group margin-b-6" style="margin-bottom: 6px;height: 0px;">
								<div class="text-left display-none font-red" id="error01">
									<hr>없는 아이디거나 비밀번호가 일치하지 않습니다.<br>다시 시도해주세요.
								</div>
								<div class="text-left display-none font-red" id="errPswdErrCnt01">
									<hr>비밀번호 5회 이상 입력 오류 상태입니다.
									<div style="padding: 5px 0 30px 0;">
										<div class="left">
											<img src="${pageContext.request.contextPath}/resources/img/icon_login_lock.png">
										</div>
										<div class="left font-purple">
											<a class="text-muted" href="/findpwd" style="text-decoration: underline;">비밀번호를 잊으셨나요?</a>
										</div>
									</div>
								</div>
								<div class="text-left display-none font-red" id="errNotFound01">
									<hr>없는 아이디거나 비밀번호가 일치하지 않습니다.<br>다시 시도해주세요.
								</div>
								<div class="text-left display-none font-red" id="errUseYn01">
									<hr>사용 중지된 계정입니다.<br>고객센터로 문의하세요.[02-546-4076]
								</div>
							</div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_loginCheck()">로그인</button>
							</div>
							<hr style="margin-bottom: 20px;margin-top: 20px;">
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<input class="form-control-lgn" id="mpNo01" type="text" placeholder="휴대전화번호 간편로그인" onkeypress="fn_hitEnterKey(event, 'send')">
								<input class="form-control-lgn display-none" id="authText01" type="text" placeholder="*인증번호" onkeypress="fn_hitEnterKey(event, 'cnfrm')" maxlength="6">
							</div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<div class="text-left display-none font-red" id="authTextError01">
									없는 아이디거나 비밀번호가 일치하지 않습니다.<br>다시 시도해주세요.
								</div>
								<div class="text-left display-none font-red" id="authTextErrPswdErrCnt01">
									비밀번호 5회 이상 입력 오류 상태입니다.
									<div style="padding: 5px 0 30px 0;">
										<div class="left">
											<img src="${pageContext.request.contextPath}/resources/img/icon_login_lock.png">
										</div>
										<div class="left font-purple">
											<a class="text-muted" href="/findpwd" style="text-decoration: underline;">비밀번호를 잊으셨나요?</a>
										</div>
									</div>
								</div>
								<div class="text-left display-none font-red" id="authTextErrUseYn01">
									사용 중지된 계정입니다.<br>고객센터로 문의하세요.[02-546-4076]
								</div>
								<div class="text-left display-none font-red" id="authTextErrAuthText01">
									인증번호를 정확히 입력해 주세요.
								</div>
								<div class="text-left display-none font-red" id="authTextErrTimeOut01">
									인증번호 입력시간이 초과되었습니다. 이메일 로그인을 이용해 주세요.
								</div>
							</div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<button type="button" class="btn btn-purple-transparent btn-block" id="authTextSendBtn" onclick="fn_authTextSend()">인증번호 발송</button>
								<button type="button" class="btn btn-purple-transparent btn-block display-none" id="authTextCnfrmBtn" onclick="fn_authTextCnfrm()">인증번호 확인</button>
							</div>
							<hr style="margin-bottom: 20px;margin-top: 20px;">
							<div class="form-group margin-b-12 facebook">
								<img src="${pageContext.request.contextPath}/resources/img/icon_join_facebook.png">
								<button type="button" class="btn btn-facebook btn-block" onclick="fn_loginFacebook()">페이스북으로 로그인</button>
							</div>
							<hr style="margin-bottom: 20px;margin-top: 20px;">
							<div class="form-group margin-b-12">
								<div class="left" id="findpwdBtn01">
									<a class="text-muted" href="/findpwd" style="text-decoration: underline;">비밀번호를 잊으셨나요?</a>
								</div>
								<div class="right">
									<a class="text-muted" href="/register" style="text-decoration: underline;">회원 가입하기</a>
								</div>
							</div>
						</div>
						
						<div class="body" id="cusGb02" style="display: none;">
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<input class="form-control-lgn" id="loginId02" type="text" placeholder="*사업자등록번호" maxlength="10">
							</div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<input class="form-control-lgn" id="loginPswd02" type="password" placeholder="*비밀번호" onkeypress="fn_hitEnterKey(event, 'login')">
							</div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<label class="ui-checkbox" style="margin: 5px 20px 10px;">
									<input type="checkbox" name="saveInfoCb02" id="saveInfoCb02"> <span style="font-family: 'Noto Sans KR', sans-serif;">사업자등록번호 기억하기</span>
								</label>
							</div>
							<div class="form-group margin-b-6 text-left">
								<label class="ui-checkbox" style="margin: 5px 20px 10px;">
									<input type="checkbox" name="showPswdCb01" id="showPswdCb02"> <span style="font-family: 'Noto Sans KR', sans-serif;">비밀번호 보이기</span>
								</label>
							</div>
							<div class="sep-line"></div>
							<div class="form-group margin-b-6" style="margin-bottom: 6px;">
								<div class="text-left display-none font-red" id="error02">
									<hr>없는 아이디거나 비밀번호가 일치하지 않습니다.<br>다시 시도해주세요.
								</div>
								<div class="text-left display-none font-red" id="errPswdErrCnt02">
									<hr>비밀번호 5회 이상 입력 오류 상태입니다.
									<div style="padding: 5px 0 30px 0;">
										<div class="left">
											<img src="${pageContext.request.contextPath}/resources/img/icon_login_lock.png">
										</div>
										<div class="left font-purple">
											<a class="text-muted" href="/findpwd" style="text-decoration: underline;">비밀번호를 잊으셨나요?</a>
										</div>
									</div>
								</div>
								<div class="text-left display-none font-red" id="errNotFound02">
									<hr>없는 아이디거나 비밀번호가 일치하지 않습니다.<br>다시 시도해주세요.
								</div>
								<div class="text-left display-none font-red" id="errUseYn02">
									<hr>사용 중지된 계정입니다.<br>고객센터로 문의하세요.[02-546-4076]
								</div>
							</div>
							<div class="form-group margin-b-12">
								<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_loginCheck()">로그인</button>
							</div>
							<hr>
							<div class="form-group margin-b-12">
								<div class="left" id="findpwdBtn02">
									<a class="text-muted" href="/findpwd" style="text-decoration: underline;">비밀번호를 잊으셨나요?</a>
								</div>
								<div class="right">
									<a class="text-muted" href="/register" style="text-decoration: underline;">회원 가입하기</a>
								</div>
							</div>
						</div>
						<input id="cusGbCd" type="hidden" value="01">
						<input id="checkFbEmailYn" type="hidden" value="N">
					</div>
				</div>
			</div>
		</div>
	</section>
	    <!-- /MAIN CONTENT -->
	    
	    <input type="hidden" id="numChk" value="${memVO.user_num}"/>
	    <input type="hidden" id="numChk1" value="${memVO.busi_num}"/>
	    
	    <!--main content end-->
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
</body>

</html>