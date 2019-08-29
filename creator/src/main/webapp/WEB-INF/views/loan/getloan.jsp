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
    color: #fff;
    position: relative;
    padding: 60px 20px 30px 20px;
}
.top {
    padding: 30px 0px;
    text-align: center;
}
#containers {
    width: 100%;
    padding: 60px 0 100px 0;
    height: 100%;
}
div {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
#tab_02 {
    max-width: 700px;
    height: 100%;
    margin: 0 auto;
    border-radius: 10px;
    border: 2px solid #6d377e;
    box-shadow: 0px 0px 15px #c3c3c3;
    background-color: #f9f9f9;
}
#tab_01 section, #tab_02 section {
    width: 94%;
    height: 100%;
    margin: 0 auto;
    letter-spacing: -0.7pt;
}
.underLine {
    width: 700px;
    margin: 0 auto;
    padding: 30px 0 0 0;
    border-bottom: 1px solid #613061;
}
.chkIMG {
    font-size: 20px;
    color: #613061;
    margin-bottom: 20px;
    font-weight: 500;
    letter-spacing: -1pt;
}
.chkIMG img {
    padding-right: 5px;
}
.underLine ul {
    max-width: 90%;
    margin: 0 auto;
}

.loan_int_contents ul {
    width: 720px;
    padding-bottom: 20px;
}
.txtFl {
    overflow: hidden;
}
.underLine ul li {
    line-height: 2;
}
.txtFl li {
    font-size: 19px;
    float: left;
    width: 30%;
    padding-left: 0%;
    letter-spacing: -1pt;
}
li {
    list-style-type: none;
}
.Btxt {
    font-size: 19px;
    font-weight: 600;
}
.subTxt {
    font-size: 11pt;
    color: #777;
    letter-spacing: -1pt;
    margin-left: 15%;
}
.loan_int_btn {
    width: 200px;
    height: 36px;
    outline: 0;
    margin-top: 40px;
    margin-bottom: 50px;
    padding: 0px;
}
.mr-cap {
    color: #fff;
    background-color: #02863A;
    width: 20px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    float: right;
    height: 100%;
}
.mr-angle {
    margin-right: -10px;
    width: 20px;
    text-align: right;
    float: right;
    transform: skew(-30deg);
    -webkit-transform: skew(-30deg);
    -ms-transform: skew(-30deg);
    height: 100%;
    color: #fff;
    background-color: #02863A;
}
.subBtxt {
    font-size: 19px;
    font-weight: 600;
    line-height: 2;
    padding-left: 2%;
    vertical-align: middle;
}
.colorTxt {
    font-size: 10pt;
    color: #d3ae6c;
    letter-spacing: -1pt;
    margin-top: 6%;
}
.mr-green {
    text-align: center;
    font-weight: 600;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
    border: 2px solid #01C351;
    line-height: 30px;
    font-size: 14px;
}
.botn {
	margin-bottom: 0px;
	color: #fff;
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none
}
</style>
<body>

	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <%@ include file="../header.jsp" %>
	   <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">대출 받기</span>
				</div>
			</div>
		</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
<div id="containers">
		<div id="tabContainer">
			<section id="loan_intro">
				<!-- 
				<h3 class="sectionTit titLine">미드레이트 대출신청</h3>
				-->
				<div class="loan_int_contents">
					<div class="topContents">
						<!--  
						<div id="tab_01">
							<section class="underLine">
								<p class="chkIMG">
									<img src="/images/loanV2/Icon_chk.png" />신청 시 확인사항
								</p>
								<!--
								 <span class="chkAddTxt">신청일 기준 최근 3개월 재직 및 소득증빙이 가능한 근로소득자 (프리랜서 가능)</span> 
								->
								<ul class="txtFl">
									<li><strong class="Btxt">금리</strong> ㅣ 4.5% - 15.5%</li>
									<li><strong class="Btxt">한도</strong> ㅣ 3,000만 원</li>
									<li><strong class="Btxt">기간</strong> ㅣ 1개월 - 24개월</li>
								</ul>
							</section>

							<section class="underLine">
								<p class="chkIMG"><img src="/images/loanV2/Icon_chk.png" />준비서류</p>
								<ul>
									<li><strong class="subBtxt">신분증명</strong> ㅣ 신분증 사본 : 주민등록증, 운전면허증, 여권 등</li>
									<li><strong class="subBtxt">재직증명</strong> ㅣ 재직증명서, 건강보험자격득실확인서</li>
									<li class="subTxt">(www.nhis.or.kr >> 자주 찾는 메뉴 >> 조회/발급 서비스 >> 자격득실확인서 발급)</li>
									<li><strong class="subBtxt">소득증명</strong> ㅣ 건강보험 납부 확인서, 근로소득원천징수 영수증, 소득금액증명원</li>
									<li class="colorTxt">대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무 불이행 사유가 있는 고객</li>
								</ul>
							</section> 
							<button class="loan_int_btn mr-green" id="loanReqBtn" onclick="fn_doNextStep()">
								대출신청서 작성하기<span class="mr-cap"></span>
								<span class="mr-angle">
									<div><p>&gt;</p></div>
								</span>
							</button>
						</div>
						<!- tab_01 END
							=====================-->

						<div id="tab_02" style="display: block; height: 579px;" >
							<section class="underLine" style="height: 139px;">
								<p class="chkIMG" style="height: 30px;">
									<img src="${pageContext.request.contextPath}/resources/img/Icon_chk.png">신청 시
									확인사항
								</p>
								<ul class="txtFl" style="padding-left: 0px; height: 58px;">
									<li><strong class="Btxt">금리</strong> ㅣ 5.5% - 15.5%</li>
									<li><strong class="Btxt">한도</strong> ㅣ 협의가능</li>
									<li><strong class="Btxt" style="height: 38px;">기간</strong> ㅣ 1개월 - 24개월</li>
								</ul>
							</section>

							<section class="underLine" style="height: 305.31px;">
								<p class="chkIMG" style="height: 30px;"><img src="${pageContext.request.contextPath}/resources/img/Icon_chk.png">준비서류</p>
								<ul style="height: 224.31px; padding-left: 0px;">
									<li style="height: 38px;"><strong class="subBtxt">신분증명</strong> ㅣ 신분증 사본 : 주민등록증, 운전면허증, 여권 등</li>
									<li><strong class="subBtxt">재직증명</strong> ㅣ 사업자 등록증 첨부(사업장 운영 3개월 이상)</li>
									<li><strong class="subBtxt">소득증명</strong> ㅣ 소득금액증명원, 부가가치세과세증명원 (대출신청일 기준 15일 이내) </li>
									<li class="subTxt">(면세사업자의 경우 수입금액증명원 + 지역의료보험료납부내역 6개월치)</li>
									<li class="colorTxt">대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무 불이행 사유가 있는 고객</li>
								</ul>
							</section>
							<button class="loan_int_btn mr-green" id="loanReqBtn2" style="color:#fff; width:200px; height: 36px; margin-left: 248px; margin-right: 248px; background-color: #01C351;">
								대출신청서 작성하기<span class="mr-cap"></span>
								<span class="mr-angle">
									<div>
										<p class="botn">&gt;</p>
									</div>
								</span>
							</button>
						</div>
						<!-- tab_02 END
							=====================-->
					</div>
					<!-- topContents END
						==========================-->
				</div>
				<!-- loan_int_contents END
					================================-->
			</section>
		</div>
	</div>
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
		$("#loanReqBtn2").click(function() {
			location.href = "${pageContext.request.contextPath}/applyloan";
		});//btn_write
	});//ready
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