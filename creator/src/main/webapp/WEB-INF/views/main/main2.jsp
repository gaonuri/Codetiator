<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
  <meta charset="utf-8">
  <title>Marco - Bootstrap Agency Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/lib/animations/animations.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/css/main/main.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- =======================================================
    Template Name: Marco
    Template URL: https://templatemag.com/marco-bootstrap-agency-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  
  <style type="text/css">.dropdown-toggle::after{display: none;}</style>
</head>

<body>


<nav class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top">
	<div class="col-sm-2"></div>
	<a class="navbar-brand" href="/creator/main"><img alt="Logo" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="40px"></a>
	<button class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="col-sm-4"></div>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav navbar-right">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">대출</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/creator/loan_guide">대출안내</a></li>
					<li><a href="/creator/loan">대출받기</a></li>
				</ul>
			</li>
   			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">투자</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/creator/invest_guide">투자안내</a></li>
					<li><a href="/creator/invest_list">투자하기</a></li>
					<li><a href="/creator/invest_finish">완료된투자</a></li>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">고객지원</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/creator/inquiry">FAQ</a></li>
					<li><a href="/creator/loan/loanReq">이용약관</a></li>
					<li><a href="/creator/loan/loanReq">개인정보</a></li>
					<li><a href="/creator/loan/loanReq">1:1문의</a></li>
				</ul>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">로그인</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">회원가입</a>
			</li>
		</ul>
	</div>
</nav>
<%-- 	<%@ include file="./menubar.jsp" %> --%>

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
		<div class="row mt centered">
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
				            </td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
				            </td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
				            </td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
		</div>
		<!-- /row -->
    
		<div class="row mt centered">
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
		</div>
		<!-- /row -->
		
		<div class="row mt centered">
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
			<div class="col-lg-4 desc">
				<a class="" href="#"><img width="350" src="${pageContext.request.contextPath}/resources/bootstrap/img/portfolio/port01.jpg" alt="" />
					<table border="1">
						<tr>
							<td class="date">시작일</td>
						</tr>
						<tr>
							<td class="project-name">프로젝트명</td>
						</tr>
						<tr>
							<td>
								<!--  ANIMATED PROGRESS BARS -->
					            <div class="showback" width="50px">
					              <h4></h4>
					              <div class="progress progress-striped active">
					                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
					                  <span class="sr-only">45% Complete</span>
					                </div>
					              </div>
					            </div>
					            <!-- /showback -->
							</td>
						</tr>
					</table>
					<table border="1">
						<tr>
							<td class="infomation">등급</td>
							<td class="infomation">연수익률</td>
							<td class="infomation">기간</td>
							<td class="infomation">모집금액</td>
							<td class="infomation">상환방식</td>
						</tr>
					</table>
				</a>
			</div>
		</div>
		<!-- /row -->
	</div>


	<div id="f">
		<div class="container">
			<div class="row">
		        <!-- ADDRESS -->
				<div class="col-lg-4">
					<img alt="logo" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="50px">
					<h4>
						<i class="fa fa-envelope-o"></i> contact@creator.co.kr<br/>
						<i class="fa fa-phone"></i> (02) 546-4076<br/>
						<i class="fa fa-home"></i> 서울특별시 강남구 논현로95길 12, 4층<br/>
					</h4>
					<img class="down_logo" src="${pageContext.request.contextPath}/resources/img/img_p2pkpfa_auth_logo_color.jpg">
					<img class="down_logo" src="${pageContext.request.contextPath}/resources/img/btn_comodo_secure_green.jpg">
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
	</div>
	<!-- /f -->
	
	<!-- JavaScript Libraries -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/lib/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Template Main Javascript File -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/main.js"></script>
	
	<%-- 	<%@ include file="./footer.jsp" %> --%>
	
</body>
</html>