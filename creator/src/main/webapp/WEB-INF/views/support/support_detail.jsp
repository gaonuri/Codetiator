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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!-- =======================================================
	  Template Name: Dashio
	  Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
	  Author: TemplateMag.com
	  License: https://templatemag.com/license/
	======================================================= -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btn_list").click(function() {
				location.href = "${pageContext.request.contextPath}/support";
			});//btn_write
		});//ready
		
		$(document).ready(function() {
			$("#btn_delete").click(function() {
				var del_yn = false;
				del_yn = confirm("삭제 하시겠습니까?");
				if(del_yn == false){
					return;
				}
				$.get("${pageContext.request.contextPath}/delete"
						,{
							notice_num:$("#notice_num").val()
						}//data
						,function(data,status) {
							if(status == "success") {
								if(data > 0){
									alert("삭제 되었습니다.");
									location.href="${pageContext.request.contextPath}/support";
								} else {
									alert("잠시 후 다시 시도해 주세요.");
								}
							} else {
								alert("admin : 02-5555-7777");
							}
						}//function
				);//get
			});//btn_delete
		});
	</script>
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
		<br>
		<br>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-md-10">
						<div class="content-panel">
							<div class="invoice-body">
				                <!-- /pull-left -->
								<div class="left">
								</div>
				                <div class="clearfix"></div>
				                <br>
				                <br>
				                <input type="hidden" id="notice_num" value="${detailVO.notice_num}"/>
	                			<table>
	                				<tr>
										<td><br><font size="6">${detailVO.title}</font><br></td>
									</tr>
									<tr>
										<td><br><font size="3">${detailVO.notice_date}</font><br></td>
									</tr>
									<tr>
										<td><br><font size="4">${detailVO.notice_contents}</font><br></td>
									</tr>
								</table>
								<div class="pull-right">
										<c:if test="${memVO.user_name == 'admin'}">
											<input type="button" id="btn_delete" value="삭제" />
										</c:if>
									<input type="button" id="btn_list" value="목록으로" />
								</div>
								<br>
							</div>
							<!--/col-lg-12 mt -->
						</div>
					</div>
				</div>
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
</body>

</html>