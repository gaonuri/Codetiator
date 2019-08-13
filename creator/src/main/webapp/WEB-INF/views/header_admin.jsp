<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="${pageContext.request.contextPath}/account_list" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/manager.jpg" width="200px" height="30px"></a>
			<!--logo end-->
			<div class="nav notify-row top-menu" id="top_menu">
				<!--  notification start -->
				<ul class="nav pull-right top-menu">
					<!-- settings start -->
					 
					<!-- 결제관리 start -->
					<li>
						<a href="${pageContext.request.contextPath}/account_list">
							결제관리
						</a>
					</li>
					<!-- 결제관리 end -->
					
					<!-- 프로젝트 관리 start -->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							프로젝트 관리
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="${pageContext.request.contextPath}/invest_list">프로젝트 현황</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/project_evaluate_mgn">프로젝트 심사 관리</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/loan_guide">대출 심사</a>
							</li>							
						</ul>
					</li>
	          		<!-- 프로젝트 관리 end -->
	          
	          		<!-- 회원 관리 start-->
	         		<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							회원 관리
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-black"></div>
							<li>
								<a href="${pageContext.request.contextPath}/user_mgt">일반 회원 관리</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/busi_user_mgt">사업자 회원 관리</a>
							</li>
						</ul>
					</li>
	          		<!-- 회원 관리 end -->
	          
	          
					<!-- 고객지원 관리 start-->
					<li id="header_notification_bar" class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							고객지원 관리
						</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow"></div>
							<li>
								<a href="${pageContext.request.contextPath}/faq">공지사항</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/support">FAQ</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/policy">1:1상담 내역 관리</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 관리 end -->
					
					
					<!-- 로그인 start -->
					<c:choose>
						<c:when test="${memberVO.user_num == '1'}">
							<li id="header_notification_bar" class="dropdown">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">
									${memberVO.user_name}님
								</a>
							</li>						
						</c:when>
						<c:otherwise>
							<li>
							</li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${memberVO.user_num == '1'}">
							<li>
								<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 로그아웃 end -->
					<c:choose>
						<c:when test="${memberVO.user_num == '1'}">
							<li><a class="loginss" href="${pageContext.request.contextPath}/main">홈페이지</a></li>					
						</c:when>
					</c:choose>
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
			</div>
	    </header>
	    <!--header end-->
	    
	    
	    