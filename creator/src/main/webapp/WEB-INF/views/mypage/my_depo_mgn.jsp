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
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

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
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
			 	<div class="col-lg-1"></div>
					 <div class="card" style="width:200px">
			  			<div class="card-body">
						    <h2 class="card-title">홍길동</h2><h5>님</h5>
						   	 <div class="card-body"></div>
						    <a href="#" class="btn btn-primary">나의 예치금</a>
						 </div>
					</div>
				<div class="col-lg-2"></div>
					<div class="card" style="width:500px">
			  			<div class="card-body">
						<a href="#" class="btn btn-primary">나의 투자</a>
						<a href="#" class="btn btn-primary">나의 자산</a>
					 </div>
			</div>
			<!-- /row -->
		</section>
		 <!--sidebar start-->
    <aside>
    
      <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a href="creator/my_desktop">
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
	</section>
	<!--main content end-->
	
	<!--footer start-->
	<footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>creator</strong>. All Rights Reserved
        </p>
        <div class="credits">
          Created with Creator template by <a href="/creator/main">CREATOR</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
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
</body>

</html>
