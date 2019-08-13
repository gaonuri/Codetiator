<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	  $(window).scroll(function() {
	    if ($(document).scrollTop() > 50) {
	      $("#top-menu-bar").addClass("top-nav-collapse");
	      $("#top-menu-bar").removeClass("top-nav-band");
	    } else {
	    	$("#top-menu-bar").addClass("top-nav-band");
		    $("#top-menu-bar").removeClass("top-nav-collapse");
	    }
	  });
});

	$(function() {
		$("#topGuideButton").on("click", function() {
			$("#topGuideText").removeClass("animated fadeIn");
			$("#topGuideText").addClass("animated fadeOut");
			$('#topGuideTextDiv').hide();
		});
		
		var pathname = location.pathname;
		if(pathname.substr(0,5) == "/loan") {
			$("#top-guide").show();
		} else {
			$("#top-guide").hide();
		}
	});
	
	function fn_setTopGuidePop() {
		var disp = $('#topGuideTextDiv').css('display');
		if(disp == 'block') {
			$("#topGuideText").removeClass("animated fadeIn");
			$("#topGuideText").addClass("animated fadeOut");
			$('#topGuideTextDiv').hide();
		} else {
			$("#topGuideText").removeClass("animated fadeOut");
			$("#topGuideText").addClass("animated fadeIn");
			$("#topGuideTextDiv").show();
		}
	}
</script>
</head>
<style>
#top-menu.navbar-default {
    background-color: transparent;
    border-style: none;
}
#top-menu {
    transition: all 0.8s;
}
.navbar-default {
    background-color: #f8f8f8;
    border-color: #e7e7e7;
}
.navbar-fixed-top {
    top: 0;
    border-width: 0 0 1px;
}
.navbar-fixed-top, .navbar-fixed-bottom {
    border-radius: 0;
}
.navbar-fixed-top, .navbar-fixed-bottom {
    position: fixed;
    right: 0;
    left: 0;
    z-index: 1030;
}
.navbar {
    border-radius: 4px;
}
.navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 20px;
    border: 1px solid transparent;
}
header, section, footer, article, nav {
    display: block;
}
html, body, div, ul, li, a, header, footer, section, article, nav, p, span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
#top-guide {
    background-color: #f7f7f7;
    border-color: #dadada;
    border-bottom-style: solid;
    border-width: 1px;
}
.container-fluid {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-6 {
    width: 50%;
}
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
#top-menu .top-regist-text {
    padding: 10px 0;
    color: #999;
    text-align: left;
}
#top-guide .top-guide-title {
    padding: 10px 0;
    color: #9d9d9e;
    text-align: right;
}
.font-purple {
    color: #712594 !important;
}
a:link, a:visited {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}
b, strong {
    font-weight: bold;
}
#topGuideTextDiv {
    transition: all 0.5s;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}
#top-guide .top-guide-text {
    color: #9d9d9e;
    text-align: left;
    font-size: 14px;
    padding: 0 0 20px 0;
    max-width: 700px;
    margin: auto;
}
#top-guide .top-guide-button {
    color: #712594;
    text-align: center;
    font-size: 18px;
    margin: auto;
    padding: 5px 0 10px 0;
}
#top-guide .top-guide-button i {
    animation-duration: 3s;
    cursor: pointer;
}
.animated.infinite {
    -webkit-animation-iteration-count: infinite;
    animation-iteration-count: infinite;
}
.flash {
    -webkit-animation-name: flash;
    animation-name: flash;
}
.animated {
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.glyphicon {
    position: relative;
    top: 1px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.top-nav-band {
    transition: all 1.0s;
}
#top-menu-bar .container {
    max-width: 1024px;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.navbar-header {
    float: left;
    margin-right: 0;
    margin-left: 0;
}
#top-menu.navbar-default .navbar-toggle {
    border-radius: 0;
    float: right;
}
.navbar-default .navbar-toggle {
    border-color: #ddd;
}
@media (min-width: 768px)
.navbar-toggle {
    display: none;
}
.navbar-toggle {
    position: relative;
    float: right;
    padding: 9px 10px;
    margin-top: 8px;
    margin-right: 15px;
    margin-bottom: 8px;
    background-color: transparent;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
button, iframe {
    display: block;
    margin: 0 auto;
}
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, html input[type="button"], input[type="reset"], input[type="submit"] {
    -webkit-appearance: button;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button {
    overflow: visible;
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #888;
}
.navbar-toggle .icon-bar {
    display: block;
    width: 22px;
    height: 2px;
    border-radius: 1px;
}
#top-menu.navbar-default a.navbar-brand {
    text-transform: uppercase;
    font-size: 22px;
    font-weight: 900;
    float: left;
}
.navbar-default .navbar-brand {
    color: #777;
}
.navbar-brand {
    float: left;
    height: 50px;
    padding: 15px 15px;
    font-size: 18px;
    line-height: 20px;
}
a {
    background-color: transparent;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    color: #337ab7;
    text-decoration: none;
}
#top-menu.navbar-default a.navbar-brand img {
    width: 150px;
}
.navbar-brand > img {
    display: block;
}
.img-responsive, .thumbnail > img, .thumbnail a > img, .carousel-inner > .item > img, .carousel-inner > .item > a > img {
    display: block;
    max-width: 100%;
    height: auto;
}
img {
    vertical-align: middle;
    border: 0;
}
.navbar-fixed-top .navbar-collapse, .navbar-fixed-bottom .navbar-collapse {
    max-height: 400px;
    padding-right: 0;
    padding-left: 0;
}
.navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border-color: #e7e7e7;
}
.container > .navbar-header, .container-fluid > .navbar-header, .container > .navbar-collapse, .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
}
.navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
    visibility: visible !important;
}
.navbar-collapse {
    width: auto;
    border-top: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
}
.navbar-right {
    float: right !important;
    margin-right: -15px;
}
.navbar-nav {
    float: left;
    margin: 0;
    margin: 7.5px -15px;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
ul {
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.navbar-nav > li {
    float: left;
}
.nav > li {
    position: relative;
    display: block;
}
.dropup, .dropdown {
    position: relative;
}
ul, li {
    list-style-type: none;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
    text-align: -webkit-match-parent;
}
#top-menu.navbar-default .navbar-nav > li > a {
    text-transform: uppercase;
    font-size: 14px;
    font-weight: normal;
    background-color: transparent;
    color: #fff;
}
.navbar-nav > li > a {
    padding-top: 15px;
    padding-bottom: 15px;
    line-height: 20px;
}
.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
#top-menu.navbar-default .dropdown-menu {
    border-radius: 4px;
    border-style: solid;
    background-color: rgba(97,3,97,0.6);
}

.navbar-nav > li > .dropdown-menu {
    margin-top: 0;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.navbar-right .dropdown-menu {
    right: 0;
    left: auto;
}
.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, .15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
    box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#top-menu.navbar-default .dropdown-menu > li > a {
    color: #fff;
}
.dropdown-menu > li > a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: normal;
    line-height: 1.42857143;
    color: #333;
    white-space: nowrap;
}
#top-menu.navbar-default .navbar-nav > li > a {
    text-transform: uppercase;
    font-size: 14px;
    font-weight: normal;
    /* letter-spacing: -0.6px; */
    background-color: transparent;
    color: #fff;
}
#top-menu .navbar-nav .btn.btn-primary {
    border-style: none;
}
.top-nav-collapse {
    background-color: rgba(97,3,97,0.6);
    transition: all 1.0s;
}
</style>
	    <!--header start-->
	    <nav id="top-menu" class="navbar navbar-default navbar-fixed-top" style="position: fixed;">
	<section id="top-guide" class="display-none" style="display: none;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-6">
					<div class="top-regist-text">
						㈜크리에이터대부 P2P연계대부업 2018-금감원-1374
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-6">
					<div class="top-guide-title">
						크리에이터는 <span class="font-purple">
							<a id="top-guide-pop" tabindex="0" role="button" style="cursor: pointer; border-bottom: 1px dotted #777;" href="javascript:(void(0));" onclick="fn_setTopGuidePop()">
								<strong>국내금융법</strong>
							</a>
						</span>을 준수합니다.
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12" id="topGuideTextDiv" style="display: none;">
					<div id="topGuideText">
						<hr>
						<div class="top-guide-text">
							<span class="font-purple">크리에이터</span>는 P2P금융 서비스를 제공하고 있으며, <span class="font-purple">크리에이터 대부</span> 주식회사는 P2P금융서비스를 제공하기 위해서 필수적인 여신기능을 담당하기 위해 <span class="font-purple">크리에이터</span>에서 설립한 제휴여신기관입니다. <span class="font-purple">크리에이터 대부</span>는 일반 대부업은 일절 하지 않으며 <span class="font-purple">크리에이터</span>에서만 펀딩이 성사된 차입자에게 여신을 실행합니다. P2P 대출서비스를 규정할 법이 없어 임시방편으로 대부업법인 ‘대부업 등의 등록 및 금융 이용자 보호에 관한 법률’로 규정하고 있으며, 현행 제도 하에서는 대부업상 차입자로부터 중개수수료를 받는 P2P 대출 서비스의 기본 수익모델이 법으로 금지되어 있기 때문에, <span class="font-purple">크리에이터 플랫폼 사업자</span>가 서비스를 시행합니다.
						</div>
						<div class="top-guide-button">
							<i class="glyphicon glyphicon-chevron-up animated infinite flash" id="topGuideButton"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="top-menu-bar" class="top-nav-band">
		<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/main">
					<img src="${pageContext.request.contextPath}/resources/img/logo_mainTop.png" class="img-responsive" alt="brand_img">
				</a>
			</div>
	
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/intro" class="top-menu-font" role="button">회사소개</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle top-menu-font" data-toggle="dropdown" role="button" aria-expanded="false">대출
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/loan_guide">대출안내</a></li>
							<li><a href="${pageContext.request.contextPath}/getloan">대출하기</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle top-menu-font" data-toggle="dropdown" role="button" aria-expanded="false">투자
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/invest_guide">투자안내</a></li>
							<li><a href="${pageContext.request.contextPath}/invest_list">투자하기</a></li>
							<li><a href="${pageContext.request.contextPath}/invest_finished">완료된 투자</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle top-menu-font" data-toggle="dropdown" role="button" aria-expanded="false">고객지원
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/faq">FAQ</a></li>
							<li><a href="${pageContext.request.contextPath}/useTerm">이용약관</a></li>
							<li><a href="${pageContext.request.contextPath}/pInfoProvideTerm">개인정보</a></li>
							<li><a href="${pageContext.request.contextPath}/inquiry">1:1문의</a></li>
							<li><a href="${pageContext.request.contextPath}/support">공지사항</a></li>
						</ul>
					</li>
					
					<!--if문해야함 admin -->
					<c:choose>
						<c:when test="${memberVO != null && memberVO.user_num != '' || memberVO != null && memberVO.busi_num != ''}">
							<c:choose>
								<c:when test="${memVO.user_num == '1'}">
									<li><a class="top-menu-font" role="button">${memVO.user_name}님</a></li>
								</c:when>
								<c:otherwise>
									<li id="header_notification_bar" class="dropdown">
										<a data-toggle="dropdown" class="dropdown-toggle top-menu-font" href="#">
											${memVO.user_name}${memVO.manager_name}님
										</a>
										<ul class="dropdown-menu">
											<li><a href="${pageContext.request.contextPath}/my_invest_list?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">투자내역</a></li>
											<li><a href="${pageContext.request.contextPath}/my_loan_list?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">대출내역</a></li>
											<li><a href="${pageContext.request.contextPath}/my_depo_mgn?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">예치금관리</a></li>
											<li><a href="${pageContext.request.contextPath}/my_modify?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">회원정보수정</a></li>
										</ul>
									</li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li><a class="loginss top-menu-font" href="${pageContext.request.contextPath}/login">로그인</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${memberVO != null && memberVO.user_num != '' || memberVO != null && memberVO.busi_num != ''}">
							<li id="logout_btn"><a class="top-menu-font" href="${pageContext.request.contextPath}/main">로그아웃</a></li>
						</c:when>
						<c:otherwise>
							<li><a class="loginss top-menu-font" href="${pageContext.request.contextPath}/join">회원가입</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${memberVO.user_num == '1'}">
							<li><a href="${pageContext.request.contextPath}/account_list">관리자</a></li>
						</c:when>
					</c:choose>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</section>
	
</nav>
	    <!--header end-->