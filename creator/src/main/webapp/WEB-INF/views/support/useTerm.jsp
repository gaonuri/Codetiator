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
<style >
#content .step {
    padding: 0px 10px 60px 10px;
}
#content .step .wrap .item.active {
    background-color: #712594;
    font-weight: bold;
    color: #fff;
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
    text-align: center;
}
.section-body {
    color: #000;
    position: relative;
    padding: 60px 20px 30px 20px;
}
.top {
    padding: 30px 0px;
    text-align: center;
}
.dl-horizontal dd {
	    margin-left: 80px;
}
.dl-horizontal dt {
	    width: 70px;
}
.container {
    width: 1170px;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-12 {
    width: 100%;
    float: left;
}
.wrap {
    padding: 35px 100px 111px 100px;
}
.box {
    border-color: #d9d9de;
    border-style: solid;
    border-width: 1px;
    border-radius: 4px;
    padding: 20px 40px;
    background-color: #fff;
    font-size: 16px;
    overflow: scroll;
    max-height: 500px;
}

</style>
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
	   <section id="loanGuide-banner" class="text-center">
			<div class="overlay">
				<div class="section-body">
					<span class="title">이용 약관</span>
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

<div class="container">
			<div class="section-body">
				<div class="row">
					<div class="col-md-12">
						<div class="wrap">
							<div class="box">
								<p>
									<br>크리에이터 서비스 이용 약관
									<br>
									<br>이 약관은 ㈜크리에이터(이하 "회사"라 합니다)가 운영하는 사이트(이하 "사이트"라 합니다)에서 제공하는 모든 서비스(이하 "서비스"라 합니다)를 이용함에 있어 회사와 이용자 간의 권리, 의무 및 책임사항에 관한 사항을 규정함을 목적으로 합니다. 회사는 시스템에 관한 제반 기술과 운영에 대한 모든 권한을 갖고 있으며, 회원에게 제공하는 여신업무는 회사와 제휴된 온라인대출정보연계대부업자가 전담합니다. 또한 회원의 동의에 의해 제공되는 신용평가 정보는 회사와 제휴된 신용평가사에서, 투자금과 투자수익 및 대출금의 예치 및 지급 위탁은 제휴된 공신력 있는 기관에서 전담합니다. 
									<br>
									<br>※ 회사와 제휴된 온라인대출정보연계대부업자 : ㈜크리에이터대부(이하 "온라인대출정보연계대부업자"라 합니다) 
									<br>※ 회사와 제휴된 신용평가사 : NICE 신용평가, KCB(이하 "신용평가사"라 함) 
									<br>※ 회사와 제휴된 공신력 있는 기관 : NH농협은행 
									<br>※ 회사와 제휴된 업체 : 신한카드㈜ 
									<br>
									<br>
									<br>제 1 조 약관의 적용 
									<br>
									<br>이 약관은 회사가 인터넷 상에서 제공하는 모든 서비스의 이용절차 및 기타 필요한 사항에 적용됩니다. 
									<br>
									<br>
									<br>제 2 조 용어의 정의 
									<br>
									<br>① 이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 
									<br>1. "사이트"란 회사가 서비스 또는 용역을 회원에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 제공할 수 있도록 설정한 가상의 영업장 또는 서비스 공간을 말하며, 회원 계정(ID 및 PASSWORD)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말합니다. 
									<br>* 사이트의 주소: www.creator.co.kr 
									<br>2. "서비스"는 회사가 직접 운영하는 사이트(모바일을 포함합니다)에서 제공하는 온라인 상의 모든 서비스를 말합니다.
									<br>3. "회원"은 이 약관에 동의하고 회사가 운영하는 사이트에서 서비스를 제공받는 자를 말합니다. 회사는 정책에 의하여 회원의 등급을 구분하여 서비스 이용범위나 혜택 또는 서비스 사용료 징수 등을 다르게 적용할 수 있습니다. 
									<br>3의1. "투자자"는 사이트에 공시된 채권에 대해 투자 신청을 한 회원을 포괄적으로 말합니다.
									<br>3의2. "채무자"는 자금을 빌릴 의사가 있는 자로 사이트에서 제공하는 양식에 맞추어 대출 신청을 한 회원을 말합니다. 
									<br>4. "ID"라 함은 회원의 식별과 서비스 이용을 위하여 사이트에 등록한 전자 메일 주소 및 기타 SNS(소셜네트워크서비스) 계정을 말합니다.
									<br>5. "PASSWORD"라 함은 회원 본인 확인 및 비밀 보호, 서비스에 제공되는 각종 정보의 보안을 위해 회원이 직접 설정한 6자리 이상 15자리 이하의 영문과 숫자, 특수문자의 조합을 말합니다. 
									<br>6. "온라인대출정보연계대부업자"라 함은 회사와 특정한 제휴 및 협약을 맺고 대출집행에 대한 심사, 채권계약, 채권관리(추심) 등에 관해 전적인 역할과 책임을 맡아 수행하는 법인을 말합니다. 
									<br>7. "포인트"라 함은 사이트에서만 사용 가능한 퍼플포인트를 말합니다. 
									<br>
									<br>
									<br>② 이 약관에서 사용하는 용어 중 제2조에서 정하지 아니한 것은, 관계법령, 투자자이용약관 및 각 서비스의 안내에서 정하는 바에 따르며, 그 외에는 일반 거래관행에 따릅니다 
									<br>
									<br>
									<br>제 3 조 서비스의 종류 
									<br>
									<br>① 회사가 회원에게 제공하는 서비스 종류는 다음 각 호와 같습니다. 
									<br>1. 금융 거래장소(Platform) 제공 서비스 : 회사의 사이트를 통하여 채무자가 온라인대출정보연계대부업자로부터 대출을 받기 위한 대출 신청 및 대출과 관련된 모든 활동, 투자자가 해당 채권에 대한 투자실행 등 투자와 관련된 모든 활동에 대하여 온라인으로 제공하는 서비스 및 기타 이용 서비스, 관련 부가서비스 일체를 말합니다. 
									<br>2. 기타 서비스 : 회사의 금융 거래장소(Platform) 제공 서비스 이외에 회사의 사이트를 통하여 제공하는 홍보 서비스, 채권매매서비스 등 기타의 서비스를 말합니다. 
									<br>
									<br>② 회사는 서비스 변경 시에 그 변경되는 서비스의 내용 및 제공일자를 제16조에 따라 회원에게 통지하고, 전항에서 정한 서비스를 변경하여 제공할 수 있습니다. 
									<br>
									<br>
									<br>제 4 조 서비스 이용계약의 성립 등 
									<br>
									<br>① 회사가 제공하는 서비스에 이용에 관한 계약(이하 "이용계약"이라고 합니다)은 회원이 되고자 하는 자가 이 약관에 동의하고 정해진 가입양식에 회원정보를 직접 기입하여 회원신청을 하고 회사가 이에 대해 승낙함을 함으로써 성립됩니다. 
									<br>
									<br>② 회원에 가입하는 자는 회사가 정당하게 요구하는 개인정보를 성실히 제공하여야 합니다. 
									<br>
									<br>③ 회사는 회원의 개인정보(이름, ID, PASSWORD, 기타 회사가 필요하다고 인정하는 사항 등 개인정보처리방침에서 정한 사항을 포함합니다)를 접수 받아 이를 관리합니다. 
									<br>
									<br>④ 타인의 정보를 도용하여 가입한 회원은 회사가 제공하는 서비스를 이용할 수 없으며 이에 따른 민사, 형사상의 모든 책임은 해당 고객에게 있습니다. 
									<br>
									<br>⑤ 회사는 관계 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있으며, 이 약관을 개정할 경우 회원에게 전자메일, 서면, SMS 등의 방법으로 개정된 사실 및 개정된 내용을 알립니다. 회사가 고지한 날로부터 7일 이내에 의사표시를 하지 않은 회원은 개정된 약관에 동의한 것으로 간주합니다.
									<br>
									<br>⑥ 회원은 약관의 내용 및 변경에 대하여 숙지하여야 하며, 약관의 부지로 인한 상황에 대해서 회사가 책임지지 않습니다. 
									<br>
									<br>⑦ 회원이 이용계약 종료 후 재가입하는 경우에는 종료 후, 3개월이 경과하거나 회사의 승낙이 있어야 합니다.  
									<br>
									<br>
									<br>제 5 조 회원가입 
									<br>
									<br>① 이용고객은 사이트가 정한 가입 양식에 따라 회원의 정보를 기입하고 이 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다. 
									<br>
									<br>② 회사는 특정 서비스를 제공하기 위해 회원에게 별도 또는 추가적인 가입절차를 요청할 수 있으며, 이러한 특정 서비스를 이용할 경우 해당 서비스에 대한 이용약관, 규정 또는 세칙 등이 이 약관보다 우선 적용됩니다. 
									<br>
									<br>③ 이용고객은 회원가입 시에 회사가 서비스를 제공함에 있어서 필요한 정보를 제공해야 하며, 회사가 특별히 요청할 경우 해당 서류를 제출해야 합니다. 
									<br>
									<br>④ 회원이 사실과 다른 정보 또는 허위 정보를 기입하였거나 추후 그러한 정보임이 밝혀질 경우, 회사는 운영자의 권한으로 해당 회원의 서비스 이용을 일시 정지하거나 영구정지 및 이용계약을 해지할 수 있습니다. 이로 인하여 회사 또는 제3자에게 발생한 손해는 해당 회원이 책임을 부담합니다.
									<br>
									<br>⑤ 회사는 회원이 가입 신청한 경우 법령에 따라 이용 가능한 신용정보업자 또는 신용정보집중기관을 통하여 본인여부를 확인할 수 있으며, 회사는 실명확인절차를 취할 수 없는 이용신청에 대해서는 신청자에게 증빙자료를 요청할 수 있습니다. 
									<br>
									<br>⑥ 회사는 합리적인 판단에 의해 필요한 사유가 있는 경우, 가입 신청에 대한 승낙을 유보할 수 있습니다. 이 경우, 회사는 가입 신청자에게 승낙유보의 사유, 승낙가능시기 또는 승낙에 필요한 추가요청정보 내지 자료 등 기타 승낙유보와 관련된 사항을 해당 서비스화면에 게시하거나 기타 방법을 통하여 회원에게 통지합니다. 
									<br>
									<br>
									<br>제 6 조 회원정보의 수집과 보호 
									<br>
									<br>① 회사는 이용계약을 위하여 회원이 제공한 정보 외에도 수집목적 또는 이용목적을 밝혀 회원으로부터 필요한 정보를 수집할 수 있습니다. 이 경우 회사는 회원으로부터 정보수집에 대한 동의를 받습니다. 
									<br>
									<br>② 회사가 정보수집을 위하여 회원의 동의를 받는 경우, 회사는 수집하는 개인정보의 항목 및 수집방법, 수집 및 이용목적, 개인정보의 보유 및 이용기간, 제3자에 대한 정보제공 사항(제공받는 자, 제공받는 자의 이용목적, 제공정보의 항목, 보유 및 이용기간)등을 개인정보처리방침으로 미리 명시하거나 고지합니다. 회원은 정보제공에 동의하더라도 언제든지 그 동의를 철회할 수 있습니다. 
									<br>
									<br>③ 회사는 회원의 개인정보보호를 위하여 관리자를 최소한으로 한정하며, 회사의 고의 또는 중대한 과실로 인하여 회원정보가 분실, 도난, 유출, 변조된 경우에는 그로 인한 회원의 손해에 대하여 책임을 부담합니다. 
									<br>
									<br>④ 회사는 관련 법령이 정하는 바에 따라서 회원정보를 포함한 개인정보를 보호하기 위하여 노력합니다. 
									<br>
									<br>⑤ 회원의 개인정보보호에 관해서는 관련법령 및 회사가 정하고 별도로 게시하는 "개인정보처리방침"에 정한 바에 준합니다. 
									<br>
									<br>⑥ 이용계약이 종료된 경우, 회사는 당해 회원의 정보를 파기하는 것을 원칙으로 합니다. 다만, 다음 각 호의 경우에는 회원정보를 보관할 수 있으며, 이 경우 회사는 보관하고 있는 회원정보를 그 보관의 목적으로만 이용합니다. 
									<br>1. 상법 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
									<br>2. 회원의 탈퇴신청 등으로 이용계약이 종료된 경우, 회사는 투자자 보호 및 이 약관이 정한 제한을 의도적으로 회피하기 위한 임의 해지 방지를 위하여 상당하다고 인정되는 경우에 한하여 이용계약종료 후 1년간 ID, 성명 또는 상호, 연락처, 거래상세내역, 약관위반 행위자료 등 최소한의 필요정보를 보관합니다. 
									<br>3. 회사가 이용계약을 해지하거나 회사로부터 회원자격정지조치를 받은 회원에 대해서는 재가입에 대한 승낙거부사유가 존재하는지 여부를 확인하기 위한 목적으로 이용계약종료 후 1년간 ID, 성명 또는 상호, 연락처, 주소, 해지와 회원자격정지와 관련된 정보 등 최소한의 필요정보를 보관합니다. 
									<br>4. 기타 정보수집에 관한 동의를 받을 때 보유기간을 명시한 경우에는 그 보유기간까지 회원정보를 보관합니다. 
									<br>
									<br>⑦ 회사는 회원정보의 보호와 관리에 관한 개인정보처리방침을 회원과 회사의 서비스를 이용하고자 하는 자가 알 수 있도록 사이트의 주소에 공지합니다. 
									<br>
									<br>
									<br>제 7 조 회원의 의무 
									<br>
									<br>① 회원은 서비스를 이용할 때 다음 각 호의 행위를 할 수 없습니다. 
									<br>1. 가입신청시 기재항목에 개인정보에 반하는 허위사실을 기재하는 행위 
									<br>2. 다른 회원의 ID, PASSWORD 및 개인정보를 부정하게 이용하는 행위 
									<br>3. 서비스를 이용하여 얻은 정보를 복사, 가공, 번역, 2차적 저작 등을 통하여 복제, 공연, 방송, 전시, 배포, 출판 등에 이용하거나 제3자에게 제공하는 행위 
									<br>4. 타인이나 회사의 명예를 손상시키거나 불이익을 주는 행위 
									<br>5. 회사 및 제3자의 저작권을 포함한 지적재산권 등 기타 권리를 침해하는 행위 
									<br>6. 선량한 풍속 기타 사회질서에 위반되는 내용의 정보, 문장, 도형, 음성 등을 유포하는 행위 
									<br>7. 범죄와 결부된다고 객관적으로 인정되는 행위 
									<br>8. 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염자료를 등록 또는 유포하는 행위 
									<br>9. 서비스의 안정적 운영을 방해할 수 있는 정보를 전송하거나 수신자의 의사에 반하여 광고성 정보를 전송하는 행위 
									<br>10. 기타 관계법령에 위배되는 행위 
									<br>
									<br>② ID와 PASSWORD 관리에 관한 일체의 책임은 회원 본인에게 있습니다. 회원에게 부여된 ID와 PASSWORD를 제3자에게 대여 또는 양도하거나 이와 유사한 행위를 하여서는 안 되며, 이로 인한 ID와 PASSWORD의 관리소홀, 부정이용에 의하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다. 
									<br>
									<br>③ 회원은 자신의 ID가 부정하게 이용된 경우, 즉시 자신의 PASSWORD를 변경하고 그 사실을 회사에 통보하여야 합니다. 통보 전에 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다. 
									<br>
									<br>④ 회원은 본인의 신상관련 사항이 변경되었을 때는 가능한 방법으로 지체 없이 사이트를 통하여 수정하거나 유선 또는 사이트를 통해 회사에 통보하여야 합니다. 통보 전에 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다. 
									<br>
									<br>⑤ 회원은 회사의 사전승낙 없이 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동으로 인한 결과에 대하여 회사는 책임을 지지 아니합니다. 
									<br>
									<br>⑥ 회원은 이 약관 및 관계법령에서 규정한 사항과 서비스 이용안내 또는 주의사항을 성실히 준수하여야 합니다. 
									<br>
									<br>⑦ 회원은 회사가 서비스 공지사항에 게시하거나 별도 공지한 이용제한사항을 준수하여야 합니다. 
									<br>
									<br>⑧ 회원은 회사의 사전동의 없이 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며 이를 담보로 제공할 수 없습니다. 단, 부득이 이용계약상의 지위를 타인에게 양도하는 경우 이를 회사에 사전 통보하고 서면동의를 얻어야 합니다. 
									<br>
									<br>⑨ 회원은 반드시 본인의 실명으로 등록하여야 하며, 타인의 명의를 도용하는 경우 일체의 보호를 받을 수 없고, 관계법령에 의하여 처벌 받을 수 있습니다. 
									<br>
									<br>
									<br>제 8 조 포인트 정책 
									<br>
									<br>① 포인트의 부여 및 사용에 관한 상세한 사항은 회사가 정한 정책에 따르며, 회사는 서비스의 특정 페이지나 관련 링크 등을 통하여 이를 회원에게 안내합니다. 
									<br>
									<br>② 회원은 다음 각 호의 방법을 통해 포인트를 구매 또는 적립할 수 있습니다.
									<br>1. 회사와 제휴된 업체를 통해 사이트에서 포인트를 구매(포인트 구매 시 발생하는 가맹 수수료는 회사가 부담하며, 해당 정책이 변경되는 경우 사이트를 통해 공지합니다)
									<br>2. 회사의 정책에 따라 서비스를 이용하여 무상으로 포인트를 적립(회원가입, 추천, 후기 작성, 이벤트 참여 등 회사의 서비스를 이용하는 경우 등의 경우로서 회사가 관련 정책을 사전 고지 합니다)
									<br>3. 회사가 정한 정책에 따라 특정 시점에 모든 회원에게 일괄 적립(이 경우 회사는 사이트를 통하여, 별도 고지합니다)
									<br>
									<br>③ 포인트는 1단위당 1원의 가치를 가집니다. 
									<br>
									<br>④ 포인트는 투자 시에만 사용 가능하며, 구매한 포인트의 환불, 적립된 포인트의 출금 및 기타 목적으로 사용하는 것은 불가능합니다. 또한 회사는 포인트에 대한 이자를 지급하지 아니합니다. 
									<br>
									<br>⑤ 회사는 아래에 해당하는 경우 포인트 사용의 승인을 철회하거나 적립된 포인트를 회수 할 수 있습니다. 
									<br>1. 포인트를 부정한 방법으로 적립 시도할 경우 
									<br>2. 회원의 과실로 사용한 포인트를 다시 사용하였을 경우 
									<br>3. 타인의 명의나 개인정보를 도용하여 포인트를 이용하려고 하는 경우 
									<br>4. 기타 이 약관 기타 공시의 이용약관, 관련 법령 등을 위반하는 경우 
									<br>
									<br>⑥ 회원이 결제나 이벤트 등을 통하여 회사로부터 제공받은 포인트는 정한 기한 내에만 이용이 가능하며, 다음 각 호의 경우 포인트가 소멸됩니다. 
									<br>1. 적립된 포인트의 유효기간(365일)을 경과하는 경우. 단, 회사와 제휴된 업체를 통해 포인트를 구매한 경우에는 그 기간을 달리 정할 수 있음 
									<br>2. 회원이 직접 사이트를 통해 탈퇴 신청을 한 경우 
									<br>
									<br>⑦ 포인트는 회사가 정한 범위 내에서 본인만이 이용할 수 있습니다. 그 외의 사용은 영리 또는 비영리를 구분하지 않고 엄격히 금지되며, 제3자에게 양도, 복제, 배포도 금지됩니다. 
									<br>
									<br>⑧ 회사는 포인트의 부여, 사용처, 소멸 등 포인트의 운영 정책에 대하여 세부 정책을 별도로 정하여 시행할 수 있으며, 이러한 경우 사이트에 공지합니다. 
									<br>
									<br>
									<br>제 9 조 서비스 이용권리의 양도 등 
									<br>
									<br>① 회원은 회사의 사전동의 없이 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다. 단, 부득이 이용계약상의 지위를 타인에게 양도하는 경우 이를 회사에 사전 서면 동의를 얻어야 합니다. 
									<br>
									<br>② 회사는 보안 및 ID 정책, 서비스의 원활한 제공 등과 같은 사유가 발생하는 경우, 제16조에 따라 회원의 ID 변경을 요구하거나 변경할 수 있습니다. 
									<br>
									<br>
									<br>제 10 조 계약해지 및 이용제한 
									<br>
									<br>① 회원이 이용계약을 해지하고자 할 경우에는 본인이 직접 회사 홈페이지 또는 회사가 정한 별도의 방법을 이용하여 회사에 해지 신청을 하여야 합니다. 이 경우 회사는 해지를 요청한 회원의 정보를 개인정보처리방침에 따라 처리하며, 회사가 회원의 해지 신청을 승낙했을 때에 이용계약이 종료됩니다. 
									<br>
									<br>② 전항에 따라 해지를 한 회원은 해지 후 3개월이 경과한 경우 또는 회사가 승낙한 경우에 한하여 이 약관이 정하는 회원가입절차와 관련조항에 따라 회원으로 다시 가입할 수 있습니다. 
									<br>
									<br>③ 회사는 서비스 이용신청이 다음 각 호에 해당하는 것으로 판단되거나 서비스 이용신청 이후의 이용 상황이 다음 각 호의 하나에 해당하는 경우에는 이용을 제한하거나 탈퇴시킬 수 있습니다. 이 경우 회사는 회원에게 E-mail, 전화, 팩스, 기타의 방법을 통하여 해지사유를 밝혀 그 시정을 요구할 수 있으며, 7일 이상으로 정한 기간 내에 이를 이행하지 아니한 때에는 계약을 해지합니다. 다만, 회사는 해당 회원에게 사전에 해지사유에 대한 의견진술의 기회를 부여할 수 있습니다. 
									<br>1. ID와 PASSWORD 등 회원 고유정보를 타인에게 누설하거나 타인의 ID 및 PASSWORD를 도용한 경우 
									<br>2. 서비스 운영을 고의로 방해하거나 반복적으로 동일한 글을 올리는 등 운영자의 합리적이고 객관적인 판단에 의하여 회원의 자격이 없다고 인정되는 경우 
									<br>3. 가입한 성명이 실명이 아닌 경우 
									<br>4. 동일 이용자가 다른 ID로 이중 등록을 한 경우 
									<br>5. 타인의 결제수단(신용카드 / 핸드폰 번호)를 부정하게 도용한 경우 
									<br>6. 선량한 풍속 기타 사회질서에 위반되는 내용의 정보, 문장, 도형, 음성 등을 유포하는 경우 
									<br>7. 회원이 공공의 이익을 저해할 목적으로 서비스 이용을 계획 또는 실행하는 경우 
									<br>8. 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우 
									<br>9. 서비스의 안정적 운영을 방해할 목적으로 정보를 전송하거나 광고성 정보를 전송하는 경우 
									<br>10. 통신설비의 오동작이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스 프로그램 등을 유포하거나 이에 대한 충분한 의심이 경우 
									<br>11. 회사, 기타 타인의 권리나 명예, 신용 기타 정당한 이익을 침해를 한 경우, 또는 제3자의 지적재산권을 침해하는 경우 
									<br>12. 회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우 
									<br>13. 회원이 게시판 등에 음란물을 게재하거나 음란사이트를 연결(링크)하는 경우 
									<br>14. 서비스 이용약관을 포함하여 기타 회사가 정한 이용조건 및 관계법령을 위반해 더 이상의 서비스 제공이 어렵다고 판단되는 경우 
									<br>15. 스토킹(stalking) 등 다른 이용자를 괴롭히는 행위를 하는 경우 
									<br>16. 욕설이나 비방을 하는 행위를 하는 경우 
									<br>17. 회사가 신청양식에서 정한 회원정보가 미비된 경우 
									<br>18. 거래사기 등 범죄행위 유발목적으로 서비스 신청을 한 것으로 판단되는 경우 
									<br>19. 이 약관에서 예정하고 있는 거래 이외의 영리를 추구할 목적으로 서비스 가입을 한 것으로 판단되는 경우 
									<br>20. 기 탈퇴한 고객으로서 재가입이 웹사이트의 운영에 저해가 된다고 판단되는 경우 
									<br>21. 주관적인 글의 게재로 인하여 타 회원에게 부정적 영향을 끼칠 가능성이 있는 경우 
									<br>22. 회원이 실제로 거래하고자 하는 의사 없이 거래등록을 한 경우
									<br>23. 기타 이 약관 상의 제반 의무를 위반하는 경우 
									<br> 
									<br>
									<br>④ 본 조 제3항에 해당하는 행위를 한 회원은 이로 인해 회사 또는 다른 회원에게 발생한 손해를 배상할 책임이 있습니다. 
									<br>
									<br>⑤ 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 합니다.
									<br>
									<br>
									<br>제 11 조 게시물 등의 관리  
									<br>
									<br>회사는 회원이 이 약관에 위배하여 게시물을 작성하거나 콘텐츠를 등록하는 경우 회원에게 별도의 통지 없이 내용을 삭제하거나 이동할 수 있으며, 등록을 거절할 수 있습니다. 
									<br>
									<br>
									<br>제 12 조 회원정보의 변경
									<br>
									<br>① 회원은 이용신청 시 기재한 사항이 변경되었을 경우, 즉시 해당 사항에 대한 수정내용을 회사에 요청하여야 합니다. 
									<br>
									<br>② 회원정보가 변경되었음에도 해당 사항의 수정을 요청하지 않음으로써 발생하는 각종 손해는 회원 본인이 부담하여야 합니다. 다만, 회사의 고의나 과실에 의하여 손해가 발생한 경우에는 회사가 손해를 부담합니다. 
									<br>
									<br>
									<br>제 13 조 쿠키(Cookie)의 운용 및 활용 
									<br>
									<br>① 회사는 회원에게 적합하고 유용한 서비스를 제공하기 위해서 회원의 정보를 저장하고 수시로 불러오는 쿠키(cookie)를 이용합니다. 
									<br>
									<br>② 전항과 관련하여 회원은 쿠키 이용에 대한 선택권을 가지며 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 이용하는 컴퓨터 브라우저의 설정을 변경할 수 있습니다. 다만, 쿠키의 저장을 거부하여 발생되는 문제(서비스 사용 제한을 포함하며 이에 한정되지 아니합니다)에 대한 책임은 회원에게 있습니다. 
									<br>
									<br>
									<br>제 14 조 링크 사이트에 대한 책임 
									<br>
									<br>① 회사는 회원에게 다른 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받은 서비스나 자료의 정확성, 유용성 등에 대해 책임지지 아니하며 회사의 개인정보보호정책이 적용되지 않습니다. 
									<br>
									<br>② 회사는 회원이 링크된 외부 사이트의 서비스나 자료를 신뢰함으로써 또는 이와 관련하여 발생하거나 발생되었다고 주장하는 어떠한 손해나 손실에 대해서도 책임이 없습니다. 
									<br>
									<br>
									<br>제 15 조 저작권의 귀속 및 이용제한 
									<br>
									<br>① 회사가 작성한 웹 화면 및 사이트(문구 및 디자인)에 관한 저작권, 기타 지적 재산권은 회사에 귀속됩니다. 
									<br>
									<br>② 회원은 회사가 제공하는 서비스를 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 출판, 복제, 방송 및 기타 방법에 의하여 유포하거나 제3자에게 이용하게 해서는 안됩니다. 
									<br>
									<br>
									<br>제 16 조 이용약관의 효력 및 변경 
									<br>
									<br>① 이용자가 사이트의 서비스를 이용한 경우에는 이 약관에 동의한 것으로 간주합니다. 
									<br>
									<br>② 회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 이 경우 적용일자 및 개정 내용을 초기화면 또는 연결화면을 통해 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 
									<br>
									<br>③ 회사는 이용약관의 변경 시 약관의 개정된 사실 및 개정된 내용을 회원에게 개별적으로 고지합니다. 회사의 고지가 있은 후 7일 이내에 의사표시를 하지 않은 회원은 변경된 약관에 동의한 것으로 간주합니다. 
									<br>
									<br>④ 변경된 약관에 이의가 있는 회원은 이 약관에서 정한 바에 따라 탈퇴(해지)할 수 있으며, 약관의 효력발생일 이후의 서비스 이용은 변경된 약관의 적용을 받습니다. 
									<br>
									<br>⑤ 이 약관은 회사와 회원 간에 성립되는 이용계약의 기본 약정입니다. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관"이라 이라 합니다)을 정하여 미리 공지할 수 있습니다. 회원이 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 개별약관의 변경에 관해서는 개별약관에 특별한 규정이 없는 한 본조 제3항을 준용합니다. 
									<br>
									<br>
									<br>제 17 조 관련법령과의 관계 
									<br>
									<br>① 이 약관 또는 개별약관에서 정하지 않은 사항은 민법, 전기통신사업법, 전자거래기본법, 정보통신망이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련법령의 규정과 일반적인 기타 상관습에 의합니다. 
									<br>
									<br>② 회원은 회사가 제공하는 서비스를 이용함에 있어서 전자상거래 등에서의 소비자보호에 관한 법률, 전자거래기본법, 소비자보호법, 표시광고의 공정화에 관한 법률, 정보통신망이용촉진 및 정보보호 등에 관한 법률 등 관련법령을 준수하여야 하며, 이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다. 
									<br>
									<br>
									<br>제 18 조 약관 위반 시 책임 
									<br>회사와 회원은 이 약관 및 동의서를 위반함으로써 발생하는 모든 책임을 각자 부담하며, 이로 인하여 상대방에게 손해를 입힌 경우에는 지체 없이 배상하여야 합니다. 
									<br>
									<br>
									<br>제 19 조 면 책 
									<br>
									<br>① 회사는 회원이 회사의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임지지 아니합니다. 
									<br>
									<br>② 회사는 회원의 귀책사유로 인하여 서비스 이용의 장애가 발생한 경우에는 책임을 지지 아니합니다. 
									<br>
									<br>③ 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 물품거래, 직거래 등을 한 경우에 그로부터 발생하는 일체의 손해에 대하여 책임지지 아니합니다. 
									<br>
									<br>④ 회사는 회사의 귀책사유 없이 회원간 또는 회원과 제3자간에 발생한 일체의 분쟁에 대하여는 일절 관여하지 않습니다. 
									<br>
									<br>⑤ 회사는 서버 등 설비의 관리, 점검, 보수, 교체 과정 또는 소프트웨어의 운용 과정에서 고의 또는 고의에 준하는 중대한 과실 없이 발생할 수 있는 시스템의 장애, 제3자의 공격으로 인한 시스템의 장애, 국내외의 저명한 연구기관이나 보안관련 업체에 의해 대응방법이 개발되지 아니한 컴퓨터 바이러스 등의 유포나 기타 회사가 통제할 수 없는 불가항력적 사유로 인한 회원의 손해에 대하여 책임지지 않습니다. 
									<br>
									<br>⑥ 제5항의 회원의 손해에는 (1) 회원이 본 서비스를 이용하여 작성하고 있거나 전송 중이거나 저장한 게시물, 그에 첨부된 파일, 기타 데이터의 손상이나 손실(이하 "데이터의 손상이나 손실"이라 합니다)로 인한 경제적, 정신적 손해, (2) 이와 같은 데이터의 손상이나 손실로 인하여 회원이 본 서비스를 이용하여 수행하고자 한 사실행위 또는 제3자와의 계약 기타의 법률행위 등이 불가능해지거나 지연됨으로 인하여 회원에게 발생할 수 있는 경제적, 정신적 손해 등이 포함되며 이에 한정되지 않습니다. 
									<br>
									<br>⑦ 제5항 및 제6항에도 불구하고 회사가 제공하는 무료서비스의 이용과 관련하여 회사의 고의 또는 중대한 과실 없이 발생한 회원의 손해에 대하여는 책임을 지지 않습니다. 
									<br>
									<br>
									<br>제 20 조 서비스 중지 
									<br>
									<br>① 회사는 긴급한 시스템 점검, 증설 및 교체 등 부득이한 사유로 인하여 사전공지 없이 일시적으로 서비스를 중단할 수 있으며, 새로운 서비스로의 교체 등 회사가 적절하다고 판단하는 사유에 의하여 현재 제공되는 서비스를 완전히 중단할 수 있습니다. 
									<br>
									<br>② 회사는 서비스 설비의 장애 또는 서비스 이용의 폭주 등 회사의 귀책사유 없이 정상적인 서비스 제공이 불가능할 경우에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다. 
									<br>
									<br>③ 회사는 천재지변, 전쟁 등 불가항력적 사유가 발생한 경우 또는 기간통신사업자 등 전기통신사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 않는 경우에는 서비스를 중지할 수 있습니다. 
									<br>
									<br>
									<br>제 21 조 제휴사 또는 광고주와의 거래 
									<br>
									<br>① 회원은 서비스 이용 시 노출되는 제휴사를 포함한 회사의 광고 게재에 대해 동의한 것으로 간주합니다. 
									<br>
									<br>② 회사는 서비스 상에 게재되어 있거나 본 서비스를 통한 제휴사 등의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 일체의 책임을 지지 않습니다. 
									<br>
									<br>③ 회원은 서비스 내에 포함되어 있는 링크를 통하여 다른 웹사이트로 옮겨갈 경우, 회사는 해당 사이트에서 제공하는 정보내용 및 이로 인한 손해 등에 대한 책임을 지지 않습니다. 
									<br>
									<br>
									<br>제 22 조 정보의 제공 
									<br>
									<br>① 회사는 회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보 및 광고를 전자우편 또는 서신우편 등의 방법으로 회원에게 전송(또는 제공)할 수 있으며, 회원은 이를 원하지 않을 경우 "회원정보관리"에서 수신을 거부할 수 있습니다. 
									<br>
									<br>② 전자우편의 수신을 거부한 경우에도 이 약관(개별 서비스 이용약관 포함), 개인정보보호정책, 기타 중대한 영업정책의 변경 등 회원이 반드시 알고 있어야 하는 공지사항이 있는 경우, 수신거부와 관계없이 공지메일을 발송할 수 있습니다. 
									<br>
									<br>③ 회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 추가적인 개인정보를 요구할 수 있습니다. 
									<br>
									<br>
									<br>제 23 조 이용료 등 
									<br>
									<br>① 회사는 서비스 이용과 관련하여 각종 이용료를 회원에게 징수할 수 있습니다. 
									<br>
									<br>② 회원의 관리 및 회사가 제공하는 시스템 이용료로서 회사가 부과하는 "사이트 이용료", "투자 성사 수수료", "사이트 부가서비스 이용료"와 온라인대출정보연계대부업자가 부과하는 "취급수수료", "추심성공수수료"로 구분됩니다. 
									<br>
									<br>③ 채무자가 약정 상환일까지 약정한 원리금을 상환하지 않을 경우에는 은행 거래일 익일부터 "금전소비대차계약"에 의거한 연체이자율이 적용됩니다. 
									<br>
									<br>④ 회사는 회원의 입금 또는 출금과 관련하여 계좌이체에 의해 발생하는 출입금 이체수수료를 회원에게 부과할 수 있습니다. 
									<br>
									<br>⑤ 회사는 재량으로 이용료의 추가 및 폐지, 이용료율의 변경을 할 수 있으며, 개정할 경우에는 적용일자 및 개정사유를 명시하여 그 적용일자 7일 이전부터 적용일자 전일까지 사이트 화면에 게시하거나 기타의 방법으로 회원에게 공지합니다. 
									<br>
									<br>
									<br>제 24 조 채권추심의 위임 등 
									<br>
									<br>① 온라인대출정보연계대부업자는 채무자가 그 상환을 사전에 정한 기간을 초과하여 연체하거나 여신거래약관에서 규정한 기한의 이익상실 사유에 해당하는 등의 사정이 발생하는 경우에 채권의 추심을 위임할 수 있습니다. 
									<br>
									<br>② 채권추심의 위임과 관련한 구체적인 내용 및 비용은 투자자가 투자시점에 동의하는 투자자이용약관을 따릅니다.
									<br>
									<br>③ 상기의 사유 등으로 인하여 투자자는 투자원금의 손실을 입을 수 있으며, 이 경우에도 회사와 온라인대출정보연계대부업자는 대출잔여금의 전액에 대한 추심 성공을 보장할 수 없으므로 투자자는 투자금의 손실에 대하여 이의를 제기할 수 없습니다.
									<br>
									<br>
									<br>제 25 조 채권의 매각 
									<br>
									<br>① 투자자가 원리금수취권을 보유하고 있는 해당 대출 건 중 투자자에 대한 조기 상환 및 원활한 상환을 위하여 온라인대출정보연계대부업자는 해당 채권을 매각할 수 있습니다. 이러한 경우 회사와 온라인대출정보연계대부업자는 채권을 매각하기 3일전까지 이해관계 있는 투자자에게 통지하고, 해당내용을 사이트에 게시합니다.
									<br>
									<br>② 그 외 채권의 매각과 관련한 구체적인 사항은 투자자가 투자시점에 동의하는 투자자이용약관을 따릅니다
									<br>
									<br>제 26 조 분쟁조정 및 관할법원 
									<br>
									<br>① 회사 및 회원은 회원정보에 관한 분쟁이 발생한 경우 신속하고 효과적인 분쟁해결을 위하여 정보통신망이용촉진 및 정보보호 등에 관한 법률의 규정에 의해 설치된 개인정보분쟁조정위원회에 분쟁의 조정을 신청할 수 있습니다. 
									<br>
									<br>② 서비스 이용과 관련하여 발생한 분쟁에 대해 소송이 제기될 경우 관할법원은 서울중앙지방법원으로 합니다. 
									<br>
									<br>
									<br>제 27 조 투자자 보호 
									<br>
									<br>① 개인투자자는 각 대출채권에 대하여 1만원부터 투자 가능하며 금융위원회에서 제정한 'P2P대출 가이드라인'에서 정한 투자한도 기준을 따릅니다. 
									<br>
									<br>② 'P2P대출 가이드라인'에서 정한 투자한도 적용의 예외자인 경우, 'P2P대출 가이드라인'에서 지정한 증빙 서류 등을 이메일, 팩스, 등기 등을 통해 회사에 제출해야 하며, 회사가 이를 확인한 경우에만 투자한도 적용의 예외 처리를 적용합니다. 
									<br>
									<br>
									<br>제 28 조 관련법령과의 관계 
									<br>
									<br>회원은 회사가 제공하는 서비스를 이용함에 있어서 전자상거래 등에서의 소비자보호에 관한 법률, 전자거래기본법, 소비자보호법, 표시광고의 공정화에 관한 법률, 정보통신망이용촉진 및 정보보호 등에 관한 법률 및 현행 민법 등 관련법령을 준수하여야 하며, 이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다. 
									<br>
									<br>이 약관은 2018년 5월 31일부터 적용됩니다.
								</p>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-push-8 col-md-4">
									<select class="form-control" id="termHisSelect">
										<option value="">이전 약관보기</option>
										<option value="20180227">2018년 2월 27일</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
		$("#loanReqBtn").click(function() {
			location.href = "${pageContext.request.contextPath}/loan/getloan";
		});
	});

	
	
	window.name ="Parent_window";
	function fn_openNicePopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafekeyModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	</script>
</body>
</html>