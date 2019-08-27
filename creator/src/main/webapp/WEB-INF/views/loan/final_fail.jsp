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
	<script src="../resources/jquery/jquery-3.4.1.js"></script>
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="apple-touch-icon">
	
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
    background: url(${pageContext.request.contextPath}/resources/img/bgImg_investIntro.png)no-repeat center center fixed;
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
.icn-container {
    display: inline-block;
    width: 100px;
    height: 100px;
    border-radius: 500px;
    text-align: center;
    margin: 10px 0;
    font-weight: 600;
    font-size: 13;
    line-height: 100px;
    color: #712594;
    background-color: #fff;
    -webkit-transition: all 0.6s ease-in-out;
    transition: all 0.6s ease-in-out;
}
.icn-container-active {
    display: inline-block;
    width: 100px;
    height: 100px;
    border-radius: 500px;
    text-align: center;
    margin: 10px 0;
    font-weight: 600;
    font-size: 13;
    line-height: 100px;
    color: #fff;
    background-color: #712594;
    -webkit-transition: all 0.6s ease-in-out;
    transition: all 0.6s ease-in-out;
}
.icn-main-container {
    position: relative;
}
.loan_int_btn {
    width: 200px;
    height: 36px;
    outline: 0;
    margin-top: 40px;
    margin-bottom: 50px;
    padding: 0px;
}
.mr-green {
    text-align: center;
    font-weight: 600;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
    border: 2px solid #01C351;
    line-height: 30px;
    font-size: 14px;
}
.botn {
	margin-bottom: 0px;
	color: #fff;
	margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none
}
.mr-cap {
    color: #fff;
    background-color: #02863A;
    width: 20px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    float: right;
    height: 100%;
}
.mr-angle {
    margin-right: -10px;
    width: 20px;
    text-align: right;
    float: right;
    transform: skew(-30deg);
    -webkit-transform: skew(-30deg);
    -ms-transform: skew(-30deg);
    height: 100%;
    color: #fff;
    background-color: #02863A;
}
.col-lg-a4 {
    width: 33.33333333%;
    margin-left: 450px;
}
.custom-box {
    background: #FFFFFF;
    border: 1px solid #DCDBD7;
    margin: 30px 0;
    padding: 30px 20px 35px;
    text-align: center;
}
.fa-hover a {
	position: relative;
    display: block;
    color: #222;
    line-height: 32px;
    height: 32px;
    padding-left: 10px;
    border-radius: 4px;
}
.fontawesome-list i {
    margin-right: 8px;
}
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.col-md-3 {
    width: 100%;
    padding-right: 200px;
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
					<span class="title">대출심사</span>
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
						<div class="col-lg-a4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4 style="color:red;">심사실패</h4>
                  <br>
                  <h4>아래와 같은 사유로 반려가 되었습니다.</h4>
                  <hr>
                  <hr>
                  <div class="fa-hover col-md-3 col-sm-4"style="padding-right: 0px; float: left; text-align: left;"><a href="font_awesome.html#"><i class="fa fa-exclamation"></i>신분증 사진 양식이 올바르지 않습니다.</a></div>
                  <div class="fa-hover col-md-3 col-sm-4"style="padding-right: 0px; float: left; text-align: left;"><a href="font_awesome.html#"><i class="fa fa-exclamation"></i>유효하지 않은 사업자 등록증입니다.</a></div>
                  <div class="fa-hover col-md-3 col-sm-4"style="padding-right: 0px; float: left; text-align: left;"><a href="font_awesome.html#"><i class="fa fa-exclamation"></i>요청 양식과 다른 자료가 등록되었습니다.</a></div>
                  <div class="fa-hover col-md-3 col-sm-4"style="padding-right: 0px; float: left; text-align: left;"><a href="font_awesome.html#"><i class="fa fa-exclamation"></i>등록된 자료의 인정 기간이 만료되었습니다.</a></div>
                </div>
                <hr>
                <hr>
                <div class="fa-hover col-md-3 col-sm-4" style="padding-left: 0px;padding-right: 175px;height: 30px;"><a href="font_awesome.html#phone" style="padding-left: 0px; padding-right: 10px;"><i class="fa fa-phone"></i>전화:02-1234-5678</a></div>
                <div class="fa-hover col-md-3 col-sm-4" style="padding-right: 70px;padding-left: 0px;height: 50px;"><a href="font_awesome.html#"><i class="fa fa-envelope"></i>대출/투자 문의 : contact@creator.co.kr</a></div>
                <button class="loan_int_btn mr-green" id="loanReqBtn2" style="width:200px; height: 36px;margin-top: 150px;">
								돌아가기<span class="mr-cap"></span>
								<span class="mr-angle">
									<div>
										<p class="botn">&gt;</p>
									</div>
								</span>
					 </button>
              </div>
              <!-- end custombox -->
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
	<script type="text/javascript">
	$(document).ready(function() {
		$(loanReqBtn2).click(function() {
			location.href = "${pageContext.request.contextPath}/main";
		})
	})
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

</body>
</html>