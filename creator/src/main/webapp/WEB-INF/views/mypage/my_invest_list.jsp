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
			$("#").click(function() {
				location.href ="${pageContext.request.contextPath}/invest/invest_detail"
			});
		});
	</script>
</head>
     
<body>
<!--header start-->
	   
	    <%@ include file="../header.jsp" %>
	<%@ include file="../mypage_banner.jsp" %>
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
							<div class="item" id="menu4">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span>
							</div>
							<div class="item" id="menu5">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_depositandwithdraw.png">
								<span class="text" id="menuL5">예치금 관리</span>
							</div>
							<div class="item" id="menu8">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_setting.png">
								<span class="text" id="menuL8">기본 정보 수정</span>
							</div>
						</div>
					</div>
					
				</div>
				
<div class="col-sm-12 col-md-9 col col-box" id="mypage-main">

<!-- ExcelDownload JavaScript -->
<script type="text/javascript" src="/js/excel/jquery.table2excel.js"></script>

<script type="text/javascript">
	//페이지 처리 전역변수
	var gvar_guideLineYn = "N";
	var gvar_catGb = "A";
	var gvar_rcrtPageNo = 1;
	var gvar_rcrtLimit = 10;

	$(function() {
		$(".investDetail .btn-group.cate label").on("click", function(e) {
			e.preventDefault();
			var catId = this.id.replace('investCatLabel', '');
			fn_sort(catId);
		});
		
		fn_allTrOff();
		$("#investCatLabel00").removeClass("checked");
		
		fn_selectInvestList(1);
		fn_selectTodayDstrbtnList();
		fn_selectCusLoanNoticeList(1);
		
		// 엑셀다운로드
		var btn = $('#btnExport');
		var tbl = 'tblExport';

		btn.on('click', function () {
			if(confirm("목록을 엑셀 파일로 다운로드합니다. 진행하시겠습니까?")){
				fn_selectInvestExcelList();
				
				var dt = new Date();
				var year =  itoStr( dt.getFullYear() );
				var month = itoStr( dt.getMonth() + 1 );
				var day =   itoStr( dt.getDate() );
				var hour =  itoStr( dt.getHours() );
				var mins =  itoStr( dt.getMinutes() );
				
				var postfix = year + month + day + "_" + hour + mins;
				var fileName = "MIDRATE_투자채권내역_" + postfix + ".xls";
				$("#" + tbl).table2excel({
					exclude: ".noExl",
					name: fileName,
					filename: fileName,
					fileext: ".xls",
					exclude_img: true,
					exclude_links: true,
					exclude_inputs: true
				});
			} else {
				return false;
			}
		});
		
		var cusNo = "1000009711";
		if(cusNo.substring(0,2) == 'CR') {
			fn_selectRcrtInvestList(gvar_rcrtPageNo);
		}
		
		// 타이틀 정렬 세팅
		$('th[name="investListSortTitle"]').click(function() {
			var id = this.id.substring(19);
			var desc = $("#investListSortDesc" + id).text();
			$('span[name="investListSortDesc"]').text("");
			if(desc == "↓") {
				$("#investListSortDesc" + id).text("↑");
				$('#investListCurOrderBy').val(id);
			} else if(desc == "↑") {
				$("#investListSortDesc" + id).text("");
				$('#investListCurOrderBy').val("");
			} else {
				$("#investListSortDesc" + id).text("↓");
				$('#investListCurOrderBy').val(id + " DESC");
			}
			fn_selectInvestList(1);
		});
		
		$("#investListSrchTextBtn").click(function(e) {
			e.preventDefault();
			fn_selectInvestList(1);
		});
		
		$("#loanNoticeListSrchTextBtn").click(function(e) {
			e.preventDefault();
			fn_selectCusLoanNoticeList(1);
		});
	});
	
	function fn_selectInvestList(pageNo){
		var comAjax = new ComAjax("investListSrchForm");
		comAjax.setUrl("/mypage/selectInvestList");
		comAjax.setCallback("fn_selectInvestListCallback");
		comAjax.addParam("catGb", gvar_catGb);
		comAjax.addParam("PAGE_INDEX", pageNo);
		comAjax.addParam("PAGE_ROW", 20);
		comAjax.addParam("ORDER_BY", $('#investListCurOrderBy').val());
		comAjax.ajax();
	}
	
	function fn_selectInvestListCallback(data){
		var body = $("#investListBody");
		var thum = $("#investThum");
		var bodyStr = "";
		var thumStr = "";
		var total = data.TOTAL;
		body.empty();
		thum.empty();
		var params = {
			divId : "investListPAGE_NAVI",
			pageIndex : "PAGE_INDEX",
			totalCount : total,
			eventName : "fn_selectInvestList",
			recordCount : 20
		};
		gfn_renderPaging(params);
		
		if(total == 0) {
			bodyStr += "<tr class=\"guideLine\"><td colspan=11>해당되는 채권이 없습니다.</td></tr>";
			body.append(bodyStr);
			thumStr += "<div class=\"guideLine\">해당되는 채권이 없습니다.</div>";
			thum.append(thumStr);
		} else {
			// 리스트 생성
			$.each(data.list, function(key, value) {
				if(value.LOAN_NO < 121 && gvar_guideLineYn == "N") {
					bodyStr += "<tr class=\"guideLine\"><td colspan=11>P2P가이드라인 적용 시점</td></tr>";
					thumStr += "<div class=\"guideLine\">P2P가이드라인 적용 시점</div>";
					gvar_guideLineYn = "Y";
				}
				bodyStr += "<tr class=\"hover stats" + value.REPAY_STATS_CD + "\" name=\"statsRow\" id=\"statsRow" + value.LOAN_NO + "\">";
				bodyStr += "	<td class=\"date\">" + value.INVEST_YMD + "</td>";
				bodyStr += "	<td class=\"date\">" + value.BANNER_TITLE + "</td>";
				bodyStr += "	<td class=\"bold\">" + value.LOAN_NM;
				if(value.NEW_NOTICE_YN == "Y") {
					bodyStr += "<span class=\"newMenu\">new</span>";
				}
				bodyStr += "	</td>";
				bodyStr += "	<td class=\"bold\">" + value.INVEST_RATE + "</td>";
				bodyStr += "	<td>" + comma(value.INVEST_AMT) + "</td>";
				bodyStr += "	<td>";
				bodyStr += "		<div class=\"progress\">";
				bodyStr += "			<div class=\"progress-bar\" role=\"progressbar\"";
				bodyStr += "				aria-valuenow=\"" + value.REPAY_PRCNT + "\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: " + value.REPAY_PRCNT + "%;\">";
				bodyStr += "				<span class=\"sr-only\">" + value.REPAY_PRCNT + "% Complete</span>";
				bodyStr += "			</div>";
				bodyStr += "		</div>";
				bodyStr += "	</td>";
				bodyStr += "	<td class=\"small bold\">" + value.DSTRBTN_CNT + "/" + value.RND_CNT + "</td>";
				bodyStr += "	<td class=\"date bold\">" + value.NEXT_DSTRBTN_DATE + "</td>";
				bodyStr += "	<td class=\"date bold\">" + value.MAX_DSTRBTN_DATE + "</td>";
				bodyStr += "	<td>";
				bodyStr += "		<button type=\"button\" class=\"btn statsBtn-" + value.REPAY_STATS_CD + "\">";
				bodyStr += "			" + value.REPAY_STATS_NM;
				bodyStr += "		</button>";
				bodyStr += "	</td>";
				bodyStr += "</tr>";
				
				thumStr += "<div class=\"wrap stats" + value.REPAY_STATS_CD + "\" name=\"statsWrap\" id=\"statsWrap" + value.LOAN_NO + "\">";
				thumStr += "<div class=\"name\">" + value.LOAN_NM;
				if(value.NEW_NOTICE_YN == "Y") {
					thumStr += "<span class=\"newMenu\">new</span>";
				}
				thumStr += "</div>";
				thumStr += "	<table class=\"table table-condensed investTable2\">";
				thumStr += "		<thead>";
				thumStr += "			<tr>";
				thumStr += "				<th>투자일자</th>";
				thumStr += "				<th>상품별호수</th>";
				thumStr += "				<th>투자금액</th>";
				thumStr += "				<th colspan=\"2\">상환차수</th>";
				thumStr += "			</tr>";
				thumStr += "		</thead>";
				thumStr += "		<tbody>";
				thumStr += "			<tr>";
				thumStr += "				<td>" + value.INVEST_YMD + "</td>";
				thumStr += "				<td>" + value.BANNER_TITLE + "</td>";
				thumStr += "				<td>" + comma(value.INVEST_AMT) + "</td>";
				thumStr += "				<td>";
				thumStr += "					<div class=\"progress\">";
				thumStr += "						<div class=\"progress-bar\" role=\"progressbar\"";
				thumStr += "							aria-valuenow=\"" + value.REPAY_PRCNT + "\" aria-valuemin=\"0\"";
				thumStr += "							aria-valuemax=\"100\" style=\"width: " + value.REPAY_PRCNT + "%;\">";
				thumStr += "							<span class=\"sr-only\">" + value.REPAY_PRCNT + "% Complete</span>";
				thumStr += "						</div>";
				thumStr += "					</div>";
				thumStr += "				</td>";
				thumStr += "				<td>" + value.DSTRBTN_CNT + "/" + value.RND_CNT + "</td>";
				thumStr += "			</tr>";
				thumStr += "		</tbody>";
				thumStr += "		<thead>";
				thumStr += "			<tr>";
				thumStr += "				<th>금리(%)</th>";
				thumStr += "				<th>상환예정일</th>";
				thumStr += "				<th>상환완료일</th>";
				thumStr += "				<th colspan=\"2\">상품상태</th>";
				thumStr += "			</tr>";
				thumStr += "		</thead>";
				thumStr += "		<tbody>";
				thumStr += "			<tr>";
				thumStr += "				<td>" + value.INVEST_RATE + "</td>";
				thumStr += "				<td>" + value.NEXT_DSTRBTN_DATE + "</td>";
				thumStr += "				<td>" + value.MAX_DSTRBTN_DATE + "</td>";
				thumStr += "				<td colspan=\"2\">";
				thumStr += "					<button type=\"button\" class=\"btn statsBtn-" + value.REPAY_STATS_CD + "\">";
				thumStr += "						" + value.REPAY_STATS_NM;
				thumStr += "					</button>";
				thumStr += "				</td>";
				thumStr += "			</tr>";
				thumStr += "		</tbody>";
				thumStr += "	</table>";
				thumStr += "</div>";
			});
	
			body.append(bodyStr);
			thum.append(thumStr);
			
			// 투자채권내역 행 클릭
			$("tr[name='statsRow']").on('click', function() {
				var loanId = $(this).attr('id').replace("statsRow", "");
				fn_openInvestRepaySchedule(loanId);
			});
			
			// 투자채권내역 div 클릭
			$("div[name='statsWrap']").on('click', function() {
				var loanId = $(this).attr('id').replace("statsWrap", "");
				fn_openInvestRepaySchedule(loanId);
			});
			
			$('#investListCnt'+gvar_catGb).text(" (" + data.TOTAL + ")");
		}
	}
	
	function fn_sort(catId) {
		// 전체 off
		$(".investDetail #investList table.investTable1 tbody tr").css("display", "none");
		$(".investDetail #investThum .wrap").css("display", "none");
		fn_allTrOff();
		$("#investCatLabel" + catId).removeClass("checked");
		gvar_guideLineYn = "N";
		
		// 선택 카테고리에 해당하는 행만 표시
		if(catId == "00") {	//전체
			gvar_catGb = "A";
		} else if(catId == "01") {	// 투자신청
			gvar_catGb = "B";
		} else if(catId == "02") {	// 상환중
			gvar_catGb = "C";
		} else if(catId == "03") {	// 상환완료
			gvar_catGb = "D";
		} else if(catId == "04") {	// 연체중
			gvar_catGb = "E";
		} else if(catId == "05") {	// 부도
			gvar_catGb = "F";
		}
		$("#investListBody").empty();
		$("#investThum").empty();
		$('#currentPageNo').val(1);
		
		gfv_pageIndex = 1;
		fn_selectInvestList(1);
	}
	
	function fn_allTrOff() {
		$("#investCatLabel00").addClass("checked");
		$("#investCatLabel01").addClass("checked");
		$("#investCatLabel02").addClass("checked");
		$("#investCatLabel03").addClass("checked");
		$("#investCatLabel04").addClass("checked");
		$("#investCatLabel05").addClass("checked");
	}
	
	function fn_openInvestRepaySchedule(loanNo) {
		location.href='/mypage/investRepaySchedule/'+loanNo;
	}
	
	function fn_selectInvestExcelList(){
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectInvestExcelList");
		comAjax.setCallback("fn_selectInvestExcelListCallback");
		comAjax.addParam("CUS_NO", "1000009711");
		comAjax.ajax();
	}
	
	function fn_selectInvestExcelListCallback(data){
		var exportBody = $("table#tblExport>tbody");
		exportBody.empty();
		if(data.excelList.length == 0){
			var exportStr = "<tr><td colspan='10'>조회된 결과가 없습니다.</td></tr>";
			exportBody.append(exportStr);
		} else {
			var exportStr = "";
			$.each(data.excelList, function(key, value){
				exportStr += "<tr>";
				exportStr += "	<td>" + value.INVEST_YMD + "</td>";
				exportStr += "	<td>" + value.BANNER_TITLE + "</td>";
				exportStr += "	<td>" + value.LOAN_NM + "</td>";
				exportStr += "	<td>" + value.INVEST_RATE + "</td>";
				exportStr += "	<td>" + value.INVEST_AMT + "</td>"; 
				exportStr += "	<td>" + value.DSTRBTN_CNT + "</td>";
				exportStr += "	<td>" + value.RND_CNT + "</td>";
				exportStr += "	<td>" + value.NEXT_DSTRBTN_DATE + "</td>";
				exportStr += "	<td>" + value.MAX_DSTRBTN_DATE + "</td>";
				exportStr += "	<td>" + value.REPAY_STATS_NM + "</td>";
				exportStr += "</tr>";
			});
			exportBody.append(exportStr);
		}
	}
	
	function fn_selectRcrtInvestList(pageNo) {
		var startLimit = (pageNo - 1) * gvar_rcrtLimit;
		var endLimit = gvar_rcrtLimit;
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectRcrtInvestList");
		comAjax.setCallback("fn_selectRcrtInvestListCallback");
		comAjax.addParam("startLimit", startLimit);
		comAjax.addParam("endLimit", endLimit);
		comAjax.ajax();
	}

	function fn_selectRcrtInvestListCallback(data) {
		var body = $("#rcrtInvestListBody");
		var str = "";
		var idx = 0;

		// 리스트 생성
		$.each(data.list, function(key, value) {
			idx = idx + 1;
			str += "<div class=\"goodlist-item\">";
			str += "	<div class=\"row\">";
			str += "		<div class=\"col-xs-4 col-sm-3 col-md-3 col\">";
			str += "			<div class=\"item-title\">모집회원</div>";
			str += "			<div class=\"\">" + value.CUS_NM + "</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-8 col-sm-3 col-md-3 col\">";
			str += "			<div class=\"item-title\">투자상품</div>";
			str += "			<div class=\"\">" + value.LOAN_NM + "</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-12 xd\">";
			str += "			<hr>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-sm-2 col-md-2 col\">";
			str += "			<div class=\"item-title\">투자금액</div>";
			str += "			<div class=\"\">" + comma(value.INVEST_AMT) + "원</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-sm-2 col-md-2 col\">";
			str += "			<div class=\"item-title\">모집수수료</div>";
			str += "			<div class=\"\">" + comma(value.CMMTN_AMT) + "원</div>";
			str += "		</div>";
			str += "		<div class=\"col-xs-4 col-sm-2 col-md-2 col\">";
			str += "			<div class=\"item-title\">지급여부</div>";
			if(value.CNFRM_YN == "Y") {
				str += "		<div class=\"\">지급</div>";
			} else {
				str += "		<div class=\"\">미지급</div>";
			}
			str += "		</div>";
			str += "	</div>";
			str += "</div>";
		});
		body.append(str);
		$('#rcrtCuslistWrap').show();
		
		if(gvar_rcrtLimit == idx) {
			$('#rcrtNextPageDiv').show();
		} else {
			$('#rcrtNextPageDiv').hide();
		}
	}
	
	function fn_selectRcrtNextPage() {
		// 다음페이지로 지정
		gvar_rcrtPageNo = gvar_rcrtPageNo + 1;
		fn_selectRcrtInvestList(gvar_rcrtPageNo);
	}
	
	function fn_selectTodayDstrbtnList() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectTodayDstrbtnList");
		comAjax.setCallback("fn_selectTodayDstrbtnListCallback");
		comAjax.ajax();
	}

	function fn_selectTodayDstrbtnListCallback(data) {
		var body = $("#todayDstrbtnListBody");
		var thum = $("#todayDstrbtnThum");
		var bodyStr = "";
		var thumStr = "";
		body.empty();
		thum.empty();
		var todayDstrbtnAmtSum = 0;
		
		if(data.list.length > 0) {
			// 리스트 생성
			$.each(data.list, function(key, value) {
				bodyStr += "<tr class=\"hover\" name=\"dstrbtnRow\" id=\"dstrbtnRow" + value.LOAN_NO + "\">";
				bodyStr += "	<td>" + value.BANNER_TITLE + "</td>";
				bodyStr += "	<td class=\"bold\">";
				bodyStr += "		" + value.LOAN_NM;
				bodyStr += "	</td>";
				if(value.RND == "0") {
					bodyStr += "<td>부분상환</td>";
				} else {
					bodyStr += "<td>" + value.RND + "</td>";
				}
				bodyStr += "	<td>" + comma(value.INVEST_AMT) + "</td>";
				bodyStr += "	<td>" + comma(value.RND_PRNCPL_DSTRBTN_AMT) + "</td>";
				bodyStr += "	<td>" + comma(value.RND_INTRST_DSTRBTN_AMT) + "</td>";
				bodyStr += "	<td>" + comma(value.RND_INVEST_CMMTN_AMT) + "</td>";
				bodyStr += "	<td>" + comma(value.RND_TAX_AMT) + "</td>";
				bodyStr += "	<td>" + comma(value.RND_REAL_DSTRBTN_AMT) + "</td>";
				bodyStr += "</tr>";
				
				thumStr += "<div  class=\"wrap\" name=\"dstrbtnWrap\" id=\"dstrbtnWrap" + value.LOAN_NO + "\">";
				thumStr += "	<div class=\"id\">" + value.BANNER_TITLE + "</div>";
				thumStr += "	<div class=\"name\">" + value.LOAN_NM + "</div>";
				thumStr += "	<table class=\"table table-condensed investTable2\">";
				thumStr += "		<thead>";
				thumStr += "			<tr>";
				thumStr += "				<th>회차</th>";
				thumStr += "				<th>투자금액</th>";
				thumStr += "				<th>원금(+)</th>";
				thumStr += "				<th>이자(+)</th>";
				thumStr += "			</tr>";
				thumStr += "		</thead>";
				thumStr += "		<tbody>";
				thumStr += "			<tr>";
				if(value.RND == "0") {
					thumStr += "			<td>부분상환</td>";
				} else {
					thumStr += "			<td>" + value.RND + "</td>";
				}
				thumStr += "				<td>" + comma(value.INVEST_AMT) + "</td>";
				thumStr += "				<td>" + comma(value.RND_PRNCPL_DSTRBTN_AMT) + "</td>";
				thumStr += "				<td>" + comma(value.RND_INTRST_DSTRBTN_AMT) + "</td>";
				thumStr += "			</tr>";
				thumStr += "		</tbody>";
				thumStr += "		<thead>";
				thumStr += "			<tr>";
				thumStr += "				<th>수수료(-)</th>";
				thumStr += "				<th>세금(-)</th>";
				thumStr += "				<th colspan=\"2\">입금액</th>";
				thumStr += "			</tr>";
				thumStr += "		</thead>";
				thumStr += "		<tbody>";
				thumStr += "			<tr>";
				thumStr += "				<td>" + comma(value.RND_INVEST_CMMTN_AMT) + "</td>";
				thumStr += "				<td>" + comma(value.RND_TAX_AMT) + "</td>";
				thumStr += "				<td colspan=\"2\">" + comma(value.RND_REAL_DSTRBTN_AMT) + "</td>";
				thumStr += "			</tr>";
				thumStr += "		</tbody>";
				thumStr += "	</table>";
				thumStr += "</div>";
				
				todayDstrbtnAmtSum += value.RND_REAL_DSTRBTN_AMT;
			});
	
			body.append(bodyStr);
			thum.append(thumStr);
			
			// 투자채권내역 행 클릭
			$("tr[name='dstrbtnRow']").on('click', function() {
				var loanId = $(this).attr('id').replace("dstrbtnRow", "");
				fn_openInvestRepaySchedule(loanId);
			});
			
			// 투자채권내역 div 클릭
			$("div[name='dstrbtnWrap']").on('click', function() {
				var loanId = $(this).attr('id').replace("dstrbtnWrap", "");
				fn_openInvestRepaySchedule(loanId);
			});
			
			$("#todayDstrbtnAmtSum").text(comma(todayDstrbtnAmtSum));
			$("#todayDstrbtnWrap").show();
		} else {
			$("#todayDstrbtnWrap").hide();
		}
	}
	
	function fn_selectCusLoanNoticeList(pageNo) {
		var comAjax = new ComAjax("loanNoticeListSrchForm");
		comAjax.setUrl("/mypage/selectCusLoanNoticeList");
		comAjax.setCallback("fn_selectCusLoanNoticeListCallback");
		comAjax.addParam("SPCL_NOTICE_YN", "Y");
		comAjax.addParam("PAGE_INDEX", pageNo);
		comAjax.addParam("PAGE_ROW", 5);
		comAjax.ajax();
	}

	function fn_selectCusLoanNoticeListCallback(data) {
		var body = $("#loanNoticeListDiv tbody");
		var bodyStr = "";
		var total = data.TOTAL;
		body.empty();
		
		var params = {
			divId : "loanNoticeListPAGE_NAVI",
			pageIndex : "PAGE_INDEX",
			totalCount : total,
			eventName : "fn_selectCusLoanNoticeList",
			recordCount : 5
		};
		gfn_renderPaging(params);
		
		if(total > 0) {
			var idx = 0;
			$.each(data.list, function(key, value) {
				if(idx == 0) {
					bodyStr += "<tr class=\"hover\" name=\"loanNoticeTr\" id=\"loanNoticeTr" + value.LOAN_NO + "\">";
				} else {
					bodyStr += "<tr class=\"hover\" name=\"loanNoticeTr\" id=\"loanNoticeTr" + value.LOAN_NO + "\"style=\"border-top-style: double;\">";
				}
				bodyStr += "	<td>";
				bodyStr += "		" + value.NOTICE_DATE_YMD;
				bodyStr += "	</td>";
				bodyStr += "	<td>";
				bodyStr += "		" + value.LOAN_NO;
				bodyStr += "	</td>";
				bodyStr += "	<td>";
				bodyStr += "		" + value.LOAN_NM;
				bodyStr += "	</td>";
				bodyStr += "</tr>";
				bodyStr += "<tr>";
				bodyStr += "	<td style=\"text-align: left;\" colspan=\"3\">";
				bodyStr += "		" + value.NOTICE;
				bodyStr += "	</td>";
				bodyStr += "</tr>";
				idx++;
			});
			body.append(bodyStr);
			
			// 투자채권내역 행 클릭
			$("tr[name='loanNoticeTr']").on('click', function() {
				var loanId = $(this).attr('id').replace("loanNoticeTr", "");
				fn_openInvestDetail(loanId);
			});
			
			$("div[name='loanNoticeListBtnDiv']").show();
		} else {
			$("div[name='loanNoticeListBtnDiv']").hide();
		}
	}
	
	function fn_openInvestDetail(loanNo) {
		location.href='/invest/detail/'+loanNo;
	}
	
	function fn_showLoanNotice() {
		$("#loanNoticeListDiv").show();
		$("#showLoanNoticeBtn").hide();
		$("#hideLoanNoticeBtn").show();
	}
	
	function fn_hideLoanNotice() {
		$("#loanNoticeListDiv").hide();
		$("#showLoanNoticeBtn").show();
		$("#hideLoanNoticeBtn").hide();
	}
	
	// input에서 enter키 입력시
	function fn_hitEnterKey(event, func) {
		if(event.keyCode == 13) {
			if(div == "loanNoticeList") {
				fn_selectCusLoanNoticeList(1);
			} else if(func == "investList") {
				fn_selectInvestList(1);
			}
		} else {
			event.keyCode == 0;
			return;
		}
	}
	
</script>
					<div class="wrap display-none" id="todayDstrbtnWrap" style="display: none;">
						<div class="box right">
							<div class="investDetail">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 오늘의 상환채권
										</div>
									</div>
								</div>
								
								<div class="row investList" style="margin-top: 10px;">
									<div class="col-xs-12 col">
										<table class="table table-striped investTable1">
											<thead>
												<tr>
													<th>상품별호수</th>
													<th>상품명</th>
													<th>회차</th>
													<th>투자금액</th>
													<th>원금(+)</th>
													<th>이자(+)</th>
													<th>수수료(-)</th>
													<th>세금(-)</th>
													<th>입금액</th>
												</tr>
											</thead>
											<tbody id="todayDstrbtnListBody"></tbody>
										</table>
										<input type="hidden" id="investListCurOrderBy">
									</div>
								</div>
								
								<div class="row investThum" style="margin-top: 10px;" id="todayDstrbtnThum"></div>
								
								<hr>
								
								<div class="row">
									<div class="col-md-12 text-right">
										총 입금액 <span id="todayDstrbtnAmtSum" class="font-blue font-bold"></span>원
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="wrap" id="investStats">
						<div class="box right">
							<div class="investDetail" style="margin-bottom: 29px;">
								<div class="row display-none" name="loanNoticeListBtnDiv">
									<div class="col-xs-12 col-sm-12 col-md-12" style="margin-bottom: 5px;">
										<div id="showLoanNoticeBtn">
											<button type="button" class="btn btn-default btn-block" onclick="fn_showLoanNotice()">
												채권 변경현황 보기
												
												 <i class="glyphicon glyphicon-menu-down"></i>
											</button>
										</div>
										<div class="display-none" id="hideLoanNoticeBtn">
											<button type="button" class="btn btn-default btn-block" onclick="fn_hideLoanNotice()">
												채권 변경현황 닫기 <i class="glyphicon glyphicon-menu-up"></i>
											</button>
										</div>
									</div>
								</div>
								
								<div class="display-none" id="loanNoticeListDiv">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<table class="investTable1 table table-bordered text-center">
												<colgroup>
													<col width="15%">
													<col width="15%">
													<col width="60%">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">일자</th>
														<th scope="col">대출번호</th>
														<th scope="col">상품명</th>
													</tr>
												</thead>
												<tbody></tbody>
											</table>
										</div>
									</div>
									<div class="row" style="margin-top: 10px;">
										<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
											<form id="loanNoticeListSrchForm" class="text-right" onsubmit="return false;">
												<div style="display: inline-block;">
													<input type="text" class="form-control srchText" name="SRCH_TEXT" onkeypress="fn_hitEnterKey(event, 'loanNoticeList')" placeholder="상품명으로 검색" maxlength="20">
												</div>
												<div style="display: inline-block;">
													<button type="button" class="btn btn-purple-transparent" id="loanNoticeListSrchTextBtn">
														<i class="glyphicon glyphicon-search"></i>
													</button>
												</div>
												<div class="clearfix"></div>
											</form>
										</div>
										<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;">
											<ul class="pagination pagination-sm margin-0" id="loanNoticeListPAGE_NAVI"></ul>
										</div>
									</div>
								</div>
							</div>
							<div class="investDetail">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 투자 채권 목록
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-6 text-right">
										<button type="button" class="btn btn-purple-transparent btn-gradiation" onclick="location.href='/mypage/monthRepaySchedule'">
											월별 상환일정 <i class="glyphicon glyphicon-calendar"></i>
										</button>
										<a id="btnExport">
											<button type="button" class="btn btn-purple-transparent btn-gradiation">
												EXCEL <i class="glyphicon glyphicon-download-alt"></i>
											</button>
										</a>
									</div>
								</div>
								
								<div class="row row-cat">
									<div class="btn-group cate" data-toggle="buttons">
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block" id="investCatLabel00">
												전체<span id="investListCntA"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel01">
												투자신청<span id="investListCntB"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel02">
												상환중<span id="investListCntC"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel03">
												상환완료<span id="investListCntD"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel04">
												연체중<span id="investListCntE"></span>
											</label>
										</div>
										<div class="col-xs-4 col-sm-2 col">
											<label class="btn labelBtn-purple btn-block checked" id="investCatLabel05">
												부도<span id="investListCntF"></span>
											</label>
										</div>
									</div>
								</div>
								
								<div class="row investList" style="margin-top: 10px;" id="investList">
									<div class="col-xs-12 col">
										<table class="table table-striped investTable1">
											<thead>
												<tr>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_YMD">
														투자일자<span name="investListSortDesc" id="investListSortDescINVEST_YMD"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleBANNER_TITLE">
														상품별호수<span name="investListSortDesc" id="investListSortDescBANNER_TITLE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleLOAN_NM">
														상품명<span name="investListSortDesc" id="investListSortDescLOAN_NM"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_RATE">
														금리(%)<span name="investListSortDesc" id="investListSortDescINVEST_RATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleINVEST_AMT">
														투자금액<span name="investListSortDesc" id="investListSortDescINVEST_AMT"></span>
													</th>
													<th scope="col" colspan="2" class="clickable" name="investListSortTitle" id="investListSortTitleRND_CNT">
														상환차수<span name="investListSortDesc" id="investListSortDescRND_CNT"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleNEXT_DSTRBTN_DATE">
														상환예정일<span name="investListSortDesc" id="investListSortDescNEXT_DSTRBTN_DATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleMAX_DSTRBTN_DATE">
														상환완료일<span name="investListSortDesc" id="investListSortDescMAX_DSTRBTN_DATE"></span>
													</th>
													<th scope="col" class="clickable" name="investListSortTitle" id="investListSortTitleREPAY_STATS_CD">
														상품상태<span name="investListSortDesc" id="investListSortDescREPAY_STATS_CD"></span>
													</th>
												</tr>
											</thead>
											<tbody id="investListBody"></tbody>
										</table>
									</div>
								</div>
								
								<div class="row investThum" style="margin-top: 10px;" id="investThum"></div>
								
								<!-- 
								<div class="row" style="margin-top: 10px;" id="nextPageDiv">
									<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="alarm-box-bottom">
											<a href='javascript:(void(0));' onclick='fn_selectNextPage()' id="nextPageBtn" class="display-none">
												<i class="glyphicon glyphicon-menu-down"></i>
											</a>
											<a href='javascript:(void(0));' onclick='fn_resetPage()' id="resetPageBtn" class="display-none">
												<i class="glyphicon glyphicon-menu-up"></i>
											</a>
										</div>
									</div>
								</div>
								 -->
								
								<table id="tblExport" style="display:none;" class="tblExport">
									<thead>
										<tr>
											<th scope="col">투자일자</th>
											<th scope="col">상품별호수</th>
											<th scope="col">상품명</th>
											<th scope="col">금리</th>
											<th scope="col">투자금액</th>
											<th scope="col">상환회차</th>
											<th scope="col">만기회차</th>
											<th scope="col">상환예정일</th>
											<th scope="col">상환완료일</th>
											<th scope="col">상품상태</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<div class="row" style="margin-top: 10px;">
									<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
										<form id="investListSrchForm" class="text-right" onsubmit="return false;" style="margin-bottom: 0px;">
											<div style="display: inline-block;">
												<input type="text" class="form-control srchText" name="SRCH_TEXT" style="min-width: 260px;" onkeypress="fn_hitEnterKey(event, 'investList')" placeholder="상품명, 상품ID 또는 상품별호수로 검색" maxlength="20">
											</div>
											<div style="display: inline-block;">
												<button type="button" class="btn btn-purple-transparent" id="investListSrchTextBtn" style="height: 32px;">
													<i class="glyphicon glyphicon-search"></i>
												</button>
											</div>
											<div class="clearfix"></div>
										</form>
									</div>
									<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;height: 20px;">
										<ul class="pagination pagination-sm margin-0" id="investListPAGE_NAVI"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="wrap display-none" id="rcrtCuslistWrap">
						<div class="box right">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="title">
										<font class="font-purple">
											●
										</font> 모집회원 투자내역
									</div>
									<div id="goodList" style="margin-top: 10px;">
										<div class="goodlist-title">
											<div class="row">
												<div class="col-xs-4 col-sm-3 col-md-3">
													<div class="">모집회원</div>
												</div>
												<div class="col-xs-8 col-sm-3 col-md-3">
													<div class="">투자상품</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">투자금액</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">모집수수료</div>
												</div>
												<div class="col-xs-4 col-sm-2 col-md-2">
													<div class="">지급여부</div>
												</div>
											</div>
										</div>
										<div id="rcrtInvestListBody">
										</div>
									</div>
								</div>
							</div>
							
							<div class="row" id="rcrtNextPageDiv" style="display: none;">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="alarm-box-bottom">
										<a href="javascript:(void(0));" onclick="fn_selectRcrtNextPage()">
											<i class="glyphicon glyphicon-menu-down animated infinite flash"></i>
										</a>
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
.display-none {
    display: none;
}
.col-md-6 {
    width: 50%;
}
#mypage-content #mypage-main .wrap .box.right .title {
    font-size: 18px;
    font-weight: bold;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right button.btn-gradiation {
    font-size: 12px;
}
.row-cat {
    padding: 0 15px;
    margin-top: 10px;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label {
    font-size: 12px;
    min-width: 16.7%;
}
.labelBtn-purple {
    color: #fff;
    background-color: #712594;
    opacity: 1.0;
    font-size: 14px;
    border-radius: 0px;
    border-color: #fff;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate label.checked {
    background-color: #d9d9de;
    border-color: #d9d9de;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .btn-group.cate {
    width: 100%;
}
body {
    color: #797979;
    background: #eaeaea;
    font-family: 'Ruda', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
}
.col {
    padding-left: 0px;
    padding-right: 0px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail .investList {
    padding: 0 15px;
    margin-top: 10px;
}
#mypage-content #mypage-main .wrap .box.right table {
    margin: auto;
    font-size: 12px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 tr {
    height: 30px;
}
#mypage-content #mypage-main .wrap .box.right .investDetail table.investTable1 th {
    text-align: center;
}
.col-md-push-6 {
    left: 50%;
}
input[type="text"] {
    font-family: 'Arial',sans-serif !important;
}
.srchText{
    margin-right: 5px;
    font-size: 12px;
    min-width: 200px;
}

</style>
</html>