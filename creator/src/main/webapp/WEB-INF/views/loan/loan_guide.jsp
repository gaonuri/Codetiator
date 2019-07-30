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
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    width: 1170px;
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
    color: #fff;
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
#procedure {
    padding: 41px 0 111px 0;
    background-color: #fff;
}
.text-center {
    text-align: center;
}
.section-body {
    padding: 0 15px;
}
.loan_int_tit {
    font-size: 21pt;
    font-weight: 500;
    color: #333;
    margin-top: 70px;
    margin-bottom: 45px;
    text-align: center;
    letter-spacing: -0.2pt;
    /* text-shadow: 0px 0px 1px #777; */
}
.row {
    margin-right: -15px;
    margin-left: -15px;
    margin-bottom: 120px;
}
.procedure {
    padding: 40px 0 0 0;
}
.col-md-offset-1 {
    margin-left: 8.33333333%;
}
.col-md-2 {
    width: 16.66666667%;
    float: left;
}
.step {
    position: relative;
}
img {
    vertical-align: middle;
    border: 0;
}
.arrow {
    position: absolute;
    top: 40px;
    right: -15px;
    display: block;
}
h4{
    font-size: 15px;
    margin-top: 10px;
    margin-bottom: 10px;
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: black;
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
strong {
    font-weight: bold;
}
.number {
    display: none;
}
.mainTop_btn {
    width: 26%;
    height: 36px;
    font-size: 17px;
    margin: 5% 37% 0 37%;
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
	color: #fff;
    background-color: #02863A;
    margin-right: -10px;
    width: 20px;
    text-align: right;
    float: right;
    transform: skew(-30deg);
    -webkit-transform: skew(-30deg);
    -ms-transform: skew(-30deg);
    height: 100%;
}
p {
    color: #fff;
    margin: 0 0 10px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.mr-green {
    color: #fff;
    background-color: #01C351;
    text-align: center;
    font-weight: 600;
    margin-left: auto;
    margin-right: auto;
    border: 2px solid #01C351;
}
</style>
<body>

	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="${pageContext.request.contextPath}/main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
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
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							대출
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="${pageContext.request.contextPath}/loan_guide">대출안내</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/loan/getloan">대출하기</a>
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
								<a href="${pageContext.request.contextPath}/invest_guide">투자안내</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/invest_list">투자하기</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/invest_finish">완료된투자</a>
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
								<a href="${pageContext.request.contextPath}/faq">FAQ</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/support">이용약관</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/policy">개인정보</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/inquiry">1:1문의</a>
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
								<a href="${pageContext.request.contextPath}/my_dashboard">대시보드</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/my_invest_list">투자내역</a>
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
					<li><a href="./loan_guide">로그아웃</a></li>
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
	   <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">대출 안내</span>
				</div>
			</div>
		</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
<section id="procedure" class="text-center">
		<div class="container">
			<div class="center">
				<div class="loan_int_tit">대출 절차</div>
			</div>
			<div class="section-body">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-2 col-md-offset-1 procedure side">
						<div class="step step-1">
							<!-- 
							<img src="/images/loan/img_loan_procedure_loan_application.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/img/img_loan_process_01.png">
						</div>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/img//img_next.png">
						</div>
						<h4><strong><span class="number">1.&nbsp;</span>대출 신청</strong></h4>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-2">
							<!-- 
							<img src="/images/loan/img_loan_procedure_add_info.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/img/img_loan_process_02.png">
						</div>
						<h4><strong><span class="number">2.&nbsp;</span>추가정보</strong></h4>
						<div class="arrow pc">
							<img src="${pageContext.request.contextPath}/resources/img/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-3">
							<!--  
							<img src="/images/loan/img_loan_procedure_judge.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/img/img_loan_process_03.png">
						</div>
						<h4><strong><span class="number">3.&nbsp;</span>서류심사</strong></h4>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/img/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-4">
							<!--  
							<img src="/images/loan/img_loan_procedure_dealopen.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/img/img_loan_process_04.png">
						</div>
						<h4><strong><span class="number">4.&nbsp;</span>상품오픈</strong></h4>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/img/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step-5">
							<!--  
							<img src="/images/loan/img_loan_procedure_approval.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/img/img_loan_process_05.png">
						</div>
						<h4><strong><span class="number">5.&nbsp;</span>대출 실행</strong></h4>
					</div>
				</div>
				<div class="mr-green mainTop_btn" id="loanReqBtn">
					대출신청<span class="mr-cap"></span>
					<span class="mr-angle">
						<div style="-webkit-transform: skew(30deg); line-height: 0px"><p>&gt;</p></div>
					</span>
				</div>
			</div>
		</div>
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
	<script type="text/javascript">
	$(document).ready(function() {
		$("#loanReqBtn").click(function() {
			location.href = "${pageContext.request.contextPath}/getloan";
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