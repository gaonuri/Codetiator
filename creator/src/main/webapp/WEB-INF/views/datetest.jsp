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
	var end_str = document.getElementById("end_date").value;
    var end_ymd = end_str.substr(0, 10);
    var end_ymd_arr = end_ymd.split("-");
    var end_time = end_str.substr(11);
    var end_time_arr = end_time.split(":");
    
  
// 	var id;
// 	var hour = end_time_arr[0];
// 	var min = end_time_arr[1];
// 	var sec = end_time_arr[2];
// 	var hourZero = "";
// 	var minZero = "";
// 	var secZero = "";
// 	function setClock() {
// 		id = setInterval(worker, 1000);
// 	}
// 	function worker() {
// 		if(min < 10){minZero = "0";}else{minZero = "";}
// 		if(sec < 10){secZero = "0";}else{secZero = "";}
// 		var now = hourZero + hour + " : " + minZero + min + " : " + secZero + sec;
		
// 		clock.innerHTML = "<h6>"+now+"</h6>";
// 		sec = parseInt(sec) + 1;
// 		if(sec == 61) {
// 			sec = 0;
// 			min = parseInt(min) + 1;
// 			if(min == 61){
// 				clearInterval(id);
// 				alert("투자 시간이 만료 되었습니다.");
// 				location.reload();
// 				//$("#btn_cert1").modal("hide");
// 			}
// 		}
// 	}
// 	function calculus() {    
// 	    var sta_ymd = document.getElementById("STA_YMD").value;        
// 	    var sta_ymd_arr = sta_ymd.split(".");
	    
// 	    var end_ymd = document.getElementById("END_YMD").value;    
// 	    var end_ymd_arr = end_ymd.split(".");
	    
// 	    var sta_ymd_obj = new Date(sta_ymd_arr[0], Number(sta_ymd_arr[1])-1, sta_ymd_arr[2]);
// 	    var end_ymd_obj = new Date(end_ymd_arr[0], Number(end_ymd_arr[1])-1, end_ymd_arr[2]);
	    
// 	    var betweenDay = (end_ymd_obj.getTime() - sta_ymd_obj.getTime())/1000/60/60/24;
	    
// 	    document.getElementById("DT_RESULT").value = betweenDay;
// 	}
	
	function test() {
// 		var regi_str = document.getElementById("regi_date").value;
// 		var regi_ymd = regi_str.substr(0, 10);
// 		var regi_ymd_arr = regi_ymd.split("-");
// 	    var regi_time = regi_str.substr(11);
// 	    var regi_time_arr = regi_time.split(":");
// 	    alert("regi_ymd : " + regi_ymd);
// 	    alert("regi_time : " + regi_time);
// 		for(i = 0; i < 3; i++) {
// 			alert("regi_ymd_arr[" + i + "] : " + regi_ymd_arr[i]);
// 		}
// 		for(i = 0; i < 3; i++) {
// 			alert("regi_time_arr[" + i + "] : " + regi_time_arr[i]);
// 		}
	    var end_str = document.getElementById("end_date").value;
	    var end_ymd = end_str.substr(0, 10);
	    var end_ymd_arr = end_ymd.split("-");
	    var end_time = end_str.substr(11);
	    var end_time_arr = end_time.split(":");
	    var end = new Date(end_ymd_arr[0], end_ymd_arr[1], end_ymd_arr[2], end_time_arr[0], end_time_arr[1], end_time_arr[2]);
	    var now = new Date();
	    
	    alert(end);
	    alert(now);
// 		alert("end_ymd : " + end_ymd);
// 		alert("end_time : " + end_time);
// 		for(i = 0; i < 3; i++) {
// 			alert("end_ymd_arr[" + i + "] : " + end_ymd_arr[i]);
// 		}
// 		for(i = 0; i < 3; i++) {
// 			alert("end_time_arr[" + i + "] : " + end_time_arr[i]);
// 		}
	}
	</script>
</head>

<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	   	<%@ include file="./header.jsp" %>
	    <!--header end-->
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<!-- page start -->
					<div class="col-lg-12">
						<form>
							<c:forEach items="${projectList}" var="vo">
								<a href="${pageContext.request.contextPath}/datetest?project_num=${vo.project_num}">${vo.project_name}</a><br/>
								<input type="text" id="regi_date" value="${vo.regi_date}"/><br/>
								<input type="text" id="end_date" value="${vo.end_date}"/><br/>
							</c:forEach>
							시작일 : <input type="text" id="STA_YMD" name="STA_YMD" value="2019.02.25">
							종료일 : <input type="text" id="END_YMD" name="END_YMD" value="2019.03.05">
							차  이 : <input type="text" id="DT_RESULT" name="DT_RESULT" value="">
							<input type="button" value="비교" onclick="calculus()"><br/>
							<input type="button" value="알람" onclick="test()"><br/>
						</form>
					</div>
					<!-- page end -->
				</div>
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
	
</body>

</html>