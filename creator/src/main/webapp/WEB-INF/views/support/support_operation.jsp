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
				$("#btn_write").click(function() {
					location.href = "${pageContext.request.contextPath}/support/formi";
				});//btn_write
			});//ready
			$(document).ready(function() {
				$("#btn_total").click(function() {
					location.href = "${pageContext.request.contextPath}/support_total";
				});//btn_write
			});//ready
			$(document).ready(function() {
				$("#btn_new").click(function() {
					location.href = "${pageContext.request.contextPath}/support_new";
				});//btn_write
			});//ready
			$(document).ready(function() {
				$("#btn_operation").click(function() {
					location.href = "${pageContext.request.contextPath}/support_operation";
				});//btn_write
			});//ready
		</script>
		
</head>

<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="./main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
			<!--logo end-->
			<div class="nav notify-row top-menu" id="top_menu">
				<!--  notification start -->
				<ul class="nav pull-right top-menu">
					<!-- settings start -->
					
					<!-- 회사소개 start -->
					<li><a href="./loan_guide">회사소개</a></li>
					<!-- 회사소개 end -->
					
					<!-- 대출 start -->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">대출</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="./loan_guide">대출안내</a>
							</li>
							<li>
								<a href="./loan">대출하기</a>
							</li>
						</ul>
					</li>
	          		<!-- 대출 end -->
	          
	          		<!-- inbox dropdown start-->
	         		<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							투자
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-black"></div>
							<li>
								<a href="./invest_guide">투자안내</a>
							</li>
							<li>
								<a href="./invest_list">투자하기</a>
							</li>
							<li>
								<a href="./invest_finish">완료된투자</a>
							</li>
						</ul>
					</li>
	          		<!-- 투자 end -->
	          
	          
					<!-- 고객지원 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							고객지원
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow"></div>
							<li>
								<a href="./faq">FAQ</a>
							</li>
							<li>
								<a href="./support">이용약관</a>
							</li>
							<li>
								<a href="./policy">개인정보</a>
							</li>
							<li>
								<a href="./inquiry">1:1문의</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 end -->
					
					<!-- 마이페이지 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							마이페이지
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>
							<li>
								<a href="./my_dashboard">대시보드</a>
							</li>
							<li>
								<a href="./my_invest_list">투자내역</a>
							</li>
							<li>
								<a href="./my_loan_list">대출내역</a>
							</li>
							<li>
								<a href="./my_depo_mgn">예치금관리</a>
							</li>
							<li>
								<a href="./my_modify">회원정보수정</a>
							</li>
						</ul>
					</li>
					<!-- 마이페이지 end -->
					
					<!-- 로그아웃 start -->
					<li><a href="./loan_guide">로그아웃</a></li>
					<!-- 로그아웃 end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="/creator/join">회원가입</a></li>
				</ul>
			</div>
	    </header>
	    <!--header end-->
	   
	   
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
		<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-md-10">
            <div class="content-panel">
            <div class="btn-group">
               <button id="btn_total" type="button" class="btn btn-default">전체</button>
                <button id="btn_new" type="button" class="btn btn-default">새소식</button>
                <button id="btn_operation" type="button" class="btn btn-default">운영사항</button>
              </div>
              <hr>
              <table class="table">
                <c:forEach items="${supportlist}" var="vo" varStatus="status">
					<tr>
					<tbody>
						<td>${vo.notice_num}</td>
						<td>${vo.title}</td>
						<td>${vo.notice_date}</td>
					</tbody>
					</tr>
				</c:forEach>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- row -->
        <br><br>
			<button id="btn_write">글쓰기</button>
			<br><br>
      </section>
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



<!-- 대출 start -->
<!-- <li class="dropdown"> -->
<!-- 	<a data-toggle="dropdown" class="dropdown-toggle" href="index.html#"> -->
<!-- 		대출 -->
<!-- 	</a> -->
<!-- 	<ul class="dropdown-menu extended tasks-bar"> -->
<!-- 		<div class="notify-arrow notify-arrow-green"></div> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<div class="task-info"> -->
<!-- 					<div class="desc">Dashio Admin Panel</div> -->
<!-- 					<div class="percent">80%</div> -->
<!-- 				</div> -->
<!-- 			<div class="progress progress-striped"> -->
<!-- 				<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> -->
<!-- 					<span class="sr-only">80% Complete (success)</span> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<div class="task-info"> -->
<!-- 					<div class="desc">Database Update</div> -->
<!-- 					<div class="percent">60%</div> -->
<!-- 				</div> -->
<!-- 				<div class="progress progress-striped"> -->
<!-- 					<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"> -->
<!-- 						<span class="sr-only">60% Complete (warning)</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<div class="task-info"> -->
<!-- 					<div class="desc">Product Development</div> -->
<!-- 					<div class="percent">80%</div> -->
<!-- 				</div> -->
<!-- 				<div class="progress progress-striped"> -->
<!-- 					<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> -->
<!-- 						<span class="sr-only">80% Complete</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<div class="task-info"> -->
<!-- 					<div class="desc">Payments Sent</div> -->
<!-- 					<div class="percent">70%</div> -->
<!-- 				</div> -->
<!--                			<div class="progress progress-striped"> -->
<!-- 					<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%"> -->
<!-- 						<span class="sr-only">70% Complete (Important)</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li class="external"> -->
<!-- 			<a href="#">See All Tasks</a> -->
<!-- 		</li> -->
<!-- 	</ul> -->
<!-- </li> -->
<!--       		대출 end -->

<!-- <!-- 마이페이지 start-->
<!-- <li id="header_notification_bar" class="dropdown"> -->
<!-- 	<a data-toggle="dropdown" class="dropdown-toggle" href="index.html#"> -->
<!-- 		마이페이지 -->
<!-- 	</a> -->
<!-- 	<ul class="dropdown-menu extended notification"> -->
<!-- 		<div class="notify-arrow"></div> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<span class="label label-danger"><i class="fa fa-bolt"></i></span> -->
<!-- 					Server Overloaded. -->
<!-- 				<span class="small italic">4 mins.</span> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<span class="label label-warning"><i class="fa fa-bell"></i></span> -->
<!-- 					Memory #2 Not Responding. -->
<!-- 				<span class="small italic">30 mins.</span> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<span class="label label-danger"><i class="fa fa-bolt"></i></span> -->
<!-- 					Disk Space Reached 85%. -->
<!-- 				<span class="small italic">2 hrs.</span> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#"> -->
<!-- 				<span class="label label-success"><i class="fa fa-plus"></i></span> -->
<!-- 					New User Registered. -->
<!-- 				<span class="small italic">3 hrs.</span> -->
<!-- 			</a> -->
<!-- 		</li> -->
<!-- 		<li> -->
<!-- 			<a href="index.html#">See all notifications</a> -->
<!-- 		</li> -->
<!-- 	</ul> -->
<!-- </li> -->
<!-- <!-- 마이페이지 end -->
