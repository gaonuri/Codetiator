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
	<title>CREATOR</title>	
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
	
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
		$(".onlyEm").change(function(){
			//alert($(this).val());
			var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
			if($(this).val().match(emailStd)){
				//alert("ok");
			}else{
				alert("올바르지 않은 이메일 입니다.");
				//$(this).val("");
				$(this).focus();
				return;
			}
		});//onlyEm
	});//onlyEm
	
	$(document).ready(function(){
		$("#insertContactMsgBtn").click(function(){
			
			var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
			
			if($.trim($("#inputTitle").val()) == "") {
				alert("제목을 확인해 주세요.");
				return;
			} else if($.trim($("#inputContents").val()) == "") {
				alert("문의 내용을 확인해 주세요.");
				return;
			} else if($.trim($("#inputEmail").val()) == "" ) {
				alert("이메일을 확인해 주세요.");
				return;
			}
			
			$.post(
					"${pageContext.request.contextPath}/inquiryemail",
					{
						receiver:$("#adEmail").val(),
						content:$("#inputTitle").val() + $("#inputContents").val(),
						subject:$("#inputEmail").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								alert("이상하다?");
							} else if(data == 0){
								alert("등록 되었습니다.");
								location.href="/creator/inquiry";
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

.contact_title{
	width:100%;
	height: 430px;
	background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
	background-size: cover;
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	color:#fff;
	text-shadow:1px 2px 2px #444;
	font-weight:500;
	font-size:26pt;
	text-align:center;
	line-height:14;
}

@media (max-width: 997px) {
	.contact_title{
		height: 430px;
		font-size:24pt;
		text-align:center;
		line-height:17;
	}
}

@media (max-width: 767px) {
	.contact_title{
		height: 348px;
		font-size:23pt;
		text-align:center;
		line-height:13;
	}
}

#content .container{
	padding:60px 0;
}

.header1{
	color:#555;
	font-weight:500;
	font-size:13pt;
}

.section-body .xd{
	display: none;
}
@media (max-width: 767px) {
	.section-body .xd{
		display: block;
	}
}

.section-body .wrap1 {
	border:1px solid #d9d9de;
	border-radius: 4px;
	margin: auto;
	margin-bottom: 6px;
}

.card {
	text-align: center;
}

@media (max-width: 767px) {
	.card {
		padding: 10px 0px 10px 0px;
	}
}

.card .table {
	padding:80px 0px 66px 20px;
	font-size: 18px;
	color: #555;
}

@media (max-width: 767px) {
	.card .table {
		padding: 20px 20px 0px 20px;
		font-size: 16px;
	}
}

.card .table .cell {
	line-height:1.4;
	text-align: left;
}

.card .table .cell.item1 {
	padding: 20px 25px 0 0;
	COLOR:#333;
	font-weight:600;
}
.card .table .cell.item2 {
	padding: 0 20px 0 0;
}

.card .table .cell.item3 {
	padding: 10px 0 20px 0;
}
@media (max-width: 767px) {
	.card .table .cell.item1 {
		padding: 0 5px 0 0;
		font-size:13pt;
	}
	
	.card .table .cell.item2 {
		padding: 0 10px 0 0;
	}
	
	.card .table .cell.item3 {
		padding: 0;
		font-size:12pt;
		margin-top:6px;
		margin-bottom:16px;
	}
}

.title1 {
	padding: 8px 10px;
	font-size: 16px;
	font-weight: bold;
	color: #858585;
	text-align: center;
	background-color: #fff;
}

.title1 .header1 {
	font-weight: normal;
}

@media (max-width: 767px) {
	.title1 .header1 {
		font-size: 16px;
	}
}

.box .header1 {
	font-size: 18px;
	color: #fff;
	font-weight: bold;
	padding: 6px 0px;
	text-align: center;
	background-color: #712594;
}

.box .body {
	background-color: #fff;
	padding: 30px 30px 20px 30px;
}

@media (max-width: 767px) {
	.box .body {
		padding: 10px;
	}
}

.form-group .form-control {
	border-radius: 3px;
	padding: 0px 16px;
	min-height: 42px;
	font-size: 16px;
}

.form-group #inputContents  {
	padding: 14px;
}


.form-group button {
	border-radius: 4px;
	padding: 10px;
	font-size: 20px;
	font-weight: bold;
	color: #fff;
	max-width: 320px;
	margin: auto;
	margin-top: 20px;
}

@media (max-width: 767px) {
	.form-group button {
		padding: 10px;
		margin-top: 0px;
		font-size: 16px;
	}
}

.left-cont{
	
}
.right-cont{
	margin-top:40px;
	margin-bottom:40px;
}
#aboutus-banner{
	position: relative;
	overflow: hidden;
	background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
	background-color:#712594;
	background-size: 100%;
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover;
	background-attachment: fixed;
	color: #fff;
	height: 430px;
}
#aboutus-banner .section-body{
	color: #fff;
	position: relative;
	padding: 200px 20px 0px 20px;
	text-shadow:1px 2px 2px #444;
}
#aboutus-banner .aboutus-title{
	color: #FFF;
	font-weight:500;
	text-shadow:1px 2px 3px #555;
	letter-spacing:-0.5pt;
	font-size: 26pt;
	line-height:1.3;
}
#section-content {
	padding: 50px 0 111px 0;
	margin-left:375px;
}
#section-content .wrap1 {
	padding: 10px 0;
}

#section-content .wrap1 .box {
	border-style: solid;
	border-width: 1px;
	padding: 30px;
	border-color: #d9d9de;
	background-color: #fff;
	box-shadow: 0px 4px 10px -4px grey;
}

#section-content .wrap2 .box {
	border-style: solid;
	border-width: 1px;
	padding: 30px;
	border-color: #d9d9de;
	background-color: #fff;
/* 	box-shadow: 0px 4px 10px -4px grey; */
}

</style>
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	   	<%@ include file="../header.jsp" %>
	    <!--header end-->	
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->

	<section id="aboutus-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<span class="aboutus-title">고객센터</span>
			</div>
		</div>
	</section>
	
<section id="section-content">	
<div class="container">
	<div class="section-body">
		<div class="col-md-8">
		
			<div class="form-group">
				<div class="title1">
					<div class="header1">
						운영시간은 평일 오전 9시부터 오후 6시 입니다.
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="title1">
					<div class="header1">
						로그인 후 문의하시면 보다 정확한 답변을 받으실 수 있습니다.
					</div>
				</div>
			</div>
			<div class="wrap2">
			<div class="form-group margin-b-9">
				<div class="box">
					<div class="header1">
						1:1 상담
					</div>
					<div class="body">
<!-- 						<form action="inquiryemail" method="post"> -->
							<fieldset>
								<div class="form-group margin-b-9">
									<input class="form-control " type="text" id="inputTitle" name="content"  placeholder="*제목">
								</div>
								<div class="form-group margin-b-9">
									<textarea class="form-control " rows="6" id="inputContents" name="content" style="resize: none;" placeholder="*문의사항에 대해 자세히 적어주시면 담당자가 최대한 빨리 연락드리겠습니다."></textarea>
								</div>
								<div class="form-group margin-b-9">
									<input class="form-control onlyEm" id="inputEmail" type="email" name="subject" placeholder="*이메일주소">
									<input type="hidden" name="receiver" id="adEmail" value="didmeto22@gmail.com"/>
								</div>
							</fieldset>
							<div class="form-group">
								<input type="submit" class="btn btn-purple-transparent btn-block" id="insertContactMsgBtn" 
										style="background-color:#712594; color:#fff; font-size:13pt;" value="등록" />
							</div>
<!-- 						</form> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</section>
	    <!--main content end-->

			<!--footer start-->
	<%@ include file="../footer.jsp" %>
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