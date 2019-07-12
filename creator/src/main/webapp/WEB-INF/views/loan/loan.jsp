<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script src="./resources/jquery/jquery-3.4.1.js"></script>
<script src="./resources/ckeditor/ckeditor.js"></script>
  <meta charset="utf-8">
  <title>Marco - Bootstrap Agency Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="./resources/bootstrap/img/favicon.png" rel="icon">
  <link href="./resources/bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="./resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="./resources/bootstrap/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="./resources/bootstrap/lib/animations/animations.css" rel="stylesheet">
  <link href="./resources/bootstrap/lib/hover-pack/hover-pack.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="./resources/bootstrap/css/container.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/section.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/row.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/strong.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/style.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/colors/color-74c9be.css" rel="stylesheet">
  <link href="./resources/bootstrap/css/block.css" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function() {
	$("#loanReqBtn").click(function() {
		location.href = "${pageContext.request.contextPath}/loan/getloan";
	});//btn_write
});//ready
</script>
</head>
<style >
</style>
<body>

	<%@ include file="./menubar.jsp" %>
  <div id="headerwrap">
    <div class="container">
      <div class="row centered">
        <div class="col-lg-8 col-lg-offset-2 mt">
          <h1 class="animation slideDown">안녕하세요</h1>
        </div>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /headerwrap -->


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
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_loan_process_01.png">
						</div>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_next.png">
						</div>
						<h4><strong><span class="number">1.&nbsp;</span>대출 신청</strong></h4>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-2">
							<!-- 
							<img src="/images/loan/img_loan_procedure_add_info.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_loan_process_02.png">
						</div>
						<h4><strong><span class="number">2.&nbsp;</span>추가정보</strong></h4>
						<div class="arrow pc">
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-3">
							<!--  
							<img src="/images/loan/img_loan_procedure_judge.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_loan_process_03.png">
						</div>
						<h4><strong><span class="number">3.&nbsp;</span>서류심사</strong></h4>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step step-4">
							<!--  
							<img src="/images/loan/img_loan_procedure_dealopen.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_loan_process_04.png">
						</div>
						<h4><strong><span class="number">4.&nbsp;</span>상품오픈</strong></h4>
						<div class="arrow">
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_next.png">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-2 procedure">
						<div class="step-5">
							<!--  
							<img src="/images/loan/img_loan_procedure_approval.png">
							-->
							<img src="${pageContext.request.contextPath}/resources/loanV2/img_loan_process_05.png">
						</div>
						<h4><strong><span class="number">5.&nbsp;</span>대출 실행</strong></h4>
					</div>
				</div>
				<div class="mr-green mainTop_btn" id="loanReqBtn">
					대출신청<span class="mr-cap"></span>
				</div>
			</div>
		</div>

	<%@ include file="./footer.jsp" %>
</body>
</html>