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

<script type="text/javascript">

var chkemail = '';
var chklicense = '';

//id check

// /([a-z0-9]{1,20})(@)+([a-z]{1,20})(.)+([a-z]{1,20})/gi;
// var homepageStd = /(http(s)?:\/\/)([a-z0-9\w]+\.*)+[a-z0-9]{2,4}/gi;
// var numStd = /^[0-9]{1,20}$/;
// 		$(".onlyEmail").change(function(){
// 			//alert($(this).val());
// 			var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20})(.)([a-z]{1,10})/gi;
// 			if($(this).val().match(emailStd)){
// 				//alert("ok");
// 			}else {
// 				alert("올바르지 않은 이메일 입니다.");
// 				$(this).val("");
// // 				$(this).focus();
// 				return;
// 			}
// 		});//onlyEmail

$(document).ready(function(){
	$("#email").blur(function(){
		var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
		if($.trim($("#email").val()) != $(this).val().match(emailStd)){
			alert("올바르지 않은 이메일 입니다.");
			return;
		}

		$.post(
				"${pageContext.request.contextPath}/joinemailchk",
				{
					email:$("#email").val(),
					manager_email:$("#email").val()
				},
				function(data,status){
					if(data == 0){
						alert("사용 가능한 이메일 입니다.");
						chkemail = $("#email").val();
						return;
					}else{
						alert("이미 등록된 이메일 입니다.");
						return;
					}
				}//function
		);//post
	});//ready
});//blur

$(document).ready(function(){
	$("#busi_resi_num").blur(function(){
		if($.trim($("#busi_resi_num").val()) == "") {
			alert("사업자등록번호는 필수 입력 입니다.");
 			//alert($("#busi_resi_num").size());
			return;
		}
		var licenseStd = /^[0-9]{10}$/;
		if($(this).val().match(licenseStd)){
			$.post("${pageContext.request.contextPath}/joinlicensechk",
				{
					busi_resi_num:$("#busi_resi_num").val()
				},
				function(data,status){
					if(data == 0){
						alert("사용 가능한 사업자등록번호 입니다.");
						chklicense = $("#busi_resi_num").val();
						return;
					}else{
						alert("이미 등록된 사업자등록번호 입니다.");
						return;
					}
				}//function
			);//post
		}else{
			alert("사업자등록번호를 형식에 맞게 작성해 주세요.");
			return;
		}
	});//blur
});//ready

var chkmagemail = '';

$(document).ready(function(){
	$("#manager_email").blur(function(){
		var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
		if($.trim($("#manager_email").val()) != $(this).val().match(emailStd)){
			alert("올바르지 않은 이메일 입니다.");
// 			$("#email").focus();
			return;
		}
		$.post("${pageContext.request.contextPath}/joinmagemailchk",
			{
				manager_email:$("#manager_email").val(),
				email:$("#manager_email").val()
			},
			function(data,status){
				if(data == 0){
					alert("사용 가능한 이메일 입니다.");
					chkmagemail = $("#manager_email").val();
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
	});//onlyKor
	
	
	$(".onlyhomepage").change(function(){
		//alert($(this).val()); /^([0-9]{6}+\-)([0-9]{2}+\-)([0-9]{6})$/;
		var homepageStd = /(http(s)?:\/\/)([a-z0-9\w]+\.*)+[a-z0-9]{2,4}/gi;
		if($(this).val().match(homepageStd)){
			//alert("ok");
		}else{
			alert("사용 가능한 홈페이지를 입력해 주세요.");
// 			$(this).val("");
			$(this).focus();
			return;
		}
	});//onlyhomepage
	
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
	});//onlyJumin
	
	$(".onlyNum").change(function(){
		//alert($(this).val());
		var numStd = /^[0-9]{1,20}$/;
		if($(this).val().match(numStd)){
			//alert("ok");
		}else{
			alert("숫자로 작성해 주세요.");
			//$(this).val("");
			$(this).focus();
			return;
		}
	});//onlyNum
	
	$(".onlyPhone").change(function(){
		//alert($(this).val());
		var phoneStd = /^[0-9]{11}$/;
		if($(this).val().match(phoneStd)){
			//alert($(this).val().match(licenseStd));
		}else{
			alert("핸드폰번호 형식에 맞게 작성해 주세요.");
			//$(this).val("");
			//$(this).focus();
			return;
		}
	});//onlyPhone
	
// 	$(".onlyLicense").change(function(){	중복돼서 오류남
// 		//alert($(this).val());
// 		var licenseStd = /^[0-9]{10}$/;
// 		if($(this).val().match(licenseStd)){
// 			alert($(this).val().match(licenseStd));
// 		}else{
// 			alert("사업자등록번호를 형식에 맞게 작성해 주세요.");
// 			//$(this).val("");
// 			//$(this).focus();
// 			return;
// 		}
// 	});//onlyLicense
	
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
	
	$(".onlyKrEng").change(function(){
		//alert($(this).val());
		var passStd = /^[가-힣a-zA-Z]{1,20}$/;
		if($(this).val().match(passStd)){
			//alert("ok");
		}else{
			alert("올바른 입력을 해주세요.");
			$(this).val("");
			//$(this).focus();
			return;
		}
	});//onlyPass
	
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
				//$("#user_name").focus();
				return;
			}
			if($.trim($("#email").val()) == ''){
				alert("이메일은 필수 입력 사항입니다.");
				//$("#email").focus();
				return;
			}
			if($("#email").val().indexOf('@') == '-1'
				|| $("#email").val().lastIndexOf('.') == '-1'){
				alert("이메일 형식이 잘못되었습니다.");
				//$("#email").focus();
				return;
			}
			if($("#email").val() != chkemail){
				alert("이메일을 다시 입력해 주세요.");
				//$("#email").focus();
				return;
			}
			if($.trim($("#user_password").val()) == ''){
				alert("비밀번호는 필수 입력 사항입니다.");
				//$("#user_password").focus();
				return;
			}
			if($("#user_password").val() != $("#user_password_re").val()){
				alert("비밀번호를 똑같이 입력해 주세요.");
				//$("#user_password").focus();
				return;
			}
			if($.trim($("#jumin").val()) == ''){
				alert("생년월일은 필수 입력 사항입니다.");
				//$("#jumin").focus();
				return;
			}
			if($.trim($("#phone").val()) == ''){
				alert("휴대폰 번호는 필수 입력 사항입니다.");
				//$("#phone").focus();
				return;
			}
			if($.trim($("#addr").val()) == ''){
				alert("주소는 필수 입력 사항입니다.");
				//$("#addr").focus();
				return;
			}
			if($.trim($("#addrdetail").val()) == ''){
				alert("상세주소를 입력해주세요.");
				//$("#addrdetail").focus();
				return;
			}			
			if($("#user_terms_of_service").val() == 0){
				alert("이용 약관 동의 후 회원 가입 바랍니다.");
				//$("#user_terms_of_service").focus();
				return;
			}
			if($("#user_privacy_policy_agree").val() == 0){
				alert("개인 정보 처리 방침 동의 후 회원 가입 바랍니다.");
				//$("#user_privacy_policy_agree").focus();
				return;
			}
// 			alert("aaa");
			$.post(
					"${pageContext.request.contextPath}/joinuser",
					{
						user_name:$("#user_name").val(),
						email:$("#email").val(),
						user_password:$("#user_password").val(),
						jumin:$("#jumin").val(),
						phone:$("#phone").val(),
						addr:$("#addr").val() +" "+ $("#addrdetail").val(),
						user_chk_email:$("#user_chk_email").val(),
						user_terms_of_service:$("#user_terms_of_service").val(),
						user_privacy_policy_agree:$("#user_privacy_policy_agree").val(),
						user_join_date:$("#user_join_date").val()
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
				alert("사업장등록번호는 필수 입력 사항입니다.");
				//$("#busi_resi_num").focus();
				return;
			}
			if($.trim($("#busi_resi_num_re").val()) == ''){
				alert("사업장등록번호를 한번 더  입력해 주세요.");
				//$("#busi_resi_num_re").focus();
				return;
			}
			if($("#busi_resi_num").val() != $("#busi_resi_num_re").val()){
				alert("사업자번호를 똑같이 입력해 주세요.");
				$("#busi_resi_num").focus();
				return;
			}
			if($("#busi_resi_num").val() != chklicense){
				alert("사업자등록번호를 다시 입력해 주세요.");
				//$("#email").focus();
				return;
			}
			if($.trim($("#busi_password").val()) == ''){
				alert("비밀번호는 필수 입력 사항입니다.");
				//$("#busi_password").focus();
				return;
			}
			if($("#busi_password").val() != $("#busi_password_re").val()){
				alert("비밀번호를 똑같이 입력해 주세요.");
				//$("#busi_password").focus();
				return;
			}
			
	//			기업정보
			if($.trim($("#com_name").val()) == ''){
				alert("업체명은 필수 입력 사항입니다.");
				//$("#com_name").focus();
				return;
			}
			if($.trim($("#presen_name").val()) == ''){
				alert("대표자명은 필수 입력 사항입니다.");
				//$("#presen_name").focus();
				return;
			}
			if($.trim($("#cor_num").val()) == ''){
				alert("법인번호는 필수 입력 사항입니다.");
				//$("#cor_num").focus();
				return;
			}
			
	//			본사정보
			if($.trim($("#address").val()) == ''){
				alert("주소는 필수 입력 사항입니다.");
				//$("#address").focus();
				return;
			}
			if($.trim($("#addressdetail").val()) == ''){
				alert("상세주소를 입력해주세요.");
				//$("#addressdetail").focus();
				return;
			}	
			
	//			담당자정보
			if($.trim($("#manager_name").val()) == ''){
				alert("담당자명은 필수 입력 사항입니다.");
				//$("#manager_name").focus();
				return;
			}	
			if($.trim($("#manager_birth").val()) == ''){
				alert("담당자 생년월일은 필수 입력 사항입니다.");
				//$("#manager_birth").focus();
				return;
			}	
			if($.trim($("#manager_email").val()) == ''){
				alert("담당자 이메일은 필수 입력 사항입니다.");
				//$("#manager_email").focus();
				return;
			}
			if($("#manager_email").val().indexOf('@') == '-1'
				|| $("#manager_email").val().lastIndexOf('.') == '-1'){
				alert("이메일 형식이 잘못되었습니다.");
				//$("#manager_email").focus();
				return;
			}	
			if($("#manager_email").val() != chkmagemail){
				alert("이메일을 다시 입력해 주세요.");
				//$("#email").focus();
				return;
			}
			if($.trim($("#office_num").val()) == ''){
				alert("사무실번호는 필수 입력 사항입니다.");
				//$("#office_num").focus();
				return;
			}	
			if($.trim($("#manager_phone").val()) == ''){
				alert("휴대전화 번호는 필수 입력 사항입니다.");
				//$("#manager_phone").focus();
				return;
			}	
			if($.trim($("#manager_fax_num").val()) == ''){
				alert("팩스번호는 필수 입력 사항입니다.");
				//$("#manager_fax_num").focus();
				return;
			}	
			if($.trim($("#manager_task").val()) == ''){
				alert("담당업무는 필수 입력 사항입니다.");
				//$("#manager_task").focus();
				return;
			}	
			if($.trim($("#manager_rank").val()) == ''){
				alert("직급은 필수 입력 사항입니다.");
				//$("#manager_rank").focus();
				return;
			}	
			if($.trim($("#manager_depart").val()) == ''){
				alert("근무부서는 필수 입력 사항입니다.");
				//$("#manager_depart").focus();
				return;
			}	
			
	//		이용약관
			if($("#busi_terms_of_service").val() == 0){
				alert("이용 약관 동의 후 회원 가입 바랍니다.");
				//$("#busi_terms_of_service").focus();
				return;
			}
			if($("#busi_privacy_policy_agree").val() == 0){
				alert("개인 정보 처리 방침 동의 후 회원 가입 바랍니다.");
				//$("#busi_privacy_policy_agree").focus();
				return;
			}
		
			$.post(
					"${pageContext.request.contextPath}/joinbusi",
					{
						busi_resi_num:$("#busi_resi_num").val(),
						busi_password:$("#busi_password").val(),
						com_name:$("#com_name").val(),
						presen_name:$("#presen_name").val(),
						cor_num:$("#cor_num").val(),
						homepage:$("#homepage").val(),
						address:$("#address").val() +" "+ $("#addressdetail").val(),
						pre_phone:$("#pre_phone").val(),
						fax_num:$("#fax_num").val(),
						manager_name:$("#manager_name").val(),
						manager_birth:$("#manager_birth").val(),
						manager_email:$("#manager_email").val(),
						office_num:$("#office_num").val(),
						manager_phone:$("#manager_phone").val(),
						manager_fax_num:$("#manager_fax_num").val(),
						manager_task:$("#manager_task").val(),
						manager_rank:$("#manager_rank").val(),
						manager_depart:$("#manager_depart").val(),
						busi_chk_email:$("#busi_chk_email").val(),
						busi_terms_of_service:$("#busi_terms_of_service").val(),
						busi_privacy_policy_agree:$("#busi_privacy_policy_agree").val(),
						busi_join_date:$("#busi_join_date").val()
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
<style>
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
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
    background-color: #EAEAEA;;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
html {
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}
html {
    color: -internal-root-color;
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
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.section-body {
    position: relative;
    padding: 180px 20px 107px 20px;
}
.section-body .wrap {
    max-width: 400px;
    margin: auto;
}
.section-body .wrap .logo {
    margin-bottom: 24px;
}
.text-center {
    text-align: center;
}
.section-body .wrap .logo img {
    max-width: 160px;
}
img {
    vertical-align: middle;
    border: 0;
}
.section-body .wrap .box {
    border: 2px solid #555;
}
.margin-b-40 {
    margin-bottom: 40px;
}
.section-body .wrap .box .row-cat {
    padding: 0 15px;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.section-body .wrap .box .btn-group.cusGb {
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
.col-sm-6 {
    width: 50%;
}
.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
}
.col-xs-6 {
    width: 50%;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.section-body .wrap .box .btn-group.cusGb label {
    font-size: 16px;
    min-width: 50%;
    padding: 10px;
}
.labelBtn-purple:active, .labelBtn-purple.active, .open > .dropdown-toggle.labelBtn-purple {
    background-image: none;
}
.btn:active, .btn.active {
    background-image: none;
    outline: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
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
}
label {
    display: inline-block;
    max-width: 100%;
}
.section-body .wrap .box .btn-group.cusGb label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
    color: #fff;
}
.clearfix:after, .dl-horizontal dd:after, .container:after, .container-fluid:after, .row:after, .form-horizontal .form-group:after, .btn-toolbar:after, .btn-group-vertical > .btn-group:after, .nav:after, .navbar:after, .navbar-header:after, .navbar-collapse:after, .pager:after, .panel-body:after, .modal-footer:after {
    clear: both;
}

.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    display: table;
    content: " ";
}
.section-body .wrap .box .body {
    padding: 40px 40px 80px 40px;
}
h4, .h4 {
    font-size: 18px;
}
h4, .h4, h5, .h5, h6, .h6 {
    margin-top: 10px;
    margin-bottom: 10px;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}
h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
b, strong {
    font-weight: bold;
}
.margin-b-12 {
    margin-bottom: 12px;
}

.form-group {
    margin-bottom: 15px;
}
.section-body .wrap .form-group .form-control-reg {
    min-height: 46px;
    font-size: 14px;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.form-control-reg {
    display: block;
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
.form-control-reg {
    display: block;
    width: 100%;
    height: 36px;
    margin-bottom: 22px;
    padding: 12px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: none;
    border-bottom: 2px solid #555;
}
.section-body .wrap .help-block {
    text-align: left;
}
.help-block {
    display: block;
    margin-top: 5px;
    margin-bottom: 10px;
    color: #737373;
}
p {
    margin: 0 0 10px;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;   
}
input[type="password"] {
    font-family: 'Arial',sans-serif !important;
}
.has-feedback {
    position: relative;
}
.glyphicon {
    position: relative;
    top: 1px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.form-control-feedback {
    line-height: 44px;
    color: green;
    position: absolute;
    top: 0;
    right: 0;
    z-index: 2;
    display: block;
    width: 34px;
    height: 34px;
    line-height: 34px;
    text-align: center;
    pointer-events: none;
}
.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}
hr {
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
}
.glyphicon-pencil:before {
    content: "\270f";
}
.display-none {
    display: none;
}
table {
    background-color: transparent;
}
table {
    border-spacing: 0;
    border-collapse: collapse;
}
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
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
	$("#allTeamCheckbox01").on("change", function() {
		if($(this).is(":checked")){
			$("#user_chk_email").prop("checked", true);
			$("#user_chk_email").attr("checked", true);
			$("#user_terms_of_service").prop("checked", true);
			$("#user_terms_of_service").attr("checked", true);
			$("#user_privacy_policy_agree").prop("checked", true);
			$("#user_privacy_policy_agree").attr("checked", true);
		} else {
			$("#user_chk_email").prop("checked", false);
			$("#user_chk_email").attr("checked", false);
			$("#user_terms_of_service").prop("checked", false);
			$("#user_terms_of_service").attr("checked", false);
			$("#user_privacy_policy_agree").prop("checked", false);
			$("#user_privacy_policy_agree").attr("checked", false);
		}
		fn_setRegistBtn("01");
	});
	
	$("#allTeamCheckbox02").on("change", function() {
		if($(this).is(":checked")){
			$("#busi_chk_email").prop("checked", true);
			$("#busi_chk_email").attr("checked", true);
			$("#busi_terms_of_service").prop("checked", true);
			$("#busi_terms_of_service").attr("checked", true);
			$("#busi_privacy_policy_agree").prop("checked", true);
			$("#busi_privacy_policy_agree").attr("checked", true);
		} else {
			$("#busi_chk_email").prop("checked", false);
			$("#busi_chk_email").attr("checked", false);
			$("#busi_terms_of_service").prop("checked", false);
			$("#busi_terms_of_service").attr("checked", false);
			$("#busi_privacy_policy_agree").prop("checked", false);
			$("#busi_privacy_policy_agree").attr("checked", false);
		}
		fn_setRegistBtn("02");
	});
	
	$("#busi_chk_email, #busi_terms_of_service, #busi_privacy_policy_agree").on("change", function() {
		fn_setRegistBtn("01");
	});
	
	$("#busi_chk_email, #busi_chk_email, #busi_privacy_policy_agree").on("change", function() {
		fn_setRegistBtn("02");
	});
});

</script>
<body>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    
	     <%@ include file="../header.jsp" %>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        ***********************************************************************************************************************************************************-->
	
	<!--main content start-->
	
	
<section id="register">
		<div class="container">
			<div class="section-body">
				<div class="wrap">
					<div class="logo text-center">
						<img src="${pageContext.request.contextPath}/resources/img/img_login_logo.png" alt="login_img">
					</div>
					<div class="box margin-b-40">
						<div class="tap">
							<div class="row row-cat">
								<div class="btn-group cusGb" data-toggle="buttons">
									<div class="col-xs-6 col-sm-6 col-md-6 col" style="padding-left: 0px;padding-right: 0px;">
										<label class="btn labelBtn-purple btn-block active" id="cusGbLabel01" style="border-radius: 0px;">
											일반회원
										</label>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 col" style="padding-left: 0px;padding-right: 0px;">
										<label class="btn labelBtn-purple btn-block active checked" id="cusGbLabel02" style="border-radius: 0px;">
											법인회원
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="body" id="cusGb01" style="display: block;">
							<h4><b>기본정보</b></h4>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyKor" id="user_name" type="text" placeholder="*이름" maxlength="50">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyEmail" id="email" type="email" placeholder="*이메일" >
								<p class="help-block" id="emailResultText01" style="display: none;"></p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyPass" id="user_password" type="password" placeholder="*비밀번호">
								<p class="help-block" id="pswdResultText01" style="margin-top: -20px">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</p>
							</div>
							
							<div class="form-group margin-b-12 has-feedback">
								<input class="form-control-reg onlyPass" id="user_password_re" type="password" placeholder="*비밀번호 확인" >
								<span class="form-control-feedback glyphicon" id="pswdChkResultIcon01" aria-hidden="true" style="position: absolute;top: 0;right: 0;z-index: 2;display: block;width: 34px;height: 34px;text-align: center;pointer-events: none;line-height: 44px;color: green;"></span>
								<p class="help-block" id="pswdChkResultText01" style="margin-top: -20px">비밀번호를 한번 더 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyJumin" id="jumin" type="text" placeholder="*생년월일">
								<p class="help-block" id="pswdChkResultText01" style="margin-top: -20px">19890814형식으로 입력해 주세요.</p>
								<input id="inputRcmndCusNo01" type="hidden">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyPhone" id="phone" type="text" placeholder="*휴대폰 번호">
								<p class="help-block" id="pswdChkResultText01" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="addr" type="text" readonly="readonly" placeholder="*주소">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="addrdetail" type="text" placeholder="*상세주소">
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							
							<div class="form-group margin-b-12">
								<table>
									<tbody>
									<tr>
										<td>
											<label class="ui-checkbox" style="margin-bottom:12px;">
												<input type="checkbox" id="allTeamCheckbox01">
												<span style="font-weight: bold;">
													이용약관, 개인정보 처리방침 모두 동의
												</span>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row" >
												<input type="checkbox" name="checkbox1" id="user_chk_email" value="0">
												<span>
													이메일 수신 여부[선택]
												</span>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row">
												<input type="checkbox" name="checkbox1" id="user_terms_of_service" value="0">
												<span>
													이용약관 동의
												</span>
												<a href="/creator/useTerm" target="_blank">[보기]</a>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row">
												<input type="checkbox" name="checkbox1" id="user_privacy_policy_agree" value="0">
												<span>
													개인정보 처리방침 동의
												</span>
												<a href="/creator/pInfoProvideTerm" target="_blank">[보기]</a>
											</label>
										</td>
									</tr>
								</tbody></table>
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<div class="form-group margin-b-6">
								<button type="button" class="btn btn-purple-transparent btn-block" style="background-color: #712594;" id="join_btn" >회원가입</button>
							</div>
						</div>
				<!-- ========================================================================= -->
						<div class="body" id="cusGb02" style="display: none;">
							<h4>사업자정보</h4>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="busi_resi_num" type="text" placeholder="*사업자등록번호" maxlength="10">
								<p class="help-block" id="bizRgstNoResultText02" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12 has-feedback">
								<input class="form-control-reg" id="busi_resi_num_re" type="text" placeholder="*사업자등록번호 확인" maxlength="10" >
								<p class="help-block" id="bizRgstNoChkResultText02" style="margin-top: -20px">사업자등록번호를 한번 더 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="busi_password" type="password" placeholder="*비밀번호" >
								<p class="help-block onlyPass" id="pswdResultText02" style="margin-top: -20px">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</p>
							</div>
							<div class="form-group margin-b-12 has-feedback">
								<input class="form-control-reg" id="busi_password_re" type="password" placeholder="*비밀번호 확인" >
								<p class="help-block" id="pswdChkResultText02" style="margin-top: -20px">비밀번호를 한번 더 입력해 주세요.</p>
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<h4>기업정보</h4>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="com_name" type="text" placeholder="*업체명" maxlength="50">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="presen_name" type="text" placeholder="*대표자명" maxlength="50">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg" id="cor_num" type="text" placeholder="*법인번호" maxlength="13">
								<p class="help-block" id="crprtnNoResultText02" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyhomepage" id="homepage" type="url" placeholder="홈페이지URL" maxlength="255">
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<h4>본사정보</h4>
							<div class="form-group margin-b-12">
								<ul class="list-unstyled">
									<li>
										<input type="text" class="form-control-reg hqAddr1-text" id="address" maxlength="100" placeholder="*주소" readonly="readonly">
									</li>
								</ul>
								<ul class="list-unstyled">
									<li>
										<input type="text" class="form-control-reg addr2-text" id="addressdetail" maxlength="100" value="" placeholder="상세주소">
									</li>
								</ul>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyNum" id="pre_phone" type="tel" placeholder="대표전화번호" maxlength="20">
								<p class="help-block" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyNum" id="fax_num" type="tel" placeholder="팩스번호" maxlength="20">
								<p class="help-block" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<h4>담당자정보</h4>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyKrEng" id="manager_name" type="text" placeholder="*담당자명" maxlength="50">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyJumin" id="manager_birth" type="text" placeholder="*담당자 생년월일" maxlength="8">
								<p class="help-block" style="margin-top: -20px">'19801214'와 같은 형식으로 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyEmail" id="manager_email" type="email" placeholder="*담당자 이메일" onblur="fn_checkEmail();">
								<p class="help-block" id="emailResultText02" style="display: none;"></p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyNum" id="office_num" type="tel" placeholder="*사무실번호" maxlength="20">
								<p class="help-block" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyNum" id="manager_phone" type="tel" placeholder="*휴대전화번호" maxlength="20">
								<p class="help-block" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyNum" id="manager_fax_num" type="tel" placeholder="팩스번호" maxlength="20">
								<p class="help-block" style="margin-top: -20px">'-'을 제외한 숫자만 입력해 주세요.</p>
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyKrEng" id="manager_task" type="text" placeholder="*담당업무" maxlength="255">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyKrEng" id="manager_rank" type="text" placeholder="*직급" maxlength="50">
							</div>
							<div class="form-group margin-b-12">
								<input class="form-control-reg onlyKrEng" id="manager_depart" type="text" placeholder="*근무부서" maxlength="50">
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<div class="form-group margin-b-12">
								<table>
									<tbody>
									<tr>
										<td>
											<label class="ui-checkbox" style="margin-bottom:12px;">
												<input type="checkbox" id="allTeamCheckbox02">
												<span style="font-weight: bold;">
													이용약관, 개인정보 처리방침 모두 동의
												</span>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row" >
												<input type="checkbox" name="checkbox1" id="busi_chk_email" value="0">
												<span>
													이메일 수신 여부[선택]
												</span>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row">
												<input type="checkbox" name="checkbox1" id="busi_terms_of_service" value="0">
												<span>
													이용약관 동의
												</span>
												<a href="/creator/useTerm" target="_blank">[보기]</a>
											</label>
										</td>
									</tr>
									<tr>
										<td>
											<label class="ui-checkbox row">
												<input type="checkbox" name="checkbox1" id="busi_privacy_policy_agree" value="0">
												<span>
													개인정보 처리방침 동의
												</span>
												<a href="/creator/pInfoProvideTerm" target="_blank">[보기]</a>
											</label>
										</td>
									</tr>
								</tbody></table>
							</div>
							<hr style="margin-top: 20px;margin-bottom: 20px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;">
							<div class="form-group margin-b-6">
								<button type="button" class="btn btn-purple-transparent btn-block" style="background-color: #712594;" id="join_btn1" >회원가입</button>
							</div>
						</div>
						<input id="cusGbCd" type="hidden" value="01">
						<input id="checkFbEmailYn" type="hidden" value="">
					</div>
					<!-- 
					<div class="company">
						<img src="/images/logo/midrate/img_login_logo_small.png">
						<div class="xd"></div>
						<span class="copyright">
							Copyright &#169; MIDRATE Corp.ALl Rights Reserved.
						</span>
						<div class="xd"></div>
						<span class="contact">
							관리자 문의 : contact@midrate.co.kr
						</span>
					</div>
					 -->
				</div>
			</div>
		</div>
	</section>
    
    <!-- /MAIN CONTENT -->
    <!--main content end-->
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
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
<style>
hr {
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: outset;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
td, th {
    padding: 0;
}	
td {
    display: table-cell;
    vertical-align: inherit;
}
.ui-checkbox {
	position: relative;
	margin: 0 20px 0 15px;
	display: inline;
}

.ui-checkbox input[type=checkbox]+span:hover {
	cursor: pointer
}

.ui-checkbox input[type=checkbox]:disabled+span:hover {
	cursor: not-allowed
}

.ui-checkbox input[type=checkbox] {
	display: none
}

.ui-checkbox input[type=checkbox]+span {
	font-weight: 400
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
	/*border-radius: 2px;*/
	border: 2px solid #555
}

.ui-checkbox input[type=checkbox]:disabled+span:before {
	opacity: .65;
	border: 1px solid #ccc;
	cursor: no-drop
}

.ui-checkbox input[type=checkbox]:checked+span:before {
	border: 1px solid #712594
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
	display: block
}

.ui-checkbox input[type=checkbox]:disabled:checked+span:before {
	opacity: .65;
	background-color: #ccc;
	border: 1px solid #ccc
}

.ui-checkbox input[type=checkbox]:disabled:checked+span:after {
	opacity: .65;
	cursor: no-drop;
	font-family: FontAwesome;
	content: "\f00c"
}
input[type="radio"], input[type="checkbox"] {
    margin: 4px 0 0;
    margin-top: 1px \9;
    line-height: normal;
}
input[type="checkbox"], input[type="radio"] {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
}
label {
    font-size: 14px;
}
.section-body .wrap .form-group button {
    border-radius: 0px;
    border: 2px solid #555;
    padding: 10px 20px;
    margin-bottom: 12px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    display: block;
}
.section-body .wrap .form-group.facebook img {
    position: absolute;
    margin-top: 10px;
    margin-left: 45px;
    display: block;
    max-width: 11px;
}
.form-control-reg {
    display: block;
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
.radio-inline, .checkbox-inline {
    display: inline-block;
    padding-left: 20px;
    margin-bottom: 0;
    font-weight: normal;
    vertical-align: middle;
    cursor: pointer;
}
.radio input[type="radio"], .radio-inline input[type="radio"], .checkbox input[type="checkbox"], .checkbox-inline input[type="checkbox"] {
    position: absolute;
    margin-top: 4px \9;
    margin-left: -20px;
}
input[type="radio"], input[type="checkbox"] {
    margin: 4px 0 0;
    margin-top: 1px \9;
    line-height: normal;
}
input[type="checkbox"], input[type="radio"] {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
}
input[type="radio" i] {
    background-color: initial;
    cursor: default;
    -webkit-appearance: radio;
    box-sizing: border-box;
    margin: 3px 3px 0px 5px;
    padding: initial;
    border: initial;
}

</style>
</html>










