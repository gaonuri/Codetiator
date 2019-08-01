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
	<script src="../resources/jquery/jquery-3.4.1.js"></script>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap-datetimepicker/datertimepicker.css" />
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
    background: url(${pageContext.request.contextPath}/resources/bootstrap/img/blog-bg.jpg)no-repeat center center fixed;
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

</head>
<body>

	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <%@ include file="../header.jsp" %>
	    <!--header end-->
	    
	    <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">추가정보</span>
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
										<div class="item active">
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
									추가정보
								</div>
								<div class="line"></div>
							</div>
            <div class="form-panel">
              <form id="addinfo_form" class="form-horizontal style-form" enctype="multipart/form-data">
                <div class="form-group last">
                  <label class="control-label col-md-3">Main 이미지</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 100%; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> 사진 선택</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> 사진 변경</span>
                        <input type="file" id="main_img" name="img" class="default" />
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
               		<label class="control-label col-md-3">프로젝트 이름</label>
               		<div class="col-md-4">
                		<input type="text" id="project_name" name="project_name" class="default"/>
                	</div>
                </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">모집금액</label>
                  	<div class="col-md-4">
                    	<input type="text" id="price" name="price" class="default" />
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">상환기간</label>
                  	<div class="col-md-4">
                    	<input type="text" id="refund" name="refund" class="default" />
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">게임유형</label>
                  	<div class="col-md-4">
                  		<select class="form-control loanPurpose-select" id="type" name="type">
							<option value="">선택하세요</option>
								<option value="01">PC게임</option>
								<option value="02">콘솔게임</option>
								<option value="03">모바일게임</option>
								<option value="04">VR게임</option>
						</select>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">장르</label>
                  	<div class="col-md-4">
                  		<select class="form-control loanPurpose-select" id="genre" name="genre">
							<option value="">선택하세요</option>
								<option value="01">슈팅 게임</option>
								<option value="02">액션 게임</option>
								<option value="03">어드벤처 게임</option>
								<option value="04">시뮬레이션 게임</option>
								<option value="05">롤 플레잉 게임</option>
								<option value="06">스포츠 게임</option>
								<option value="07">FPS 게임</option>
								<option value="08">AOS 게임</option>
						</select>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">등급</label>
                  	<div class="col-md-4">
                    	<select class="form-control loanPurpose-select" id="grade" name="grade">
							<option value="">선택하세요</option>
								<option value="01">7세 이용가</option>
								<option value="02">12세 이용가</option>
								<option value="03">15세 이용가</option>
								<option value="04">18세 이용가</option>
						</select>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">상세정보</label>
                  	<div class="col-md-4">
                    	<input type="text" id="more_information" name="more_information" class="default" />
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">대출기간</label>
                  	<div class="col-md-4">
                    	<input type="text" id="loan_period" name="loan_period" class="default" />
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">대출계좌</label>
                  	<div class="col-md-4">
                    	<input type="text" id="loan_amount" name="loan_amount" class="default" />
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">대출구분</label>
                  	<div class="col-md-4">
                    	<input type="text" id="loan_class" name="loan_class" class="default" />
                    </div>
                  </div>
                  <div class="form-group last">
                  <label class="control-label col-md-3">담보 이미지</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 100%; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> 사진 선택</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> 사진 변경</span>
                        <input type="file" id="guarantee_img" name="guarantee_img" class="default" />
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">담보유형</label>
                  	<div class="col-md-4">
                    	<input type="text" id="guarantee_type" name="guarantee_type" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">담보명</label>
                  	<div class="col-md-4">
                    	<input type="text" id="guarantee_name" name="guarantee_name" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">차주유형</label>
                  	<div class="col-md-4">
                    	<select class="form-control loanPurpose-select" id="debtor_type" name="debtor_type">
							<option value="">선택하세요</option>
								<option value="01">개인</option>
								<option value="02">법인</option>
						</select>
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">차주업종(직종)</label>
                  	<div class="col-md-4">
                    	<input type="text" id="business_type" name="business_type" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">물건유형</label>
                  	<div class="col-md-4">
                    	<select class="form-control loanPurpose-select" id="object_type" name="object_type">
							<option value="">선택하세요</option>
								<option value="01">아파트</option>
								<option value="02">연립주택</option>
								<option value="03">토지</option>
						</select>
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">외부감정가</label>
                  	<div class="col-md-4">
                    	<input type="text" id="connoisseur" name="connoisseur" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">공급면적</label>
                  	<div class="col-md-4">
                    	<input type="text" id="supply_area" name="supply_area" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">전용면적</label>
                  	<div class="col-md-4">
                    	<input type="text" id="exclusive_area" name="exclusive_area" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">면적</label>
                  	<div class="col-md-4">
                    	<input type="text" id="area" name="area" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">소재지</label>
                  	<div class="col-md-4">
                    	<input type="text" id="location" name="location" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">규모</label>
                  	<div class="col-md-4">
                    	<input type="text" id="scale" name="scale" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">준공년도</label>
                  	<div class="col-md-4">
                    	<input type="text" id="comple_year" name="comple_year" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">시세</label>
                  	<div class="col-md-4">
                    	<input type="text" id="quote" name="quote" class="default" />
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">담보분류</label>
                  	<div class="col-md-4">
                    	<select class="form-control loanPurpose-select" id="code" name="code">
							<option value="">선택하세요</option>
								<option value="01">부동산담보</option>
								<option value="02">법인신용</option>
								<option value="03">개인사업자신용</option>
						</select>
                    </div>
                </div>
                <div class="form-group">
                  	<label class="control-label col-md-3">참고파일1</label>
                  	<div class="col-md-4">
                    	<input type="file" class="reference_file1" name="reference_file1"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">참고파일2</label>
                  	<div class="col-md-4">
                    	<input type="file" class="reference_file2" name="reference_file2"/>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label class="control-label col-md-3">참고파일3</label>
                  	<div class="col-md-4">
                    	<input type="file" class="reference_file3" name="reference_file3"/>
                    </div>
                  </div>
                <div class="bottom">
								<input type="button" class="btn btn-purple-transparent btn-block" id="doNextStepBtn"
										value="프로젝트 제출" />
<!-- 									<button type="submit" class="btn btn-purple-transparent btn-block" id="doNextStepBtn">본인 인증 및 대출 가능여부 확인</button> -->
									<p>※ 대출심사 결격사유 : 최근 현금서비스 3회 이상 이용 고객 및 기타 당사가 규정하는 채무불이행 사유가 있는 고객.</p>
									<div class="page" style="text-align: right;">2/4</div>
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

<script type="text/javascript">
$(document).ready(function() {
	$.ajaxSetup({cache:false});
	$("#doNextStepBtn").click(function() {
		var main_img = $("#main_img").val();
		var project_name = $("#project_name").val();
		var price = $("#price").val();
		var refund = $("#refund").val();
		var type = $("#type").val();
		var genre = $("#genre").val();
		var grade = $("#grade").val();
		var more_information = $("#more_information").val();
		var loan_period = $("#loan_period").val();
		var loan_amount = $("#loan_amount").val();
		var loan_class = $("#loan_class").val();
		if(main_img == "") {
			alert("메인 사진을 올려주세요.");
			$("#main_img").focus();
		} else if(project_name == "") {
			alert("프로젝트 이름을 작성 해주세요.");
			$("#project_name").focus();
		} else if(price == "") {
			alert("모집금액을 입력 해주세요.");
			$("#price").focus();
		} else if(refund == "") {
			alert("상환기간을 입력 해주세요.");
			$("#refund").focus();
		} else if(type == "") {
			alert("게임유형을 선택 해주세요.");
			$("#type").focus();
		} else if(genre == "") {
			alert("장르를 선택 해주세요.");
			$("#genre").focus();
		} else if(grade == "") {
			alert("등급을 선택 해주세요.");
			$("#grade").focus();
		} else if(more_information == "") {
			alert("상세정보를 입력 해주세요.");
			$("#more_information").focus();
		} else if(loan_period == "") {
			alert("대출기간을 입력 해주세요.");
			$("#loan_period").focus();
		} else if(loan_amount == "") {
			alert("대출계좌를 입력 해주세요.");
			$("#loan_amount").focus();
		} else if(loan_class == "") {
			alert("대출구분을 입력 해주세요.");
			$("#loan_class").focus();
		} else {
			var form = new FormData(document.getElementById("addinfo_form"));
			$.ajax({
				url:"${pageContext.request.contextPath}/addinfo_process"
				,data:form
				,dataType:'json'
				,processData:false
				,contentType:false
				,type:"POST"
				,success:function(result){alert(result);
					if(result > 0){
						location.href = "${pageContext.request.contextPath}/sub_document";
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