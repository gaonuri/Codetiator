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
			<section class="wrapper site-min-height">
				<div class="row mt">
					<div class="col-lg-12">
					<!-- CHART PANELS -->
						<table>
							<tr valign=top>
<%-- 							<c:forEach begin="0" end="2" step="1" varStatus="step"> --%>
								<th>
									<c:forEach items="${projectList1}" var="vo" varStatus="status" begin="0" end="2" step="1">
										<c:choose>
											<c:when test="${memVO.user_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&user_num=${memVO.user_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>k</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:when test="${memVO.busi_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&busi_num=${memVO.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>B</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:otherwise>
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>N</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												<td>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</th>
<%-- 							</c:forEach> --%>
							</tr>
							
							<tr valign=top>
<%-- 							<c:forEach begin="0" end="2" step="1" varStatus="step"> --%>
								<th>
									<c:forEach items="${projectList2}" var="vo" varStatus="status" begin="0" end="2" step="1">
										<c:choose>
											<c:when test="${memVO.user_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&user_num=${memVO.user_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>k</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:when test="${memVO.busi_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&busi_num=${memVO.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>B</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:otherwise>
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>N</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												<td>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</th>
<%-- 							</c:forEach> --%>
							</tr>
							
							<tr valign=top>
<%-- 							<c:forEach begin="0" end="2" step="1" varStatus="step"> --%>
								<th>
									<c:forEach items="${projectList3}" var="vo" varStatus="status" begin="0" end="2" step="1">
										<c:choose>
											<c:when test="${memVO.user_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&user_num=${memVO.user_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>k</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:when test="${memVO.busi_num != null}">
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}
													&busi_num=${memVO.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>B</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												</td>
											</c:when>
											<c:otherwise>
												<td class="col-md-4" style="padding-left:150px;">
													<a href="${pageContext.request.contextPath}/invest_detail?
													project_num=${vo.project_num}
													&p_busi_num=${vo.busi_num}">
														<div>
															<img src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="400px" />
														</div>
														<div>
															<table style="border-left: 1px; border-right: 1px; width: 400px">
																<tr>
																	<td>${vo.en_date}</td>
																</tr>
																<tr>
																	<td>${vo.project_name}<span>N</span></td>
																</tr>
																<tr>
																	<td witdh="400px">
														 				<div class="progress progress-striped active">
														  					<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
														  						45%
																			</div>
																		</div>
														            </td>
																</tr>
															</table>
															<table width="400px">
																<tr>
																	<td class="infomation">등급</td>
																	<td class="infomation">연수익률</td>
																	<td class="infomation">기간</td>
																	<td class="infomation">모집금액</td>
																	<td class="infomation">상환방식</td>
																</tr>
																<tr>
																	<td class="infomation">${vo.grade}</td>
																	<td class="infomation">${vo.rate}</td>
																	<td class="infomation">${vo.refund}개월</td>
																	<td class="infomation">${vo.price}만원</td>
																	<td class="infomation">${vo.repay_method}</td>
																</tr>
															</table>
														</div>
													</a>
												<td>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</th>
<%-- 							</c:forEach> --%>
							</tr>
						</table>
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

	<script type="text/javascript">
  /*
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
  */
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