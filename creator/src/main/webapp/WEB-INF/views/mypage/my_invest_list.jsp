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
		$(document).ready(function() {
			$("#").click(function() {
				location.href ="${pageContext.request.contextPath}/invest/invest_detail"
			});
		});
		
		$(document).ready(function() {
			$("#depobu").click(function() {
				location.href = "${pageContext.request.contextPath}/my_depo_mgn";
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
					
					<div class="wrap">
						<div class="box left">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="cusNm">${useinfo.user_name}${businfo.manager_name}</span>&nbsp;
									
										님
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">${useinfo.email}${businfo.manager_email}</span>
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
											<span class="amt">${acc.deposit} <font size="2">원</font></span>
										</div>
									</div>
								</div>
								<div class="account-box">
								</div>
								<button type="button" class="btn btn-purple-transparent btn-block" id="depobu" style="margin-top: 4px;">나의 예치금</button>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="largeMenu">
						<div class="menu">
							<div class="item active" id="menu2"> <a href="/creator/my_invest_list">
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
							<div class="item" id="menu8"> <a href="/creator/my_modify">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span> </a>
							</div>
						</div>
					</div>
					
				</div>
				
<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">

<!-- ExcelDownload JavaScript -->
<script type="text/javascript" src="/js/excel/jquery.table2excel.js"></script>

					<div class="wrap display-none" id="todayDstrbtnWrap" style="display: none;">
						<div class="box right">
							<div class="investDetail">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 오늘의 상환채권
										</div>
									</div>
								</div>
								
								<div class="row investList" style="margin-top: 10px;">
									<div class="col-xs-12 col">
										<table class="table table-striped investTable1">
											<thead>
												<tr>
													<th>상품별호수</th>
													<th>상품명</th>
													<th>회차</th>
													<th>투자금액</th>
													<th>원금(+)</th>
													<th>이자(+)</th>
													<th>수수료(-)</th>
													<th>세금(-)</th>
													<th>입금액</th>
												</tr>
											</thead>
											<tbody id="todayDstrbtnListBody"></tbody>
										</table>
										<input type="hidden" id="investListCurOrderBy">
									</div>
								</div>
								
								<div class="row investThum" style="margin-top: 10px;" id="todayDstrbtnThum"></div>
								
								<hr>
								
								<div class="row">
									<div class="col-md-12 text-right">
										총 입금액 <span id="todayDstrbtnAmtSum" class="font-blue font-bold"></span>원
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="investStats">
						<div class="box right">
							<div class="investDetail" style="margin-bottom: 29px;">
								<div class="row display-none" name="loanNoticeListBtnDiv">
									<div class="col-xs-12 col-sm-12 col-md-12" style="margin-bottom: 5px;">
										<div id="showLoanNoticeBtn">
											<button type="button" class="btn btn-default btn-block" onclick="fn_showLoanNotice()">
												채권 변경현황 보기
												
												 <i class="glyphicon glyphicon-menu-down"></i>
											</button>
										</div>
										<div class="display-none" id="hideLoanNoticeBtn">
											<button type="button" class="btn btn-default btn-block" onclick="fn_hideLoanNotice()">
												채권 변경현황 닫기 <i class="glyphicon glyphicon-menu-up"></i>
											</button>
										</div>
									</div>
								</div>
								
								<div class="display-none" id="loanNoticeListDiv">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<table class="investTable1 table table-bordered text-center">
												<colgroup>
													<col width="15%">
													<col width="15%">
													<col width="60%">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">일자</th>
														<th scope="col">대출번호</th>
														<th scope="col">상품명</th>
													</tr>
												</thead>
												<tbody></tbody>
											</table>
										</div>
									</div>
									<div class="row" style="margin-top: 10px;">
										<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
											<form id="loanNoticeListSrchForm" class="text-right" onsubmit="return false;">
												<div style="display: inline-block;">
													<input type="text" class="form-control srchText" name="SRCH_TEXT" onkeypress="fn_hitEnterKey(event, 'loanNoticeList')" placeholder="상품명으로 검색" maxlength="20">
												</div>
												<div style="display: inline-block;">
													<button type="button" class="btn btn-purple-transparent" id="loanNoticeListSrchTextBtn">
														<i class="glyphicon glyphicon-search"></i>
													</button>
												</div>
												<div class="clearfix"></div>
											</form>
										</div>
										<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;">
											<ul class="pagination pagination-sm margin-0" id="loanNoticeListPAGE_NAVI"></ul>
										</div>
									</div>
								</div>
							</div>
							<div class="investDetail">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 투자 채권 목록
										</div>
									</div>
								</div>
								
								<div class="row row-cat">
									<div class="btn-group cate" data-toggle="buttons">
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block" id="investCatLabel00">
												전체<span id="investListCntA"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel01">
												투자신청<span id="investListCntB"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel02">
												상환중<span id="investListCntC"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel03">
												상환완료<span id="investListCntD"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel04">
												연체중<span id="investListCntE"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel05">
												부도<span id="investListCntF"></span>
											</label>
										</div>
									</div>
								</div>
								
								<div class="row investList" style="margin-top: 10px;" id="investList">
									<div class="col-xs-12 col">
										<table class="table table-striped investTable1">
											<thead>
												<tr>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_YMD">
														투자일자<span name="investListSortDesc" id="investListSortDescINVEST_YMD"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
														프로젝트번호<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleLOAN_NM">
														프로젝트명<span name="investListSortDesc" id="investListSortDescLOAN_NM"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_RATE">
														금리(%)<span name="investListSortDesc" id="investListSortDescINVEST_RATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_AMT">
														투자금액<span name="investListSortDesc" id="investListSortDescINVEST_AMT"></span>
													</th>
													<th scope="col" colspan="2" class="clickable" name="investListSortTitle" id="investListSortTitleRND_CNT">
														상환차수<span name="investListSortDesc" id="investListSortDescRND_CNT"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleNEXT_DSTRBTN_DATE">
														상환예정일<span name="investListSortDesc" id="investListSortDescNEXT_DSTRBTN_DATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
														상환완료일<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleREPAY_STATS_CD">
														상품상태<span name="investListSortDesc" id="investListSortDescREPAY_STATS_CD"></span>
													</th>
												</tr>
											</thead>
											<c:forEach items="${investList}" var="vo" varStatus="status">
												<tr>
													<c:if test="${memberVO.user_num != null}">
													</c:if>
													<td>&nbsp;&nbsp;&nbsp;${vo.invest_date}</td>
													<td><a href="invest_detail?detail_num=${vo.project_name}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.project_num}</td>
													<td><a href="invest_detail?detail_num=${vo.project_name}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.project_name}</td>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;${vo.rate}%</td>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.invest_price}만원</td>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.refund_count}</td>
													<td>${vo.refund_due_date}</td>
													<td>${vo.refund_end}</td>
													<td>${vo.ach_state}</td>
													<td>
<%-- 														<c:choose> --%>
<%-- 															<c:when test="${vo.ach_state == '준비중'}"> --%>
<!-- 																<button id="state">준비중</button> -->
<%-- 															</c:when> --%>
<%-- 															<c:otherwise> --%>
<%-- 																${vo.ach_state} --%>
<%-- 															</c:otherwise> --%>
<%-- 														</c:choose> --%>
													</td>
												</tr>
											</c:forEach>
											<tbody id="investListBody"></tbody>
										</table>
									</div>
								</div>
								
								<div class="row investThum" style="margin-top: 10px;" id="investThum"></div>
								
								<!-- 
								<div class="row" style="margin-top: 10px;" id="nextPageDiv">
									<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="alarm-box-bottom">
											<a href='javascript:(void(0));' onclick='fn_selectNextPage()' id="nextPageBtn" class="display-none">
												<i class="glyphicon glyphicon-menu-down"></i>
											</a>
											<a href='javascript:(void(0));' onclick='fn_resetPage()' id="resetPageBtn" class="display-none">
												<i class="glyphicon glyphicon-menu-up"></i>
											</a>
										</div>
									</div>
								</div>
								 -->
								
								<table id="tblExport" style="display:none;" class="tblExport">
									<thead>
										<tr>
											<th scope="col">투자일자</th>
											<th scope="col">상품별호수</th>
											<th scope="col">상품명</th>
											<th scope="col">금리</th>
											<th scope="col">투자금액</th>
											<th scope="col">상환회차</th>
											<th scope="col">만기회차</th>
											<th scope="col">상환예정일</th>
											<th scope="col">상환완료일</th>
											<th scope="col">상품상태</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<div class="row" style="margin-top: 10px;">
									<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
										<form id="investListSrchForm" class="text-right" onsubmit="return false;" style="margin-bottom: 0px;">
											<div style="display: inline-block;">
												<input type="text" class="form-control srchText" name="SRCH_TEXT" style="min-width: 260px;" onkeypress="fn_hitEnterKey(event, 'investList')" placeholder="상품명, 상품ID 또는 상품별호수로 검색" maxlength="20">
											</div>
											<div style="display: inline-block;">
												<button type="button" class="btn btn-purple-transparent" id="investListSrchTextBtn" style="height: 32px;">
													<i class="glyphicon glyphicon-search"></i>
												</button>
											</div>
											<div class="clearfix"></div>
										</form>
									</div>
									<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;height: 20px;">
										<ul class="pagination pagination-sm margin-0" id="investListPAGE_NAVI"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="wrap display-none" id="rcrtCuslistWrap">
						<div class="box right">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="title">
										<font class="font-purple">
											●
										</font> 모집회원 투자내역
									</div>
									<div id="goodList" style="margin-top: 10px;">
										<div class="goodlist-title">
											<div class="row">
												<div class="col-xs-4 col-sm-3 col-md-3">
													<div class="">모집회원</div>
												</div>
												<div class="col-xs-8 col-sm-3 col-md-3">
													<div class="">투자상품</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">투자금액</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">모집수수료</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">지급여부</div>
												</div>
											</div>
										</div>
										<div id="rcrtInvestListBody">
										</div>
									</div>
								</div>
							</div>
							
							<div class="row" id="rcrtNextPageDiv" style="display: none;">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="alarm-box-bottom">
										<a href="javascript:(void(0));" onclick="fn_selectRcrtNextPage()">
											<i class="glyphicon glyphicon-menu-down animated infinite flash"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
    
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
</body>
<style>
#mypage-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png) center 0% no-repeat;
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

</style>
</html>