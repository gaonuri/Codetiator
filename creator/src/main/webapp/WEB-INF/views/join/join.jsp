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
	<title>Dashio - Bootstrap Admin Template</title>
	
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


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(document).ready(function(){
		$("#addr").click(function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
	 	        	$("#addr").val(data.address);
		        }//oncomplete
		    }).open();
		});//click
	});//ready
</script>
<script>
	$(document).ready(function(){
		$("#address").click(function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
	 	        	$("#address").val(data.address);
		        }//oncomplete
		    }).open();
		});//click
	});//ready
</script>  
<script>
	$(document).ready(function(){
		$("#address1").click(function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
	 	        	$("#address1").val(data.address);
		        }//oncomplete
		    }).open();
		});//click
	});//ready
</script>  
<script type="text/javascript">

var chkemail = '';

//id check
$(document).ready(function(){
	$("#email").blur(function(){
		if($.trim($("#email").val()) == ''){
			alert("사용 가능한 이메일 입니다");
			$("#email").focus();
			return;
		}
		$.post(
				"./joinemailchk",
				{
					email:$("#email").val()
				},
				function(data,status){
					if(data == 0){
						chkemail = $("#email").val();
					}else{
						alert("이미 등록된 이메일 입니다.");
					}
				}//function
		);//post
	});//ready
});//blur

//radio & checkbox & eng
$(document).ready(function(){
	$(":checkbox").click(function(){
		if($(this).val() == 0) {
			$(this).val(1);
		} else if($(this).val() == 1) {
			$(this).val(0);
		}
	});//click

	$(".onlyKor").change(function(){
		//alert($(this).val());
		var korStd = /^[가-힣]{1,9}$/;
		if($(this).val().match(korStd)){
			//alert("ok");
		}else{
			alert("정확한 이름을 입력해 주세요.");
			//$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(".onlyEmail").change(function(){
		//alert($(this).val());
		var emailStd = /^[a-zA-Z@.]{1,20}$/;
		if($(this).val().match(emailStd)){
			//alert("ok");
		}else{
			alert("영문만 입력 가능한 필드 입니다.");
			$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(".onlyJumin").change(function(){
		//alert($(this).val());
		var juminStd = /^[0-9]{8}$/;
		if($(this).val().match(juminStd)){
			//alert("ok");
		}else{
			alert("YYYYMMDD형식으로 작성해 주세요.");
			//$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(".onlyPhone").change(function(){
		//alert($(this).val());
		var phoneStd = /^[0-9]{11}$/;
		if($(this).val().match(phoneStd)){
			//alert("ok");
		}else{
			alert("핸드폰번호 형식에 맞게 작성해 주세요.");
			//$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(".onlyPass").change(function(){
		//alert($(this).val());
		var passStd = /^[0-9a-zA-Z!@#$%^&*]{8,20}$/;
		if($(this).val().match(passStd)){
			//alert("ok");
		}else{
			alert("8~20자 영문,숫자,특수문자만 입력해 주세요.");
			$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(":radio").click(function(){
		if($(this).val() == 1) {
			rdoVal = 1;
			$(".cmpn_join").css("display","none");
		} else {
			rdoVal = 2;
			$(".cmpn_join").css("display","table-row");
		}
	});//click
});//ready

	$(document).ready(function(){
		$("#join_btn").click(function(){
// 			기본정보
			if($.trim($("#user_name").val()) == ''){
				alert("이름은 필수 입력 사항입니다.");
				$("#user_name").focus();
				return;
			}
			if($.trim($("#email").val()) == ''){
				alert("이메일은 필수 입력 사항입니다.");
				$("#email").focus();
				return;
			}
			if($("#email").val().indexOf('@') == '-1'
				|| $("#email").val().lastIndexOf('.') == '-1'){
				alert("이메일 형식이 잘못되었습니다.");
				$("#email").focus();
				return;
			}
			if($.trim($("#user_password").val()) == ''){
				alert("비밀번호는 필수 입력 사항입니다.");
				$("#user_password").focus();
				return;
			}
			if($("#user_password").val() != $("#user_password_re").val()){
				alert("비밀번호를 똑같이 입력해 주세요.");
				$("#user_password").focus();
				return;
			}
			if($.trim($("#jumin").val()) == ''){
				alert("생년월일은 필수 입력 사항입니다.");
				$("#jumin").focus();
				return;
			}
			if($.trim($("#phone").val()) == ''){
				alert("휴대폰 번호는 필수 입력 사항입니다.");
				$("#phone").focus();
				return;
			}
			if($.trim($("#addr").val()) == ''){
				alert("주소는 필수 입력 사항입니다.");
				$("#addr").focus();
				return;
			}
			if($.trim($("#addrdetail").val()) == ''){
				alert("상세주소를 입력해주세요.");
				$("#addrdetail").focus();
				return;
			}			
			if($("#user_privacy_policy_agree").val() == 0){
				alert("이용 약관 동의 후 회원 가입 바랍니다.");
				$("#user_privacy_policy_agree").focus();
				return;
			}
			if($("#user_terms_of_service").val() == 0){
				alert("개인 정보 처리 방침 동의 후 회원 가입 바랍니다.");
				$("#user_terms_of_service").focus();
				return;
			}
// 			alert("aaa");
			$.post(
					"./joinuser",
					{
						user_name:$("#user_name").val(),
						email:$("#email").val(),
						user_password:$("#user_password").val(),
						jumin:$("#jumin").val(),
						phone:$("#phone").val(),
						addr:$("#addr").val(),
						addr:$("#addrdetail").val(),
						user_chk_email:$("#user_chk_email").val(),
						user_terms_of_service:$("#user_terms_of_service").val(),
						user_privacy_policy_agree:$("#user_privacy_policy_agree").val(),
						join_date:$("#join_date").val()
					},					
					function(data,status){
// 						alert("bbb");
						if(status == "success"){
							if(data == -1) {
								alert("시스템 관리자에게 문의 바랍니다.");
							} else if(data > 0) {
								alert("회원 가입 되었습니다.");
								location.href="/creator/main";
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}//function
			);//post
		});//click
	});//ready
	
// 	<!--  ======================================================= 일반회원-->
	
	$(document).ready(function(){
		$("#join_btn1").click(function(){
//			사업자정보
		if($.trim($("#busi_resi_num").val()) == ''){
			alert("사업장 등록 번호는 필수 입력 사항입니다.");
			$("#busi_resi_num").focus();
			return;
		}
		if($.trim($("#busi_resi_num_re").val()) == ''){
			alert("사업장 등록 번호를 한번 더  입력해 주세요.");
			$("#busi_resi_num_re").focus();
			return;
		}
		if($.trim($("#busi_password").val()) == ''){
			alert("비밀번호는 필수 입력 사항입니다.");
			$("#busi_password").focus();
			return;
		}
		if($("#busi_password").val() != $("#busi_password_re").val()){
			alert("비밀번호를 똑같이 입력해 주세요.");
			$("#busi_password").focus();
			return;
		}
		if($.trim($("#busi_regi").val()) == ''){
			alert("사업자등록증 사본은 필수 입력 사항입니다.");
			$("#busi_regi").focus();
			return;
		}
		
//			기업정보
		if($.trim($("#com_name").val()) == ''){
			alert("업체명은 필수 입력 사항입니다.");
			$("#com_name").focus();
			return;
		}
		if($.trim($("#presen_name").val()) == ''){
			alert("대표자명은 필수 입력 사항입니다.");
			$("#presen_name").focus();
			return;
		}
		if($.trim($("#cor_num").val()) == ''){
			alert("법인번호는 필수 입력 사항입니다.");
			$("#cor_num").focus();
			return;
		}
		
//			본사정보
		if($.trim($("#address").val()) == ''){
			alert("주소는 필수 입력 사항입니다.");
			$("#address").focus();
			return;
		}
		if($.trim($("#addressdetail").val()) == ''){
			alert("상세주소를 입력해주세요.");
			$("#addressdetail").focus();
			return;
		}	
		
//			담당자정보
		if($.trim($("#Manager_name").val()) == ''){
			alert("담당자명은 필수 입력 사항입니다.");
			$("#Manager_name").focus();
			return;
		}	
		if($.trim($("#Manager_birth").val()) == ''){
			alert("담당자 생년월일은 필수 입력 사항입니다.");
			$("#Manager_birth").focus();
			return;
		}	
		if($.trim($("#Manager_email").val()) == ''){
			alert("담당자 이메일은 필수 입력 사항입니다.");
			$("#Manager_email").focus();
			return;
		}
		if($("#Manager_email").val().indexOf('@') == '-1'
			|| $("#Manager_email").val().lastIndexOf('.') == '-1'){
			alert("이메일 형식이 잘못되었습니다.");
			$("#Manager_email").focus();
			return;
		}		
		if($.trim($("#Office_num").val()) == ''){
			alert("사무실번호는 필수 입력 사항입니다.");
			$("#Office_num").focus();
			return;
		}	
		if($.trim($("#Manager_phone").val()) == ''){
			alert("휴대전화 번호는 필수 입력 사항입니다.");
			$("#Manager_phone").focus();
			return;
		}	
		if($.trim($("#Manager_fax_num").val()) == ''){
			alert("팩스번호는 필수 입력 사항입니다.");
			$("#Manager_fax_num").focus();
			return;
		}	
		if($.trim($("#Manager_task").val()) == ''){
			alert("담당업무는 필수 입력 사항입니다.");
			$("#Manager_task").focus();
			return;
		}	
		if($.trim($("#Manager_rank").val()) == ''){
			alert("직급은 필수 입력 사항입니다.");
			$("#Manager_rank").focus();
			return;
		}	
		if($.trim($("#Manager_depart").val()) == ''){
			alert("근무부서는 필수 입력 사항입니다.");
			$("#Manager_depart").focus();
			return;
		}	
		
//		이용약관
		if($("#busi_privacy_policy_agree").val() == 0){
			alert("이용 약관 동의 후 회원 가입 바랍니다.");
			$("#busi_privacy_policy_agree").focus();
			return;
		}
		if($("#busi_terms_of_service").val() == 0){
			alert("개인 정보 처리 방침 동의 후 회원 가입 바랍니다.");
			$("#busi_terms_of_service").focus();
			return;
		}
		
		$.post(
				"./joinbusi",
				{
					busi_resi_num:$("#busi_resi_num").val(),
					busi_password:$("#busi_password").val(),
					com_name:$("#com_name").val(),
					presen_name:$("#presen_name").val(),
					cor_num:$("#cor_num").val(),
					homepage:$("#homepage").val(),
					address:$("#address").val(),
					Fax_num:$("#Fax_num").val(),
					Manager_name:$("#Manager_name").val(),
					Manager_birth:$("#Manager_birth").val(),
					Manager_email:$("#Manager_email").val(),
					Office_num:$("#Office_num").val(),
					Manager_phone:$("#Manager_phone").val(),
					Manager_fax_num:$("#Manager_fax_num").val(),
					Manager_task:$("#Manager_task").val(),
					Manager_depart:$("#Manager_depart").val(),
					Terms_of_service:$("#Terms_of_service").val(),
					privacy_policy_agree:$("#privacy_policy_agree").val(),
					join_date:$("#join_date").val()
				},				

				function(data,status){
//						alert("bbb");
					if(status == "success"){
						if(data == -1) {
							alert("시스템 관리자에게 문의 바랍니다.");
						} else if(data > 0) {
							alert("회원 가입 되었습니다.");
							location.href="/creator/main";
						} else {
							alert("잠시 후, 다시 시도해 주세요.");
						}
					} else {
						alert("시스템 관리자에게 문의 바랍니다.");
					}
				}//function
		);//post
	});//click
});//ready
// 		<!--  ======================================================= 법인회원-->	
		
</script>


</head>

<body>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="./main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
			<!--logo end-->
			<div class="nav notify-row top-menu" id="top_menu">
				<!--  notification start -->
				<ul class="nav pull-right top-menu">
					<!-- settings start -->
					
					<!-- 회사소개 start -->
					<li><a href="./loan_guide">회사소개</a></li>
					<!-- 회사소개 end -->
					
					<!-- 대출 start -->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">대출</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="./loan_guide">대출안내</a>
							</li>
							<li>
								<a href="./loan">대출하기</a>
							</li>
						</ul>
					</li>
	          		<!-- 대출 end -->
	          
	          		<!-- inbox dropdown start-->
	         		<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							투자
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-black"></div>
							<li>
								<a href="./invest_guide">투자안내</a>
							</li>
							<li>
								<a href="./invest_list">투자하기</a>
							</li>
							<li>
								<a href="./invest_finish">완료된투자</a>
							</li>
						</ul>
					</li>
	          		<!-- 투자 end -->
	          
	          
					<!-- 고객지원 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							고객지원
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow"></div>
							<li>
								<a href="./faq">FAQ</a>
							</li>
							<li>
								<a href="./support">이용약관</a>
							</li>
							<li>
								<a href="./policy">개인정보</a>
							</li>
							<li>
								<a href="./inquiry">1:1문의</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 end -->
					
					<!-- 마이페이지 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							마이페이지
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>
							<li>
								<a href="./my_dashboard">대시보드</a>
							</li>
							<li>
								<a href="./my_invest_list">투자내역</a>
							</li>
							<li>
								<a href="./my_loan_list">대출내역</a>
							</li>
							<li>
								<a href="./my_depo_mgn">예치금관리</a>
							</li>
							<li>
								<a href="./my_modify">회원정보수정</a>
							</li>
						</ul>
					</li>
					<!-- 마이페이지 end -->
					
					<!-- 로그아웃 start -->
					<li id="header_inbox_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="./intro">
							로그아웃
						</a>
					</li>
					<!-- 로그아웃 end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="/creator/join">회원가입</a></li>
				</ul>
			</div>
	    </header>
	    <!--header end-->
	   
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        ***********************************************************************************************************************************************************-->
	
	<!--main content start-->
	
	
<section id="main-content">
<section class="wrapper site-min-height">
<div class="container">
	<div class="col-md-offset-3">
	<img src="${pageContext.request.contextPath}/resources/img/test_logo.jpg" alt="login_img">
	</div>
</div>
				
<!-- =====================================================================logo -->
	
<div class="col-lg-4 mt col-md-offset-3">
<div class="row content-panel">
	<div class="panel-heading">
		<ul class="nav nav-tabs nav-justified">
			<li class="active">
				<a data-toggle="tab" href="#usertab">일반회원</a>
			</li>
			<li>
				<a data-toggle="tab" href="#busitab">법인회원</a>
			</li>
		</ul>
	</div>
    <!-- /panel-heading -->
    
	<div class="panel-body">
	<div class="tab-content">
		<div id="usertab" class="tab-pane active">
	    	<form role="form" class="form-horizontal">
		   		<div class="row">
		   		<div class="col-sm-10 col-md-offset-1"><h4>기본정보</h4></div>
		    	<div class="col-md col-md-offset-2  ">
					<div class="form-group">
			           	<div class="col-sm-10">
							<input type="text" class="form-control onlyKor" id="user_name" placeholder="*이름">
			            </div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="email" class="form-control onlyEmail" id="email" placeholder="*이메일">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control onlyPass" id="user_password" placeholder="*비밀번호">
							<span class="help-block">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</span>
						</div>
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control onlyPass" id="user_password_re" placeholder="*비밀번호 확인">
							<span class="mt-2 d-block">비밀번호를 환번 더 입력해 주세요.</span>
						</div>
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control onlyJumin" id="jumin" placeholder="*생년월일">
							<span class="mt-2 d-block">YYYYMMDD형식으로 입력해 주세요.</span>
						</div>						
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control onlyPhone" id="phone" placeholder="*휴대폰 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
					</div>		
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addr" readonly="readonly" placeholder="*주소">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addrdetail" placeholder="*상세주소">
						</div>
					</div>		
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" />
							<label class="control control-checkbox">이메일 수신 여부[선택]	</label>
						</div>
					</div>		
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" id="agree1" value="0" />
							<label class="control-inline control-checkbox"><strong>이용약관 동의[필수]</strong></label>
						</div>
					</div>	
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" id="agree2" value="0" />
							<label class="control-inline control-checkbox"><strong>개인정보 처리방침 동의[필수]</strong></label>
						</div>
					</div>					
					<div class="col-sm-10 col-lg-offset-3 ">
						<button type="submit" class="btn btn-theme" id="join_btn">회원가입</button>
					</div>
				</div>
				</div>
	    	</form>
		</div>
		
		<!-- =====================================================================일반회원 -->	
		
		<div id="busitab" class="tab-pane">
			<form role="form" class="form-horizontal">
		   		<div class="row">
		   		<div class="col-sm-10 col-md-offset-1"><h4>사업자정보</h4></div>
		    	<div class="col-md col-md-offset-2  ">
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="busi_resi_num" placeholder="*사업자등록번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="busi_resi_num_re" placeholder="*사업자등록번호 확인">
							<span class="mt-2 d-block">사업자등록번호를 한번 더 입력해 주세요.</span>
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="busi_password" placeholder="*비밀번호">
							<span class="mt-2 d-block">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</span>
						</div>				
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="busi_password_re" placeholder="*비밀번호 확인">
							<span class="mt-2 d-block">비밀번호를 환번 더 입력해 주세요.</span>
						</div>				
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<label for="exampleFormControlFile1">*사업자등록증 사본 등록[필수]</label>
							<input type="file" class="file-pos" id="busi_regi">
						</div>				
					</div>	
					
					<div class="col-sm-10 col-md-offset-1"><h4>기업정보</h4></div>		
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="com_name" placeholder="*업체명">
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="presen_name" placeholder="*대표자명">
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="cor_num" placeholder="*법인번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="homepage" placeholder="홈페이지URL">
						</div>				
					</div>	
					
					<div class="col-sm-10 col-md-offset-1"><h4>본사정보</h4></div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="address" readonly="readonly" placeholder="*주소">
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addressdetail" placeholder="*상세주소">
						</div>
					</div>						
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Pre_phone" placeholder="대표전화번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Fax_num" placeholder="팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>	
					
					<div class="col-sm-10 col-md-offset-1"><h4>사업장정보</h4></div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="address" readonly="readonly" placeholder="*주소">
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addressdetail" placeholder="*상세주소">
						</div>
					</div>						
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Pre_phone" placeholder="대표전화번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Fax_num" placeholder="팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>	
					
					<div class="col-sm-10 col-md-offset-1"><h4>담당자정보</h4></div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_name" placeholder="*담당자명">
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_birth" placeholder="*담당자 생년월일">
							<span class="mt-2 d-block">YYYYMMDD와 같은 형식으로 입력해 주세요.</span>
						</div>				
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="email" class="form-control" id="Manager_email" placeholder="*이메일">
						</div>				
					</div>						
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*사무실 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>				
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_phone" placeholder="*휴대폰 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>		
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_fax_num" placeholder="*팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
					</div>		
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_task" placeholder="*담당업무">
						</div>				
					</div>		
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_rank" placeholder="*직급">
						</div>				
					</div>	
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Manager_depart" placeholder="*근무부서">
						</div>				
					</div>																																																							
				
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" />
							<label class="control control-checkbox">이메일 수신 여부[선택]	</label>
						</div>
					</div>		
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" id="agree1" value="0" />
							<label class="control-inline control-checkbox"><strong>이용약관 동의[필수]</strong></label>
						</div>
					</div>	
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="checkbox" name="checkbox1" id="agree2" value="0" />
							<label class="control-inline control-checkbox"><strong>개인정보 처리방침 동의[필수]</strong></label>
						</div>
					</div>					
					<div class="col-sm-10 col-lg-offset-3 ">
						<button type="submit" class="btn btn-theme" id="join_btn1">회원가입</button>
					</div>
				</div>
				</div>
	    	</form>
	   	</div>
	</div>
	</div>
</div>
</div>

<!-- =====================================================================법인회원 -->		

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
	
	<script type="text/javascript">// 팝업
	/*  
	$(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Developed by <a href="http://alvarez.is" target="_blank" style="color:#4ECDC4">Alvarez.is</a>.',
        // (string | optional) the image to display on the left
        image: '${pageContext.request.contextPath}/resources/bootstrap/img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });
      
      return false;
    });
      */
	</script>
	
	<script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
	</script>
	
</body>

</html>










