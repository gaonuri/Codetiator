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
	<script src="../resources/jquery/jquery-3.4.1.js"></script>
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
    background: url(${pageContext.request.contextPath}/resources/bootstrap/img/blog-bg.jpg)no-repeat center center fixed;
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
					<span class="title">개인(신용)정보제공,활용 동의</span>
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
												<br>주식회사 크리에이터 대부 귀중
												<br>
												<br>귀사와의 대부 거래와 관련하여 귀사가 본인으로부터 취득한 개인(신용)정보는 「개인정보 보호법」 제17조 및 제22조, 「신용정보의 이용 및 보호에 관한 법률」 제32조 및 제33조에 따라 제3자에게 제공할 경우 본인의 사전 동의를 얻어야 하는 정보입니다. 이에 본인은 귀사가 본인의 개인(신용)정보를 아래와 같이 신용조회회사 NICE평가정보(주)에게 제공하는 것에 대해 동의합니다.
												<br>
												</strong>
												<br>1. 개인 신용정보를 제공받는 자 : 신용정보 집중기관 : 여신업체, 본인인증업체, ㈜크리에이터
												<br>
												<br>2. 제공받는 자의 이용목적: 신용도 평가, 실명확인, 사기방지 등 신용조회회사의 업무
												<br>
												<br>3. 제공하는 개인(신용)정보항목 : 개인식별정보, 신용거래정보, 신용능력정보, 신용도 판단 정보, 공공정보
												<br>
												<br>4. 제공받는 자의 개인(신용)정보 보유 및 이용기간
												<br>
												<br>신용도 평가, 실명확인 등 신용조회업무 목적 달성 시까지 본인은 귀사가 위 목적으로 본인의 고유식별정보를 처리하는 것에 동의합니다.
												<br>※ 고유식별정보 : 운전면허번호, 여권번호, 외국인등록번호, 국내거소신고번호
												<br>
												<br>5. 거래목적 달성을 위한 개인(신용)정보 제공
												<br>
												<br>1) 개인(신용)정보를 제공받는 자 : 대출심사 위탁업체 : ㈜크리에이터
												<br>
												<br>2) 제공받는 자의 이용목적
												<br>대출계약의 체결·이행·유지·관리, 금융사고 조사, 법령상 의무이행, 분쟁해결, 범죄의 고소·고발, 대금청구(SMS제공포함), 계약내용 및 상환안내, 채권추심, 부가/제휴서비스 제공 및 각종 포인트제공·정산, 배송업무(우편물, 이메일 등), 현장조사/서류수령/자서대행 등
												<br>
												<br>3) 제공할 개인(신용)정보의 내용
												<br>개인식별정보, 신용거래정보, 신용도정보, 신용능력정보, 공공기관정보, 신용관련정보, 계약내용, 채무불이행정보 등 기타 계약의 체결·이행·유지·관리 등과 관련하여 본인이 제공한 정보
												<br>
												<br>4) 제공받는 자의 개인(신용)정보 보유 및 이용기간
												<br>개인(신용)정보를 제공받는 자의 이용목적을 달성할 때까지
												<br>다만, 관련법규에 별도 규정이 있는 경우 그 기간을 따릅니다.
												<br>
												<br>※ 상기 내용이 변동되는 경우 인터넷 홈페이지 게시 등을 통해 그 내용을 안내해 드립니다.
												<br>※ 이에 대한 동의가 없을 경우 거래관계의 설정 또는 유지가 불가능할 수 있음을 알려드립니다.
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