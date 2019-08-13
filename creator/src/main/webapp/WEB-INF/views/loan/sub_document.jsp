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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-datetimepicker/css/datetimepicker.css" />
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
	<style>
#content .step {
    padding: 0px 10px 60px 10px;
}
#content .step .wrap .item.active {
    background-color: #712594;
    font-weight: bold;
    color: #fff;
}
#loanGuide-banner {
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_loanIntro01.jpg)no-repeat center center fixed;
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
.text-center {
    text-align: center;
}
.titles {
	color: #000;
}
.title {
    font-size: 26pt;
    font-weight: 500;
    color: #fff;
    text-shadow: 1px 1px 1px #bf9bcb;
    letter-spacing: -0.5pt;
    line-height: 1.2;
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

</head>
<body>

	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <%@ include file="../header.jsp" %>
	    
	    <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">서류제출</span>
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
					<div class="form" style="width: 750px;">
						<div class="box-header"></div>
						<div class="box-body">
							<div class="box-wrap">
							<div class="top">
								<div class="step">
									<div class="wrap">
										<div class="item">
											대출신청
										</div>
										<div class="item">
											추가정보
										</div>
										<div class="item active">
											서류제출
										</div>
										<div class="item">
											대출심사
										</div>
									</div>
								</div>
								<div class="titles" style="font-size: 15pt;">
									서류제출
								</div>
								<div class="line"></div>
							</div>
            <div class="form-panel">
              <form id="document_form" class="form-horizontal style-form" enctype="multipart/form-data">
                <div class="form-group last">
                  <label class="control-label col-md-3">신분증 사본</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> 사진 선택</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> 사진 변경</span>
                        <input type="file" class="default" id="copy_id" name="copy_id" />
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group last">
                  <label class="control-label col-md-3">통장 사본</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> 사진 선택</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> 사진 변경</span>
                        <input type="file" class="default" id="bank_img" name="copy_bankbook"/>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">사업자 등록증</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" id="busi_regi" name="busi_regi"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">주민등록 초본</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" id="jumin_chobon" name="jumin_chobon"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">인감증명서</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" id="cer_ingam" name="cer_ingam"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">부동산증명서(선택)</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" name="cer_budong"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">동산증명서(선택)</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" name="cer_dong"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">소득금액증명원(선택)</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" name="cer_income"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">부가가치세과세증명원(선택)</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" name="cer_vat"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">기타증명서(선택)</label>
                  	<div class="col-md-4">
                    	<input type="file" class="default" name="cer_other"/>
                    </div>
                  </div>
                  <div class="bottom">
								<input type="button" class="btn btn-purple-transparent btn-block" id="doNextStepBtn"
										value="서류 제출" />
<!-- 									<button type="submit" class="btn btn-purple-transparent btn-block" id="doNextStepBtn">본인 인증 및 대출 가능여부 확인</button> -->
									<p>※ 대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무불이행 사유가 있는 고객.</p>
									<div class="page" style="text-align: right;">3/4</div>
				</div>
              </form>
             	 </div>
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
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/jquery-ui-1.9.2.custom.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-daterangepicker/date.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
 	 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-daterangepicker/moment.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/advanced-form-components.js"></script>
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
<!-- form.append("aaa",$("#aaa").val()); -->
<script type="text/javascript">
$(document).ready(function() {
	$.ajaxSetup({cache:false});
	$("#doNextStepBtn").click(function() {
		var img = $("#copy_id").val();
		var bank_img = $("#bank_img").val();
		var busi_regi = $("#busi_regi").val();
		var jumin_chobon = $("#jumin_chobon").val();
		var cer_ingam = $("#cer_ingam").val();
		if(img == "") {
			alert("신분증 사진을 올려주세요.");
			$("#copy_id").focus();
		} else if(bank_img == "") {
			alert("통장사본을 올려주세요.");
			$("#bank_img").focus();
		} else if(busi_regi == "") {
			alert("사업자등록증을 올려주세요.");
			$("#busi_regi").focus();
		} else if(jumin_chobon == "") {
			alert("주민등록초본을 올려주세요.");
			$("#jumin_chobon").focus();
		} else if(cer_ingam == "") {
			alert("인감증명서를 올려주세요.");
			$("#cer_ingam").focus();
		} else {
		var form = new FormData(document.getElementById("document_form"));
		$.ajax({
			url:"${pageContext.request.contextPath}/sub_document_process"
			,data:form
			,dataType:'json'
			,processData:false
			,contentType:false
			,type:"POST"
			,success:function(result){alert(result);
				if(result > 0){
					location.href = "${pageContext.request.contextPath}/loan_judge";
				} else {
					alert("잠시 후 다시 시도해 주세요.");
				}
			}
				,error:function(xhr){
					alert("fail");
				}
			});//ajax
		}
	});//click
});//ready
</script>
</body>
</html>