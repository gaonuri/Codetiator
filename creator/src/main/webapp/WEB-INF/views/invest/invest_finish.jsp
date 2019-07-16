<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<div id="wrapper">
	<div id="content-wrapper">
		<div class="container-fluid">

			<!-- DataTables Example -->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fas fa-table"></i>
					Data Table Example
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>상품명</th>
									<th>등급</th>
									<th>연수익률</th>
									<th>기간</th>
									<th>모집금액</th>
									<th>상환방식</th>
									<th>모집현황</th>
									<th>모집상태</th>
								</tr>
							</thead>
							<tbody>
				       			<c:forEach var="i" begin="0" end="103">
									<tr>
										<td>Name</td>
										<td>Position</td>
										<td>Office</td>
										<td>Age</td>
										<td>Start date</td>
										<td>Salary</td>
										<td>Start date</td>
										<td>Salary</td>
									</tr>
								</c:forEach>
								<c:forEach items="${projectList}" var="vo" varStatus="status">
									<tr>
										<td>${vo.no}</td>
										<td>${vo.no}</td>
										<td>
											<a href="./invest_detail?project_name=${vo.project_num}">
												${vo.title}
											</a>
										</td>
										<td>${vo.writer}</td>
										<td>${vo.pass}</td>
										<td>${vo.cnts}</td>
										<td>${vo.write_date}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
			</div>
			<!-- DataTables End -->
		</div>
		<!-- /.container-fluid -->
	</div>
   
   
   
   
   
   	<!-- Bootstrap core JavaScript-->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/bootstrap.bundle.min.js"></script>
	
	<!-- Page level plugin JavaScript-->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/Chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/dataTables.bootstrap4.js"></script>
	
	<!-- Demo scripts for this page-->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/datatables-demo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/invest/chart-area-demo.js"></script>
   
   
</div>
      
</body>
</html>
