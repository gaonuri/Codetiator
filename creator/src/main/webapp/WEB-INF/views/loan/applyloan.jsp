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
var id;
var min = 29;
var sec = 59;
var minZero = "";
var secZero = "";
function setClock() {
	id = setInterval(worker,1000);
}
function worker() {
	if(min < 10){minZero = "0";}else{minZero = "";}
	if(sec < 10){secZero = "0";}else{secZero = "";}
	var now = minZero + min + " : " + secZero + sec;
	clock.innerHTML = "<h6>"+now+"</h6>";
	sec = parseInt(sec) - 1;
	if(sec == -1) {
		sec = 59;
		min = parseInt(min) - 1;
		if(min == -1){
			clearInterval(id);
			alert("인증시간이 만료 되었습니다.");
			location.reload();
			//$("#btn_cert1").modal("hide");
		}
	}
}
$(document).ready(function(){
	var chkemail = '';
	
	$("#manager_email").blur(function(){
		var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
		
		if($.trim($("#manager_email").val()) != $(this).val().match(emailStd)){
			alert("올바르지 않은 이메일 입니다.");
			return;
		}
		$.post(
				"./busifindChk",
				{
					manager_email:$("#manager_email").val()
				},
				function(data,status){
					if(data == 1){
						alert("이메일이 확인 되었습니다. 인증번호 받기 버튼을 눌러주세요.");
						chkemail = $("#manager_email").val();
					}else{
						alert("등록된 이메일이 없습니다.");
					}
				}//function
		);//post
	});//blur
});//ready

$(document).ready(function(){
	$("#btn_certi").click(function(){
		if($.trim($("#manager_email").val()) == ""){
			alert("등록된 이메일이 없습니다.");
// 			$("#manager_email").focus();
			return;
		}
		$.post(
				"./CerEmail"
				,{
					manager_email:$("#manager_email").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("해당 이메일로 인증번호를 발송했습니다.");
							$("#cer_number").css("display","block");
							$("#aa").css("display","block");
							setClock();
						} else if(data == 0){
							alert("존재하지 않는 이메일 입니다.");
						} else {
							alert("잠시 후, 다시 시도해 주세요.");
						}
					} else {
						alert("시스템 관리자에게 문의 바랍니다.");
					}
				}
		);//post
	});//click
});//ready
$(document).ready(function() {
	$("#btn_certi_complete").click(function() {
		$.post(
				"./CheckCerNumber"
				,{
					cer_number:$("#cer_number").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("인증이 완료 되었습니다.");
							tempFunction();
						} else if(data == 0){
							alert("인증번호가 다릅니다.");
						} else {
							alert("잠시 후, 다시 시도해 주세요.");
						}
					} else {
						alert("시스템 관리자에게 문의 바랍니다.");
					}
				}
		);//post
	});
});
</script>
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
#loanGuide-banner {
    background: url(${pageContext.request.contextPath}/resources/bootstrap/img/blog-bg.jpg)no-repeat center center fixed;
    background-size: cover;
    background-attachment: fixed;
    width: 100%;
    height: 80px;
    padding: 100px 0 200px 0;
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
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_loanIntro01.jpg)no-repeat center center fixed;
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
}
.titles {
	color: #000;
}
.section-body {
    color: #fff;
    position: relative;
    padding: 60px 20px 30px 20px;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
.top {
    padding: 30px 0px;
    text-align: center;
}
</style>
<body>

	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <%@ include file="../header.jsp" %>
   <section id="loanGuide-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<span class="title">대출 신청하기</span>
			</div>
		</div>
	</section>
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
	<section id="main-content">
		<section class="wrapper site-min-height">
			<div class="row mt">
				<div class="col-lg-12">
				<section id="content">
				
					<div class="container">
					<div class="row" style="width: 800px;">
						<div class="col-md-offset-2 col-md-8 col">
							<div class="form" style="width: 700px;">
								<div class="box-header"></div>
								<div class="box-body">
									<div class="box-wrap">
									<div class="top">
										<div class="step">
											<div class="wrap">
												<div class="item active">
													대출신청
												</div>
												<div class="item">
													추가정보
												</div>
												<div class="item">
													서류제출
												</div>
												<div class="item">
													대출심사
												</div>
											</div>
										</div>
									<div class="titles" style="font-size: 15pt;">
										대출신청서
									</div>
									<div class="line"></div>
								</div>
								<form id="frmLoan" class="form-horizontal style-form" name="frmLoan">
								<div class="form-horizontal style-form">
								</div>
							 	<div class="form-panel">
<!-- 						          <form id="addinfo_form" class="form-horizontal style-form" enctype="multipart/form-data"> -->

						            <div class="form-group">
						           		<label class="control-label col-md-3" >이름</label>
						           		<div class="col-md-8">
						            		<input type="text" id="project_name" name="project_name" class="form-control onlyprojectnm" readonly="readonly" value="<c:choose><c:when test="${memVO != null && memVO.user_name != null && memVO.user_name != ''}">${memVO.user_name}</c:when><c:otherwise>${memVO.manager_name}</c:otherwise></c:choose>"/>
						            	</div>
						            </div>
						            <div class="form-group">
						           		<label class="control-label col-md-3" >휴대전화</label>
						           		<div class="col-md-8">
						            		<input type="text" id="project_name" name="project_name" class="form-control onlyprojectnm" readonly="readonly" value="<c:choose><c:when test="${memVO != null && memVO.phone != null && memVO.phone != ''}">${memVO.phone}</c:when><c:otherwise>${memVO.manager_phone}</c:otherwise></c:choose>"/>
						            	</div>
						            </div>            
						            <div class="form-group">
						              	<label class="control-label col-md-3">은행명</label>
						              	<div class="col-md-8">
						              		<select class="form-control loanPurpose-select" id="loan_bank_name" name="loan_bank_name">
<!-- 												<option value="00">선택하세요</option> -->						              		
												<option value="01">신한은행</option>
												<option value="02">국민은행</option>
												<option value="03">우리은행</option>
												<option value="04">하나은행</option>
												<option value="05">씨티은행</option>
												<option value="06">부산은행</option>
												<option value="07">경남은행</option>
												<option value="08">광주은행</option>
												<option value="09">제주은행</option>
												<option value="10">산업은행</option>
											</select>
						                </div>
						            </div>
						            <div class="form-group">
						           		<label class="control-label col-md-3" >대출계좌</label>
						           		<div class="col-md-8">
						            		<input type="text" id="loan_amount" name="loan_amount" class="form-control onlybank" placeholder="'-'빼고 입력 해주세요" />
						            	</div>
						            </div>      
						            <div class="form-group has-feedback">
						           		<label class="control-label col-md-3" >대출금액</label>
						           		<div class="col-md-8">
											<input type="text" class="form-control loanAmt-text" id="loan_period" name="price" maxlength="7" placeholder="1000">
											<span class="form-control-feedback" aria-hidden="true" style="z-index:0 ">만원</span>
						            	</div>
						            </div>                    
						            <div class="form-group">
						              	<label class="control-label col-md-3">대출기간</label>
						              	<div class="col-md-8">
						              		<select class="form-control loanPurpose-select" id="loanPeriodSelect" name="loan_period">
<!-- 												<option value="00">선택하세요</option> -->
												<option value="01">3개월</option>
												<option value="02">6개월</option>
												<option value="03">12개월</option>
											</select>
						                </div>
						            </div>
						            <div class="form-group">
						              	<label class="control-label col-md-3">상환방식</label>
						              	<div class="col-md-8">
											<select class="form-control repayTypeCd-select" id="repayTypeCdSelect">
<!-- 												<option value="">선택하세요</option> -->
												<option value="3">만기일시</option>
												<option value="1">원리금균등</option>
<!-- 												<option value="2">원리금일시</option> -->
											</select>
						                </div>
						            </div>
						         <div class="form-group">
						              	<label class="control-label col-md-3">대출구분</label>
						              	<div class="col-md-8">
						                	<select class="form-control loanGb-select" id="loan_class" name="loan_class">
													<option value="">선택하세요</option>						                	
												<!-- 
													<option value="01">개인신용</option>
													<option value="02">개인담보</option>
													<option value="03">개인사업자신용</option>
													<option value="04">개인사업자담보</option>
													<option value="05">법인신용</option>
													<option value="06">법인담보</option>
												 -->
											</select>
						                </div>
						            </div>
						         <div class="form-group">
						              	<label class="control-label col-md-3">담보유형</label>
						              	<div class="col-md-8">
												<select class="form-control loanType-select" id="guarantee_type" name="guarantee_type">
													<option value="">대출구분을 선택하세요</option>
													<!-- 
														<option value="01">개인신용</option>
														<option value="02">법인신용</option>
														<option value="03">개인사업자신용</option>
														<option value="44">부동산담보</option>
														<option value="66">동산담보</option>
													 -->
											</select>
						                </div>
						            </div>
						           <div class="form-group">
						              	<label class="control-label col-md-3">물건유형</label>
						              	<div class="col-md-8">
												<select class="form-control objectType-select" id="object_type" name="object_type">
													<option value="">담보유형을 선택하세요</option>
													<!-- 
														<option value="01" id="ch1">법인신용</option>        
														<option value="02" id="ch2">아파트</option>
														<option value="03" id="ch3">주택</option>
														<option value="04" id="ch4">빌라</option>
														<option value="05" id="ch5">상가</option>
														<option value="06" id="ch6">토지</option>
														<option value="07" id="ch7">자동차</option>
														<option value="08" id="ch8">선박</option>	
														<option value="09" id="ch9">항공기</option>	
													-->														
											</select>
						                </div>
						            </div>  
<!-- 					            </form> -->
									<div>
										<div class="col-sm-10">
											<input type="checkbox" id="agreeAllCheckbox" value="Y" />
											<label class="control control-checkbox" id="agreeAllLabel">아래 내용을 확인하고 전체 동의합니다.</label>
										</div>
									</div>		
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_1" id="agree1Checkbox" value="1" />
											<label class="control-inline control-checkbox" for="agree1Checkbox">
												<a href="${pageContext.request.contextPath}/useTerm" target="_blank"><u>서비스 이용약관</u></a>에 동의합니다. (필수)
											</label>
										</div>
									</div>	
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_2" id="agree2Checkbox" value="1" />
											<label class="control-inline control-checkbox">
												<a href="${pageContext.request.contextPath}/pInfoProvideTerm" target="_blank"><u>개인(신용)정보제공</u></a>에 동의합니다. (필수)
											</label>
										</div>
									</div>	   
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_3" id="agree3Checkbox" value="1" />
											<label class="control control-checkbox">
												<a href="${pageContext.request.contextPath}/pInfoInquiryTerm" target="_blank"><u>개인(신용)정보조회</u></a>에 동의합니다. (필수)
											</label>
										</div>
									</div>		
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_4" id="agree4Checkbox" value="1" />
											<label class="control-inline control-checkbox">
												<a href="${pageContext.request.contextPath}/pInfoUseTerm" target="_blank"><u>개인(신용)정보수집, 이용</u></a>에 동의합니다. (필수)
											</label>
										</div>
									</div>	
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_5" id="agree5Checkbox" value="1" />
											<label class="control-inline control-checkbox">
												<a href="${pageContext.request.contextPath}/uniqueInfoTerm" target="_blank"><u>고유식별정보 처리방침</u></a>에 동의합니다. (필수)
											</label>
										</div>
									</div>
									<div>
										<div class="col-sm-10">
											<input type="checkbox" name="agree_chk_6" id="agree6Checkbox" value="1" />
											<label class="control-inline control-checkbox">
												<a href="${pageContext.request.contextPath}/pInfoSelectedTerm" target="_blank"><u>개인(신용)정보 선택적 수집, 이용 및 제공</u></a>에 동의합니다. (선택)
											</label>
										</div>
									</div>	
									<div>
										<div class="col-sm-10">
											<label><br></label>
										</div>
									</div>		
						          <div class="bottom">
						          	<input type="button" class="btn btn-purple-transparent btn-block" id="doNextStepBtn"
											value="본인 인증 및 대출 가능여부 확인" data-toggle="modal"/>
												<span>※ 대출 신청은 신용등급에 영향을 끼치지 않습니다.</span>
									<div class="page" style="text-align: right;">1/4</div>
									<div>
										<div class="col-sm-10">
											<label>
											</label>
										</div>
									</div>									  
								  </div>
						   	 </div>
 							 </form>
						    </div>
						  </div>
						<div class="box-footer"></div>
					</div>
				</div>
			</div>
		</div>
		</section>
       	 </div>
		</div>
	</section>
			<!-- /wrapper -->
  </section>							
			
					
							
		<!-- Email 인증시작 -->
						<div class="modal fade" id="btn_cert1"  name="cert1" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<div class="modal-title" id="vtAcntModalLabel">
											<div style="">
												대출 승인을 위한 인증절차 입니다.
											</div>
										</div>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<div class="modal-body-title">
													Email 인증
												</div>
											</div>
										</div>
										<div class="row">
											<div class="form-group col-xs-5 col-sm-5 col-md-3">
												<label for="cusNm" class="control-label">이 름</label>
												<input class="form-control" id="manager_name" type="text" value="${memVO.manager_name}" readonly="readonly">
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-5">
												<label for="cusAccount" class="control-label" >Email_주소</label>
												<input class="form-control" id="manager_email" type="text" value="${memVO.manager_email}" readonly="readonly">
											</div>
											<div class="form-group col-xs-12 col-sm-12 col-md-4">
												<br style="line-height:24px";">
												<button type="button" class="btn btn-purple-transparent" id="btn_certi" name="numre">인증번호 받기</button>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 인증번호를 받으실 수 있는 Email주소를 입력하시기 바랍니다.</span>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 정상처리가 불가할 경우 1:1문의사항을 이용하시기 바랍니다.</span>
											</div>
										</div>
										<div id="pInfDiv" style="">
											<hr>
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
													<div class="modal-body-title">
														인증번호
													</div>
												</div>
											</div>
											
											<div class="row">
												<div class="form-group col-md-4">
													<input class="form-control" id="cer_number" type="text" maxlength="13"  placeholder="" style="display:none;">
												</div>
<<<<<<< HEAD
												<div id="clock">
												
												</div>
=======
												<div id="clock"><!--여기서 수정 -->
<<<<<<< HEAD
												</div>													
											</div>
											<div class="row">
												<div class="form-group col-xs-6 col-sm-6 col-md-6">
													<label for="ssnNo" class="control-label" id="aa" style="display:none;">인증번호를 입력하세요.</label>
												</div>
											</div>		
=======
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
											</div>													
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
												
											
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12">
												<span class="modal-body-light">&nbsp;● 정상처리가 불가할 경우 1:1문의사항을 이용하시기 바랍니다.</span>
												</div>
<!-- 												<div class="clearfix"></div> -->
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-light font-purple">&nbsp;● 주민등록번호 없이도 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.</span>
												</div>
<!-- 												<div class="clearfix"></div> -->
												<div class="col-xs-12 col-sm-12 col-md-12">
													<span class="modal-body-strong">※ 미성년자는 가상계좌 발급시 추가 인증이 필요합니다.</span>
													<span class="modal-body-light">&nbsp;<a href="${pageContext.request.contextPath}/support" target="_blank">공지사항</a>을 참고하세요.</span>
												</div>
											</div>
										</div>
										<div class="modal-footer">
										<button type="button" id="btn_certi_complete" class="btn btn-purple-transparent" >확 인</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- Email 인증끝. -->
	    		</div>
	    
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
		$("#loan_period").keyup(function(event) {
			//alert(event.keyCode);
			$("#loan_period").val(
				$("#loan_period").val().replace(/[^0-9\.]/g,'')
			);//숫자만 입력 되도록
		});//pass.keydown
	});//ready
	
	$(".onlybank").change(function(){
// 		alert($(this).val());
		var bankStd = /^[0-9]{12,16}$/;
		if($(this).val().match(bankStd)){
			//alert($(this).val().match(licenseStd));
		}else{
			alert("올바른 계좌번호를 입력해 주세요.");
			$(this).val("");
			$(this).focus();
			return;
		}
	});//onlycal
	
	</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#doNextStepBtn").click(function() {
			var agree1Checkbox = $("#agree1Checkbox").is(":checked");
			var agree2Checkbox = $("#agree2Checkbox").is(":checked");
			var agree3Checkbox = $("#agree3Checkbox").is(":checked");
			var agree4Checkbox = $("#agree4Checkbox").is(":checked");
			var agree5Checkbox = $("#agree5Checkbox").is(":checked");
			var loanPeriodSelect = $('#loanPeriodSelect').val();
			var loanAmt = $("#loan_period").val();
			var loanGb = $("#loan_class").val();
			var guaranteeType = $("#loanTypeSelect").val();
<<<<<<< HEAD
			var repayTypeCd = $("#repay_method").val();
=======
			var repayTypeCd = $("#repay_method").val();
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
			var guaranteeType = $("#guaranteeType").val();
			var objectType = $("#object_type").val();
			var repayTypeCd = $("#repay_method").val();
			var loan_bank_name = $("#loan_bank_name").val(); 
			var loan_period = $("#loan_period").val();
			var loan_amount = $("#loan_amount").val();
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
			if(loan_amount == "") {
				alert("대출계좌를 입력 해주세요.");
				$("#loan_amount").focus();
				return;
			}
			if(loanAmt == ""){
				alert("대출금액을 입력하세요.");
				$("#loan_period").focus();
				return;
			}	
			if(loanGb == ""){
				alert("대출구분을 선택하세요.");
				$("#loan_class").focus();
				return;
			}	
			if(agree1Checkbox == 0){
				alert("서비스 이용약관에 동의하세요.");
				return;
			}
			if(agree2Checkbox == 0){
				alert("개인(신용)정보제공에 동의하세요.");
				return;
			}
			if(agree3Checkbox == 0){
				alert("개인(신용)정보조회에 동의하세요.");
				return;
			}	
			if(agree4Checkbox == 0){
				alert("개인(신용)정보수집,이용에 동의하세요.");
				return;
			}	
			if(agree5Checkbox == 0){
				alert("고유식별정보 처리방침에 동의하세요.");
				return;
			}
			$("#btn_cert1").modal(); 
				return;
// 				$("#btn_cert1").modal();
		});
	});//인풋창 제약조건 //ready
	
<<<<<<< HEAD
	function tempFunction() {
		$("#frmLoan").attr("action","${pageContext.request.contextPath}/addinfo");
		document.frmLoan.submit();
	}
=======
	$(document).ready(function() {
		function tempFunction() {
		$.ajaxSetup({cache:false});
			var form = new FormData(document.getElementById("frmLoan"));
			$.ajax({
				url:"${pageContext.request.contextPath}/applyloaninsert"
				,data:form
				,dataType:'json'
				,processData:false
				,contentType:false
				,type:"POST"
				,success:function(result){
					alert(result);
					if(result > 0){
						location.href = "${pageContext.request.contextPath}/addinfo";
					} else {
						alert("잠시 후 다시 시도해 주세요.");
					}
				}
				,error:function(xhr){
					alert("fail");
				}
			});//ajax
		}
	});//ready

// 		$("#frmLoan").attr("action","${pageContext.request.contextPath}/applyloaninsert");
// 		document.frmLoan.submit();
// 	}//frmLoan에 있는거 addinfo로 옳김
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
	
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
				$("input:checkbox[name='agree_chk_1']").prop("checked", true);
				$("input:checkbox[name='agree_chk_1']").attr("checked", true);
				$("input:checkbox[name='agree_chk_2']").prop("checked", true);
				$("input:checkbox[name='agree_chk_2']").attr("checked", true);
				$("input:checkbox[name='agree_chk_3']").prop("checked", true);
				$("input:checkbox[name='agree_chk_3']").attr("checked", true);
				$("input:checkbox[name='agree_chk_4']").prop("checked", true);
				$("input:checkbox[name='agree_chk_4']").attr("checked", true);
				$("input:checkbox[name='agree_chk_5']").prop("checked", true);
				$("input:checkbox[name='agree_chk_5']").attr("checked", true);
				$("input:checkbox[name='agree_chk_6']").prop("checked", true);
				$("input:checkbox[name='agree_chk_6']").attr("checked", true);
			} else {
				$("input:checkbox[name='agree_chk_1']").prop("checked", false);
				$("input:checkbox[name='agree_chk_1']").attr("checked", false);
				$("input:checkbox[name='agree_chk_2']").prop("checked", false);
				$("input:checkbox[name='agree_chk_2']").attr("checked", false);
				$("input:checkbox[name='agree_chk_3']").prop("checked", false);
				$("input:checkbox[name='agree_chk_3']").attr("checked", false);
				$("input:checkbox[name='agree_chk_4']").prop("checked", false);
				$("input:checkbox[name='agree_chk_4']").attr("checked", false);
				$("input:checkbox[name='agree_chk_5']").prop("checked", false);
				$("input:checkbox[name='agree_chk_5']").attr("checked", false);
				$("input:checkbox[name='agree_chk_6']").prop("checked", false);
				$("input:checkbox[name='agree_chk_6']").attr("checked", false);
			}
		});//checkbox allselect 기능
		
		$("#loan_class").on("change", function() {
			var loan_class = $(this).val();
			var str = "";
			
			if(loan_class == "01") {	// 개인신용
				str += "<option value=\"01\">개인신용</option>";
			} else if(loan_class == "02") {	// 개인담보
// 				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
			} else if(loan_class == "03") {	// 개인사업자신용
				str += "<option value=\"03\">개인사업자신용</option>";
			} else if(loan_class == "04") {	// 개인사업자담보
// 				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
////////////////////////////////////////////////////////////////////////////////////
			} else if(loan_class == "05") {	// 법인신용
				str += "<option value=\"02\">법인신용</option>";
			} else if(loan_class == "06") {	// 법인담보
// 				str += "<option value=\"\">선택하세요</option>";
				str += "<option value=\"04\">부동산담보</option>";
				str += "<option value=\"06\">동산담보</option>";
			} else {
				str += "<option value=\"\">대출구분을 선택하세요</option>";
			}
			
			var guaranteeType = $("#guarantee_type");
			guaranteeType.empty();
			guaranteeType.append(str);
		});
		
		$("#loan_class").on("change", function() {
			var guaranteeType = $(this).val();
			var str = "";
			if (guaranteeType == "05"){
				str += "<option value=\"01\">법인신용</option>";
			} else if (guaranteeType == "06") {
				str += "<option value=\"02\">아파트</option>";
				str += "<option value=\"03\">주택</option>";
				str += "<option value=\"04\">빌라</option>";
				str += "<option value=\"05\">상가</option>";
				str += "<option value=\"06\">토지</option>";	
			} else {
				str += "<option value=\"\">담보유형을 선택하세요</option>";
			}
			var objectType = $("#object_type");
			objectType.empty();
			objectType.append(str);
		});
////////////////////////////////////////////////////////////////////////////////////

		var loginCusGbCd = ${loginCusGbCd};
		var str = "";
		if(loginCusGbCd == "1") {	// 일반회원
			//str += "<option value=\"01\">개인신용</option>";
			str += "<option value=\"02\">개인담보</option>";
			str += "<option value=\"03\">개인사업자신용</option>";
			str += "<option value=\"04\">개인사업자담보</option>";
		} else {	// 법인회원
			str += "<option value=\"05\">법인신용</option>";
			str += "<option value=\"06\">법인담보</option>";
		}
		var loan_class = $("#loan_class");
// 		loan_class.empty();
		loan_class.append(str);
		

	});
	
	$(function() {
		$("#guarantee_type").on("change", function() {
			var loan_class =  $(this).val();
			var str = "";
			
			if(loan_class == "04") {	// 부동산 담보
				str += "<option value=\"02\">아파트</option>";
				str += "<option value=\"03\">주택</option>";
				str += "<option value=\"04\">빌라</option>";
				str += "<option value=\"05\">상가</option>";
				str += "<option value=\"06\">토지</option>";				
			} else if (loan_class == "06") {
				str += "<option value=\"07\">자동차</option>";	
				str += "<option value=\"08\">선박</option>";
				str += "<option value=\"09\">항공기</option>";	
			} else {
				str += "<option value=\"\">담보유형을 선택하세요</option>";
			}
			
			var objectType = $("#object_type");
			objectType.empty();
			objectType.append(str);
		});
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
		var guaranteeType = $("#guarantee_type").val();
		var objectType = $("#object_type").val();
		var loanPurpose = $("#loanPurposeSelect").val();
		var repayTypeCd = $("#repayTypeCdSelect").val();
		var agree1 = $('input:checkbox[id="agree1Checkbox"]').is(":checked");
		var agree2 = $('input:checkbox[id="agree2Checkbox"]').is(":checked");
		var agree3 = $('input:checkbox[id="agree3Checkbox"]').is(":checked");
		var agree4 = $('input:checkbox[id="agree4Checkbox"]').is(":checked");
		var agree5 = $('input:checkbox[id="agree5Checkbox"]').is(":checked");
		var agree6 = $('input:checkbox[id="agree6Checkbox"]').is(":checked");
		
		var chkBool = true;
		
		if(!chkBool) { return; } else { chkBool = fn_checkVal("생년월일", birthDate, "birthDateText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("성별", sex, "sexRadio"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("휴대전화", mpNo, "mpNoText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출기간", loanPeriod, "loanPeriodSelect"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출금액", loanAmt, "loanAmtText"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("대출구분", loanGb, "loan_class"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("담보유형", guaranteeType, "guarantee_type"); }
		if(!chkBool) { return; } else { chkBool = fn_checkVal("물건유형", objectType, "object_type"); }
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
		comAjax.addParam("loan_class", $("#guarantee_type").val());
		comAjax.addParam("guarantee_type", $("#object_type").val());
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
