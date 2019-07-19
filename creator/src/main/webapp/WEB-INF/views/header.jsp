<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							대출
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="./loan_guide">대출안내</a>
							</li>
							<li>
								<a href="./loan/getloan">대출하기</a>
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
							<li>
								<a href="./support_total">공지사항</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 end -->
					
					<!-- 마이페이지 start-->
					<!-- 마이페이지 end -->
					
					<!-- 로그아웃 start -->
					
					<c:choose>
						<c:when test="${userVO != null && userVO.user_num != '' || busiUserVO != null && busiUserVO.busi_num != ''}">
							<li id="header_notification_bar" class="dropdown">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">
									${userVO.user_name}${busiUserVO.manager_name}님
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
						</c:when>
						<c:otherwise>
							<li><a class="loginss" href="./login">로그인</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${userVO != null && userVO.user_num != '' || busiUserVO != null && busiUserVO.busi_num != ''}">
							<li>
								<a href="./logout">로그아웃</a>
							</li>
						</c:when>
						<c:otherwise>
							<li><a class="loginss" href="./join">회원가입</a></li>
						</c:otherwise>
					</c:choose>
				
					<!-- 로그아웃 end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
			</div>
	    </header>
	    <!--header end-->