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
	<script type="text/javascript">
		$(document).ready(function() {
			$("#").click(function() {
				location.href ="${pageContext.request.contextPath}/invest/invest_detail"
			});
		});
	</script>
</head>
     
<body>
<!--header start-->
	   
	    <%@ include file="../header.jsp" %>
	<section id="mypage-banner" class="text-center">
		<div class="overlay">
			<div class="section-body">
				<div class="title">마이페이지</div>
			</div>
		</div>
	</section>
    <section id="mypage-content">
		<div class="container">
			<!-- Container -->
			
				
			<div class="row">
				<div class="col-sm-12 col-md-3 col col-box">
					<div class="wrap" id="smallMenu">
						<div class="wrap">
							<div class="box quick">
								<div role="tabpanel" class="smallMenuTap">
									<!-- Nav tabs -->
									<ul class="nav nav-pills" role="tablist">
										<li id="smallMenuLi1" class="active">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;1&quot;)">
												<span class="smallMenuItem">대시보드</span>
											</a>
										</li>
										<li id="smallMenuLi2">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;2&quot;)">
												<span class="smallMenuItem">투자 내역</span>
											</a>
										</li>
										<li id="smallMenuLi3">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;3&quot;)">
												<span class="smallMenuItem">자동투자 설정</span>
											</a>
										</li>
										<li id="smallMenuLi4">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;4&quot;)">
												<span class="smallMenuItem">대출 내역</span>
											</a>
										</li>
										<li id="smallMenuLi5">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;5&quot;)">
												<span class="smallMenuItem">예치금 관리</span>
											</a>
										</li>
										<li id="smallMenuLi6">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;6&quot;)">
												<span class="smallMenuItem">포인트 관리</span>
											</a>
										</li>
										<li id="smallMenuLi9">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;9&quot;)">
												<span class="smallMenuItem">이벤트</span>
											</a>
										</li>
										<li id="smallMenuLi7">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;7&quot;)">
												<span class="smallMenuItem">크리에이터 알림</span>
											</a>
										</li>
										<li id="smallMenuLi8">
											<a href="javascript:(void(0));" onclick="gfn_goMypageMenu(&quot;8&quot;)">
												<span class="smallMenuItem">기본 정보 수정</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
					
					<div class="wrap">
						<div class="box left">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="cusNm">김도엽</span>&nbsp;
									
										님
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<span class="invstrTypeNm">개인투자자</span>
									
										<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>금융위원회의 가이드라인에 따라 아래와 같은 투자자 구분에 의한 인증 서류를 제출 시 해당 투자 한도가 적용됩니다.</strong>
															<br>1. 개인투자자
															<br> - 동일차입자 500만원, 총 2,000만원
															<br> ※ 단, 부동산 상품이면 총 1,000만원
															<br> - 제출서류 없음
															<br>
															<br>2. 소득요건을 구비한 개인투자자
															<br> - 동일차입자 2,000만원, 총 4,000만원
															<br> - 아래 요건 중 하나 이상 해당 시 종합소득 과세표준 확정신고서, 종합소득세 신고서 접수증 제출
															<br>  1) 이자, 배당소득이 2천만원(종합과세기준금액)을 초과하는 자
															<br>  2) 사업, 근로소득 1억원을 초과하는 자
															<br>  3) 그 밖에 창업자·벤처기업 등에 대한 투자의 전문성 등을 고려하여 금융위원회가 정하여 고시하는 자
															<br>
															<br>3. 개인전문투자자 : 제한없음 
															<br> - 아래 세가지 요건 모두 충족 시, 금융투자협회 전문투자자 확인증 제출
															<br>  1) 금융 투자업자에게 계좌 개설 1년 경과
															<br>  2) 금융 투자 상품 잔고 5억원 이상
															<br>  3) 소득액 1억원 또는 재산가액 10억원 이상
															<br>
															<br>※ 인증서류 제출 : 고객센터(contact@creator.co.kr)" data-original-title="" title="">
										</span>
									
									
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-10 col-sm-11 col-md-10" style="margin-top: 8px;">
									<span class="email">whitesky1203@naver.com</span>
								</div>
								<div class="col-xs-2 col-sm-1 col-md-1" style="margin-top: 8px;">
									<div id="depositUnFold" style="display: none;cursor: pointer;">
										<i class="glyphicon glyphicon-menu-down"></i>
									</div>
									<div id="depositFold" style="cursor: pointer;">
										<i class="glyphicon glyphicon-menu-up"></i>
									</div>
								</div>
							</div>
							<div id="deposit-div" style="">
								<div class="deposit-box">
									<div class="row">
										<div class="col-xs-7">
											<span class="myDeposit">기본 예치금</span>
										</div>
										<div class="col-xs-5 text-right">
											<a href="/mypage/5#listWrap">
												<span class="tranList font-purple"><strong>거래 내역 &gt;</strong></span>
											</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">원</font></span>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;">
										<div class="col-xs-7">
											<span class="myDeposit">자동투자 예치금</span>
										</div>
										<div class="col-xs-5 text-right">
											<a href="/mypage/3#listWrap">
											<span class="tranList font-purple"><strong>투자 설정 &gt;</strong></span>
										</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">원</font></span>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;">
										<div class="col-xs-6">
											<span class="myDeposit">퍼플포인트</span>
										</div>
										<div class="col-xs-6 text-right">
											<a href="/mypage/6">
											<span class="tranList font-purple"><strong>포인트 내역 &gt;</strong></span>
										</a>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 text-right" style="margin-top: 5px;">
											<span class="amt">0 <font size="2">pp</font></span>
										</div>
									</div>
								</div>
								<div class="account-box">
									
									
									<div class="row">
										<div class="col-xs-12">
											<span class="account">예치금 계좌 <a href="/mypage/5" class="font-red"><strong>미발급 상태</strong></a>입니다.</span>
										</div>
									</div>
									
								</div>
								<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_setMenu('5')" style="margin-top: 4px;">나의 예치금</button>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="largeMenu">
						<div class="menu">
							<div class="item active" id="menu2">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_invest_list.png">
								<span class="text" id="menuL2">투자 내역</span>
							</div>
							<div class="item" id="menu3">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_auto_invest.png">
								<span class="text" id="menuL3">자동투자 설정</span>
							</div>
							<div class="item" id="menu4">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span>
							</div>
							<div class="item" id="menu5">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw.png">
								<span class="text" id="menuL5">예치금 관리</span>
							</div>
							<div class="item" id="menu6">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw2.png">
								<span class="text" id="menuL6">포인트 관리</span>
							</div>
							<div class="item" id="menu9">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_event.png">
								<span class="text" id="menuL9">이벤트</span>
								<!-- 
								 <span class="newMenu">new</span>
								 -->
							</div>
							<div class="item" id="menu7">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_alarm.png">
								<span class="text" id="menuL7">크리에이터 알림</span>
							</div>
							<div class="item" id="menu8">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span>
							</div>
						</div>
					</div>
					
				</div>
				
				<div class="col-sm-12 col-md-9 col col-box" id="mypage-main" style="padding-left: 0px;padding-right: 0px;">
					
						
							


<!-- 버블챠트 -->
<script type="text/javascript" src="/js/waterbubble.min.js"></script>

<!-- 하프게이지/파이챠트 -->
<script type="text/javascript" src="/js/RGraph.common.core.js"></script>
<script type="text/javascript" src="/js/RGraph.common.tooltips.js"></script>
<script type="text/javascript" src="/js/RGraph.common.dynamic.js"></script>
<script type="text/javascript" src="/js/RGraph.common.effects.js"></script>
<script type="text/javascript" src="/js/RGraph.meter.js"></script>
<script type="text/javascript" src="/js/RGraph.pie.js"></script>

<!-- 세로 바 챠트 -->
<script type="text/javascript" src="/js/highcharts/highcharts.js"></script>
<script type="text/javascript" src="/js/highcharts/data.js"></script>
<script type="text/javascript" src="/js/highcharts/drilldown.js"></script>

<!-- 스코어 챠트 -->
<script type="text/javascript" src="/js/highcharts/exporting.js"></script>

<!-- full calendar -->
<link rel="stylesheet" type="text/css" href="/css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="/css/fullcalendar.print.css" media="print">
<script type="text/javascript" src="/js/fullcalendar/moment.min.js"></script>
<script type="text/javascript" src="/js/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="/js/fullcalendar/locale/ko.js"></script>

<script type="text/javascript">
	// 날짜 세팅 전역변수
	var today=new Date();
	var y=today.getFullYear();
	var M=today.getMonth();
	var d=today.getDate();
	M = checkDate(M);
	M = checkTime(M);
	d = checkTime(d);
	var gvar_curDate=y+"-"+M+"-"+d;
	
	// 탭 이동 전역변수
	var gvar_myInvestTabOn = "N";
	var gvar_myAssetsTabOn = "N";
	var gvar_myEventTabOn = "N";
	
	$(function() {
		$('#a[data-toggle="tab"]').on('click', function(e) {
			e.preventDefault();
			$(e.target).closest('ul').hide().prev('a').removeClass('open').text($(this).text());
		});

		$('#dashBoardTab a').on('shown.bs.tab', function(e) {
			e.preventDefault();
			$(this).tab('show');

			var tabId = $(this).attr('id');
			if(tabId == "myInvest") {
				if(gvar_myInvestTabOn == "N") {
					fn_selectDashBoardInvestInfo();
				}
			} else if(tabId == "myAssets") {
				if(gvar_myAssetsTabOn == "N") {
					fn_selectDashBoardAssetsInfo();
				}
			} else if(tabId == "myEvent") {
				if(gvar_myEventTabOn == "N") {
					fn_selectDashBoardEventInfo();
				}
			}
		});

		$("#autoInvestBtn").on("click", function() {
			location.href = "/mypage/3";
		});

		// 툴팁
		$('[data-toggle="tooltip"]').tooltip();

		// 팝오버 초기화
		$('[data-toggle="popover"]').popover();

		//$('#onLoading').hide();
		fn_selectDashBoardInvestInfo();
	});

	function fn_selectDashBoardInvestInfo() {
		var url = "/mypage/selectDashBoardInvestInfo";
		$.ajax({
			url : url,
			type : 'POST',
			dataType : 'JSON',
			data : {
				CUS_NO : "1000009711"
			},
			success : function(data) {
				fn_selectDashBoardInvestInfoCallback(data);
			},
			beforeSend : function() {
				$('#onLoading').fadeIn();
			},
			complete : function() {
				$('#onLoading').hide();
			}
		});
	}

	function fn_selectDashBoardInvestInfoCallback(data) {
		gvar_myInvestTabOn = "Y";
		var INVSTR_TYPE_LMT_A_AMT = data.investSumMap.INVSTR_TYPE_LMT_A_AMT;
		var INVSTR_TYPE_LMT_B_AMT = data.investSumMap.INVSTR_TYPE_LMT_B_AMT;
		var INVSTR_TYPE_LMT_AMT = Math.max(INVSTR_TYPE_LMT_A_AMT, INVSTR_TYPE_LMT_B_AMT);
		var BNFT_RATE = data.investSumMap.BNFT_RATE;
		
		$("span[name=INVSTR_TYPE_LMT_AMT]").text(comma(INVSTR_TYPE_LMT_AMT));
		$("span[name=INVSTR_TYPE_LMT_A_AMT]").text(comma(INVSTR_TYPE_LMT_A_AMT));
		$("span[name=INVSTR_TYPE_LMT_B_AMT]").text(comma(INVSTR_TYPE_LMT_B_AMT));
		$("span[name=BNFT_RATE]").text(BNFT_RATE);

		var INVEST_AMT_A = data.sumStatsMap.INVEST_AMT_A;
		var INVEST_CNT_A = data.sumStatsMap.INVEST_CNT_A;
		var INVEST_AMT_B = data.sumStatsMap.INVEST_AMT_B;
		var INVEST_CNT_B = data.sumStatsMap.INVEST_CNT_B;
		var INVEST_AMT_C = data.sumStatsMap.INVEST_AMT_C;
		var INVEST_CNT_C = data.sumStatsMap.INVEST_CNT_C;
		var INVEST_AMT_D = data.sumStatsMap.INVEST_AMT_D;
		var INVEST_CNT_D = data.sumStatsMap.INVEST_CNT_D;
		var INVEST_AMT_E = data.sumStatsMap.INVEST_AMT_E;
		var INVEST_CNT_E = data.sumStatsMap.INVEST_CNT_E;
		var INVEST_AMT_F = data.sumStatsMap.INVEST_AMT_F;
		var INVEST_CNT_F = data.sumStatsMap.INVEST_CNT_F;
		$("span[name=INVEST_AMT_A]").text(comma(INVEST_AMT_A));
		$("span[name=INVEST_CNT_A]").text(comma(INVEST_CNT_A));
		$("span[name=INVEST_AMT_B]").text(comma(INVEST_AMT_B));
		$("span[name=INVEST_CNT_B]").text(comma(INVEST_CNT_B));
		$("span[name=INVEST_AMT_C]").text(comma(INVEST_AMT_C));
		$("span[name=INVEST_CNT_C]").text(comma(INVEST_CNT_C));
		$("span[name=INVEST_AMT_D]").text(comma(INVEST_AMT_D));
		$("span[name=INVEST_CNT_D]").text(comma(INVEST_CNT_D));
		$("span[name=INVEST_AMT_E]").text(comma(INVEST_AMT_E));
		$("span[name=INVEST_CNT_E]").text(comma(INVEST_CNT_E));
		$("span[name=INVEST_AMT_F]").text(comma(INVEST_AMT_F));
		$("span[name=INVEST_CNT_F]").text(comma(INVEST_CNT_F));
		$("span[name=TOTAL_INVEST_AMT]").text(comma(INVEST_AMT_A));
		$("span[name=INVEST_REQ_AMT]").text(comma(INVEST_AMT_B));

		if(INVEST_CNT_A == 0) { // 한번도 투자한 적이 없을 때
			$('#myInvestDiv0').fadeIn();
			$('#myInvestDiv1').hide();
			$('#myInvestDiv2').hide();
		} else {
			$('#myInvestDiv0').hide();
			$('#myInvestDiv1').fadeIn();
			$('#myInvestDiv2').fadeIn();
		}

		var ma_prcnt = data.grdCntMap.MA;
		var mb_prcnt = data.grdCntMap.MB;
		var mc_prcnt = data.grdCntMap.MC;
		var md_prcnt = data.grdCntMap.MD;
		var me_prcnt = data.grdCntMap.ME;
		var mf_prcnt = data.grdCntMap.MF;
		var mg_prcnt = data.grdCntMap.MG;

		var gradeDataArr = new Array();
		var gradeLabelsArr = new Array();
		var colorsArr = new Array();
		var index = 0;

		if(ma_prcnt != 0) {
			gradeDataArr.push(parseInt(ma_prcnt));
			gradeLabelsArr.push(ma_prcnt + '%');
			colorsArr.push('#ac7fad');
		}

		if(mb_prcnt != 0) {
			gradeDataArr.push(parseInt(mb_prcnt));
			gradeLabelsArr.push(mb_prcnt + '%');
			colorsArr.push('#8282cc');
		}

		if(mc_prcnt != 0) {
			gradeDataArr.push(parseInt(mc_prcnt));
			gradeLabelsArr.push(mc_prcnt + '%');
			colorsArr.push('#99e0e0');
		}

		if(md_prcnt != 0) {
			gradeDataArr.push(parseInt(md_prcnt));
			gradeLabelsArr.push(md_prcnt + '%');
			colorsArr.push('#93d193');
		}

		if(me_prcnt != 0) {
			gradeDataArr.push(parseInt(me_prcnt));
			gradeLabelsArr.push(me_prcnt + '%');
			colorsArr.push('#fae053');
		}

		if(mf_prcnt != 0) {
			gradeDataArr.push(parseInt(mf_prcnt));
			gradeLabelsArr.push(mf_prcnt + '%');
			colorsArr.push('#e1b48f');
		}

		if(mg_prcnt != 0) {
			gradeDataArr.push(parseInt(mg_prcnt));
			gradeLabelsArr.push(mg_prcnt + '%');
			colorsArr.push('#e08484');
		}

		var gradeData = gradeDataArr;
		var gradeLabels = gradeLabelsArr;

		// 등급 파이 챠트
		var pie = new RGraph.Pie({
			id : 'gradeChart',
			data : gradeData,
			options : {
				strokestyle : 'white',
				colors : colorsArr,
				linewidth : 2,
				exploded : [],
				shadowOffsetx : 0,
				shadowOffsety : 0,
				shadowBlur : 0,
				textColor : '#3d3d3d',
				textSize : 10,
				labels : gradeLabels,
				labelsSticks : false,
				clearto : 'white',
				gutterLeft : 40,
				gutterRight : 40,
				gutterTop : 40,
				gutterBottom : 40
			}
		}).roundRobin();

		var LOAN_TYPE_CNT_1 = data.loanTypeMap.LOAN_TYPE_CNT_1;
		var LOAN_TYPE_CNT_2 = data.loanTypeMap.LOAN_TYPE_CNT_2;
		var LOAN_TYPE_CNT_3 = data.loanTypeMap.LOAN_TYPE_CNT_3;
		var LOAN_TYPE_CNT_4 = data.loanTypeMap.LOAN_TYPE_CNT_4;
		var LOAN_TYPE_CNT_5 = data.loanTypeMap.LOAN_TYPE_CNT_5;

		var LOAN_TYPE_CNT_1_STR = "";
		var LOAN_TYPE_CNT_2_STR = "";
		var LOAN_TYPE_CNT_3_STR = "";
		var LOAN_TYPE_CNT_4_STR = "";
		var LOAN_TYPE_CNT_5_STR = "";

		if(LOAN_TYPE_CNT_1 > 0)
			LOAN_TYPE_CNT_1_STR = LOAN_TYPE_CNT_1 + '건';
		if(LOAN_TYPE_CNT_2 > 0)
			LOAN_TYPE_CNT_2_STR = LOAN_TYPE_CNT_2 + '건';
		if(LOAN_TYPE_CNT_3 > 0)
			LOAN_TYPE_CNT_3_STR = LOAN_TYPE_CNT_3 + '건';
		if(LOAN_TYPE_CNT_4 > 0)
			LOAN_TYPE_CNT_4_STR = LOAN_TYPE_CNT_4 + '건';
		if(LOAN_TYPE_CNT_5 > 0)
			LOAN_TYPE_CNT_5_STR = LOAN_TYPE_CNT_5 + '건';

		var loanTypeData = [ parseInt(LOAN_TYPE_CNT_1),
				parseInt(LOAN_TYPE_CNT_2), parseInt(LOAN_TYPE_CNT_3),
				parseInt(LOAN_TYPE_CNT_4), parseInt(LOAN_TYPE_CNT_5) ];
		var loanTypeLabels = [ LOAN_TYPE_CNT_1_STR, LOAN_TYPE_CNT_2_STR,
				LOAN_TYPE_CNT_3_STR, LOAN_TYPE_CNT_4_STR, LOAN_TYPE_CNT_5_STR ];

		// 상품종류 파이 챠트
		var pie = new RGraph.Pie({
			id : 'loanTypeChart',
			data : loanTypeData,
			options : {
				strokestyle : 'white',
				colors : [ '#d5cfeb', '#b69cde', '#9f9fd1', '#c492c4',
						'#712594' ],
				linewidth : 2,
				exploded : [],
				shadowOffsetx : 0,
				shadowOffsety : 0,
				shadowBlur : 0,
				textColor : '#3d3d3d',
				textSize : 10,
				textFont : 'Noto Sans',
				labels : loanTypeLabels,
				labelsSticks : false,
				clearto : 'white',
				gutterLeft : 40,
				gutterRight : 40,
				gutterTop : 40,
				gutterBottom : 40
			}
		}).roundRobin();

		// 세로 바 챠트
		Highcharts.setOptions({
			colors : [ '#9f9fd1', '#b69cde', '#712594', '#c492c4' ]
		});

		var INVEST_RATE_1 = data.investRateMap.INVEST_RATE_1;
		var INVEST_RATE_2 = data.investRateMap.INVEST_RATE_2;
		var INVEST_RATE_3 = data.investRateMap.INVEST_RATE_3;
		var INVEST_RATE_4 = data.investRateMap.INVEST_RATE_4;

		$('#rateChart').highcharts({
			chart : {
				height : 270,
				backgroundColor : '#fff',
				type : 'column'
			},
			title : {
				margin : 30,
				text : ''
			},
			credits : {
				enabled : false
			},
			xAxis : {
				type : 'category'
			},
			yAxis : {
				title : {
					text : ''
				}
			},
			legend : {
				enabled : false
			},
			plotOptions : {
				series : {
					borderWidth : 0,
					dataLabels : {
						enabled : true,
						format : '{point.y:.1f}%',
						style : {
							fontWeight : 'normal'
						}
					}
				}
			},
			tooltip : {
				headerFormat : '',
				pointFormat : '<b>{point.y:.2f}%</b>',
				enabled : false
			},
			series : [ {
				name : '금리',
				colorByPoint : true,
				data : [ {
					name : '10% 미만',
					y : parseFloat(INVEST_RATE_1),
					drilldown : null
				}, {
					name : '10~12%',
					y : parseFloat(INVEST_RATE_2),
					drilldown : null
				}, {
					name : '12.1~15%',
					y : parseFloat(INVEST_RATE_3),
					drilldown : null
				}, {
					name : '15%초과',
					y : parseFloat(INVEST_RATE_4),
					drilldown : null
				} ]
			} ]
		});
	}

	function fn_selectDashBoardAssetsInfo() {
		var url = "/mypage/selectDashBoardAssetsInfo";
		$.ajax({
			url : url,
			type : 'POST',
			dataType : 'JSON',
			data : {
				CUS_NO : "1000009711"
			},
			success : function(data) {
				fn_selectDashBoardAssetsInfoCallback(data);
			},
			beforeSend : function() {
				$('#onLoading').fadeIn();
			},
			complete : function() {
				$('#onLoading').fadeOut();
			}
		});
	}

	function fn_selectDashBoardAssetsInfoCallback(data) {
		gvar_myAssetsTabOn = "Y";

		var DEPOSIT_AMT = parseInt("0");
		var AUTO_DEPOSIT_AMT = parseInt("0");
		var ACC_PRNCPL_DSTRBTN_AMT = data.investStatsMap.ACC_PRNCPL_DSTRBTN_AMT;
		var ACC_INTRST_DSTRBTN_AMT = data.investStatsMap.ACC_INTRST_DSTRBTN_AMT;
		var ACC_TAX_AMT = data.investStatsMap.ACC_TAX_AMT;
		var ACC_INVEST_CMMTN_AMT = data.investStatsMap.ACC_INVEST_CMMTN_AMT;
		var ACC_UMBRELLAR_AMT = data.investStatsMap.ACC_UMBRELLAR_AMT;
		var TOTAL_ACC_DSTRBTN_AMT = data.investStatsMap.ACC_DSTRBTN_AMT;
		var REST_PRNCPL_DSTRBTN_AMT = data.investStatsMap.REST_PRNCPL_DSTRBTN_AMT;
		var INVEST_REQ_AMT = parseInt($("span[name=INVEST_REQ_AMT]").text().replace(/,/gi, ""));
		var TOTAL_INVEST_AMT = parseInt($("span[name=TOTAL_INVEST_AMT]").text().replace(/,/gi, ""));
		var DSTRBTN_AMT = data.investStatsMap.DSTRBTN_AMT;
		var TOTAL_ASSET_AMT = DEPOSIT_AMT + AUTO_DEPOSIT_AMT
				+ REST_PRNCPL_DSTRBTN_AMT + INVEST_REQ_AMT;
		var ACC_INTRST_AMT = data.investStatsMap.ACC_INTRST_DSTRBTN_AMT
				- data.investStatsMap.ACC_TAX_AMT
				- data.investStatsMap.ACC_INVEST_CMMTN_AMT;
		var EXCPT_INTRST_AMT = data.investStatsMap.REST_INTRST_DSTRBTN_AMT
				- data.investStatsMap.REST_TAX_AMT
				- data.investStatsMap.REST_INVEST_CMMTN_AMT;
		var TOTAL_EXCPT_INTRST_AMT = data.investStatsMap.ACC_INTRST_DSTRBTN_AMT
				- data.investStatsMap.ACC_TAX_AMT
				- data.investStatsMap.ACC_INVEST_CMMTN_AMT
				+ data.investStatsMap.REST_INTRST_DSTRBTN_AMT
				- data.investStatsMap.REST_TAX_AMT
				- data.investStatsMap.REST_INVEST_CMMTN_AMT;
		var ACC_DSTRBTN_CNT = data.totalMap.ACC_DSTRBTN_CNT;
		var ACC_DSTRBTN_AMT = data.totalMap.ACC_DSTRBTN_AMT;
		var REST_DSTRBTN_CNT = data.totalMap.REST_DSTRBTN_CNT;
		var REST_DSTRBTN_AMT = data.totalMap.REST_DSTRBTN_AMT;
		var TRAN_AMT = data.totalMap.TRAN_AMT;

		$("span[name=ACC_PRNCPL_DSTRBTN_AMT]").text(comma(ACC_PRNCPL_DSTRBTN_AMT));
		$("span[name=ACC_INTRST_DSTRBTN_AMT]").text(comma(ACC_INTRST_DSTRBTN_AMT));
		$("span[name=ACC_TAX_AMT]").text(comma(ACC_TAX_AMT));
		$("span[name=ACC_INVEST_CMMTN_AMT]").text(comma(ACC_INVEST_CMMTN_AMT));
		$("span[name=ACC_UMBRELLAR_AMT]").text(comma(ACC_UMBRELLAR_AMT));
		$("span[name=TOTAL_ACC_DSTRBTN_AMT]").text(comma(TOTAL_ACC_DSTRBTN_AMT));
		$("span[name=REST_PRNCPL_DSTRBTN_AMT]").text(comma(REST_PRNCPL_DSTRBTN_AMT));
		$("span[name=TOTAL_ASSET_AMT]").text(comma(TOTAL_ASSET_AMT));
		$("span[name=ACC_INTRST_AMT]").text(comma(ACC_INTRST_AMT));
		$("span[name=EXCPT_INTRST_AMT]").text(comma(EXCPT_INTRST_AMT));
		$("span[name=TOTAL_EXCPT_INTRST_AMT]").text(comma(TOTAL_EXCPT_INTRST_AMT));
		$("span[name=DSTRBTN_AMT]").text(comma(DSTRBTN_AMT));
		$("span[name=ACC_DSTRBTN_CNT]").text(comma(ACC_DSTRBTN_CNT));
		$("span[name=ACC_DSTRBTN_AMT]").text(comma(ACC_DSTRBTN_AMT));
		$("span[name=REST_DSTRBTN_CNT]").text(comma(REST_DSTRBTN_CNT));
		$("span[name=REST_DSTRBTN_AMT]").text(comma(REST_DSTRBTN_AMT));
		$("span[name=TRAN_AMT]").text(comma(TRAN_AMT));

		var INVEST_CNT_A = parseInt($("span[name=INVEST_CNT_A]").text().replace(/,/gi, ""));
		$('#myAssetsDiv1').fadeIn();
		if(INVEST_CNT_A == 0) { // 한번도 투자한 적이 없을 때
			$('#myAssetsDiv2').hide();
			$('#myAssetsDiv3').hide();
		} else {
			$('#myAssetsDiv2').fadeIn();
			$('#myAssetsDiv3').fadeIn();
		}

		var REPAY_PCNT = 0;
		if(TOTAL_INVEST_AMT == 0 && ACC_PRNCPL_DSTRBTN_AMT == 0) {
			REPAY_PCNT = 0;
		} else {
			REPAY_PCNT = ACC_PRNCPL_DSTRBTN_AMT / TOTAL_INVEST_AMT * 100;
		}
		$('#repayWaterbubbleChart').waterbubble({
			radius : 100,	// bubble size
			lineWidth : 5,	// border width
			data : REPAY_PCNT / 100,	// data to present
			waterColor : 'rgba(113,37,148,1)',	// color of the water bubble
			textColor : 'rgba(179,134,180,0.8)',	// text color
			font : '',	// custom font family
			wave : true,	// show wave
			txt : Math.round(REPAY_PCNT * 10) / 10 + '%',	// custom text displayed inside the water bubble
			animation : true	// enable water fill animation
		});
		
		// 연간 원금 on/off
		$("#showYearPrncplA").on("click", function() {
			$('#yearPrncplDiv').removeClass("animated fadeOut");
			$('#yearPrncplDiv').addClass("animated fadeIn");
			$('#yearPrncplDiv').show();
			$('#showYearPrncplA').hide();
			$('#hideYearPrncplA').show();
		});
		
		$("#hideYearPrncplA").on("click", function() {
			$('#yearPrncplDiv').removeClass("animated fadeIn");
			$('#yearPrncplDiv').addClass("animated fadeOut");
			$('#yearPrncplDiv').hide();
			$('#showYearPrncplA').show();
			$('#hideYearPrncplA').hide();
		});
		
		var str = "";
		$.each(data.yearAccList, function(key, value){
			str += "<div class=\"row\">";
			str += "	<div class=\"col-xs-7 col-sm-7 col-md-7\">";
			str += "		└ " + value.RND_DSTRBTN_YEAR + " 년";
			str += "	</div>";
			str += "	<div class=\"col-xs-5 col-sm-5 col-md-5 text-right\">";
			str += "		" + comma(value.ACC_PRNCPL_DSTRBTN_AMT) + " 원";
			str += "	</div>";
			str += "</div>";
		});
		str += "<br>";
		$('#yearPrncplDiv').html(str);
		
		// 연간 이자수익 on/off
		$("#showYearIntrstA").on("click", function() {
			$('#yearIntrstDiv').removeClass("animated fadeOut");
			$('#yearIntrstDiv').addClass("animated fadeIn");
			$('#yearIntrstDiv').show();
			$('#showYearIntrstA').hide();
			$('#hideYearIntrstA').show();
		});
		
		$("#hideYearIntrstA").on("click", function() {
			$('#yearIntrstDiv').removeClass("animated fadeIn");
			$('#yearIntrstDiv').addClass("animated fadeOut");
			$('#yearIntrstDiv').hide();
			$('#showYearIntrstA').show();
			$('#hideYearIntrstA').hide();
		});
		
		str = "";
		$.each(data.yearAccList, function(key, value){
			str += "<div class=\"row\">";
			str += "	<div class=\"col-xs-7 col-sm-7 col-md-7\">";
			str += "		└ " + value.RND_DSTRBTN_YEAR + " 년";
			str += "	</div>";
			str += "	<div class=\"col-xs-5 col-sm-5 col-md-5 text-right\">";
			str += "		" + comma(value.ACC_INTRST_DSTRBTN_AMT) + " 원";
			str += "	</div>";
			str += "</div>";
		});
		str += "<br>";
		$('#yearIntrstDiv').html(str);
		
		// 연간 세금 on/off
		$("#showYearTaxA").on("click", function() {
			$('#yearTaxDiv').removeClass("animated fadeOut");
			$('#yearTaxDiv').addClass("animated fadeIn");
			$('#yearTaxDiv').show();
			$('#showYearTaxA').hide();
			$('#hideYearTaxA').show();
		});
		
		$("#hideYearTaxA").on("click", function() {
			$('#yearTaxDiv').removeClass("animated fadeIn");
			$('#yearTaxDiv').addClass("animated fadeOut");
			$('#yearTaxDiv').hide();
			$('#showYearTaxA').show();
			$('#hideYearTaxA').hide();
		});
		
		str = "";
		$.each(data.yearAccList, function(key, value){
			str += "<div class=\"row\">";
			str += "	<div class=\"col-xs-7 col-sm-7 col-md-7\">";
			str += "		└ " + value.RND_DSTRBTN_YEAR + " 년";
			str += "	</div>";
			str += "	<div class=\"col-xs-5 col-sm-5 col-md-5 text-right\">";
			str += "		" + comma(value.ACC_TAX_AMT) + " 원";
			str += "	</div>";
			str += "</div>";
		});
		str += "<br>";
		$('#yearTaxDiv').html(str);
		
		// 누적 지급액(세후) on/off
		$("#showYearTotalA").on("click", function() {
			$('#yearTotalDiv').removeClass("animated fadeOut");
			$('#yearTotalDiv').addClass("animated fadeIn");
			$('#yearTotalDiv').show();
			$('#showYearTotalA').hide();
			$('#hideYearTotalA').show();
		});
		
		$("#hideYearTotalA").on("click", function() {
			$('#yearTotalDiv').removeClass("animated fadeIn");
			$('#yearTotalDiv').addClass("animated fadeOut");
			$('#yearTotalDiv').hide();
			$('#showYearTotalA').show();
			$('#hideYearTotalA').hide();
		});
		
		str = "";
		$.each(data.yearAccList, function(key, value){
			str += "<div class=\"row\">";
			str += "	<div class=\"col-xs-7 col-sm-7 col-md-7\">";
			str += "		└ " + value.RND_DSTRBTN_YEAR + " 년";
			str += "	</div>";
			str += "	<div class=\"col-xs-5 col-sm-5 col-md-5 text-right\">";
			str += "		" + comma(value.ACC_DSTRBTN_AMT) + " 원";
			str += "	</div>";
			str += "</div>";
		});
		$('#yearTotalDiv').html(str);
		
		
		// 플랫폼 수수료 on/off
		$("#showYearCmmtnA").on("click", function() {
			$('#yearCmmtnDiv').removeClass("animated fadeOut");
			$('#yearCmmtnDiv').addClass("animated fadeIn");
			$('#yearCmmtnDiv').show();
			$('#showYearCmmtnA').hide();
			$('#hideYearCmmtnA').show();
		});
		
		$("#hideYearCmmtnA").on("click", function() {
			$('#yearCmmtnDiv').removeClass("animated fadeIn");
			$('#yearCmmtnDiv').addClass("animated fadeOut");
			$('#yearCmmtnDiv').hide();
			$('#showYearCmmtnA').show();
			$('#hideYearCmmtnA').hide();
		});
		
		str = "";
		$.each(data.yearAccList, function(key, value){
			str += "<div class=\"row\">";
			str += "	<div class=\"col-xs-7 col-sm-7 col-md-7\">";
			str += "		└ " + value.RND_DSTRBTN_YEAR + " 년";
			str += "	</div>";
			str += "	<div class=\"col-xs-5 col-sm-5 col-md-5 text-right\">";
			str += "		" + comma(value.ACC_INVEST_CMMTN_AMT) + " 원";
			str += "	</div>";
			str += "</div>";
		});
		str += "<br>";
		$('#yearCmmtnDiv').html(str);
	}

	function fn_selectDashBoardEventInfo() {
		gvar_myEventTabOn = "Y";

		// 출석일 세팅
		fn_selectCusAttndList();
		// 누적 출석포인트 세팅
		var attndPointSum = "0";
		$("#attndPointSum").html(comma(attndPointSum));
		// fullCalendar 세팅
		fn_setFullCalendar();
	}

	function fn_setFullCalendar() {
		$('#calendar').fullCalendar({
			// Header Section Including Previous,Next and Today
			header : {
				left : '',
				center : 'title',
				right : ''
			},
			weekends : true,
			//defaultView: 'basicWeek',
			//defaultDate: '2015-02-12',
			views : {
				month : { // name of view
					titleFormat : 'YYYY년 M월'
				}
			},
			editable : false,
			aspectRatio : 1.7,
			weekMode : 'variable',
			dayRender : function(date, cell) {
				if(fn_checkAttendedDate(date) == "purple") {
					cell.css('background', 'url(/images/mypage/img_attended.png) center 0% no-repeat');
					cell.css('background-size', 'contain');
				} else if(fn_checkAttendedDate(date) == "gray") {
					cell.css('background', 'url(/images/mypage/img_attend_on.png) center 0% no-repeat');
					cell.css('background-size', 'contain');
					cell.css('cursor', 'pointer');
					cell.addClass("animated infinite flash animation-3s");
				} else {
				}
			},
			dayClick : function(date, jsEvent, view) {
				if(gvar_curDate == date.format()) {
					fn_insertCusAttnd();
				}
			}
		});
	}

	function checkTime(i) {
		if(i < 10) {	// add zero in front of numbers < 10
			i = "0" + i;
		}
		return i;
	}

	function checkDate(i) {
		i = i + 1;	// to adjust real month
		return i;
	}

	function fn_selectCusAttndList() {
		var CUS_NO = "1000009711";
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectCusAttndList");
		comAjax.setCallback("fn_selectCusAttndListCallback");
		comAjax.addParam("CUS_NO", CUS_NO);
		comAjax.ajax();
	}

	function fn_selectCusAttndListCallback(data) {
		$("#cusAttndArrStr").val(data.cusAttndArrStr);
	}

	function fn_checkAttendedDate(date) {
		var returnVal = "";
		var cusAttndArrStr = $("#cusAttndArrStr").val();
		if(cusAttndArrStr.indexOf(date.format()) > -1) {
			returnVal = "purple";
		} else {
			if(gvar_curDate == date.format()) {
				returnVal = "gray";
			}
		}
		return returnVal;
	}

	/*function fn_insertCusAttnd() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/insertCusAttnd");
		comAjax.setCallback("fn_insertCusAttndCallback");
		comAjax.addParam("ATTND_DATE", gvar_curDate);
		comAjax.ajax();
	}

	function fn_insertCusAttndCallback(data) {
		if(data.resultYn == "Y") {
			$("#insertCusAttndYn").val("Y");
		} else if(data.resultYn == "N") {
			alert(data.resultMsg);
			gfn_goMypageMenu('1');
			$("#insertCusAttndYn").val("N");
		} else {
			alert("출석 체크 중 오류가 발생했습니다. 고객센터로 문의하세요.");
			$("#insertCusAttndYn").val("N");
		}
	}*/
</script>
					<div class="wrap" style="box-sizing: border-box;">
						<div role="tabpanel" style="box-sizing: border-box;">
							<div class="tabbable-panel">
								<div class="tabbable-line">
						
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist" id="dashBoardTab">
										<li role="presentation" class="">
											<a href="#myInvestTab" aria-controls="myInvest" role="tab" data-toggle="tab" id="myInvest" aria-expanded="false">
												<i class="fa fa-line-chart" aria-hidden="true"></i> 나의 투자
											</a>
										</li>
										<li role="presentation" class="active">
											<a href="#myAssetsTab" aria-controls="myAssets" role="tab" data-toggle="tab" id="myAssets" aria-expanded="true">
												<i class="fa fa-krw" aria-hidden="true"></i> 나의 자산
											</a>
										</li>
										<!-- 
										<li role="presentation">
											<a href="#myEventTab" aria-controls="myEvent" role="tab" data-toggle="tab" id="myEvent">
												<i class="fa fa-calendar" aria-hidden="true"></i> 출석체크
											</a>
										</li>
										 -->
									</ul>
									
									<div id="onLoading" style="padding: 60px 20px; font-size: 18px; text-align: center; display: none;">
										<span class="fa fa-spinner fa-spin animation-3s" style="color: #484848;"></span> <span class="animated infinite pulse">데이터를 불러오고 있습니다.</span>
									</div>
									
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane fade" id="myInvestTab">
											<div class="box right display-none" id="myInvestDiv0" style="display: block;">
												<div class="row">
													<div class="col-xs-12">
														<div class="title">
															투자 내역이 없습니다.
														</div>
													</div>
													<div class="col-xs-12 col-sm-8 col-md-8">
														<div class="subTitle" style="margin-top: 10px;">
															투자 마감 걱정없이 자동투자로 투자해 보세요!
														</div>
													</div>
													<div class="col-xs-12 col-sm-4 col-md-4">
														<div class="mr-blue mainTop_btn" id="autoInvestBtn">
															자동투자 설정하기<span class="mr-cap"></span>
															<span class="mr-angle">
															<div><p>&gt;</p></div>
															</span>
														</div>
													</div>
												</div>
											</div>
											
											<div class="box right display-none" id="myInvestDiv1" style="display: none;">
												<div class="row">
													<div class="col-xs-12">
														<div class="title">
															<font class="font-purple">
																●
															</font> 투자 요약
														</div>
													</div>
												</div>
												<div class="row" style="margin-top: 9px;padding: 0 10px;">
													<div class="col-xs-4 col-sm-4 col rightLine">
														<table>
															<tbody><tr>
																<td class="img">
																	<img src="/images/mypageV2/img_mypage_03.png">
																</td>
																<td>
																	<div class="top-text">
																		투자자<div class="xd"></div> 구분
																		
																			<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="<strong>금융위원회의 가이드라인에 따라 아래와 같은 투자자 구분에 의한 인증 서류를 제출 시 해당 투자 한도가 적용됩니다.</strong>
																								<br>1. 개인투자자
																								<br> - 동일차입자 500만원, 총 2,000만원
																								<br> ※ 단, 부동산 상품이면 총 1,000만원
																								<br> - 제출서류 없음
																								<br>
																								<br>2. 소득요건을 구비한 개인투자자
																								<br> - 동일차입자 2,000만원, 총 4,000만원
																								<br> - 아래 요건 중 하나 이상 해당 시 종합소득 과세표준 확정신고서, 종합소득세 신고서 접수증 제출
																								<br>  1) 이자, 배당소득이 2천만원(종합과세기준금액)을 초과하는 자
																								<br>  2) 사업, 근로소득 1억원을 초과하는 자
																								<br>  3) 그 밖에 창업자·벤처기업 등에 대한 투자의 전문성 등을 고려하여 금융위원회가 정하여 고시하는 자
																								<br>
																								<br>3. 개인전문투자자 : 제한없음 
																								<br> - 아래 세가지 요건 모두 충족 시, 금융투자협회 전문투자자 확인증 제출
																								<br>  1) 금융 투자업자에게 계좌 개설 1년 경과
																								<br>  2) 금융 투자 상품 잔고 5억원 이상
																								<br>  3) 소득액 1억원 또는 재산가액 10억원 이상
																								<br>
																								<br>※ 인증서류 제출 : 고객센터(contact@creator.co.kr)
																								<br>※ 2017년 5월 29일 이전 투자는 해당없음" data-original-title="" title="">
																			</span>
																		
																		
																	</div>
																	<div class="bottom-text">
																		개인투자자
																	</div>
																</td>
															</tr>
														</tbody></table>
													</div>
													<div class="col-xs-4 col-sm-4 col rightLine">
														<table>
															<tbody><tr>
																<td class="img">
																	<img src="${pageContext.request.contextPath}/resources/img/img_mypage_01.png">
																</td>
																<td>
																	<div class="top-text">
																		투자<div class="xd"></div> 가능액
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="개정된 가이드 라인에 따라 <strong>부동산을 제외한 신용, 동산 상품에 1,000만원을 추가</strong>로 투자 가능합니다.(총 투자한도 : 기존 1,000만원 → 변경 2,000만원)
																							<br>예) 부동산 500만원에 투자 이력이 있는 경우
																							<br> Option1. 부동산 500만원, 신용, 동산 상품 1,000만원까지 투자 가능
																							<br> Option2. 신용, 동산 상품만 1,500만원까지 투자가능
																							<br>
																							<br>단, 동일 차입자 한도는 기존과 같이 <strong>500만원</strong>으로 유지 됩니다." data-original-title="" title="">
																		</span>
																	</div>
																	<div class="bottom-text">
																		
																			<span name="INVSTR_TYPE_LMT_AMT">20,000,000</span><font size="1">원</font>
																			
																				<div class="bottom-text small">
																					(부동산:<span name="INVSTR_TYPE_LMT_A_AMT">10,000,000</span><font size="1">원</font>)
																				</div>
																			
																		
																		
																	</div>
																</td>
															</tr>
														</tbody></table>
													</div>
													<div class="col-xs-4 col-sm-4 col">
														<table>
															<tbody><tr>
																<td class="img">
																	<img src="${pageContext.request.contextPath}/resources/img/img_mypage_02.png">
																</td>
																<td>
																	<div class="top-text">
																		연환산<div class="xd"></div> 수익률(NAR)
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="현재까지 지급 받은 이자(연체이자 포함)수익에서 플랫폼수수료와 세금을 차감한 후 연으로 환산한 순 수익률입니다. 부도발생으로 상환 받지 못한 원금과 크리에이터 엄브렐러 가입비는 수익에서 차감하며, 반대로 부도발생 후 추심을 통해 회수한 금액과 크리에이터 엄브렐러 보상금은 수익에 더해집니다." data-original-title="" title="">
																		</span>
																	</div>
																	<div class="bottom-text">
																		<span name="BNFT_RATE">0</span><font size="1">%</font>
																	</div>
																</td>
															</tr>
														</tbody></table>
													</div>
												</div>
												
												<hr>
												
												<div class="row text-center">
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																전체 투자
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_A">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_A">0</span> <font size="1">원</font>
														</div>
													</div>
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																투자신청
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_B">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_B">0</span> <font size="1">원</font>
														</div>
													</div>
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																상환중
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_C">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_C">0</span> <font size="1">원</font>
														</div>
													</div>
													<div class="col-xs-12 xd">
														<br>
													</div>
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																상환완료
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_D">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_D">0</span> <font size="1">원</font>
														</div>
													</div>
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																연체중
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_E">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_E">0</span> <font size="1">원</font>
														</div>
													</div>
													<div class="col-xs-4 col-sm-4 col-md-2">
														<div class="top-text">
															<div class="text-center">
																부실
															</div>
														</div>
														<div class="bottom-text font-purple" style="margin-top:5px;">
															<span name="INVEST_CNT_F">0</span> <font size="2">건</font>
														</div>
														<div class="bottom-text small font-purple-light" style="margin-top:5px;">
															<span name="INVEST_AMT_F">0</span> <font size="1">원</font>
														</div>
													</div>
												</div>
											</div>
												
											<div class="box right display-none" style="margin-top: 5px; display: none;" id="myInvestDiv2">
												<div class="row">
													<div class="col-xs-12">
														<div class="title">
															<font class="font-purple">
																●
															</font> 포트폴리오
														</div>
													</div>
												</div>
												<div class="row" style="margin-top: 29px;">
													<div class="col-xs-12 col-sm-4">
														<div class="top-text">
															리스크 등급
														</div>
														<div class="pieChart">
															<canvas id="gradeChart" width="200" height="200" style="cursor: default;">
															</canvas>
														</div>
														<table class="legend">
															<tbody><tr>
																<td>
																	<i class="glyphicon glyphicon-stop legend-a"></i> MA
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-b"></i> MB
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-c"></i> MC
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-d"></i> MD
																</td>
															</tr>
															<tr>
																<td>
																	<i class="glyphicon glyphicon-stop legend-e"></i> ME
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-f"></i> MF
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-g"></i> MG
																</td>
																<td>
																</td>
															</tr>
														</tbody></table>
													</div>
													<div class="col-xs-12 col-sm-4 rightLine leftLine marginSmall">
														<div class="top-text">
															금리
														</div>
														<div id="rateChart" style="margin-top: 10px;" data-highcharts-chart="0"><div id="highcharts-rpad629-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 197px; height: 270px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="197" height="270" viewBox="0 0 197 270"><desc>Created with Highcharts 6.2.0</desc><defs><clipPath id="highcharts-rpad629-1"><rect x="0" y="0" width="155" height="191" fill="none"></rect></clipPath></defs><rect fill="#fff" class="highcharts-background" x="0" y="0" width="197" height="270" rx="0" ry="0"></rect><rect fill="none" class="highcharts-plot-background" x="32" y="10" width="155" height="191"></rect><g class="highcharts-grid highcharts-xaxis-grid " data-z-index="1"><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 70.5 10 L 70.5 201" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 109.5 10 L 109.5 201" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 147.5 10 L 147.5 201" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 186.5 10 L 186.5 201" opacity="1"></path><path fill="none" data-z-index="1" class="highcharts-grid-line" d="M 31.5 10 L 31.5 201" opacity="1"></path></g><g class="highcharts-grid highcharts-yaxis-grid " data-z-index="1"><path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1" class="highcharts-grid-line" d="M 32 106.5 L 187 106.5" opacity="1"></path></g><rect fill="none" class="highcharts-plot-border" data-z-index="1" x="32" y="10" width="155" height="191"></rect><g class="highcharts-axis highcharts-xaxis " data-z-index="2"><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70.5 201 L 70.5 211" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 109.5 201 L 109.5 211" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 147.5 201 L 147.5 211" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 187.5 201 L 187.5 211" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 31.5 201 L 31.5 211" opacity="1"></path><path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" data-z-index="7" d="M 32 201.5 L 187 201.5"></path></g><g class="highcharts-axis highcharts-yaxis " data-z-index="2"><path fill="none" class="highcharts-axis-line" data-z-index="7" d="M 32 10 L 32 201"></path></g><g class="highcharts-series-group" data-z-index="3"><g data-z-index="0.1" class="highcharts-series highcharts-series-0 highcharts-column-series highcharts-tracker" transform="translate(32,10) scale(1 1)" clip-path="url(#highcharts-rpad629-1)"><rect x="10" y="97" width="19" height="0" fill="#9f9fd1" class="highcharts-point highcharts-color-0"></rect><rect x="49" y="97" width="19" height="0" fill="#b69cde" class="highcharts-point highcharts-color-1"></rect><rect x="88" y="97" width="19" height="0" fill="#712594" class="highcharts-point highcharts-color-2"></rect><rect x="126" y="97" width="19" height="0" fill="#c492c4" class="highcharts-point highcharts-color-3"></rect></g><g data-z-index="0.1" class="highcharts-markers highcharts-series-0 highcharts-column-series " transform="translate(32,10) scale(1 1)" clip-path="none"></g></g><g class="highcharts-exporting-group" data-z-index="3"><g class="highcharts-button highcharts-contextbutton" stroke-linecap="round" transform="translate(163,10)"><title>Chart context menu</title><rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect><path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" data-z-index="1" stroke="#666666" stroke-width="3"></path><text x="0" data-z-index="1" style="font-weight:normal;color:#333333;cursor:pointer;fill:#333333;" y="12"></text></g></g><text x="99" text-anchor="middle" class="highcharts-title" data-z-index="4" style="color:#333333;font-size:18px;fill:#333333;" y="24"></text><text x="99" text-anchor="middle" class="highcharts-subtitle" data-z-index="4" style="color:#666666;fill:#666666;" y="24"></text><g data-z-index="6" class="highcharts-data-labels highcharts-series-0 highcharts-column-series highcharts-tracker" transform="translate(32,10) scale(1 1)" opacity="1"><g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " data-z-index="1" transform="translate(2,73)"><text x="5" data-z-index="1" style="font-size:11px;font-weight:normal;color:#000000;fill:#000000;" y="16"><tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round" style="">0.0%</tspan><tspan x="5" y="16">0.0%</tspan></text></g><g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " data-z-index="1" transform="translate(41,73)"><text x="5" data-z-index="1" style="font-size:11px;font-weight:normal;color:#000000;fill:#000000;" y="16"><tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">0.0%</tspan><tspan x="5" y="16">0.0%</tspan></text></g><g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " data-z-index="1" transform="translate(80,73)"><text x="5" data-z-index="1" style="font-size:11px;font-weight:normal;color:#000000;fill:#000000;" y="16"><tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">0.0%</tspan><tspan x="5" y="16">0.0%</tspan></text></g><g class="highcharts-label highcharts-data-label highcharts-data-label-color-3 " data-z-index="1" transform="translate(118,73)"><text x="5" data-z-index="1" style="font-size:11px;font-weight:normal;color:#000000;fill:#000000;" y="16"><tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">0.0%</tspan><tspan x="5" y="16">0.0%</tspan></text></g></g><g class="highcharts-axis-labels highcharts-xaxis-labels " data-z-index="7"><text x="53.96772486435067" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0) rotate(-45 53.96772486435067 217)" y="217" opacity="1"><tspan>10% 미만</tspan></text><text x="92.71772486435067" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0) rotate(-45 92.71772486435067 217)" y="217" opacity="1">10~12%</text><text x="131.46772486435069" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0) rotate(-45 131.46772486435069 217)" y="217" opacity="1">12.1~15%</text><text x="170.21772486435069" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0) rotate(-45 170.21772486435069 217)" y="217" opacity="1">15%초과</text></g><g class="highcharts-axis-labels highcharts-yaxis-labels " data-z-index="7"><text x="17" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="110" opacity="1">0</text></g></svg></div></div>
													</div>
													<div class="col-xs-12 col-sm-4 marginSmall">
														<div class="top-text">
															상품 종류
														</div>
														<div class="pieChart">
															<canvas id="loanTypeChart" width="200" height="200" style="cursor: default;">
															</canvas>
														</div>
														<table class="legend">
															<tbody><tr>
																<td>
																	<i class="glyphicon glyphicon-stop legend-lt1"></i> 개인신용
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-lt2"></i> 사업자
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-lt3"></i> 소상공인
																</td>
															</tr>
															<tr>
																<td>
																	<i class="glyphicon glyphicon-stop legend-lt4"></i> 부동산
																</td>
																<td>
																	<i class="glyphicon glyphicon-stop legend-lt5"></i> 동산(명품)
																</td>
																<td>
																</td>
															</tr>
														</tbody></table>
													</div>
												</div>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane fade in active" id="myAssetsTab">
											<div class="box right display-none" id="myAssetsDiv1" style="display: block;">
												<div class="row">
													<div class="col-md-6 rightLine">
														<div class="title">
															<font class="font-purple">
																●
															</font> 자산 요약
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		총 예치금&nbsp;&nbsp;
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="=기본 예치금 +자동투자 예치금"></span>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		0 원
																	</div>
																</div>
																<div class="row" style="margin-top: 5px;">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		상환 예정 원금&nbsp;&nbsp;
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="부실없이 정상 상환을 가정한 예상 원금"></span>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="REST_PRNCPL_DSTRBTN_AMT">0</span> 원
																	</div>
																</div>
																<div class="row" style="margin-top: 5px;">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		투자 대기 금액&nbsp;&nbsp;
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="투자금액이 차입자에게 전달되기 전 시점에서의 금액 "></span>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="INVEST_REQ_AMT">0</span> 원
																	</div>
																</div>
																
																<hr>
																
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		총 자산
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span class="font-purple"><strong>
																			<span name="TOTAL_ASSET_AMT">0</span> <font size="2">원</font>
																		</strong></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
													<div class="col-md-6">
														<div class="title">
															<font class="font-purple">
																●
															</font> 예치금 요약
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		기본 예치금
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		0 원
																	</div>
																</div>
																<div class="row" style="margin-top: 30px;">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		자동투자 예치금
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		0 원
																	</div>
																</div>
																
																<hr>
																
																<div class="row">
																	<div class="col-xs-6 col-sm-6 col-md-6">
																		총 예치금
																	</div>
																	<div class="col-xs-6 col-sm-6 col-md-6 text-right">
																		<span class="font-purple"><strong>
																			0 <font size="2">원</font>
																		</strong></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
												</div>
											</div>
											
											<div class="box right display-none" style="margin-top: 5px; display: none;" id="myAssetsDiv2">
												<div class="row">
													<div class="col-md-6 rightLine">
														<div class="title">
															<font class="font-purple">
																●
															</font> 상환 완료율
														</div>
														<div class="row">
															<div class="col-xs-12 col-sm-5 col-md-5">
																<div class="chart height">
																	<canvas id="repayWaterbubbleChart" width="205" height="205"></canvas>
																</div>
															</div>
															<div class="col-xs-12 col-sm-7 col-md-7" style="padding: 15px 0;">
																<table class="total">
																	<tbody><tr>
																		<td class="md">
																			<div class="font-purple" style="padding: 50px 0;">
																				<span style="font-size: 35px;">
																					&nbsp;=&nbsp;
																				</span>
																			</div>
																		</td>
																		<td>
																			<div class="top-text">
																				누적 지급 원금
																			</div>
																			<div class="bottom-text">
																				<font class="font-purple">
																					<span name="ACC_PRNCPL_DSTRBTN_AMT">0</span>
																				</font>
																				<font size="2">원</font>
																			</div>
																			<hr style="margin: 5px 0;border-width: 2px;border-color: #712594;">
																			<div class="top-text">
																				총 투자금
																			</div>
																			<div class="bottom-text">
																				<font class="font-purple">
																					<span name="TOTAL_INVEST_AMT">0</span>
																				</font>
																				<font size="2">원</font>
																			</div>
																		</td>
																	</tr>
																</tbody></table>
															</div>
														</div>
													</div>
													
													<div class="col-md-6">
														<div class="title">
															<font class="font-purple">
																●
															</font> 누적 지급액 현황
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		( + ) 누적 지급 원금
																		<a href="javascript:(void(0));" id="showYearPrncplA">
																			<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																		</a>
																		<a href="javascript:(void(0));" id="hideYearPrncplA" class="display-none">
																			<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																		</a>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_PRNCPL_DSTRBTN_AMT">0</span> 원
																	</div>
																</div>
																<div id="yearPrncplDiv" class="display-none"><div class="row">	<div class="col-xs-7 col-sm-7 col-md-7">		└ undefined 년	</div>	<div class="col-xs-5 col-sm-5 col-md-5 text-right">		0 원	</div></div><br></div>
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		( + ) 누적 지급 이자(세전) 
																		<a href="javascript:(void(0));" id="showYearIntrstA">
																			<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																		</a>
																		<a href="javascript:(void(0));" id="hideYearIntrstA" class="display-none">
																			<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																		</a>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_INTRST_DSTRBTN_AMT">0</span> 원
																	</div>
																</div>
																<div id="yearIntrstDiv" class="display-none"><div class="row">	<div class="col-xs-7 col-sm-7 col-md-7">		└ undefined 년	</div>	<div class="col-xs-5 col-sm-5 col-md-5 text-right">		0 원	</div></div><br></div>
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		( - ) 세금
																		<a href="javascript:(void(0));" id="showYearTaxA">
																			<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																		</a>
																		<a href="javascript:(void(0));" id="hideYearTaxA" class="display-none">
																			<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																		</a>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_TAX_AMT">0</span> 원
																	</div>
																</div>
																<div id="yearTaxDiv" class="display-none"><div class="row">	<div class="col-xs-7 col-sm-7 col-md-7">		└ undefined 년	</div>	<div class="col-xs-5 col-sm-5 col-md-5 text-right">		0 원	</div></div><br></div>
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		( - ) 플랫폼 수수료
																		<a href="javascript:(void(0));" id="showYearCmmtnA">
																			<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																		</a>
																		<a href="javascript:(void(0));" id="hideYearCmmtnA" class="display-none">
																			<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																		</a>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_INVEST_CMMTN_AMT">0</span> 원
																	</div>
																</div>
																<div id="yearCmmtnDiv" class="display-none"><div class="row">	<div class="col-xs-7 col-sm-7 col-md-7">		└ undefined 년	</div>	<div class="col-xs-5 col-sm-5 col-md-5 text-right">		0 원	</div></div><br></div>
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		( - ) 우산구입비
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_UMBRELLAR_AMT">0</span> 원
																	</div>
																</div>
																
																<hr>
																
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		누적 지급액(세후)
																		<a href="javascript:(void(0));" id="showYearTotalA">
																			<i class="glyphicon glyphicon-plus" style="font-size: 10px;"></i>
																		</a>
																		<a href="javascript:(void(0));" id="hideYearTotalA" class="display-none">
																			<i class="glyphicon glyphicon-minus" style="font-size: 10px;"></i>
																		</a>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span class="font-purple"><strong>
																			<span name="TOTAL_ACC_DSTRBTN_AMT">0</span> 원
																		</strong></span>
																	</div>
																</div>
																<div id="yearTotalDiv" class="display-none"><div class="row">	<div class="col-xs-7 col-sm-7 col-md-7">		└ undefined 년	</div>	<div class="col-xs-5 col-sm-5 col-md-5 text-right">		0 원	</div></div></div>
															</div>
														</div>
													</div>
													
												</div>
											</div>
												
											<div class="box right display-none" style="margin-top: 5px; display: none;" id="myAssetsDiv3">
												<div class="row">
													<div class="col-md-6 rightLine">
														<div class="row">
															<div class="col-xs-12 col-sm-7 col-md-7">
																<div class="title">
																	<font class="font-purple">
																		●
																	</font> 이번 달 상환 현황
																</div>
															</div>
															<div class="col-xs-12 col-sm-5 col-md-5 text-right">
																<button type="button" class="btn btn-purple-transparent btn-gradiation" onclick="location.href='/mypage/monthRepaySchedule'">
																	월별 상환일정 <i class="glyphicon glyphicon-calendar"></i>
																</button>
															</div>
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		상환완료 : <span name="ACC_DSTRBTN_CNT">0</span> 건
																		
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_DSTRBTN_AMT">0</span> 원
																	</div>
																</div>
																<div class="row" style="margin-top:5px;">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		상환예정 : <span name="REST_DSTRBTN_CNT">0</span> 건
																		
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="REST_DSTRBTN_AMT">0</span> 원
																	</div>
																</div>
																
																<hr>
																
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		전체 상환금(세후)
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span class="font-purple"><strong>
																			<span name="TRAN_AMT">0</span> 원
																		</strong></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
													<div class="col-md-6">
														<div class="title">
															<font class="font-purple">
																●
															</font> 총 예상 이자수익
														</div>
														<div class="row height statsText">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="row" style="margin-top: 5px;">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		누적 지급 이자(세후)&nbsp;&nbsp;
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="=누적 지급 이자(세전)-플랫폼 수수료-세금"></span>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="ACC_INTRST_AMT">0</span> 원
																	</div>
																</div>
																<div class="row" style="margin-top: 5px;">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		상환 예정 이자(세후)&nbsp;&nbsp;
																		<span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" tabindex="0" data-toggle="tooltip" data-placement="auto" data-trigger="hover" title="" data-original-title="중도상환, 연체, 부실없이 정상 상환을 가정한 예상 이자"></span>
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span name="EXCPT_INTRST_AMT">0</span> 원
																	</div>
																</div>
																
																<hr>
																
																<div class="row">
																	<div class="col-xs-7 col-sm-7 col-md-7">
																		총 예상 이자수익
																	</div>
																	<div class="col-xs-5 col-sm-5 col-md-5 text-right">
																		<span class="font-purple"><strong>
																			<span name="TOTAL_EXCPT_INTRST_AMT">0</span> <font size="2">원</font>
																		</strong></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane fade in" id="myEventTab">
											<div class="box fullCalendar">
												<div id="calendar"></div>
												<input type="hidden" id="cusAttndArrStr">
												<input type="hidden" id="insertCusAttndYn">
												<div class="row">
													<div class="col-xs-12 col-sm-8 col-md-8">
														<div style="font-size: 16px;margin-top:10px;">
															<span class="font-purple"><i class="glyphicon glyphicon-star"></i> <strong>EVERYDAY CHECK!</strong></span> 매일 <strong>출석도장</strong>을 찍고 퍼플포인트 <span class="font-purple"><strong>100</strong>pp</span>씩 적립하세요!
														</div>
													</div>
													<div class="col-xs-12 col-sm-4 col-md-4 text-right">
														<div style="font-size: 16px;margin-top:10px;">
															누적 출석체크 포인트 : <strong><span class="font-purple" id="attndPointSum">pp</span></strong><span class="font-purple">pp</span>
														</div>
													</div>
												</div>
											</div>
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
    
		
		<!--footer start-->
			<%@ include file="../footer.jsp" %>
		<!--footer end-->
	
</body>
<style>
#mypage-banner {
    position: relative;
    overflow: hidden;
    background: url(${pageContext.request.contextPath}/resources/img/common_banner_title.jpg) center 0% no-repeat;
    background-size: 100%;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-attachment: fixed;
    color: #fff;
    height: 239px;
}
#mypage-banner .section-body {
    color: #fff;
    position: relative;
    padding: 135px 20px 0px 20px;
}
#mypage-banner .section-body .title {
    color: #fff;
    text-shadow: 1px 2px #222;
}
#mypage-banner .title {
    color: #fff;
}
.section-body .title {
    font-size: 28px;
    font-weight: bold;
}
#mypage-content {
    padding: 41px 0 96px 0;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    display: table;
    content: " ";
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
.col-md-3 {
    width: 25%;
}
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
#mypage-content .wrap#smallMenu {
    display: none;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .box.quick {
    padding: 10px 12px 10px 12px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}
#mypage-content .smallMenuTap {
    font-size: 14px;
}
.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
ul, ol {
    padding: 0;
    webkit-padding: 0;
    moz-padding: 0;
}
ul, ol {
    margin-top: 0;
    margin-bottom: 10px;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#mypage-content .smallMenuTap li {
    min-width: 49%;
    text-align: center;
}
.nav-pills > li {
    float: left;
}
.nav > li {
    position: relative;
    display: block;
}
#mypage-content .smallMenuTap li.active a {
    background-color: #712594;
}
#mypage-content .smallMenuTap a {
    padding: 5px 10px;
}
.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
    color: #fff;
    background-color: #337ab7;
}
.nav-pills > li > a {
    border-radius: 4px;
}
.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
#mypage-content .smallMenuTap li.active a .smallMenuItem {
    border-bottom: none;
}
.nav-pills > li + li {
    margin-left: 2px;
}
#mypage-content .smallMenuTap a .smallMenuItem {
    border-bottom: #712594 1px solid;
}
#mypage-content .wrap .box.left {
    padding: 15px;
}
.col-md-12 {
    width: 100%;
}
#mypage-content .wrap .box.left .cusNm {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .invstrTypeNm {
    font-size: 14px;
    font-weight: bold;
    color: #00A0DC;
}
#mypage-content .wrap .box.left .email {
    font-size: 14px;
    color: #858585;
}
#mypage-content .wrap .box .deposit-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 10px 20px;
    margin-top: 20px;
}
#mypage-content .wrap .box .deposit-box .myDeposit {
    font-size: 14px;
    font-weight: bold;
    color: #858585;
}
a {
    color: #712594;
    text-decoration: none;
}
a {
    background-color: transparent;
}
#mypage-content .wrap .box .deposit-box .tranList {
    font-size: 12px;
}
#mypage-content .wrap .box .deposit-box .amt {
    font-size: 24px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content .wrap .box.left .account-box {
    padding: 20px 10px 30px 10px;
    /* display: none; */
}
#mypage-content .wrap .box.left .account-box .account {
    font-size: 14px;
}
.font-red {
    color: #e08484 !important;
}
#mypage-content button.btn {
    font-size: 14px;
}
.btn-purple-transparent {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 16px;
    border-style: none;
}
.btn-block {
    display: block;
    width: 100%;
}
#mypage-content .wrap#largeMenu {
    display: block;
}
#mypage-content .wrap {
    padding: 4px;
}
#mypage-content .wrap .menu {
    font-size: 15px;
    font-weight: bold;
    color: #3d3d3d;
    padding: 0px 0px;
}
#mypage-content .wrap#largeMenu .menu .item.active {
    background-color: #ecdeec;
    border-radius: 4px;
}
#mypage-content .wrap .menu .item {
    transition: all 0.8s, color 0.3s 0.3s;
}
#mypage-content .wrap .menu img {
    padding: 12px 22px 12px 12px;
    width: 55px;
    height: 45px;
}
#mypage-content .wrap#largeMenu .menu .item span {
    cursor: pointer;
}
.tabbable-line>.nav-tabs {
    border: none;
    margin: 0px;
}
.tabbable-line>.nav-tabs>li {
    margin-right: 2px;
    border: 1px solid #d9d9de;
    border-bottom: 0px solid #d9d9de;
}
.nav-tabs > li {
    float: left;
    margin-bottom: -1px;
}
.nav > li {
    position: relative;
    display: block;
}
.tabbable-line>.nav-tabs>li>a {
    border: 0;
    margin-right: 0;
    color: #737373;
}
.nav-tabs > li > a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
}

.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
.tabbable-line>.nav-tabs>li>a>i {
    color: #a6a6a6;
}
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transform: translate(0, 0);
}
.tabbable-line>.nav-tabs>li.active {
    border-bottom: 4px solid #712594;
    position: relative;
}
.tabbable-line>.nav-tabs>li.active>a {
    border: 0;
    color: #333333;
}
.tabbable-line>.nav-tabs>li.active>a>i {
    color: #404040;
}
.tabbable-line>.tab-content {
    border: 0;
    /* border-top: 1px solid #d9d9de; */
    /* padding: 15px 0; */
}
.tab-content > .tab-pane {
    display: none;
    visibility: hidden;
}
.fade {
    opacity: 0;
    -webkit-transition: opacity .15s linear;
    -o-transition: opacity .15s linear;
    transition: opacity .15s linear;
}
#mypage-content #mypage-main .wrap .box.right {
    padding: 30px;
}
#mypage-content .wrap .box {
    background-color: #fff;
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    /* border-radius: 4px; */
    box-shadow: 0px 4px 10px -4px grey;
}

</style>
</html>