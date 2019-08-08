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
</head>
     
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <%@ include file="../header.jsp" %>
	    <!--header end-->

	   <!--sidebar start-->
	    <aside>
	      <div id="sidebar" class="nav-collapse">
	        <!-- sidebar menu start-->
	        <ul class="sidebar-menu" id="nav-accordion">
	          <li class="mt">
	            <a href="/creator/my_dashboard">
	              <i class="fa fa-dashboard"></i>
	              <span>대시 보드</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_invest_list">
	              <i class="fa fa-ticket"></i>
	              <span>투자 내역</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_loan_list">
	              <i class="fa fa-ticket"></i>
	              <span>대출 내역</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_depo_mgn">
	              <i class="fa fa-money"></i>
	              <span>예치금 관리</span>
	              </a>
	          </li>
	          <li class="mt">
	            <a href="/creator/my_modify">
	              <i class="fa fa-gear"></i>
	              <span>기본 정보 수정</span>
	              </a>
	          </li>
	        </ul>
	        <!-- sidebar menu end-->
	      </div>
	    </aside>
	    <!--sidebar end-->					
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<section id="main-content">
     	 <section class="wrapper site-min-height">
       	 	<div class="row mt">
         		 <div class="col-md-12">
            		<div class="content-panel">
			            <div class="tab-content">
						<div id="invest" class="tab-pane active">
					    	<form role="form" class="form-horizontal">
						   		<div class="row">
						   		<div class="col-md-12">
						    	<div class="investDetail">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
											<font class="font-purple">
												●
											</font> 투자 채권 목록
										</div>
									</div>
								</div>
								<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
								<div class="row investList" style="margin-top: 10px;" style="margin-left: 10px;">
										<div class="col-xs-10 col">
											<table class="table">
													<thead>
														<tr>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
																순번<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleLOAN_NM">
																프로젝트명<span name="investListSortDesc" id="investListSortDescLOAN_NM"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
																기간<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_RATE">
																금리(%)<span name="investListSortDesc" id="investListSortDescINVEST_RATE"></span>
															</th>
															<th scope="col" colspan="clickable" class="clickable" name="investListSortTitle" id="investListSortTitleRND_CNT">
																상환방식<span name="investListSortDesc" id="investListSortDescRND_CNT"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
																상환예정일<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
																상환완료일<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_AMT">
																현재 및 목표금액<span name="investListSortDesc" id="investListSortDescINVEST_AMT"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_AMT">
																모집현황<span name="investListSortDesc" id="investListSortDescINVEST_AMT"></span>
															</th>
															<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleREPAY_STATS_CD">
																상품상태<span name="investListSortDesc" id="investListSortDescREPAY_STATS_CD"></span>
															</th>
														</tr>
													</thead>
												<c:forEach items="${loanList}" var="vo" varStatus="status">
													<tr>
														<c:if test="${memberVO.busi_num != null}">
														</c:if>
														<td>${vo.project_num}</td>
														<td><a href="invest_detail?detail_num=${vo.project_num}"/>${vo.project_name}</td>
														<td>${vo.rate}%</td>
														<td>${vo.repay_method}</td>
														<td>${vo.refund_due_date}</td>
														<td>${vo.refund_end}</td>
														<td>${vo.price}</td>
														<td>${vo.ach_rate}</td>
														<td>${vo.ach_state}</td>
													</tr>
												</c:forEach>
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
								<div class="row" style="margin-top: 10px;">
									<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
										<form id="investListSrchForm" class="text-right" onsubmit="return false;">
											<div style="display: inline-block;">
												<input type="text" class="form-control srchText" name="SRCH_TEXT" style="min-width: 260px;" onkeypress="fn_hitEnterKey(event, 'investList')" placeholder="상품명, 상품ID 또는 상품별호수로 검색" maxlength="20">
											</div>
											<div style="display: inline-block;">
												<button type="button" class="btn btn-purple-transparent" id="investListSrchTextBtn">
													<i class="glyphicon glyphicon-search"></i>
												</button>
											</div>
											<div class="clearfix"></div>
										</form>
									</div>
									<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;">
										<ul class="pagination pagination-sm margin-0" id="investListPAGE_NAVI"></ul>
									</div>
								</div>
							</div>
			           		   </div>
							   </div>
					    	</form>
						</div>
						<!-- =========전체 -->	
					</div>
				</div>
            </div>
        </div>
        <!-- row -->
      </section>
    </section>
    
    
		
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