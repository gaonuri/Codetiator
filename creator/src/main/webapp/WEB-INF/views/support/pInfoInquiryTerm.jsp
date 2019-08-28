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
	<script src="../resources/jquery/jquery-3.4.1.js"></script>
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
</head>
<style >
#content .step {
    padding: 0px 10px 60px 10px;
}
#content .step .wrap .item.active {
    background-color: #712594;
    font-weight: bold;
    color: #fff;
}

#content .step .wrap .item {
    padding: 10px 20px;
    border-style: solid;
    border-color: #712594;
    border-width: 1px;
    background-color: #fff;
    color: #712594;
    display: inline;
}

.container {
    width: 1170px;
}

.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
#loanGuide-banner {
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png)no-repeat center center fixed;
    background-size: cover;
    background-attachment: fixed;
    width: 100%;
    height: 80px;
    padding: 100px 0 200px 0;
}
.text-center {
    text-align: center;
}
.title {
    font-size: 26pt;
    font-weight: 500;
    color: #fff;
    text-shadow: 1px 1px 1px #bf9bcb;
    letter-spacing: -0.5pt;
    line-height: 1.2;
    text-align: center;
}
.section-body {
    color: #000;
    position: relative;
    padding: 60px 20px 30px 20px;
}
.top {
    padding: 30px 0px;
    text-align: center;
}
.dl-horizontal dd {
	    margin-left: 80px;
}
.dl-horizontal dt {
	    width: 70px;
}
.container {
    width: 1170px;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-12 {
    width: 100%;
    float: left;
}
.wrap {
    padding: 35px 100px 111px 100px;
}
.box {
    border-color: #d9d9de;
    border-style: solid;
    border-width: 1px;
    border-radius: 4px;
    padding: 20px 40px;
    background-color: #fff;
    font-size: 16px;
    overflow: scroll;
    max-height: 500px;
}
#section-content {
	padding: 50px 0 111px 0;
	margin-left:25px;
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
	   <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">개인(신용)정보조회 동의</span>
				</div>
			</div>
		</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="section-content">
			<section class="wrapper site-min-height">
<!-- 				<div class="row mt"> -->
					<div class="col-lg-12">
						<div class="container">
<!-- 							<div class="section-body"> -->
								<div class="row">
									<div class="col-md-12">
										<div class="wrap">
											<div class="box">
												<strong>
												<br>주식회사 크리에이터 귀중
												<br>
												<br>신용정보의 이용 및 보호에 관한 법률 제32조제2항 및 개인정보 보호] 제24조에 따라 귀사가 아래와 같은 내용으로 신용조회회사 NICE평가정보(주)로부터 본인의 신용정보를 조회하거나, 본인임을 확인하는 것에 대하여 동의합니다. 대부거래의 갱신, 만기연장, 대환대출의 경우에도 본 동의의 효력은 유효합니다.
												<br>
												</strong>
												<br>1. 조회 대상 기관
												<br>1) 신용정보집중기관: 한국신용정보원, 대부협회, 여신금융협회 등 
												<br>2) 신용조회회사: NICE평가정보㈜, 코리아크레딧뷰로㈜, 서울신용평가정보㈜ 등
												<br>
												<br>2. 조회할 개인(신용)정보 : 개인식별정보, 신용거래정보, 신용도판단정보, 신용능력정보, 공공정보, 신용등급
												<br>
												<br>3. 조회목적 : 대부거래관계의 설정·유지·이행·관리·개선, 연체관리
												<br>
												<br>4. 조회동의 효력기간 : 동의한 시점부터 본 거래 종료일까지. 다만, 본 거래관계 미 설정시 그 시점부터 동의의 효력은 소멸
												<br>
												<br>5. 조회자(신용정보를 제공받는 자)의 개인(신용)정보의 보유·이용 기간 : 신용정보의 이용 및 보호에 관한 법률 및 관련 규약에 근거한 기간까지
												<br>
												<br>본인은 귀사가 위 목적으로 위 조회동의 효력 기간 동안 다음과 같은 본인의 고유식별정보를 처리하는 것에 동의합니다.
												<br>- 고유식별정보 : 운전면허번호, 여권번호, 외국인등록번호, 국내거소신고번호
												<br>
												<br>※ 상기 내용이 변동되는 경우 인터넷 홈페이지 게시 등을 통해 그 내용을 안내해드리며, 본 동의서는 본 계약이 성립되지 않는 경우 그 시점으로부터 효력을 상실합니다.
												<br>※ 이에 대한 동의가 없을 경우 거래관계의 설정 또는 유지가 불가능할 수 있음을 알려드립니다.
												<br>※ 신용조회회사를 통하여 귀하의 신용정보를 조회한 기록에 의해 신용등급이 하락할 수 있으나, 본 계약과 관련한 신용정보 조회기록은 귀하의 신용등급 하락에 영향을 미치지 않음을 알려드립니다.
											</div>
											<hr>
											<div class="row">
												<div class="col-md-push-8 col-md-4">
													<select class="form-control" id="termHisSelect">
														<option value="">이전 약관보기</option>
														<option value="20180227">2018년 2월 27일</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
<!-- 					</div> -->
<!-- 				</div> -->
			</section>
			<!-- /wrapper -->
	    </section>
	    <!-- /MAIN CONTENT -->
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
	<script type="text/javascript">
	$(document).ready(function() {
		$("#loanReqBtn").click(function() {
			location.href = "${pageContext.request.contextPath}/loan/getloan";
		});
	});

	
	
	window.name ="Parent_window";
	function fn_openNicePopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafekeyModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	</script>
</body>
</html>