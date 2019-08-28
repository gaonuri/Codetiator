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
					<span class="title">개인(신용)정보 선택적 수집·이용 동의서</span>
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
												<strong><em>
												※ 귀하는 개인(신용)정보의 선택적인 수집∙이용, 제공에 대한 동의를 거부할 수 있습니다. 다만, 동의하지 않을 경우 관련 편의제공(무이자 또는 이자율 인하 이벤트, 한도 증액, 사은품 제공 등)에 제한이 있을 수 있지만 그 밖의 대부 거래와 관련된 불이익은 없습니다. 상기 사항은 당사 홈페이지 또는 고객센터(02-546-4076)를 통해 철회가 가능합니다.
												</em></strong>
												<br>
												<br>
												<br><strong>㈜ 크리에이터 대부 귀중</strong>
												<br>
												<br>이 계약과 관련하여 귀사가 본인의 개인(신용)정보를 수집·이용하고자 하는 경우에는 「개인정보보호법」 제15조 및 제22조, 제24조, 「신용정보의 이용 및 보호에 관한 법률」 제32조, 제33조 및 제34조, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제22조, 제26조의2에 따라 동의를 얻어야 합니다. 이에 본인은 귀사가 아래의 내용과 같이 본인의 개인(신용)정보를 수집·이용하는데 동의합니다.
												<br>
												<br><strong>1. 개인(신용)정보의 선택적 수집ㆍ이용에 관한 사항</strong>
												<br>
												<br>가. 개인(신용)정보의 수집·이용 목적
												<br>1) 고객에 대한 편의제공, 귀사 및 제휴업체의 상품·서비스 안내 및 이용권유, 사은·판촉행사 등의 마케팅 활동, 시장조사 및 상품·서비스 개발연구 등
												<br>
												<br>나. 수집·이용할 개인(신용)정보의 내용
												<br>1) 개인식별정보, 신용거래정보, 신용도정보, 신용능력정보, 공공기관정보, 신용관련정보
												<br>2) 기타 계약의 체결·이행·유지·관리 등과 관련하여 본인이 제공한 정보
												<br>
												<br>다. 개인(신용)정보의 보유 및 이용기간
												<br>1) 수집ㆍ이용 동의일로부터 본인이 신청한 대부거래가 귀사에 의해 거절된 시점까지, 대부거래가 설정된 경우에는 본인의 수집 이용 동의 철회시까지 또는 거래종료일(채권 채무관계가 해소된 시점)로부터 3개월 또는 그 기간이내 고객의 수집ㆍ이용 동의 철회시까지 이용가능합니다.
												<br>
												<br><strong>2. 개인(신용)정보의 선택적 제공에 관한 사항</strong>
												<br>
												<br>가. 개인(신용)정보를 제공받는 자
												<br>1) 귀사 및 제휴업체의 상품·서비스 안내 등 아래 이용목적과 관련한 업무를 위탁받은 자
												<br>
												<br>나. 제공받는 자의 이용목적
												<br>1) 상품·서비스 안내 및 이용권유, 회원유치, 시장조사, 상품·서비스 개발연구, 고객만족도 조사 등
												<br>
												<br>다. 제공할 개인(신용)정보의 내용
												<br>1) 상기 이용목적 달성을 위하여 필요한 정보(개인식별정보, 신용거래정보 등)
												<br>
												<br>라. 제공받는 자의 개인(신용)정보 보유 및 이용기간
												<br>1) 동의일로부터 개인(신용)정보의 수집·이용 목적을 달성할 때까지
												<br>2) 다만, 관련법규에 별도 규정이 있는 경우 그 기간을 따릅니다.
												<br>
												<br>
												<br>※ 귀하는 동의를 거부할 권리가 있으나, 동의하지 않는 경우 관련 편의제공(사은품, 할인쿠폰 제공 등)에 일부 제한이 있을 수 있습니다.
												<br>
												<br>※ 동의한 경우에도 귀하는 동의를 철회하거나 마케팅 목적으로 귀하에게 연락하는 것을 중지하도록 요청할 수 있습니다.
												<br>
												<br>※ 상기 내용이 변동하는 경우 당사의 인터넷홈페이지 게시 등을 통해 그 내용을 공시합니다.
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