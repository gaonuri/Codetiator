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
			<li >
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
		    	<div class="col-md col-md-offset-2  ">
					<div class="form-group">
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="*이메일">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="user_password" placeholder="*비밀번호">
						</div>
					</div>	
				</div>
				<div class="col-sm-10 col-lg-offset-3">
					<input type="text" class="btn btn-theme" id="login_btn" value="로그인" />
				</div>
				</div>
	    	</form>
	    	<div class="col-md-offset-1">
				<a class="" href="./findpwd">비밀번호를 잊으셨나요?</a>
				<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
				<a class="" href="./join">회원 가입하기</a>
	    	</div>	    	
		</div>
		
		<!-- =====================================================================일반회원 -->	
		
		<div id="busitab" class="tab-pane">
			<form role="form" class="form-horizontal">
		   		<div class="row">
		    	<div class="col-md col-md-offset-2 ">
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control onlyLicense" id="busi_resi_num" placeholder="*사업자등록번호">
							<span class="mt-2 d-block">'-'을 제외한 숫자만 입력해 주세요.</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control onlyPass" id="busi_password" placeholder="*비밀번호">
						</div>				
					</div>	
				</div>
				<div class="col-sm-10 col-lg-offset-3 ">
					<input type="text" class="btn btn-theme" id="login_btn1" value="로그인" />
				</div>
				</div>
	    	</form>
	    	<div class="col-md-offset-1">
				<a class="" href="./findpwd">비밀번호를 잊으셨나요?</a>
				<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
				<a class="" href="./join">회원 가입하기</a>
	    	</div>
	   	</div>
	</div>
	</div>
</div>
</div>			
				
		<!-- ===================================================================== body-->		
				
		</section>
			<!-- /wrapper -->
	    </section>
	    <!-- /MAIN CONTENT -->
	    
	    <input type="hidden" id="numChk" value="${memVO.user_num}"/>
	    <input type="hidden" id="numChk1" value="${memVO.busi_num}"/>
	    
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