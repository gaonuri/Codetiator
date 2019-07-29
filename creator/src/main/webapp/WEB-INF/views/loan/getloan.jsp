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
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="./main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
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
								<a href="./loan_guide">대출안내</a>
							</li>
							<li>
								<a href="./loan/getloan">대출하기</a>
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
								<a href="./invest_guide">투자안내</a>
							</li>
							<li>
								<a href="./invest_list">투자하기</a>
							</li>
							<li>
								<a href="./invest_finish">완료된투자</a>
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
								<a href="./faq">FAQ</a>
							</li>
							<li>
								<a href="./support">이용약관</a>
							</li>
							<li>
								<a href="./policy">개인정보</a>
							</li>
							<li>
								<a href="./inquiry">1:1문의</a>
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
								<a href="./my_dashboard">대시보드</a>
							</li>
							<li>
								<a href="./my_invest_list">투자내역</a>
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
							<button class="loan_int_btn mr-green" id="loanReqBtn2" style="width:200px; height: 36px; margin-left: 248px; margin-right: 248px;">
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
	<script type="text/javascript">
	
	$(function() {
		
		// 고객명 한글 체크
		/*var CUS_NM_KOR_YN = "";
		if(CUS_NM_KOR_YN == "N") {
			alert("대출 신청을 위해서는 고객명이 한글이어야 합니다. 개인정보변경 페이지로 이동합니다.");
			gfn_goMypageMenu("8");
		}*/
		
		// 숫자만 입력 체크
		$("#birthDateText, #mpNoText, #loanAmtText").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		
		$("#agreeAllCheckbox").on("change", function() {
			if($(this).is(":checked")) {
				$("input:checkbox[name='agreeCheckBox']").prop("checked", true);
				$("input:checkbox[name='agreeCheckBox']").attr("checked", true);
			} else {
				$("input:checkbox[name='agreeCheckBox']").prop("checked", false);
				$("input:checkbox[name='agreeCheckBox']").attr("checked", false);
			}
		});
		
		$("#loan_class").on("change", function() {
			var loanGb = $(this).val();
			var str = "";
			
			if(loanGb == "01") {	// 개인신용
				str += "<option value=\"01\">개인신용</option>";
			} else if(loanGb == "02") {	// 개인담보
				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
			} else if(loanGb == "03") {	// 개인사업자신용
				str += "<option value=\"03\">개인사업자신용</option>";
			} else if(loanGb == "04") {	// 개인사업자담보
				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
			} else if(loanGb == "05") {	// 법인신용
				str += "<option value=\"02\">법인신용</option>";
			} else if(loanGb == "06") {	// 법인담보
				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
			} else {
				str += "<option value=\"\">대출구분을 선택하세요</option>";
			}
			
			var loanTypeSelect = $("#loanTypeSelect");
			loanTypeSelect.empty();
			loanTypeSelect.append(str);
		});
		
		// 날짜는 데이트피커로 입력
		/*$(".datepicker").on("keyup", function() {
			$(this).val("");
		});
		
		$(".datepicker").datepicker({
			dateFormat: 'yymmdd',
			yearRange: 'c-80:c+10',
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			dayNamesMin: ['일','월','화','수','목','금','토'],
			showAnim: "slideDown",
			changeMonth: true, //월변경가능
			changeYear: true, //년변경가능
			showMonthAfterYear: true, //년 뒤에 월 표시
		});*/
		
		var loginCusGbCd = "01";
		var str = "";
		if(loginCusGbCd == "01") {	// 일반회원
			//str += "<option value=\"01\">개인신용</option>";
			str += "<option value=\"02\">개인담보</option>";
			str += "<option value=\"03\">개인사업자신용</option>";
			str += "<option value=\"04\">개인사업자담보</option>";
		} else {	// 법인회원
			str += "<option value=\"05\">법인신용</option>";
			str += "<option value=\"06\">법인담보</option>";
		}
		var loan_class = $("#loan_class");
		loan_class.append(str);
	});
	
	function fn_doNextStep() {
		if(fn_validation()) {
			var birthDate = $("#birthDateText").val().replace(/-/gi, "");
			if(birthDate.length != 8) {
				alert("생년월일을 정확히 입력해 주세요.");
				$("#birthDateText").focus();
				return;
			}
			
			var mpNo = $("#mpNoText").val();
			if(mpNo.length != 11 && mpNo.length != 12) {
				alert("휴대전화번호를 정확히 입력해 주세요.");
				$("#mpNoText").focus();
				return;
			}
			
			// 대출신청정보 등록(ajax) -> callback으로 NICE 본인인증 팝업 호출
			fn_insertLoanReq1Ajax();
		}
	}
	
	function fn_validation() {
		var birthDate = $("#birthDateText").val().replace(/-/gi, "");
		var sex = $(':radio[name="sexRadio"]:checked').val();
		var mpNo = $("#mpNoText").val();
		var loanPeriod = $('#loanPeriodSelect').val();
		var loanAmt = $("#loanAmtText").val();
		var loanGb = $("#loan_class").val();
		var loanType = $("#loanTypeSelect").val();
		var loanPurpose = $("#loanPurposeSelect").val();
		var repayTypeCd = $("#repayTypeCdSelect").val();
		var agree1 = $('input:checkbox[id="agree1Checkbox"]').is(":checked");
		var agree2 = $('input:checkbox[id="agree2Checkbox"]').is(":checked");
		var agree3 = $('input:checkbox[id="agree3Checkbox"]').is(":checked");
		var agree4 = $('input:checkbox[id="agree4Checkbox"]').is(":checked");
		var agree5 = $('input:checkbox[id="agree5Checkbox"]').is(":checked");
		
		var chkBool = true;
		
		if(!chkBool) { return; } else { chkBool = fn_checkVal("생년월일", birthDate, "birthDateText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("성별", sex, "sexRadio"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("휴대전화", mpNo, "mpNoText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출기간", loanPeriod, "loanPeriodSelect"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출금액", loanAmt, "loanAmtText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출구분", loanGb, "loan_class"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출유형", loanType, "loanTypeSelect"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출목적", loanPurpose, "loanPurposeSelect"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("상환방식", repayTypeCd, "repayTypeCdSelect"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("서비스 이용약관", agree1, "agree1Checkbox"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("개인(신용)정보제공 동의서", agree2, "agree2Checkbox"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("개인(신용)정보조회 동의서", agree3, "agree3Checkbox"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("개인(신용)수집, 이용 동의서", agree4, "agree4Checkbox"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("고유식별정보 처리방침 동의서", agree5, "agree5Checkbox"); }
		
		return chkBool;
	}
	
	//값 체크
	function fn_checkVal(title, val, obj) {
		if(val == "" || val == undefined) {
			alert(title + "을(를) 확인해 주세요.");
			gfn_scrollLink(obj, 90);
			$("#" + obj).focus();
			return false;
		} else {
			return true;
		}
	}
	
	function fn_insertLoanReq1Ajax() {
		var cusNo = "1000009604";
		var cusIp = "211.118.162.124";
		var agree6Yn = "N";
		if($('input:checkbox[id="agree6Checkbox"]').is(":checked")) {
			agree6Yn = "Y";
		}
		var brwsrTypeCd = gfn_getBrowserTypeCd();
		var brwsrNm = gfn_getBrowserNm(brwsrTypeCd);
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/loan/insertLoanReq1Ajax");
		comAjax.setCallback("fn_insertLoanReq1AjaxCallback");
		comAjax.addParam("cusNo", cusNo);
		comAjax.addParam("cusNm", "김도엽");
		comAjax.addParam("loanNm", $("#loanTypeSelect option:selected").text() + " " + $("#loanPurposeSelect option:selected").text());
		comAjax.addParam("birthDate", $("#birthDateText").val().replace(/-/gi, ""));
		comAjax.addParam("sexCd", $(':radio[name="sexRadio"]:checked').val());
		comAjax.addParam("mpNo", $("#mpNoText").val().replace(/-/gi, ""));
		comAjax.addParam("loanPeriodCd", $("#loanPeriodSelect").val());
		comAjax.addParam("loanAmt", $("#loanAmtText").val() + "0000");
		comAjax.addParam("loanGbCd", $("#loan_class").val());
		comAjax.addParam("loanTypeCd", $("#loanTypeSelect").val());
		comAjax.addParam("loanPurposeCd", $("#loanPurposeSelect").val());
		comAjax.addParam("repayTypeCd", $("#repayTypeCdSelect").val());
		comAjax.addParam("agree1Yn", "Y");
		comAjax.addParam("agree2Yn", "Y");
		comAjax.addParam("agree3Yn", "Y");
		comAjax.addParam("agree4Yn", "Y");
		comAjax.addParam("agree5Yn", "Y");
		comAjax.addParam("agree6Yn", agree6Yn);
		comAjax.addParam("reqIp", cusIp);
		comAjax.addParam("brwsrTypeCd", brwsrTypeCd);
		comAjax.addParam("brwsrNm", brwsrNm);
		comAjax.ajax();
	}
	
	function fn_insertLoanReq1AjaxCallback(data){
		var sMessage = data.sMessage;
		var sEncData = data.sEncData;
		var loanReqNo = data.loanReqNo;
		if(sMessage == "") {
			$("#EncodeData").val(sEncData);
			$("#param_r1").val(loanReqNo);
			fn_openNicePopup();
		} else {
			alert(sMessage);
			return false;
		}
	}
	
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