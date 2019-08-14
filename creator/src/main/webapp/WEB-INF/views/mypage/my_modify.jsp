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
		$("#unlockBtn").on("click", function() {
			$("#lockMode").css("display", "none");
			$("#unLockMode").css("display", "block");
		});
	});
	$(document).ready(function() {
		$("#depobu").click(function() {
			location.href = "${pageContext.request.contextPath}/my_modify";
		});//click
	});//ready
</script>     
</head>
<body>
<!--header start-->
	   
	    <%@ include file="../header.jsp" %>
		<%@ include file="../mypage_banner.jsp" %>
 <section id="mypage-content">
		<div class="container">
			<!-- Container -->
			
				
			<div class="row">
				<div class="col-sm-12 col-md-3 col col-box">
					<div class="wrap" id="smallMenu">
						<div class="wrap">
							<div class="box quick">
								<div role="tabpanel" class="smallMenuTap">
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist">
										<li id="smallMenuLi2">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">투자 내역</span>
											</a>
										</li>
										<li id="smallMenuLi4">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">대출 내역</span>
											</a>
										</li>
										<li id="smallMenuLi5">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">예치금 관리</span>
											</a>
										</li>
										<li id="smallMenuLi8">
											<a href="javascript:(void(0));" >
												<span class="smallMenuItem">기본 정보 수정</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
					
					<div class="wrap">
						<div class="box left">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="cusNm">${mypageVO.user_name}${mypageVO.manager_name}</span>&nbsp;
										님
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">${mypageVO.email}${mypageVO.manager_email}</span>
								</div>
								<div class="col-xs-2 col-sm-1 col-md-1" style="margin-top: 8px;">
									<div id="depositUnFold" style="display: none;cursor: pointer;">
										<i class="glyphicon glyphicon-menu-down"></i>
									</div>
									<div id="depositFold" style="cursor: pointer;">
										<i class="glyphicon glyphicon-menu-up"></i>
									</div>
								</div>
							</div>
							<div id="deposit-div" style="">
								<div class="deposit-box">
									<div class="row">
										<div class="col-xs-7">
											<span class="myDeposit">기본 예치금</span>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">${mypagebank.deposit} <font size="2">원</font></span>
										</div>
									</div>
								</div>
								<br>
								<br>
								<button type="button" class="btn btn-purple-transparent btn-block" id="depobu" style="margin-top: 4px;">기본 정보 수정</button>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="largeMenu">
						<div class="menu">
							<div class="item" id="menu2"> <a href="/creator/my_invest_list">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_invest_list.png">
								<span class="text" id="menuL2">투자 내역</span> </a>
							</div>
							<div class="item" id="menu4"> <a href="/creator/my_loan_list">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span> </a>
							</div>
							<div class="item" id="menu5">  <a href="/creator/my_depo_mgn">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw.png">
								<span class="text" id="menuL5">예치금 관리</span> </a>
							</div>
							<div class="item active" id="menu8"> <a href="/creator/my_modify">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span> </a>
							</div>
						</div>
					</div>
				</div>
				
<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">
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
					<div id="lockMode">
						<div class="wrap">
							<div class="box right">
								<div class="row">
									<div class="col-xs-12">
										<div class="edit">
											<div class="edit-img">
												<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_lock.png" class="img-responsive" alt="brand_img">
											</div>
											<div class="edit-title">
												<font color="#873687" style="font-weight: bold;">${mypageVO.user_name}${mypageVO.manager_name}</font>님의 회원정보는 안전하게 보호되고 있습니다.
											</div>
											
											
											
												<div class="edit-text">
													회원님의 정보를 수정하려면 비밀번호를 입력해주세요.
												</div>
												<div class="edit-input">
													<form class="form-inline">
														<div class="form-group">
															<input class="form-control" id="member_password" type="password" placeholder="*비밀번호" >
															<c:choose>
																<c:when test="${memberVO != null && (memberVO.user_num != '' && memberVO.user_num != null)}">
																	<input type="button" class="btn btn-purple-transparent" id="un_btn" value="잠금 해제"/>
																</c:when>
															</c:choose>
															<c:choose>
																<c:when test="${memberVO != null && (memberVO.busi_num != '' && memberVO.busi_num != null)}">
																	<input type="button" class="btn btn-purple-transparent" id="un_btn1" value="잠금 해제"/>
																</c:when>												
															</c:choose>
														</div>
													</form>
												</div>
												<div class="edit-text">
													<img src="${pageContext.request.contextPath}/resources/img/icon_login_lock.png">
													비밀번호가 기억나지 않으신다면? <a href="./findpwd" style="color: #712594;">비밀번호 찾기</a>
												</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
  	<input type="hidden" id="numChk" value="${mypageVO.user_num}"/>
	<input type="hidden" id="numChk1" value="${mypageVO.busi_num}"/>
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
</body>
<style>
#mypage-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/common_banner_title.jpg) center 0% no-repeat;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 239px;
}
#mypage-banner .section-body {
    color: #fff;
    position: relative;
    padding: 135px 20px 0px 20px;
}
#mypage-banner .section-body .title {
    color: #fff;
    text-shadow: 1px 2px #222;
}
#mypage-banner .title {
    color: #fff;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
#mypage-content {
    padding: 41px 0 96px 0;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    display: table;
    content: " ";
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
.col-md-3 {
    width: 25%;
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
#mypage-content .wrap#smallMenu {
    display: none;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .box.quick {
    padding: 10px 12px 10px 12px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
#mypage-content .smallMenuTap {
    font-size: 14px;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
ul, ol {
    padding: 0;
    webkit-padding: 0;
    moz-padding: 0;
}
ul, ol {
    margin-top: 0;
    margin-bottom: 10px;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#mypage-content .smallMenuTap li {
    min-width: 49%;
    text-align: center;
}
.nav-pills > li {
    float: left;
}
.nav > li {
    position: relative;
    display: block;
}
#mypage-content .smallMenuTap li.active a {
    background-color: #712594;
}
#mypage-content .smallMenuTap a {
    padding: 5px 10px;
}
.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
    color: #fff;
    background-color: #337ab7;
}
.nav-pills > li > a {
    border-radius: 4px;
}
.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
#mypage-content .smallMenuTap li.active a .smallMenuItem {
    border-bottom: none;
}
.nav-pills > li + li {
    margin-left: 2px;
}
#mypage-content .smallMenuTap a .smallMenuItem {
    border-bottom: #712594 1px solid;
}
#mypage-content .wrap .box.left {
    padding: 15px;
}
.col-md-12 {
    width: 100%;
}
#mypage-content .wrap .box.left .cusNm {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .invstrTypeNm {
    font-size: 14px;
    font-weight: bold;
    color: #00A0DC;
}
#mypage-content .wrap .box.left .email {
    font-size: 14px;
    color: #858585;
}
#mypage-content .wrap .box .deposit-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 10px 20px;
    margin-top: 20px;
}
#mypage-content .wrap .box .deposit-box .myDeposit {
    font-size: 14px;
    font-weight: bold;
    color: #858585;
}
a {
    color: #712594;
    text-decoration: none;
}
a {
    background-color: transparent;
}
#mypage-content .wrap .box .deposit-box .tranList {
    font-size: 12px;
}
#mypage-content .wrap .box .deposit-box .amt {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .account-box {
    padding: 20px 10px 30px 10px;
    /* display: none; */
}
#mypage-content .wrap .box.left .account-box .account {
    font-size: 14px;
}
.font-red {
    color: #e08484 !important;
}
#mypage-content button.btn {
    font-size: 14px;
}
.btn-purple-transparent {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 16px;
    border-style: none;
}
.btn-block {
    display: block;
    width: 100%;
}
#mypage-content .wrap#largeMenu {
    display: block;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .menu {
    font-size: 15px;
    font-weight: bold;
    color: #3d3d3d;
    padding: 0px 0px;
}
#mypage-content .wrap#largeMenu .menu .item.active {
    background-color: #ecdeec;
    border-radius: 4px;
}
#mypage-content .wrap .menu .item {
    transition: all 0.8s, color 0.3s 0.3s;
}
#mypage-content .wrap .menu img {
    padding: 12px 22px 12px 12px;
    width: 55px;
    height: 45px;
}
#mypage-content .wrap#largeMenu .menu .item span {
    cursor: pointer;
}
.tabbable-line>.nav-tabs {
    border: none;
    margin: 0px;
}
.tabbable-line>.nav-tabs>li {
    margin-right: 2px;
    border: 1px solid #d9d9de;
    border-bottom: 0px solid #d9d9de;
}
.nav-tabs > li {
    float: left;
    margin-bottom: -1px;
}
.nav > li {
    position: relative;
    display: block;
}
.tabbable-line>.nav-tabs>li>a {
    border: 0;
    margin-right: 0;
    color: #737373;
}
.nav-tabs > li > a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
}

.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
.tabbable-line>.nav-tabs>li>a>i {
    color: #a6a6a6;
}
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transform: translate(0, 0);
}
.tabbable-line>.nav-tabs>li.active {
    border-bottom: 4px solid #712594;
    position: relative;
}
.tabbable-line>.nav-tabs>li.active>a {
    border: 0;
    color: #333333;
}
.tabbable-line>.nav-tabs>li.active>a>i {
    color: #404040;
}
.tabbable-line>.tab-content {
    border: 0;
    /* border-top: 1px solid #d9d9de; */
    /* padding: 15px 0; */
}
.tab-content > .tab-pane {
    display: none;
    visibility: hidden;
}
.fade {
    opacity: 0;
    -webkit-transition: opacity .15s linear;
    -o-transition: opacity .15s linear;
    transition: opacity .15s linear;
}
#mypage-content #mypage-main .wrap .box.right {
    padding: 30px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
.display-none {
    display: none;
}
.col-md-6 {
    width: 50%;
}
#mypage-content #mypage-main .wrap .box.right .title {
    font-size: 18px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right button.btn-gradiation {
    font-size: 12px;
}
.row-cat {
    padding: 0 15px;
    margin-top: 10px;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label {
    font-size: 12px;
    min-width: 16.7%;
}
.labelBtn-purple {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 14px;
    border-radius: 0px;
    border-color: #fff;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate {
    width: 100%;
}
body {
    color: #797979;
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .investList {
    padding: 0 15px;
    margin-top: 10px;
}
#mypage-content #mypage-main .wrap .box.right table {
    margin: auto;
    font-size: 12px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 tr {
    height: 30px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 th {
    text-align: center;
}
.col-md-push-6 {
    left: 50%;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.srchText{
    margin-right: 5px;
    font-size: 12px;
    min-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right .subTitle {
    font-size: 15px;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide {
    text-align: center;
    padding: 10px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .box {
    background: url(${pageContext.request.contextPath}/resources/img/bg_loaninfo_type.png) center 0% no-repeat;
    background-size: 100% 100%;
    background-color: #fff;
    border-style: solid;
    padding: 5px;
    border-width: 1px;
    border-color: #dadada;
    border-radius: 4px;
    min-height: 300px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .top {
    font-size: 22px;
    border-bottom-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    padding: 20px 10px;
    font-weight: bold;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .middle {
    font-size: 16px;
    padding: 15px 45px 5px 45px;
    color: #712594;
    text-align: left;
    font-family: 'Noto Sans KR', sans-serif;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom {
    font-size: 14px;
    padding: 10px 0px 10px 40px;
    text-align: left;
}
.bottom ul {
	padding-left: 0px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom li {
    list-style-type: square;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
#mypage-content .wrap .box .withdrawGuide {
    font-size: 14px;
    padding: 20px;
}
#mypage-content .wrap .box .withdrawGuide li {
    list-style-type: square;
}
#mypage-content .wrap .box .withdraw-wrap {
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-title {
    font-weight: bold;
    color: #858585;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-content {
    font-weight: bold;
}
.withdrawGuide ul {
    padding-left: 0px;
    font-family: 'Noto Sans KR', sans-serif;
    color: #5a5a5a;
    letter-spacing: -0.4px;
}
#mypage-content .wrap .box .withdraw-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 15px 30px;
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-box #withdrawAmt {
    text-align: right;
}
span.multiselect-native-select {
    position: relative;
}
span.multiselect-native-select select {
    border: 0!important;
    clip: rect(0 0 0 0)!important;
    height: 1px!important;
    margin: -1px -1px -1px -3px!important;
    overflow: hidden!important;
    padding: 0!important;
    position: absolute!important;
    width: 1px!important;
    left: 50%;
    top: 30px;
}
optgroup {
    font-weight: bold;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#mypage-content .goodlist-title {
    padding: 20px 0px;
    border-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    border-radius: 4px;
    background-color: #fff;
    margin-bottom: 8px;
    font-size: 15px;
    color: #858585;
    text-align: center;
}
#mypage-content .goodlist-title .row {
    margin-left: 0px;
    margin-right: 0px;
}
#mypage-content #mypage-main .wrap .box.right .edit {
    padding: 100px 180px;
    text-align: center;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-img {
    width: 100%;
    text-align: center;
    padding: 0px 100px 50px 100px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-img img {
    margin: 0 auto;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-title {
    text-align: center;
    font-size: 18px;
    padding: 0px 0px 40px 0px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-text {
    font-size: 14px;
    padding: 0 40px;
}
#mypage-content #mypage-main .wrap .box.right .edit .edit-input {
    padding: 20px 40px;
}
.form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
}
.form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
}
input[type="password"] {
    font-family: 'Arial',sans-serif !important;
}
#mypage-content #mypage-main .wrap .box.right .rightLine {
    border-right-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo {
    padding: 0px 10px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo .subTitle {
    font-size: 14px;
}
#mypage-content #mypage-main .wrap .box.right .condition-table {
    margin-top: 10px;
    font-size: 14px;
}
#mypage-content #mypage-main .wrap .box.right .editCusInfo tr {
    height: 30px;
}
#mypage-content #mypage-main .wrap .box.right .condition-table td.condition-title {
    font-size: 14px;
    font-weight: bold;
}
#mypage-content #mypage-main .wrap .box.right .condition-table td {
    font-size: 14px;
    padding: 5px 0 0 0;
}
#mypage-content #mypage-main .wrap .box.right table td {
    border-style: none;
    vertical-align: middle;
    padding: 0px;
}
#mypage-content #mypage-main .wrap .box.right #cusNm {
    display: inline;
    max-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right #updateCusNmBtn {
    vertical-align: bottom;
}
#mypage-content #mypage-main .wrap .box.right #email {
    display: inline;
    max-width: 200px;
}
#mypage-content #mypage-main .wrap .box.right #updateEmailBtn {
    vertical-align: bottom;
}
#mypage-content #mypage-main .wrap .box.right #mpNo {
    display: inline;
    max-width: 200px;
}
.form-inline .radio, .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
}
.ui-checkbox input[type=checkbox]+span {
    font-weight: 400;
}
.form-inline .radio input[type="radio"], .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
}

.ui-checkbox input[type=checkbox] {
    display: none;
}
#mypage-content label {
    font-size: 14px;
}
.form-inline .radio label, .form-inline .checkbox label {
    padding-left: 0;
}
.ui-checkbox {
    position: relative;
    margin: 0 20px 0 15px;
    display: inline;
}
.ui-checkbox input[type=checkbox]+span:before {
    content: "";
    width: 18px;
    height: 18px;
    display: inline-block;
    vertical-align: top;
    margin-right: 10px;
    margin-left: -17px;
    background-color: transparent;
    /* border-radius: 2px; */
    border: 2px solid #555;
}
.ui-checkbox input[type=checkbox]:checked+span:after {
    content: "\f00c";
    width: 8px;
    height: 8px;
    position: absolute;
    top: 0;
    left: -14px;
    color: #712594;
    font-family: FontAwesome;
    background-size: 14px 14px;
    display: block;
}
.ui-checkbox input[type=checkbox]:checked+span:before {
    border: 1px solid #712594;
}
</style>
</html>