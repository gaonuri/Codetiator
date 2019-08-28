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
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
	
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/headerlogo.png" rel="apple-touch-icon">
	
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
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row mt">
					<!-- page start -->
					<div class="col-lg-12">
						<section id="content">
							<div class="container">
								<div class="section-body">
									<div class="row">
										<div class="col-md-12">
											<div class="wrap">
												<div class="box">
													<p>
														이 약관은 ㈜크리에이터(이하 "회사"라 합니다)가 운영하는 사이트(이하 "사이트"라 합니다)에서 제공하는 금융 서비스 및 기타 정보서비스(이하 "서비스"라 합니다)와 관련하여 회사와 귀하 간의 권리와 의무, 책임 사항을 규정함을 목적으로 합니다. 회사는 시스템에 관한 제반 기술과 운영에 대한 모든 권한을 갖고 있으며, 귀하에게 제공하는 여신 업무는 회사와 제휴된 온라인대출정보연계대부업자가 전담합니다. 
														<br>
														<br>※ 제휴된 온라인대출정보연계대부업자 : ㈜미드레이트대부(이하 "온라인대출정보연계대부업자"라 합니다) 
														<br>※ 사이트 주소 : www.midrate.co.kr
														<br>
														<br>
														<br>투자 전 주의사항 
														<br>
														<br>사이트에서 제공하는 서비스를 사용함에 있어서 귀하는 채권자가 아닙니다. 귀하의 실질적인 지위는 온라인대출정보연계대부업자가 대출을 실행하여 형성된 대출채권을 기반으로 하여 사이트를 통해 회사와 새롭게 채권 참가 계약을 맺고 원리금 이익에 참가하는 채권 참가자에 해당합니다. 그러므로 귀하는 사이트를 통해 채무자에게 직접적으로 대출을 실행하거나 자금을 공여하는 채권자가 아닙니다. 
														<br>
														<br>사이트를 통해 실행 되는 모든 대출은 온라인대출정보연계대부업자의 자금으로 실행된 것이며, 회사는 해당 대출채권에 대해 사이트를 통해 귀하에게 원리금수취권에 대한 참가 거래의 기회를 제공하는 것입니다. 이에 따라 귀하는 온라인대출정보연계대부업자의 대출채권에 채권 참가 형식으로 회사에게 원리금수취권의 매입을 위탁합니다. 
														<br>
														<br>사이트에서 이루어지는 모든 대출에 있어서 채권자는 온라인대출정보연계대부업자이고 회사는 채권 참가 거래에 대하여 매개하며 귀하는 이러한 매개 구조를 통한 자금공여에 대해 동의합니다. 
														<br>
														<br>귀하는 사이트를 사용함에 있어서 투자자로 표현되나, 이는 어디까지나 사이트를 투자자와 채무자를 연결하여 대출을 성사시키는 금융 거래 장소(Platform)라고 인식하는 회원들의 이해를 돕고 서비스 사용상의 편의를 도모하기 위함이며, 귀하는 자금제공자의 지위를 가지고 있음을 양지하시기 바랍니다. 
														<br>
														<br>
														<br>제 1 조 투자자의 등록 
														<br>
														<br>① 귀하는 이 약관에 동의함으로써 회사가 제공하는 서비스에 투자자로서 등록하여 사이트에서 고시되는 대출채권 또는 대출 포트폴리오(온라인대출정보연계대부업자에 의해 미리 실행된 다수의 대출채권의 집합을 말하며 이하 "대출 포트폴리오"라 함)에 대해 투자 신청을 하고 투자금을 제공하는 방식으로 해당 대출채권에 참가하여 원리금수취권을 취득할 수 있습니다. 
														<br>
														<br>② 회사가 이 약관을 개정할 경우에는 개정된 약관의 적용일자 및 개정사유를 명시하여 그 적용일자 7일 이전부터 적용일자 전일까지 사이트 화면에 게시하거나 기타의 방법으로 투자자에게 공지합니다. 
														<br>
														<br>③ 회사는 재량 내에서 회사가 정한 기준에 부합하지 않거나 미달하는 회원이 서비스를 사용하는 것을 금지할 수 있습니다. 
														<br>
														<br>
														<br>제 2 조 대출의 실행 및 대출 참가 
														<br>
														<br>① 대출의 실행은 온라인대출정보연계대부업자의 대출금이 채무자의 은행계좌로 입금이 되는 것으로 실행됩니다. 대출이 실행되면 온라인대출정보연계대부업자는 채권자가 되며, 온라인대출정보연계대부업자는 해당 대출채권 또는 대출 포트폴리오에 투자한 귀하에게 귀하가 투자한 금액과 연이자율(수익률)에 해당하는 원리금수취권을 이전함으로써 대출에 대한 참가를 허용합니다. 이에 대하여 회사는 원리금수취권의 매입과 원리금 수취를 통한 분배를 대행합니다. 
														<br>
														<br>② 대출채권 및 대출 포트폴리오에 대하여 투자자가 복수일 경우에는 개별 투자자가 투자한 금액과 연이자율 만큼에 해당하는 원리금 참가 권리를 부여하며, 대출의 실행에 따른 원리금과 귀하 및 타 투자자가 참가를 통해 수취하게 되는 원리금 간에 차액이 발생할 경우에는 그 차액은 온라인대출정보연계대부업자의 재량 내에서 온라인대출정보연계대부업자가 수취하거나 채무자에게 환급될 수 있습니다. 
														<br>
														<br>③ 회사와 온라인대출정보연계대부업자는 해당 대출채권 및 대출 포트폴리오의 참가 거래에 있어서 필요한 모든 권한을 가집니다. 채권 참가 거래를 통해 귀하에게 원리금 수취권이 부여된 후에도 온라인대출정보연계대부업자는 해당 대출채권 및 대출 포트폴리오에 대한 채권자로서의 권리를 그대로 보유하며, 회사는 해당 대출채권 및 대출 포트폴리오와 관련된 서비스 권한을 갖습니다. 귀하는 어떠한 경우에도 회사와 온라인대출정보연계대부업자의 동의 없이 해당 대출채권 및 대출 포트폴리오에 대한 원금과 이자를 채무자로부터 직접 수취하거나, 상환을 종용하거나, 귀하가 보유한 원리금수취권을 제3자에게 양도할 수 없습니다. 
														<br>
														<br>④ 귀하는 온라인대출정보연계대부업자가 해당 대출채권 및 대출 포트폴리오의 채권자로서 상환금의 수령 및 채권관리, 연체 이자의 부과, 임의 상환 및 강제 상환, 추심 및 추심 위임 등의 모든 권한을 가짐을 이해하고 동의합니다. 
														<br>
														<br>
														<br>제 3 조 채권 참가의 정의 
														<br>
														<br>귀하는 사이트를 통한 투자가 실질적으로 채권 참가 행위로서, 귀하의 투자는 온라인대출정보연계대부업자가 보유한 대출채권 및 대출 포트폴리오의 원리금 수취권에 대한 매입 행위이며, 귀하의 자금으로 채무자에게 직접 대출하는 행위가 아님을 이해하고 동의합니다. 
														<br>
														<br>
														<br>제 4 조 원리금의 미보장 
														<br>
														<br>① 회사와 온라인대출정보연계대부업자는 어떠한 경우에도 귀하가 사이트를 통해 투자한 대출채권 및 대출 포트폴리오의 원리금에 대한 상환이나 수익을 보장하지 않습니다. 회사와 온라인대출정보연계대부업자는 해당 채무자들이 원리금을 상환할 경우에만 귀하가 참가한 부분에 대한 원리금을 지급하며, 사이트에서 귀하가 행하는 모든 투자 행위는 귀하의 본인의 책임입니다. 
														<br>
														<br>② 회사와 온라인대출정보연계대부업자는 귀하의 투자 행위에 대한 결과에 대해 어떠한 책임도 지지 않으며, 귀하는 어떠한 경우에도 회사와 온라인대출정보연계대부업자에게 귀하의 투자 행위에 따른 결과에 대한 법적, 사회적, 물질적 배상 및 보장을 요구할 수 없습니다. 
														<br>
														<br>③ 귀하가 사이트를 통해 투자한 상품은 해당 채무자가 연체를 하거나 원리금을 상환하지 않아서 원금과 이자의 일부 또는 전부에 대해 손실이 발생할 수 있으며, 이러한 연체 및 원리금의 손실은 귀하의 원금과 이자 및 귀하의 투자 수익률에 직접적인 영향을 끼침을 이해하고 동의합니다. 
														<br>
														<br>
														<br>제 5 조 미드레이트 엄브렐러 (Midrate Umbrella) 
														<br>
														<br>① 회사는 제4조에 따른 원금 손실을 최소화를 위해 충당금적립서비스(이하 "미드레이트 엄브렐러"라 합니다)를 운영할 수 있습니다. 미드레이트 엄브렐러는 '대출금액 3천만원 이하 채권 중 회사가 지정하고 투자자가 가입 신청한 채권'(이하 "미드레이트 엄브렐러 대상 채권"이라 합니다)으로서 채무자의 채무불이행 시 투자자의 투자원금 중 일부를 보호해주기 위한 서비스입니다.
														<br>
														<br>② 투자자는 미드레이트 엄브렐러 대상 채권에 투자 신청 시, 투자자는 미드레이트 엄브렐러의 가입 여부를 결정할 수 있습니다. 투자자가 미드레이트 엄브렐러에 가입을 선택할 경우, 미드레이트 엄브렐러 가입비(이하 "가입비"라 합니다)를 지급하며(투자자가 수취할 원리금에서 공제할 수도 있습니다), 가입비는 각 금리와 만기 별로 정해져 있어 투자 신청 시 공개됩니다. 가입비는 회사의 운영계좌와 고객의 예치금 계좌와는 분리 된 별도의 계좌에서 운영이 되며, 회사는 미드레이트 엄브렐러의 원활한 운영을 위하여  천만원을 출자하고 추후 안정된 운영을 확인한 후 회수할 수 있습니다. 
														<br>
														<br>③ 미드레이트 엄브렐러의 적립에 따르는 이자는 회사에 귀속 됩니다. 
														<br>
														<br>④ 미드레이트 엄브렐러는 약관 및 회사의 방침에 따라 운용되며, 그 방법 및 소멸 여부는 회사의 정책에 따라 변경 가능합니다. 변경 시, 관련 투자자들에게 이메일로 안내하거나 사이트에 사전에 공지합니다. 
														<br>
														<br>
														<br>제 6 조 자동투자 시스템의 이용 
														<br>
														<br>① 자동투자 시스템이란 투자자가 사전에 설정한 투자조건에 따라 회사의 사이트를 통하 자동으로 투자가 진행되는 서비스를 의미합니다. 투자자는 "자동투자모드"를 설정함으로써 자동투자 시스템을 이용할 수 있습니다.
														<br>
														<br>② 자동투자를 이용하고자 하는 투자자는 사이트의 마이페이지 내 자동투자 설정에서 기본 예치금을 자동 예치금으로 이동 후 미드레이트 엄브렐러 적용여부, 상환방식, 금액 단위, 설정이율, 투자모집금액, 미드레이트 등급, 만기, 대출 구분 상품을 설정하여야 합니다. 이와 같은 설정과 조건을 입력하고 투자 시 유의사항과 함께 설정을 저장하면 투자자는 설정한 내용을 확인할 수 있습니다. 
														<br>
														<br>③ 자동투자는 설정한 조건의 상품이 등록 될 시 대기열 순서에 따라 대출 채권에 참가하게 됩니다. 단, 자동투자 예치금이 설정한 한도 금액 보다 적을 시는 그러하지 아니합니다. 
														<br>
														<br>④ 자동투자를 이용하여 대출 채권에 참가하고 있는 경우라도 참가자는 투자 모집이 완료되기 전까지는 자기의 의사에 따라 채권 참가를 철회할 수 있습니다. 
														<br>
														<br>⑤ 자동투자를 통해 참가한 대출 채권 내역은 투자 시 등록한 SMS 및 투자채권내역에서 투자 내역을 확인 할 수 있습니다. 
														<br>
														<br>⑥ 자동투자를 설정한 참가자가 더 이상 자동투자 시스템을 이용하지 않기를 원하는 경우 자동투자 예치금을 기본 예치금으로 이동하거나 "ON-OFF" 를 클릭하여야 합니다. 이 경우 기존 설정 조건은 초기화 되며 자동투자는 더 이상 이루어지지 않습니다. 
														<br>
														<br>⑦ 자동투자를 이용하여 대출 채권에 참가한 투자자는 별도의 투자하기 절차를 거치지 아니한 경우에도 정상적으로 참가한 것으로 보며, 이후의 상환 및 연체관리 등 모든 절차에서 투자하기 일반에 의한 투자자와 동일한 지위를 가집니다. 이 경우 투자자는 해당 약관에 동의함으로써 자신이 설정한 조건에 부합하는 대출채권에 대하여 미리 참가의 의사표시를 하여 대출 채권 참여에 법률 효과를 귀속시킬 의사를 표시한 것으로 봅니다. 
														<br>
														<br>⑧ 자동투자 시스템을 이용하는 회원은 각자가 직접 설정하는 조건에 따라 대출채권에 참가하게 되므로, 설정에 따른 결과는 자동투자를 이용하는 회원 본인이 전적으로 부담하며, 회사는 그 결과에 대하여 일체의 책임을 지지 않습니다. 
														<br>
														<br>
														<br>제 7 조 원리금의 지급
														<br>
														<br>① 귀하가 투자한 대출채권 및 대출 포트폴리오의 해당되는 부분에 대한 원리금은, 대출채권의 채무자 또는 대출 포트폴리오에 포함된 채무자들이 원리금을 정해진 상환 일에 상환을 했다는 전제 하에 회사는 해당 대출채권 및 대출 포트폴리오의 원리금 수취권에 비례하여 대출 채권의 상환 일로부터 2영업일이 되는 날 또는 그 전에 지급합니다.
														<br>
														<br>② 만약 대출채권의 채무자 또는 대출 포트폴리오에 포함된 일부 채무자들이 온라인대출정보연계대부업자에 원리금의 일부만을 상환한 경우 혹은 추심을 통해 원리금의 일부만 회수된 경우에는 회사는 해당 대출채권 및 대출 포트폴리오에 참가한 투자자의 참가 금액 비율에 맞게 상환된 원리금을 분배하여 지급합니다. 
														<br>
														<br>
														<br>제 8 조 연체와 추심 
														<br>
														<br>① 대출채권의 채무자 또는 대출 포트폴리오에 포함된 일부 채무자들이 정해진 상환일까지 원금 또는 이자를 상환하지 않아서 연체가 발생할 경우, 온라인대출정보연계대부업자는 "서비스 이용약관" 및 "금전소비대차계약"에 의거하여 지연배상금(연체료, 연체이자) 및 기타부대비용을 해당 채무자에게 부과합니다. 아울러, 연체 발생 후 7일이 경과된 후에는 온라인대출정보연계대부업자는 해당 채무자의 연체 사실을 다수의 신용정보기관에 통보할 수 있습니다. 
														<br>
														<br>② 온라인대출정보연계대부업자는 필요할 경우에는 연체 중인 해당 대출채권을 외부 채권추심기관에 추심 위임할 수 있습니다. 추심 위임에 따른 수수료 및 성과보수, 법적 조치 등의 비용은 해당 대출채권의 회수금액에서 제하며, 이로 인해 투자자는 투자원금의 손실을 입을 수 있습니다. 
														<br>
														<br>
														<br>제 9 조 채권추심의 위임 등 
														<br>
														<br>① 온라인대출정보연계대부업자는 다음 각 호에 해당하는 경우 채권의 추심을 위임할 수 있습니다. 
														<br>1. 연체 60일 이상에 해당하는 경우 
														<br>2. 여신거래약관에서 규정한 "기한의 이익상실" 사유에 해당하는 경우 
														<br>3. 수차례 유선상의 연락에도 불구하고 연락이 되지 않거나 채무자가 직접 채권상환의지가 없음을 명확하게 전달하여, 현장방문 진행 등 채권의 보전을 위해 반드시 필요하다고 온라인대출정보연계대부업자가 판단한 경우 
														<br>
														<br>② 전항의 규정에 의해 채권 추심을 위임하는 경우, 채권 회수금액의 일정비율에 해당하는 추심수수료를 아래와 같이 온라인대출정보연계대부업자가 수취할 수 있으며, 이는 온라인대출정보연계대부업자가 추심을 위임한 업체에 지불하는 추심수수료 및 직접 투여한 채권추심비용의 보전을 위한 추심성공수수료를 모두 포함하고 있습니다. 
														<br>1. 채권 연체기간 6개월 미만 : 회수금액의 최대 15% 
														<br>2. 채권 연체기간 6개월 이상 12개월 미만 : 회수금액의 최대 20% 
														<br>3. 채권 연체기간 12개월 이상 : 회수금액의 최대 30% 
														<br>
														<br>③ 제1항 및 제2항에도 불구하고 온라인대출정보연계대부업자의 채권추심 또는 채권추심의 위임에 따른 법률적인 조치에 추가적으로 소요되는 비용이 발생할 수 있으며, 추심의 신속한 종료를 위해 일부 감면조치를 할 수 있습니다. 
														<br>
														<br>④ 상기의 사유 등으로 인하여 투자자는 투자원금의 손실을 입을 수 있으며, 이 경우에도 회사와 온라인대출정보연계대부업자는 대출잔여금의 전액에 대한 추심 성공을 보장할 수 없고 투자자는 투자금의 손실에 대하여 이의를 제기할 수 없습니다. 
														<br>
														<br>
														<br>제 10 조 채권의 매각 
														<br>
														<br>① 투자자가 원리금수취권을 보유하고 있는 해당 대출 건 중 투자자의 투자금과 투자수익률에 대한 손해가 발생하지 않는 대출 건에 한하여 온라인대출정보연계대부업자는 해당 채권을 매각할 수 있으며, 이 경우 해당 채권은 투자자에게 조기 상환 될 수 있습니다. 회사와 온라인대출정보연계대부업자는 채권을 매각하기 3일 전까지 이해관계 있는 투자자에게 통지하고, 해당내용을 사이트에 게시합니다. 
														<br>
														<br>② 채권을 매각하게 되는 경우 중 투자자가 원리금수취권을 보유하고 있는 해당 대출 건의 연체 일이 90일을 초과하여 손실이 발생하는 경우에 한하여 원활한 매각을 위하여 투자자의 동의를 얻어 채권을 할인하여 매각할 수 있습니다. 
														<br>
														<br>③ 온라인대출정보연계대부업자가 채권을 매각하는 경우, 온라인대출정보연계대부업자는 매각금액에서 매각에 소요되는 비용을 공제할 수 있으며, 회사는 비용이 공제된 잔여금을 자금 제공 비율에 따라 투자자에게 분배합니다. 
														<br>
														<br>④ 투자자는 채권의 매각으로 인해 투자금의 손실이 발생할 수 있습니다. 
														<br>
														<br>
														<br>제 11 조 투자·대출의 취소 
														<br>
														<br>① 회사는 귀하의 본인확인을 하는데 있어서 필요한 모든 권한을 갖습니다. 귀하는 회사가 본인확인을 위해 특정한 정보나 서류를 요청할 경우 에 그에 대해 즉각적으로 정보나 서류를 제공해야 할 의무가 있습니다. 나아가, 회사는 귀하의 본인확인이 실패하거나, 귀하의 사이트 사용 행위가 불법적이거나 비윤리적, 반사회적인 의도를 가지고 있다고 판단될 경우, 귀하에게 통지하지 않고 즉각적으로 귀하의 모든 투자 신청을 금지하거나 이미 투자 신청이 완료되어 투자금이 입금된 경우에는 그를 철회할 권한, 그리고 귀하의 투자자 자격을 정지하거나 박탈 할 권한을 갖습니다. 
														<br>
														<br>② 온라인대출정보연계대부업자는 대출 집행과 관련하여 내부 규정에 따라 서류 확인 및 신용 리스크 심사를 진행하며 기준에 부합하지 않거나 향후 현저한 위험이 예상되는 경우 투자 신청 및 투자금 모집 완료 여부에 관계 없이 해당 거래를 취소할 수 있습니다. 
														<br>
														<br>
														<br>제 12 조 투자자 보호 
														<br>회사는 'P2P대출 가이드라인'을 준수하며, 이에 따른 투자한도 및 증빙서류는 다음 각 호와 같습니다.
														<br>1.	개인투자자 
														<br>가. 투자한도 : 동일 차입자 최대 500만원, 총 누적금액 최대 2,000만원(단, 상향된 한도는 부동산 상품을 제외한 신용, 동산담보 상품 투자에 한정함.) 
														<br>나. 증빙서류 : 없음
														<br>2.	소득요건을 구비한 개인투자자 
														<br>가. 투자한도 : 동일 차입자 최대 2000만원, 총 누적금액 최대 4,000만원 
														<br>나. 증빙서류 
														<br>    (1) 종합소득 과세표준 확정신고서 혹은 종합소득세 신고서 접수증 
														<br>    (2) 사업소득없이 근로소득이 1억 원이 초과될 경우 원천징수 영수증
														<br>3.	개인 전문투자자 
														<br>가. 투자한도 : 제한 없음 
														<br>나. 증빙서류 : 금융투자협회 지정 전문투자자 확인증 
														<br>4.	법인투자자 
														<br>가. 투자한도 : 제한 없음 
														<br>나. 증빙서류 : 사업자등록증 사본 혹은 법인등록증 법인통장 사본 
														<br>
														<br>
														<br>제 13 조 서비스 사용의 금지 및 회원자격의 박탈 
														<br>
														<br>① 귀하는 어떠한 경우에도 본인 이외의 다른 사람을 대신해서 서비스를 사용하거나 원리금수취권 매입을 할 수 없습니다. 귀하가 제공한 은행계좌정보는 반드시 본인 명의의 본인 소유의 은행 계좌정보여야 합니다. 
														<br>
														<br>② 귀하는 투자자로서 신청했다 하더라도, 본인의 의사에 따라 회사가 제시하는 별도의 절차를 거쳐 채무자로 활동할 수 있습니다. 
														<br>
														<br>③ 회사는 귀하가 이 약관 및 서비스이용약관을 위반하여 사이트를 이용하거나 활동하는 경우 사이트 회원 자격을 통보 없이 박탈하고, 이후 다시는 회사가 제공하는 서비스를 사용할 수 없도록 하는 권한을 갖습니다. 아울러, 회사는 회사의 재량 내에서 귀하의 서비스 사용 및 사이트 접속을 일정 기간 또는 영구히 금지할 권한을 갖습니다. 
														<br>
														<br>④ 만약 귀하의 투자자 자격이 박탈된 시점 이전에 투자가 되어 유효한 원리금수취권을 귀하가 보유하고 있는 경우에는 해당 대출 채권은 여전히 유효하며 귀하는 채권참가자로서의 권리 및 의무를 유지합니다. 
														<br>
														<br>
														<br>제 14 조 특정 행위의 금지 
														<br>
														<br>① 귀하는 어떠한 경우에도 회사와 온라인대출정보연계대부업자의 직원, 대리인, 또는 대표자임을 사칭할 수 없습니다. 
														<br>
														<br>② 귀하는 특정 채무자를 대상으로 투자 신청이나 기타 행위를 함에 있어서 별도의 사례나 보수를 요구할 수 없습니다. 
														<br>
														<br>③ 귀하는 사이트 채무자를 대상으로 귀하나 귀하가 속한 법인의 대출상품에 대한 영업 행위, 대출신청을 받는 행위, 대출 조건을 제시하는 행위 등을 할 수 없습니다. 
														<br>
														<br>④ 귀하는 회사의 서면 허락없이 채무자나 채무자의 지인을 대상으로 직접 상환을 요청하거나 직접 추심을 진행하거나, 채무자를 대상으로 법적 소송을 제기할 수 없습니다. 
														<br>
														<br>⑤ 귀하는 회사의 동의 및 채무자의 동의 없이 직접 채무자에게 연락을 취할 수 없습니다. 
														<br>
														<br>
														<br>제 15 조 개정 
														<br>
														<br>① 회원은 이용신청 시 기재한 사항이 변경되었을 경우, 즉시 해당 사항에 대한 수정내용을 회사에 요청하여야 합니다.
														<br>
														<br>② 회원정보가 변경되었음에도 해당 사항의 수정을 요청하지 않음으로써 발생하는 각종 손해는 회원 본인이 부담하여야 합니다. 다만, 회사의 고의나 과실에 의하여 손해가 발생한 경우에는 회사가 손해를 부담합니다. 
														<br>
														<br>
														<br>제 16 조 준거법 및 관할법원 
														<br>
														<br>이 약관에 대해서는 대한민국 법령을 적용하며, 관할법원은 서울중앙지방법원으로 합니다.
														<br>
														<br>이 약관은 2019년 4월 10일부터 적용됩니다.
													</p>
												</div>
												<hr>
												<div class="row">
													<div class="col-md-push-8 col-md-4">
														<select class="form-control" id="termHisSelect">
															<option value="">이전 약관보기</option>
															<option value="20170213">2017년 2월 13일</option>
															<option value="20190409">2019년 4월 9일</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
					<!-- page end -->
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
	
</body>

</html>