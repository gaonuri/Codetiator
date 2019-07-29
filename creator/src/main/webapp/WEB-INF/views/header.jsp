<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	    <!--header start-->
	    <header class="header black-bg">
			<!--logo start-->
			<a href="${pageContext.request.contextPath}/main" class="logo"><img id="logoImage" alt="로고" src="${pageContext.request.contextPath}/resources/img/ner.jpg" width="200px" height="30px"></a>
			<!--logo end-->
			<div class="nav notify-row top-menu" id="top_menu">
				<!--  notification start -->
				<ul class="nav pull-right top-menu">
					<!-- settings start -->
					 
					<!-- 회사소개 start -->
					<li><a href="${pageContext.request.contextPath}/intro">회사소개</a></li>
					<!-- 회사소개 end -->
					
					<!-- 대출 start -->
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							대출
						</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="${pageContext.request.contextPath}/loan_guide">대출안내</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/getloan">대출하기</a>
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
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="${pageContext.request.contextPath}/invest_guide">투자안내</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/invest_list">투자하기</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/invest_finished">완료된투자</a>
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
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<a href="${pageContext.request.contextPath}/faq">FAQ</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/support">이용약관</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/policy">개인정보</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/inquiry">1:1문의</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/support_total">공지사항</a>
							</li>
						</ul>
					</li>
					<!-- 고객지원 end -->
					
					<!-- 마이페이지 start-->
					<!-- 마이페이지 end -->
					
					<!-- 로그아웃 start -->
					
					<input id="project_num" type="hidden" value="${vo.project_num}" />
<c:choose>
	<c:when test="${memberVO.user_num != null}">
		<a href="${pageContext.request.contextPath}/invest_detail?project_num=${vo.project_num}&p_busi_num=${vo.busi_num}&user_num=${memberVO.user_num}">${vo.project_name}</a>
	</c:when>
	<c:when test="${memberVO.busi_num != null}">
		<a href="${pageContext.request.contextPath}/invest_detail?project_num=${vo.project_num}&p_busi_num=${vo.busi_num}&busi_num=${memberVO.busi_num}">${vo.project_name}</a>
	</c:when>
	<c:otherwise>
		<a href="${pageContext.request.contextPath}/invest_detail?project_num=${vo.project_num}">${vo.project_name}</a>
	</c:otherwise>
</c:choose>
					
					
<!-- 					이프문해야함 admin -->
					<c:choose>
						<c:when test="${memberVO != null && memberVO.user_num != '' || memberVO != null && memberVO.busi_num != ''}">
							<c:choose>
							<c:when test="${memVO.user_num == '1'}">
								<li><a>${memVO.user_name}님</a></li>
							</c:when>
							<c:otherwise>
							<li id="header_notification_bar" class="dropdown">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">
									${memVO.user_name}${memVO.manager_name}님
								</a>
								<ul class="dropdown-menu extended notification">
									<div class="notify-arrow notify-arrow-green"></div>
									<li>
										<a href="${pageContext.request.contextPath}/my_dashboard?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">대시보드</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/my_invest_list?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">투자내역</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/my_loan_list?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">대출내역</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/my_depo_mgn?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">예치금관리</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/my_modify?user_num=${memberVO.user_num}&busi_num=${memberVO.busi_num}">회원정보수정</a>
									</li>
								</ul>
							</li>						
							</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li><a class="loginss" href="${pageContext.request.contextPath}/login">로그인</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${memberVO != null && memberVO.user_num != '' || memberVO != null && memberVO.busi_num != ''}">
							<li>
								<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
							</li>
						</c:when>
						<c:otherwise>
							<li><a class="loginss" href="${pageContext.request.contextPath}/join">회원가입</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${memberVO.user_num == '1'}">
							<li>
								<a href="${pageContext.request.contextPath}/account_list">관리자</a>
							</li>
						</c:when>
						<c:otherwise>
							<li></li>
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