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
	$("#un_btn").click(function(){
		var input = $("#member_password").val();
		var numChk = $("#numChk").val();
		var numChk1 = $("#numChk1").val();
		
		if($.trim(input) == ""){
			alert("비밀번호를 입력하세요.");
			$("#member_password").focus();
			return;
		}//user_paswword
		
		if(numChk) {
			$.post(
					"${pageContext.request.contextPath}/mypagemodifyu",
					{
						//user_num:hidden으로 가지고 있다가 가는 부분
						user_num:$("#numChk").val(),
						user_password:$("#member_password").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								location.href="${pageContext.request.contextPath}/modify_detail?user_num=${memberVO.user_num}";
							} else if(data == 0){
								alert("비밀번호를 확인해 주세요.");
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
				);//post
			} 
	});//click
});//ready

$(document).ready(function() {
	$("#un_btn1").click(function(){
		var input = $("#member_password").val();
		var numChk = $("#numChk").val();
		var numChk1 = $("#numChk1").val();
		
		if($.trim($("#member_password").val()) == ""){
			alert("비밀번호를 입력하세요.");
			$("#member_password").focus();
			return;
		}//user_paswword
		
		if(numChk1) {
			$.post(
					"./mypagemodifyb",
					{
						busi_num:$("#numChk1").val(),
						busi_password:$("#member_password").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								location.href="${pageContext.request.contextPath}/modify_detail?busi_num=${memberVO.busi_num}";
							} else if(data == 0){
								alert("비밀번호를 확인해 주세요.");
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
				);//post
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
	            <a href="/creator/my_dashboard">
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
<section id="main-content">
	<section class="wrapper">
			<div class="container">
				<div class="col-md-offset-3">
				<img src="${pageContext.request.contextPath}/resources/img/test_logo.jpg" alt="login_img">
				</div>
			</div>
				<!-- =============logo -->
					
			<div class="col-lg-4 mt col-md-offset-3">
				<div class="row content-panel">
			    <!-- /panel-heading -->
					<div class="panel-body">
						<div class="tab-content">
							<div id="usertab" class="tab-pane active">
						    	<form role="form" class="form-horizontal">
							   		<div class="row">
								    	<div class="col-md col-md-offset-2  ">
											<div class="form-group">
												<div class="col-sm-10">
												<h5>회원님의 정보를 수정하려면 비밀번호를 입력해주세요.</h5>
													<input type="password" class="form-control" id="member_password" placeholder="*비밀번호">
												</div>
											</div>	
										</div>
											<c:choose>
												<c:when test="${memberVO != null && (memberVO.user_num != '' && memberVO.user_num != null)}">
													<div class="col-sm-10 col-lg-offset-3">
														<input type="button" class="btn btn-theme" id="un_btn" value="잠금 해제"/>
													</div>
												</c:when>
											</c:choose>
											<c:choose>
												<c:when test="${memberVO != null && (memberVO.busi_num != '' && memberVO.busi_num != null)}">
													<div class="col-sm-10 col-lg-offset-3">
														<input type="button" class="btn btn-theme" id="un_btn1" value="잠금 해제"/>
													</div>
												</c:when>												
											</c:choose>
									</div>
						    	</form>
							</div>
						</div>
					</div>
				</div>
			</div>			
						<!-- ===================================================================== body-->		
	</section>
</section>
   	<input type="hidden" id="numChk" value="${mypageVO.user_num}"/>
	<input type="hidden" id="numChk1" value="${mypageVO.busi_num}"/>
		
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