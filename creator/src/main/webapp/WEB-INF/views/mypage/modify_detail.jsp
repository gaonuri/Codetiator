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
	
<script type="text/javascript">
$(document).ready(function() {
	$("#un_btn").click(function(){
		var input = $("#member_password").val();
		var numChk = $("#numChk").val();
		var numChk1 = $("#numChk1").val();
		
		if($.trim(input) == ""){
			alert("비밀번호를 입력하세요.");
			$("#member_password").focus();
			return;
		}//user_paswword
		
		if(numChk) {
			$.post(
					"${pageContext.request.contextPath}/mypagemodifyu",
					{
						//user_num:hidden으로 가지고 있다가 가는 부분
						user_num:$("#numChk").val(),
						user_password:$("#member_password").val()
					},
					function(data,status){
						if(status == "success"){
							if(data > 0){
								location.href="${pageContext.request.contextPath}/modify_detail?user_num=${memberVO.user_num}";
							} else if(data == 0){
								alert("비밀번호를 확인해 주세요.");
							} else {
								alert("잠시 후, 다시 시도해 주세요.");
							}
						} else {
							alert("시스템 관리자에게 문의 바랍니다.");
						}
					}
				);//post
			} 
	});//click
});//ready
</script>
</head>
     
<body>
	<section id="container">
	    <!-- **********************************************************************************************************************************************************
	        TOP BAR CONTENT & NOTIFICATIONS
	        *********************************************************************************************************************************************************** -->
	    <!--header start-->
		<%@ include file="../header.jsp" %>
	    <!--header end-->

	   <!--sidebar start-->
	    <aside>
	      <div id="sidebar" class="nav-collapse">
	        <!-- sidebar menu start-->
	        <ul class="sidebar-menu" id="nav-accordion">
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
	    <!-- **********************************************************************************************************************************************************
	        MAIN CONTENT
	        *********************************************************************************************************************************************************** -->
<!--    =======================================================    -->	        
<section id="main-content">
	<section class="wrapper">
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 고객정보</h4>
				<hr>
                <div class="panel-body text-center">
                <table class="table condition-table">
					<tbody>
					<tr>
					<td class="condition-title">이름</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="cusNm" maxlength="50" value="${mypagemem.user_name}${mypagedetail.manager_name}" readonly="readonly">
						</td>
					</tr>
					<tr>
					<td class="condition-title">이메일</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="email" maxlength="50" value="${mypagemem.email}${mypagedetail.manager_email}">
						</td>
						<td>
							<button type="button" class="btn btn-purple-transparent" onclick="fn_updateEmail()" id="updateEmailBtn">변경</button>
						</td>
					</tr>
					<tr>
					<td class="condition-title">휴대전화번호</td>
						<td class="condition-content">
							<input type="text" class="form-control" id="mpNo" maxlength="50" value="${mypagemem.phone}${mypagedetail.manager_phone}">
							<input type="hidden" id="ci">
						</td>
						<td>
							<button type="button" class="btn btn-purple-transparent" onclick="fn_checkNiceCert()" id="updateCusNmBtn">변경</button>
						</td>
						<td>
							<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
							<form name="form_chk" method="post">
								<input type="hidden" name="m" value="checkplusSerivce">	<!-- 필수 데이타로, 누락하시면 안됩니다. -->
								<input type="hidden" id="EncodeData" name="EncodeData" value="">	<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
							</form>
						</td>
					</tr>
					
					<tr>
						<td class="condition-title">주민등록번호</td>
						<td class="condition-content">${mypagemem.jumin}${mypagemem.manager_birth}</td>
						<td></td>
					</tr>
					
					<tr>
					<td colspan="2" class="condition-content">
						<p>
						<span class="font-red"><strong>※ 왜 주민등록번호가 필요한가요?</strong></span><br>
						<font size="2">
							주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다. 입력하지 않아도 
							대출상품 투자를 제외한 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.
						</font>
						</p>
					</td>
					<td></td>
					</tr>
					</tbody>
				</table>
               	</div>
			  </div>
            </div>
            
<!--    =======================================================    -->

            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 계좌정보</h4>
                <hr>
                <div class="panel-body text-center">
					<table class="table condition-table">
						<tbody>
						<tr>
							<td class="condition-title">출금 시 기본 예치금을 수취할 은행계좌 정보를 등록해주세요.</td>
							<td></td>
						</tr>		
						<tr>
							<td class="condition-title">은행명
							<br><br><span><font size="2">반드시 본인명의 계좌 은행을 선택해주세요.</font></span><br>
							</td>
							<td class="condition-content">
								<select id="cusBankCdSelect" class="form-control" name="cusBankCd">
									<option value="">${mypagebank.bank_name}</option>
										<option value="002">산업은행</option><option value="003">기업은행</option>
										<option value="004">국민은행</option><option value="007">수협중앙회</option>
										<option value="008">수출입은행</option><option value="010">농협</option>
										<option value="011">농협중앙회</option><option value="012">지역농·축협</option>
										<option value="020">우리은행</option><option value="023">SC제일은행</option>
										<option value="027">한국씨티은행</option><option value="031">대구은행</option>
										<option value="032">부산은행</option><option value="034">광주은행</option>
										<option value="035">제주은행</option><option value="037">전북은행</option>
										<option value="039">경남은행</option><option value="045">새마을금고중앙회</option>
										<option value="048">신협중앙회</option><option value="050">상호저축은행</option>
										<option value="052">모건스탠리은행</option><option value="054">HSBC은행</option>
										<option value="055">도이치은행</option><option value="057">제이피모간체이스은행</option>
										<option value="058">미즈호은행</option><option value="059">미쓰비시도쿄UFJ은행</option>
										<option value="060">BOA은행</option><option value="061">비엔피파리바은행</option>
										<option value="062">중국공상은행</option><option value="063">중국은행</option>
										<option value="065">대화은행</option><option value="066">교통은행</option>
										<option value="071">우체국</option><option value="081">KEB하나은행</option>
										<option value="088">신한은행</option><option value="089">케이뱅크</option>
										<option value="090">카카오뱅크</option><option value="096">한국전자금융(주)</option>
										<option value="102">대신저축은행</option><option value="103">에스비아이저축은행</option>
										<option value="104">에이치케이저축은행</option><option value="105">웰컴저축은행</option>
										<option value="209">유안타증권</option><option value="218">KB증권</option>
										<option value="221">골든브릿지투자증권</option><option value="222">한양증권</option>
										<option value="223">리딩투자증권</option><option value="224">BNK투자증권</option>
										<option value="225">IBK투자증권</option><option value="227">KTB투자증권</option>
										<option value="238">미래에셋대우</option><option value="240">삼성증권</option>
										<option value="243">한국투자증권</option><option value="247">NH투자증권</option>
										<option value="261">교보증권</option><option value="262">하이투자증권</option>
										<option value="263">HMC투자증권</option><option value="264">키움증권</option>
										<option value="265">이베스트투자증권</option><option value="266">SK증권</option>
										<option value="267">대신증권</option><option value="269">한화투자증권</option>
										<option value="270">하나금융투자</option><option value="278">신한금융투자</option>
										<option value="279">동부증권</option><option value="280">유진투자증권</option>
										<option value="287">메리츠종합금융증권</option><option value="290">부국증권</option>
										<option value="291">신영증권</option><option value="292">케이프투자증권</option>
										<option value="293">한국증권금융</option><option value="294">펀드온라인코리아</option>
										<option value="295">우리종합금융</option><option value="296">삼성선물</option>
										<option value="297">외환선물</option><option value="298">현대선물</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="condition-title">계좌번호
							<br><br><p><font size="2">계좌번호를 정확히 입력해주세요.</font></p>
							</td>
							<td class="condition-content">
								<input type="text" class="form-control" id="cusAccount" maxlength="14" value="${mypagebank.bank_num}">
							</td>
							<td></td>
						</tr>
						
						<tr>
							<td></td>
							<td></td>
						</tr>
						</tbody>
					</table>
					<div class="autoConditionSet" >
						<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAccount()" id="updateCusAccountBtn">계좌 정보 저장</button>
					</div><br>
                </div>
              </div>
            </div>
          </div>
          
<!--    =======================================================    -->
          
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 비밀번호 재설정</h4>
                <hr>
                <div class="panel-body text-center">
                
					<table class="table condition-table">
						<tbody>
						<tr>
							<td class="condition-title">크리에이터가 추천하는 비밀번호 변경주기는 6개월입니다.</td>
							<td></td>
						</tr>		
						<tr>
							<td class="condition-title">기존 비밀번호
							</td>
							<td class="condition-content">
							<input type="password" class="form-control" id="cusAccount" maxlength="14" value="${mypagemem.user_password}${mypagemem.busi_password}">
							</td>
						</tr>
						<tr>
							<td class="condition-title">새 비밀번호
							</td>
							<td class="condition-content">
								<input type="password" class="form-control" id="cusAccount" maxlength="14">
							</td>
							<td></td>
						</tr>
						
						<tr>
							<td class="condition-title">비밀번호 확인
							</td>
							<td class="condition-content">
								<input type="password" class="form-control" id="cusAccount" maxlength="14">
							</td>						
							<td></td>
						</tr>
						</tbody>
					</table>
					<div class="autoConditionSet" >
						<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAccount()" id="updateCusAccountBtn">새 비밀번호 저장</button>
					</div>
					<br><br>                
                
                </div>
              </div>
            </div>
            
<!--    =======================================================    -->
            
            
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>접속이력</h4>
				<hr>
                <div class="panel-body text-center">
					<table class="table condition-table">
		                <thead>
		                  <tr>
		                    <th>로그인 일시</th>
		                    <th>로그아웃 일시</th>
		                  </tr>
		                </thead>
						<tbody>
		                  	<tr>
		                  		<td>
									<c:forEach items="${hInList}" var="vo" varStatus="status">
			                    		<a>${vo.log_in_out_time}<br><p><font size="2"></font></p></a>
									</c:forEach>
								</td>
								<td>
			                    	<c:forEach items="${hOutList}" var="vo" varStatus="status">
										<a>${vo.log_in_out_time}<br><p><font size="2"></font></p></a>
									</c:forEach>
								</td>
							</tr>
								<tr>
									<td class="condition-title">최근 3회 동안 접속하신 정보입니다.</td>
									<td></td>
								</tr>		
						
						</tbody>
					</table>
					<div class="autoConditionSet" >
						<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_updateCusAccount()" id="updateCusAccountBtn">회원 탈퇴</button>
					</div>
					<br><br>                  
                
                </div>
              </div>
            </div>
          </div>
	</section>
</section>   



 
<!--    =======================================================    -->    	
	
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
</body>



</html>













