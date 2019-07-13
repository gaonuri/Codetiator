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
  
<script type="text/javascript">

var chkemail = '';
var rdoVal = 0;

//id check
$(document).ready(function(){
		$.post("./joinemailchk",
				{email:$("#email").val()},
				function(data,status){
					if(data == 0){
						chkemail = $("#email").val();
					}else{
						alert("이미 등록된 이메일 입니다.");
					}
				}
		);
	});//click

//radio & checkbox & eng
$(document).ready(function(){
	$(":checkbox").click(function(){
		if($(this).val() == 0) {
			$(this).val(1);
		} else if($(this).val() == 1) {
			$(this).val(0);
		}
	});//click

	$(".onlyEng").change(function(){
		//alert($(this).val());
		var engStd = /^[a-zA-Z@.]+$/;
		if($(this).val().match(engStd)){
			//alert("ok");
		}else{
			alert("영문만 입력 가능한 필드 입니다.");
			$(this).val("");
			$(this).focus();
			return;
		}
	});//change
	
	$(".onlyCal").change(function(){
		//alert($(this).val());
		var calStd = /^[0-9]+$/;
		if($(this).val().match(calStd)){
			//alert("ok");
		}else{
			alert("숫자만 입력 가능한 필드 입니다.");
			$(this).val("");
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
			if($("#email").val() != chkemail){
				alert("이메일을 다시 확인해 주세요.");
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
			if($("#agree1").val() == 0){
				alert("이용 약관 동의 후 회원 가입 바랍니다.");
				$("#agree1").focus();
				return;
			}
			if($("#agree2").val() == 0){
				alert("개인 정보 처리 방침 동의 후 회원 가입 바랍니다.");
				$("#agree2").focus();
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
</script>
</head>

<body>
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
			
<!-- 	<div id="headerlogo"> -->
<!-- 				</div> -->

<div class="container">
	<div class="section-body">
		<div class="wrap">
			<div class="logo text-center">
				<img src="${pageContext.request.contextPath}/resources/img/test_logo.jpg" alt="login_img">
			</div>
		</div>
	</div>
</div>
				
				
<!-- =====================================================================logo -->	

<div class="row">
	<div class="col-lg-4">
		<div class="card card-default">
				<div class="card-body">
				<ul class="nav nav-pills nav-justified nav-style-fill" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="home3-tab" data-toggle="tab" href="#home3" role="tab" aria-controls="home3" aria-selected="true">일반회원</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile3-tab" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile3" aria-selected="false">법인회원</a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent4">
					<div class="tab-pane pt-3 fade show active" id="home3" role="tabpanel" aria-labelledby="home3-tab">
						<div class="form-group">
							<label for="exampleFormControlInput1">기본정보</label>
							<input type="text" class="form-control" id="user_name" placeholder="*이름">
						</div>
						<div class="form-group">
							<input type="email" class="form-control onlyEng" id="email" placeholder="*이메일">
						</div>
						<div class="form-group">
							<input type="password" class="form-control onlyPass" id="user_password" placeholder="*비밀번호">
							<span class="mt-2 d-block">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</span>
						</div>	
						<div class="form-group">
							<input type="password" class="form-control" id="user_password_re" placeholder="*비밀번호 확인">
							<span class="mt-2 d-block">비밀번호를 환번 더 입력해 주세요.</span>
						</div>	
						<div class="form-group">
							<input type="text" class="form-control onlyCal" id="jumin" placeholder="*생년월일">
							<span class="mt-2 d-block">YYYYMMDD형식으로 입력해 주세요.</span>
						</div>	
						<div class="form-group">
							<input type="text" class="form-control onlyCal" id="phone" placeholder="*휴대폰 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>		
						<div class="form-group">
							<input type="text" class="form-control" id="addr" readonly="readonly" placeholder="*주소">
						</div>	
						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" />
								<label class="control control-checkbox">이메일 수신 여부[선택]	</label>
							</div>
						</div>		
						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" id="agree1" value="0"/>
								<label class="control-inline control-checkbox"><strong>이용약관 동의[필수]</strong></label>
							</div>
						</div>	
						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" id="agree2" value="0" />
								<label class="control-inline control-checkbox"><strong>개인정보 처리방침 동의[필수]</strong></label>
							</div>
						</div>					
						<div class="form-footer pt-4 pt-5 mt-4 border-top">
							<button type="submit" class="btn btn-primary btn-default" id="join_btn">회원가입</button>
						</div>
					</div>
					
<!-- =====================================================================일반회원 -->	
					
					<div class="tab-pane pt-3 fade" id="profile3" role="tabpanel" aria-labelledby="profile3-tab">
						<div class="form-group">
							<label for="exampleFormControlInput1">사업자정보</label>
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*사업자등록번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*사업자등록번호 확인">
							<span class="mt-2 d-block">사업자등록번호를 한번 더 입력해 주세요.</span>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="exampleFormControlPassword" placeholder="*비밀번호">
							<span class="mt-2 d-block">영문,숫자,특수문자(~,!,# 등) 포함 8~20자</span>
						</div>	
						<div class="form-group">
							<input type="password" class="form-control" id="exampleFormControlPassword" placeholder="*비밀번호 확인">
							<span class="mt-2 d-block">비밀번호를 환번 더 입력해 주세요.</span>
						</div>	
						<div class="form-group">
							<label for="exampleFormControlFile1">*사업자등록증 사본 등록[필수]</label>
							<input type="file" class="form-control-file" id="exampleFormControlFile1">
						</div>			
<br>
						<div class="form-group">w
							<label for="exampleFormControlInput1">기업정보</label>
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*업체명">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*대표자명">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*법인번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>	
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="홈페이지URL">
						</div>	
						
						<div class="form-group">
							<label for="exampleFormControlInput1">본사정보</label>
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*주소">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*대표전화번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>	
						
						<div class="form-group">
							<label for="exampleFormControlInput1">사업장정보</label>
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*주소">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*대표전화번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>	
						
						<div class="form-group">
							<label for="exampleFormControlInput1">담당자정보</label>
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*담당자명">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*담당자 생년월일">
							<span class="mt-2 d-block">YYYYMMDD와 같은 형식으로 입력해 주세요.</span>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="*이메일">
						</div>						
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*사무실 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>				
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*휴대폰 번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>		
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*팩스번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>		
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*담당업무">
						</div>		
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*직급">
						</div>	
						<div class="form-group">
							<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="*근무부서">
						</div>																																																							

						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" />
								<label class="control control-checkbox">이메일 수신 여부[선택]	</label>
							</div>
						</div>		
						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" id="agree1"/>
								<label class="control control-checkbox">이용약관 동의[필수]	</label>
							</div>
						</div>	
						<div class="form-group row">
							<div class="col-12 col-md-9">
								<input type="checkbox" name="checkbox1" id="agree2"/>
								<label class="control control-checkbox">개인정보 처리방침 동의[필수]	</label>
							</div>
						</div>					
						<div class="form-footer pt-4 pt-5 mt-4 border-top">
							<button type="submit" class="btn btn-primary btn-default">회원가입</button>
						</div>
					</div>
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
	<script type="text/javascript">
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
