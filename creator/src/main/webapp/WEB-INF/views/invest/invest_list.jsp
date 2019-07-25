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
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section>
			<section class="wrapper">
				<h3><i class="fa fa-angle-right"></i> 투자상품</h3>
				<div class="row mb">
					<!-- page start-->
					<div class="content-panel">
						
						<!-- 투자리스트 start -->
						<div class="adv-table">
	 						<table cellpadding="0" cellspacing="0" border="1" class="display table table-bordered" id="hidden-table-info">
								<thead>
						            <tr>
										<th class="col">상품명</th>
										<th class="col">등급</th>
										<th class="col">금리</th>
										<th class="col">기간</th>
										<th class="col">모집금액</th>
										<th class="col">상환방식</th>
										<th class="col">모집현황</th>
										<th class="col">모집상태</th>
									</tr>
								</thead>
								<c:forEach items="${investList}" var="vo" varStatus="status">
										<tr>
											<td>
												<c:choose>
													<c:when test="${memberVO.user_num != null}">
														<a href="./invest_detail?project_num=${vo.project_num}&user_num=${memberVO.user_num}">${vo.project_name}</a>
													</c:when>
													<c:when test="${memberVO.busi_num != null}">
														<a href="./invest_detail?project_num=${vo.project_num}&busi_num=${memberVO.busi_num}">${vo.project_name}</a>
													</c:when>
													<c:otherwise>
														<a href="./invest_detail?project_num=${vo.project_num}">${vo.project_name}</a>
													</c:otherwise>
												</c:choose>
											</td>
											<td>${vo.grade}</td>
											<td>${vo.rate}%</td>
											<td>${vo.refund}개월</td>
											<td>${vo.price}만원</td>
											<td>${vo.repay_method}</td>
											<td>${vo.ach_rate}</td>
											<td>
												<c:choose>
													<c:when test="${vo.ach_state == '준비중'}">
														<button id="state">준비중</button>
													</c:when>
													<c:otherwise>
														${vo.ach_state}
													</c:otherwise>
												</c:choose>
											</td>
										</tr>
								</c:forEach>
							</table>
						</div>
						<!-- 투자리스트 end -->
						
					</div>
					<!-- page end-->
				</div>
				<!-- /row -->
			</section>
			<!-- /wrapper -->
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
	
	<!-- 게시판 -->
	<!-- js placed at the end of the document so the pages load faster -->
	<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/advanced-datatable/js/jquery.js"></script>
	<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="lib/advanced-datatable/js/DT_bootstrap.js"></script>
	<!--script for this page-->
	<script type="text/javascript">
	$(document).ready(function() {
		/*
		 * Insert a 'details' column to the table
		 */
		var nCloneTh = document.createElement('th');
		var nCloneTd = document.createElement('td');
		nCloneTd.className = "center";
		
		$('#hidden-table-info thead tr').each(function() {
		  this.insertBefore(nCloneTh, this.childNodes[0]);
		});
		
		$('#hidden-table-info tbody tr').each(function() {
		  this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
		});

		/*
		 * Initialse DataTables, with no sorting on the 'details' column
		 */
		var oTable = $('#hidden-table-info').dataTable({
			"aoColumnDefs": [{
			  "bSortable": false,
			  "aTargets": [0]
			}],
			"aaSorting": [
			  [1, 'asc']
			]
		});

		/* Add event listener for opening and closing details
		 * Note that the indicator for showing which row is open is not controlled by DataTables,
		 * rather it is done here
		 */
		$('#hidden-table-info tbody td img').live('click', function() {
			var nTr = $(this).parents('tr')[0];
			if (oTable.fnIsOpen(nTr)) {
				/* This row is already open - close it */
				this.src = "lib/advanced-datatable/media/images/details_open.png";
				oTable.fnClose(nTr);
			} else {
				/* Open this row */
				this.src = "lib/advanced-datatable/images/details_close.png";
				oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
			}
		});
    });
	</script>
</body>

</html>