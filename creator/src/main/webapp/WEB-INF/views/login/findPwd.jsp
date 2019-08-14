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
	
<script type="text/javascript">

//id check
$(document).ready(function(){
	var chkemail = '';
	
	$("#email").blur(function(){
		var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
		
		if($.trim($("#email").val()) != $(this).val().match(emailStd)){
			alert("올바르지 않은 이메일 입니다.");
			return;
		}
		$.post(
				"${pageContext.request.contextPath}/findpwdchk",
				{
					email:$("#email").val()
				},
				function(data,status){
					if(data == 1){
						alert("이메일이 확인 되었습니다.");
						chkemail = $("#email").val();
					}else{
// 						alert("등록된 이메일이 없습니다.");
					}
				}//function
		);//post
		$.post(
				"${pageContext.request.contextPath}/busifindChk",
				{
					manager_email:$("#email").val()
				},
				function(data,status){
					if(data == 1){
						alert("이메일이 확인 되었습니다.");
						chkemail = $("#email").val();
					}else{
// 						alert("등록된 이메일이 없습니다.");
					}
				}//function
		);//post
	});//ready
});//blur

$(document).ready(function(){
	$("#findpwd_btn").click(function(){
		if($.trim($("#email").val()) == ""){
			alert("등록된 이메일이 없습니다.");
// 			$("#email").focus();
			return;
		}
		$.post(
				"${pageContext.request.contextPath}/sendnewpassword"
				,{
					email:$("#email").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("해당 이메일로 임시비밀번호를 발송했습니다.");
							location.href="/creator/findpwd";
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
		$.post(
				"${pageContext.request.contextPath}/CerEmail"
				,{
					manager_email:$("#email").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("해당 이메일로 임시비밀번호를 발송했습니다.");
							location.href="/creator/findpwd";
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
</script>
</head>
<style>
CerEmail
body{
	background-color: #f7f7f7;
}

#findpwd .section-body {
	position: relative;
	padding: 150px 20px 100px 20px;
}

@media (max-width: 767px) {
	#findpwd .section-body {
		position: relative;
		padding: 100px 0px;
	}
}

#findpwd .section-body .wrap {
	max-width: 427px;
	margin: auto;
}

/* xd ì ìš©ì‹œ */
@media (max-width: 767px) {
	#findpwd .section-body .wrap {
		padding:  0px;
	}
}

#findpwd .section-body .wrap .logo {
	margin-bottom: 28px;
}

/* xd ì ìš©ì‹œ */
@media (max-width: 767px) {
	#findpwd .section-body .wrap .logo {
	
	}
}

#findpwd .section-body .wrap .logo img {
	max-width: 200px;
}

#findpwd .section-body .wrap .title {
	font-size: 20px;
}

@media (max-width: 767px) {
	#findpwd .section-body .wrap .title {
		font-size: 15px;
	}
}


#findpwd .section-body .wrap .subTitle {
	font-size: 14px;
}

@media (max-width: 767px) {
	#findpwd .section-body .wrap .subTitle {
		font-size: 11px;
	}
}

#findpwd .section-body .wrap .form-group .form-control {
	/*border-radius: 4px;
	padding: 0px 26px;
	min-height: 46px;
	font-size: 16px;*/
}

#findpwd .section-body .wrap .form-group select.form-control {
	padding: 0px 0px 0px 22px;
	min-height: 46px;
}

#findpwd .section-body .wrap .form-group button {
	border-radius: 4px;
	padding: 10px 26px;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
}
.mr-purple {
	color: #fff;
	background-color: #782b9b;
}
.section-body .title {
	font-size: 28px;
	font-weight: bold;
}
#section-content {
	padding: 50px 0 111px 0;
	margin-left:15px;
}

</style>
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
		
				
<!-- =====================================================================logo -->
				
				
<section id="section-content">
<section class="wrapper site-min-height">
<section id="findpwd" class="text-center">
		<div class="container">
			<div class="section-body">
				<div class="wrap">
					<div class="logo">
						<img src="${pageContext.request.contextPath}/resources/img/img_login_logo.png" alt="login_img">
					</div>
					<div class="margin-b-12 title">
						비밀번호를 잊어 버리셨나요?<br>
					</div>
					<div class="margin-b-12 subTitle text-center">
						<p>
							임시 비밀번호를 보내드립니다.<br>
						</p>
					</div>
					<form>
						<fieldset>
							<div class="form-group margin-b-6">
								<input class="form-control" id="email" type="text" placeholder="이메일을 입력해 주세요.">
							</div>
						</fieldset>
					</form>
					<div class="form-group margin-b-6">
						<div class="mr-purple" id="resetPwdBtn">
							<button type="button" class="btn btn-purple-transparent btn-block" style="background-color: #712594;" id="findpwd_btn" >비밀번호 초기화</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
				
		<!-- ===================================================================== body-->		
				
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