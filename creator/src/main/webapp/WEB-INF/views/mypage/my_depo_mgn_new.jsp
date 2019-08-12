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
										</li>										<li id="smallMenuLi9">
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
							<div class="item" id="menu2">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_invest_list.png">
								<span class="text" id="menuL2">투자 내역</span>
							</div>
							<div class="item" id="menu4">
								<img src="${pageContext.request.contextPath}/resources/img/ic_mypage_loan_list.png">
								<span class="text" id="menuL4">대출 내역</span>
							</div>
							<div class="item active" id="menu5">
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
	$(function() {
		fn_selectDepositInfo();
		
		// 엑셀다운로드
		var btn = $('#btnExport');
		var tbl = 'tblExport';

		btn.on('click', function () {
			if(confirm("목록을 엑셀 파일로 다운로드합니다. 진행하시겠습니까?")){
				fn_selectDepositHisExcelList();
				
				var dt = new Date();
				var year =  itoStr( dt.getFullYear() );
				var month = itoStr( dt.getMonth() + 1 );
				var day =   itoStr( dt.getDate() );
				var hour =  itoStr( dt.getHours() );
				var mins =  itoStr( dt.getMinutes() );
				
				var postfix = year + month + day + "_" + hour + mins;
				var fileName = "MIDRATE_거래내역_"+ postfix + ".xls";
				$("#"+tbl).table2excel({
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
		
		$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
		$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawAllReq();});
		
		$('#tranTypeMultiSelect').multiselect({
			nonSelectedText: '거래구분 선택',
			nSelectedText: '개 구분 선택됨',
			allSelectedText: '모든 구분 선택됨',
			onChange: function(option, checked, select) {
				fn_selectDepositHisList(1);
			},
			buttonWidth: '150px'
		});
		
		$("#depositHisListSrchTextBtn").click(function(e) {
			e.preventDefault();
			fn_selectDepositHisList(1);
		});
		
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
	});
	
	function fn_openInvestRepaySchedule(loanNo) {
		location.href='/mypage/investRepaySchedule/'+loanNo;
	}
	
	function fn_selectDepositInfo() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectDepositInfo");
		comAjax.addParam("CUS_NO", "1000009711");
		comAjax.setCallback("fn_selectDepositInfoCallback");
		comAjax.ajax();
	}
	
	function fn_selectDepositInfoCallback(data) {
		var DEPOSIT_AMT_SUM = data.depositStatsMap.DEPOSIT_AMT_SUM;
		var WTHDRW_AMT_SUM = data.depositStatsMap.WTHDRW_AMT_SUM;
		var POINT_PRCHS_AMT_SUM = data.depositStatsMap.POINT_PRCHS_AMT_SUM;
		var DEPOSIT_WTHDRW_AMT_SUM = DEPOSIT_AMT_SUM + POINT_PRCHS_AMT_SUM - WTHDRW_AMT_SUM;
		var WTHDRW_REQ_AMT_SUM = data.depositStatsMap.WTHDRW_REQ_AMT_SUM;
		
		$("span[name=DEPOSIT_AMT_SUM]").text(comma(DEPOSIT_AMT_SUM));
		$("span[name=POINT_PRCHS_AMT_SUM]").text(comma(POINT_PRCHS_AMT_SUM));
		$("span[name=WTHDRW_AMT_SUM]").text(comma(WTHDRW_AMT_SUM));
		$("span[name=WTHDRW_REQ_AMT_SUM]").text(comma(WTHDRW_REQ_AMT_SUM));
		
		$("#tranAmt").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
			$(this).val(comma($(this).val()));
		});
		
		$("#withdrawAmt").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
			$(this).val(comma($(this).val()));
		});
		
		// 숫자만 입력 체크
		$("#cusAccount, #mpNo, #ssnNo").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		
		var cusNm = "김도엽";
		$("#tranCusNm").val(cusNm);
		
		var WD_ACNT_BNK_CD = "";
		var WD_ACNT_NO = "";
		$("#cusBankCdSelect").val(WD_ACNT_BNK_CD);
		$("#cusAccount").val(WD_ACNT_NO);
		if(WD_ACNT_NO == "") {
			$("#WD_ACNT_NO").text("계좌정보 미등록 상태");
		} else {
			$("#WD_ACNT_NO").text(WD_ACNT_NO);
		}
		
		var VT_ACNT_BNK_CD = "";
		var VT_ACNT_NO = "";
		if(VT_ACNT_BNK_CD == "" || VT_ACNT_NO == "") {
			$("#vtAcntNDiv").show();
			$("#vtAcntYDiv").hide();
		} else {
			$("#vtAcntNDiv").hide();
			$("#vtAcntYDiv").show();
			$("#vtAcntNoSpan").html(gfn_viewAcntNo(VT_ACNT_NO));
		}
		
		var WTHDRW_REQ_YN = data.depositMap.WTHDRW_REQ_YN;
		$("#WTHDRW_REQ_YN").val(WTHDRW_REQ_YN);
		
		// 전역 변수 세팅
		fn_selectDepositHisList(1);
		$("#mpNo").val("12312312332");
		$("#ssnNo").val("");
	}
	
	function fn_selectDepositHisList(pageNo){
		var tranTypeMultiSelect = $("#tranTypeMultiSelect").val();
		if(tranTypeMultiSelect == null) {
			tranTypeMultiSelect = "";
		}
		
		var comAjax = new ComAjax("depositHisListSrchForm");
		comAjax.setUrl("/mypage/selectDepositHisList");
		comAjax.setCallback("fn_selectDepositHisListCallback");
		comAjax.addParam("selectedTranTypeArr", tranTypeMultiSelect);
		comAjax.addParam("PAGE_INDEX", pageNo);
		comAjax.addParam("PAGE_ROW", 6);
		comAjax.ajax();
	}
	
	function fn_selectDepositHisListCallback(data){
		var body = $("#goodListBody");
		body.empty();
		var total = data.TOTAL;
		var params = {
			divId : "PAGE_NAVI",
			pageIndex : "PAGE_INDEX",
			totalCount : total,
			eventName : "fn_selectDepositHisList",
			recordCount : 6
		};
		gfn_renderPaging(params);
		
		var str = "";
		if(total == 0) {
			str += "<div class=\"goodlist-item tran\">";
			str += "	<div class=\"row\">";
			str += "		<div class=\"col-xs-12 col-sm-12 col-md-12 col\">";
			str += "			<div class=\"normal\">해당되는 거래내역이 없습니다.</div>";
			str += "		</div>";
			str += "	</div>";
			str += "</div>";
		} else {
			// 리스트 생성
			$.each(data.list, function(key, value) {
				str += "<div class=\"goodlist-item tran\">";
				str += "	<div class=\"row\">";
				str += "		<div class=\"col-xs-3 col-sm-2 col-md-2 col\">";
				str += "			<div class=\"item-title tran\">날짜</div>";
				str += "			<div class=\"normal\">" + value.TRAN_DATE + "</div>";
				str += "		</div>";
				str += "		<div class=\"col-xs-9 col-sm-3 col-md-3 col\">";
				str += "			<div class=\"item-title tran\">거래명</div>";
				str += "			<div class=\"normal\">";
				if(value.LOAN_NO > 0) {
					str += "			<a href=\"/mypage/investRepaySchedule/" + value.LOAN_NO + "\" target=\"_blank\">";
					str += "				" + value.TRAN_NM;
					str += "			</a>";
				} else {
					str += "			" + value.TRAN_NM;
				}
				str += "			</div>";
				str += "		</div>";
				str += "		<div class=\"col-xs-12 xd\">";
				str += "			<hr>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-2 col-md-2 col\">";
				str += "			<div class=\"item-title tran\">거래구분</div>";
				str += "			<div class=\"normal\">" + value.TRAN_TYPE_NM + "</div>";
				str += "		</div>";
				str += "		<div class=\"col-xs-3 col-sm-2 col-md-2 col\">";
				str += "			<div class=\"item-title tran\">거래금액</div>";
				if(value.TRAN_TYPE_CD == "01" || value.TRAN_TYPE_CD == "04"
				|| value.TRAN_TYPE_CD == "05" || value.TRAN_TYPE_CD == "07"
				|| value.TRAN_TYPE_CD == "08" || value.TRAN_TYPE_CD == "10"
				|| value.TRAN_TYPE_CD == "24" || value.TRAN_TYPE_CD == "25"
				|| value.TRAN_TYPE_CD == "27" || value.TRAN_TYPE_CD == "30"
				|| value.TRAN_TYPE_CD == "31" || value.TRAN_TYPE_CD == "36") {
					str += "			<div class=\"normal font-blue\">+" + value.TRAN_AMT + "원</div>";
				} else if(value.TRAN_TYPE_CD == "21" || value.TRAN_TYPE_CD == "22") {
					str += "			<div class=\"normal\">" + value.TRAN_AMT + "원</div>";
				} else if(value.TRAN_TYPE_CD == "35") {
					if(parseInt(value.TRAN_AMT) > 0) {
						str += "		<div class=\"normal font-blue\">" + value.TRAN_AMT + "원</div>";
					} else {
						str += "		<div class=\"normal font-red\">" + value.TRAN_AMT + "원</div>";
					}
				} else {
					str += "			<div class=\"normal font-red\">-" + value.TRAN_AMT + "원</div>";
				}
				str += "		</div>";
				str += "		<div class=\"col-xs-6 col-sm-3 col-md-3 col\">";
				str += "			<div class=\"item-title tran\">거래 후 예치금</div>";
				str += "			<div class=\"normal\">" + value.REST_DEPOSIT_AMT + "원</div>";
				str += "		</div>";
				str += "	</div>";
				str += "</div>";
			});
		}
		body.append(str);
	}
	
	function fn_selectDepositHisExcelList(){
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/selectDepositHisExcelList");
		comAjax.setCallback("fn_selectDepositHisExcelListCallback");
		comAjax.addParam("CUS_NO", "1000009711");
		comAjax.ajax();
	}
	
	function fn_selectDepositHisExcelListCallback(data){
		var exportBody = $("table#tblExport>tbody");
		exportBody.empty();
		if(data.list.length == 0){
			var exportStr = "<tr><td colspan='7'>조회된 결과가 없습니다.</td></tr>";
			exportBody.append(exportStr);
		} else {
			var exportStr = "";
			$.each(data.list, function(key, value){
				exportStr += "<tr>";
				exportStr += "	<td>" + value.TRAN_DATE + "</td>";
				exportStr += "	<td>" + value.TRAN_NM + "</td>";
				exportStr += "	<td>" + value.TRAN_TYPE_NM + "</td>";
				if(value.TRAN_TYPE_CD == "01" || value.TRAN_TYPE_CD == "04"
				|| value.TRAN_TYPE_CD == "05" || value.TRAN_TYPE_CD == "07"
				|| value.TRAN_TYPE_CD == "08" || value.TRAN_TYPE_CD == "10"
				|| value.TRAN_TYPE_CD == "24" || value.TRAN_TYPE_CD == "25") {
					exportStr += "	<td>" + value.TRAN_AMT + "</td>";
				} else if(value.TRAN_TYPE_CD == "21" || value.TRAN_TYPE_CD == "22") {
					exportStr += "	<td>" + value.TRAN_AMT + "</td>";
				} else {
					exportStr += "	<td>-" + value.TRAN_AMT + "</td>";
				}
				exportStr += "	<td>" + value.REST_DEPOSIT_AMT + "</td>";
				exportStr += "	<td>" + value.REST_AUTO_DEPOSIT_AMT + "</td>";
				exportStr += "	<td>" + value.TOTAL_REST_DEPOSIT_AMT + "</td>";
				exportStr += "</tr>";
			});
			exportBody.append(exportStr);
		}
	}

	function fn_setActiveCat(tranTypeGroup) {
		$(".section-cat .item a").removeClass("active");
		$("#tranTypeSelector" + tranTypeGroup).addClass("active");
	}

	function fn_setTranAmt(opt){
		if($("#tranAmt").val() == '') {
			var cusTranAmt = 0;
		} else {
			var cusTranAmt = parseInt($("#tranAmt").val().replace(/[^0-9]/gi, ""));
		}
		var depositAmt = parseInt("0");
		var tranAmt = 0;
		
		if(opt == "100") {
			tranAmt = cusTranAmt + 1000000;
		} else if(opt == "10") {
			tranAmt = cusTranAmt + 100000;
		} else if(opt == "1") {
			tranAmt = cusTranAmt + 10000;
		} else if(opt == "0") {
			tranAmt = 0;
		}
		
		$("#tranAmt").val(comma(tranAmt));
	}
	
	function fn_setWithdrawAmt(opt){
		if($("#withdrawAmt").val() == '') {
			var cusWithdrawAmt = 0;
		} else {
			var cusWithdrawAmt = parseInt($("#withdrawAmt").val().replace(/[^0-9]/gi, ""));
		}
		var depositAmt = parseInt("0");
		var withdrawAmt = 0;
		
		if(opt == "all") {
			withdrawAmt = depositAmt;
		} else if(opt == "100") {
			withdrawAmt = cusWithdrawAmt + 1000000;
		} else if(opt == "10") {
			withdrawAmt = cusWithdrawAmt + 100000;
		} else if(opt == "0") {
			withdrawAmt = 0;
		}
		
		if(withdrawAmt > depositAmt) {
			withdrawAmt = depositAmt;
		}
		
		$("#withdrawAmt").val(comma(withdrawAmt));
	}
	
	function fn_withdrawReq() {
		/*alert("가상계좌를 이용한 전자금융 사기 피해를 방지하기 위해 NH오픈플랫폼에서 예치금 출금 API 사용을 중지시킨 상태입니다. 자세한 내용은 공지사항을 참고해 주세요.");
		return;*/
		//alert("금일 18:00까지만 일시적으로 출금 신청이 가능합니다. 자세한 내용은 공지사항을 참고해 주세요.");
		//alert("NH오픈플랫폼 출금 제한 조치에 따라 실시간 출금이 되지 않고 있습니다. 제한 해제 후 신청 순서에 따라 처리해드리도록 하겠습니다.");
		//alert("농협 인터넷뱅킹 방화벽 작업으로 2018-11-13 23:00부터 2018-11-14 03:00 까지 출금 신청이 제한됩니다.");
		
		$("#withdrawReqBtn").unbind("click");
		
		var withdrawCusNm = $.trim($("#withdrawCusNm").html());
		var withdrawAmt = $("#withdrawAmt").val().replace(/[^0-9]/gi, "");
		var depositAmt = parseInt("0");
		
		if(withdrawAmt == "" || withdrawAmt == 0) {
			alert("출금 요청액을 입력해주세요.");
			$("#withdrawAmt").focus();
			$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		if(depositAmt < withdrawAmt) {
			alert("출금 가능액을 초과하였습니다.");
			$("#withdrawAmt").focus();
			$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		// 한 번에 1억원까지만 출금 가능 
		if(parseInt(withdrawAmt) > 100000000) {
			alert("1회에 1억원까지만 출금 가능합니다.");
			$("#withdrawAmt").focus();
			$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		var wthdrwReqYn = $("#WTHDRW_REQ_YN").val();
		if(wthdrwReqYn == "N") {
			alert("출금신청은 1일 2회만 가능합니다.");
			$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		var WD_ACNT_NO = "";
		if(WD_ACNT_NO == "" || WD_ACNT_NO == null) {
			if(confirm("먼저 계좌정보를 등록해야 합니다. 지금 등록하시겠습니까?")){
				gfn_goMypageMenu('8');
				return;
			} else {
				$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
				return;
			}
		}
		
		if(confirm("기본 예치금 " + comma(depositAmt) + "원 중 " + comma(withdrawAmt) + "원을 출금 요청하시겠습니까?")){
			var comAjax = new ComAjax();
			comAjax.setUrl("/mypage/insertDepositWthdrwReq");
			comAjax.setCallback("fn_withdrawReqCallback");
			comAjax.addParam("WTHDRW_CUS_NM",withdrawCusNm);
			comAjax.addParam("WTHDRW_AMT",withdrawAmt);
			comAjax.addParam("DEPOSIT_AMT",depositAmt);
			comAjax.ajax();
		} else {
			$('#withdrawReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
	}
	
	function fn_withdrawReqCallback(data){
		var resultMsg = data.resultMsg;
		var resultCd = data.resultCd;
		alert(resultMsg);
		
		if(resultCd == "logout") {
			location.href = "/login";
		} else if(resultCd == "na") {
			gfn_goMypageMenu('5');
		} else if(resultCd == "reqError" || resultCd == "amtError") {
			$("#withdrawAmt").val("");
			$("#withdrawAmt").focus();
			return;
		} else if(resultCd == "success") {
			gfn_goMypageMenu('5');
		}
	}
	
	function fn_withdrawAllReq() {
		/*alert("가상계좌를 이용한 전자금융 사기 피해를 방지하기 위해 NH오픈플랫폼에서 예치금 출금 API 사용을 중지시킨 상태입니다. 자세한 내용은 공지사항을 참고해 주세요.");
		return;*/
		//alert("금일 18:00까지만 일시적으로 출금 신청이 가능합니다. 자세한 내용은 공지사항을 참고해 주세요.");
		//alert("NH오픈플랫폼 출금 제한 조치에 따라 실시간 출금이 되지 않고 있습니다. 제한 해제 후 신청 순서에 따라 처리해드리도록 하겠습니다.");
		//alert("농협 인터넷뱅킹 방화벽 작업으로 2018-11-13 23:00부터 2018-11-14 03:00 까지 출금 신청이 제한됩니다.");
		
		$("#withdrawAllReqBtn").unbind("click");
		
		var withdrawCusNm = $.trim($("#withdrawCusNm").html());
		var depositAmt = parseInt("0");
		var autoDepositAmt = parseInt("0");
		
		if(depositAmt + autoDepositAmt == 0) {
			alert("출금 요청하실 예치금이 부족합니다.");
			$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		// 한 번에 1억원까지만 출금 가능 
		if(parseInt(withdrawAmt) > 100000000) {
			alert("1회에 1억원까지만 출금 가능합니다.");
			$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		var wthdrwReqYn = $("#WTHDRW_REQ_YN").val();
		if(wthdrwReqYn == "N") {
			alert("출금신청은 1일 2회만 가능합니다.");
			$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
		
		var WD_ACNT_NO = "";
		if(WD_ACNT_NO == "" || WD_ACNT_NO == null) {
			if(confirm("먼저 계좌정보를 등록해야 합니다. 지금 등록하시겠습니까?")){
				gfn_goMypageMenu('8');
				return;
			} else {
				$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawReq();});
				return;
			}
		}
		
		if(confirm("전체예치금(기본+자동투자) " + comma(depositAmt + autoDepositAmt) + "원을 출금 요청하시겠습니까?")){
			var comAjax = new ComAjax();
			comAjax.setUrl("/mypage/insertDepositWthdrwAllReq");
			comAjax.setCallback("fn_withdrawAllReqCallback");
			comAjax.addParam("WTHDRW_CUS_NM", withdrawCusNm);
			comAjax.addParam("WTHDRW_AMT", depositAmt + autoDepositAmt);
			comAjax.addParam("DEPOSIT_AMT", depositAmt);
			comAjax.addParam("AUTO_DEPOSIT_AMT", autoDepositAmt);
			comAjax.addParam("direction", "up");
			comAjax.addParam("ALLO_AMT", autoDepositAmt);
			comAjax.ajax();
		} else {
			$('#withdrawAllReqBtn').bind('click', function() {fn_withdrawReq();});
			return;
		}
	}
	
	function fn_withdrawAllReqCallback(data){
		var resultMsg = data.resultMsg;
		var resultCd = data.resultCd;
		alert(resultMsg);
		
		if(resultCd == "logout") {
			location.href = "/login";
		} else if(resultCd == "amtError") {
			$("#withdrawAmt").val("");
			$("#withdrawAmt").focus();
			return;
		} else if(resultCd == "success") {
			gfn_goMypageMenu('5');
		}
	}
	
	function fn_checkNiceCert() {
		var comAjax = new ComAjax();
		comAjax.setUrl("/mypage/checkNiceCert");
		comAjax.setCallback("fn_checkNiceCertCallback");
		comAjax.addParam("ciCheckYn", "Y");
		comAjax.ajax();
	}
	
	function fn_checkNiceCertCallback(data){
		var sMessage = data.sMessage;
		var sEncData = data.sEncData;
		if(sMessage == "") {
			$("#EncodeData").val(sEncData);
			fn_openNicePopup();
		} else {
			alert(sMessage);
			return false;
		}
	}
	
	window.name ="Parent_window";
	function fn_openNicePopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	
	// 나이스 인증 성공
	function fn_niceCertSuccess() {
		fn_openInsertVtAcnt();
	}
	
	// 예치금 계좌 발급 팝업 호출
	function fn_openInsertVtAcnt() {
		$('#vtAcntModal').modal('show');
	}
	
	// 가상계좌등록
	function fn_insertVtAcnt() {
		var cusGbCd = "01";
		var cusNm = $("#cusNm").val();
		var cusBankCd = $("#cusBankCdSelect").val();
		var cusBankNm = $("#cusBankCdSelect option:selected").text();
		var cusAccount = $("#cusAccount").val();
		var mpNo = $("#mpNo").val();
		var ssnNo = $("#ssnNo").val();
		var ci = $("#ci").val();
		
		if(cusNm == "") {
			alert("예금주를 확인해 주세요.");
			$("#cusNm").focus();
			return;
		}
		
		if(cusBankCd == "") {
			alert("은행명을 선택해 주세요.");
			$("#cusBankCdSelect").focus();
			return;
		}
		
		if(cusAccount == "") {
			alert("계좌번호를 입력해 주세요.");
			$("#cusAccount").focus();
			return;
		}
		
		if(cusGbCd == "01") {
			if(!gfn_checkMpNo(mpNo)) {
				alert("휴대전화번호를 정확히 입력해 주세요.");
				$("#mpNo").focus();
				return;
			}
			
			if(!gfn_checkSsnNo(ssnNo)) {
				alert("주민등록번호를 정확히 입력해 주세요.");
				$("#ssnNo").focus();
				return;
			}
			
			var birthGb = ssnNo.substring(6,7);
			var birthY = ssnNo.substring(0,2);
			var d = new Date();
			var curY =  itoStr(d.getFullYear());
			if(birthGb == "1" || birthGb == "2") {
				if(curY - 1900 - birthY <= 18) {
					alert("미성년자는 가상계좌 발급시 추가 인증이 필요합니다. 고객센터로 문의 부탁드립니다.");
					$("#ssnNo").focus();
					return;
				}
			} else {
				if(curY - 2000 - birthY <= 18) {
					alert("미성년자는 가상계좌 발급시 추가 인증이 필요합니다. 고객센터로 문의 부탁드립니다.");
					$("#ssnNo").focus();
					return;
				}
			}
		}
		
		if(confirm("예치금 계좌를 발급받으시겠습니까?")) {
			var comAjax = new ComAjax();
			comAjax.setUrl("/mypage/insertVtAcnt");
			comAjax.setCallback("fn_insertVtAcntCallback");
			comAjax.addParam("CUS_NO", "1000009711");
			comAjax.addParam("CUS_NM", cusNm);
			comAjax.addParam("CUS_NM_NH", cusNm.substr(0,6));
			comAjax.addParam("WD_ACNT_BNK_CD", cusBankCd);
			comAjax.addParam("WD_ACNT_BNK_NM", cusBankNm);
			comAjax.addParam("WD_ACNT_NO", cusAccount);
			comAjax.addParam("WD_ACNT_NO_YN", "N");
			comAjax.addParam("WD_ACNT_NM", "");
			comAjax.addParam("MP_NO", mpNo);
			comAjax.addParam("MP_NO_YN", "Y");
			comAjax.addParam("SSN_NO", ssnNo);
			comAjax.addParam("CI", ci);
			comAjax.addParam("SSN_YN", "N");
			comAjax.addParam("CUS_GB_CD", cusGbCd);
			comAjax.ajax();
		}
	}
	
	function fn_insertVtAcntCallback(data){
		var resultMsg = data.resultMsg;
		alert(resultMsg);
		gfn_goMypageMenu('5');
	}
	
	
	
</script>

			<div class="wrap">
				<div class="box left">
					<div class="row">
						<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-1 col-md-10">
							<div class="row" id="vtAcntNDiv" style="">
								<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
									<div style="padding:60px 0 10px 0; font-size: 18px; font-weight: bold;">
										투자 신청을 위해 예치금 계좌를 발급해 주세요.
									</div>
									<div style="padding:20px 0;">
									
										<button type="button" class="btn btn-purple-transparent btn-block" onclick="fn_checkNiceCert()">
											예치금 계좌 발급을 위해 본인 인증하기
										</button>
									
									
									</div>
								</div>
							</div>
							<div class="row" id="vtAcntYDiv" style="display: none;">
								<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
									<div style="padding:60px 0 10px 0; font-size: 18px; font-weight: bold;">
										예치금 계좌정보
									</div>
									<div class="withdraw-wrap">
										<div class="row" style="margin-top: 20px;">
											<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
												예금주
											</div>
											<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
												<font size="2">주미드</font>김도엽
											</div>
										</div>
										<div class="row" style="margin-top: 10px;">
											<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
												은행
											</div>
											<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
												
											</div>
										</div>
										<div class="row" style="margin-top: 10px;">
											<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
												입금계좌
											</div>
											<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content">
												<span class="font-purple" id="vtAcntNoSpan"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-1 col-md-10">
									<div class="withdrawGuide">
										<ul>
											<li>
												예치금 계좌는 고객님 명의의 투자를 위한 전용 가상계좌입니다.
											</li>
											<li>
												미성년자는 가상계좌 발급시 추가 인증이 필요합니다. 고객센터로 문의 부탁드립니다.
											</li>
											<li>
												예치금 계좌로 예치금 충전금액을 정확히 이체하여 주십시오.
											</li>
											<li>
												창구 또는 자동화기기(CD/ATM)에서는 예치금 입금이 불가능합니다.
											</li>
											<li>
												입금처리 시간은 1분 이내이며 고객메세지를 통해 알려드립니다.(단, 은행망전산 점검시간 0시~0시30분에는 불가능합니다.)
											</li>
											<li>
												자세한 내용은 <a href="/info/noticeDetail/10" target="_blank" style="color: #712594;"><strong>공지사항</strong></a>을 참고하시기 바랍니다.
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="wrap">
						<div class="box right">
							<div class="row">
								<div class="col-md-6 rightLine">
									<div class="title">
										<font class="font-purple">
											●
										</font> 예치금 현황
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
											<div class="row" style="margin-top: 10px;">
												<div class="col-xs-6 col-sm-6 col-md-6">
													자동투자 예치금
												</div>
												<div class="col-xs-6 col-sm-6 col-md-6 text-right">
													0 원
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
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
								
								<div class="col-md-6">
									<div class="title">
										<font class="font-purple">
											●
										</font> 입/출금 현황
									</div>
									<div class="row height statsText">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="row">
												<div class="col-xs-6 col-sm-6 col-md-6">
													입금 총액
												</div>
												<div class="col-xs-6 col-sm-6 col-md-6 text-right">
													<span name="DEPOSIT_AMT_SUM">0</span> 원
												</div>
											</div>
											<div class="row display-none" style="margin-top: 10px;">
												<div class="col-xs-6 col-sm-6 col-md-6">
													포인트 구입금액
												</div>
												<div class="col-xs-6 col-sm-6 col-md-6 text-right">
													<span name="POINT_PRCHS_AMT_SUM">0</span> 원
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-xs-6 col-sm-6 col-md-6">
													출금 총액
												</div>
												<div class="col-xs-6 col-sm-6 col-md-6 text-right">
													<span name="WTHDRW_AMT_SUM">0</span> 원
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-xs-6 col-sm-6 col-md-6">
													출금 대기금액
												</div>
												<div class="col-xs-6 col-sm-6 col-md-6 text-right">
													<span name="WTHDRW_REQ_AMT_SUM">0</span> 원
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
			
			<div class="wrap">
				<div class="box right">
					<div class="row">
						<div class="col-xs-12 col-sm-12">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="title">
											<font class="font-purple">
												●
											</font> 나의 계좌로 출금
										</div>
										<div class="withdraw-wrap">
											<div class="row" style="margin-top: 20px;">
												<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
													예금주
												</div>
												<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content" id="withdrawCusNm">
													
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
													은행
												</div>
												<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content">
													
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-xs-4 col-sm-4 col-md-4 withdraw-title">
													나의 계좌 
												</div>
												<div class="col-xs-8 col-sm-8 col-md-8 withdraw-content">
													<span id="WD_ACNT_NO">계좌정보 미등록 상태</span>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="withdrawGuide">
														<ul>
														<!-- 
														
															<li>
																<font color="red">
																	마이페이지 > 기본 정보 수정에서 계좌정보를 등록하시기 바랍니다. 
																	<a href='javascript:(void(0));' onclick="fn_setMenu('8')">
																		<strong>☞ 계좌정보 등록 바로가기</strong> 
																	</a>
																</font> 
															</li>
														
														 -->
															<li>
																출금 요청 후 최대 1시간이내, 등록하신 계좌로 일괄 입금됩니다.(출금 요청 : 1일 2회)
															</li>
															<li>
																출금은 본인 명의의 계좌만 가능합니다.
															</li>
															<li>
																예치금 지연인출제도의 지연인출조건에 해당시 출금신청 후 72시간 이후 처리됩니다.
																<br>
																(자세한 내용은 공지사항 <a href="/info/noticeDetail/253" target="_blank" style="color: #712594;">"보이스피싱 피해 방지를 위한 [예치금 지연인출제도] 개발 및 시행 안내"</a>를 참고하시기 바랍니다.)
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="withdraw-box">
											<div class="row">
												<div class="col-xs-5 col-sm-5 col-md-5 withdraw-title">
													출금 가능액
												</div>
												<div class="col-xs-7 col-sm-7 col-md-7 withdraw-content text-right">
													0<font size="2">원</font>
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-md-12">
													<input type="text" class="form-control" id="withdrawAmt" maxlength="12" value="0">
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-md-12 text-center">
													<button class="btn btn-default" type="button" onclick="fn_setWithdrawAmt('all')">+전체</button>
													<button class="btn btn-default" type="button" onclick="fn_setWithdrawAmt('100')">+100만</button>
													<button class="btn btn-default" type="button" onclick="fn_setWithdrawAmt('10')">+10만</button>
													<button class="btn btn-default" type="button" onclick="fn_setWithdrawAmt('0')">정정</button>
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-md-12">
													<button type="button" class="btn btn-purple-transparent btn-block" id="withdrawReqBtn">기본예치금 출금요청</button>
													<input type="hidden" id="WTHDRW_REQ_YN" value="Y">
												</div>
											</div>
											<div class="row" style="margin-top: 10px;">
												<div class="col-md-12">
													<button type="button" class="btn btn-purple-transparent btn-block" id="withdrawAllReqBtn">전체예치금 출금요청</button>
												</div>
											</div>
											<div class="row" style="margin-top: 10px;font-size: 14px;">
												<div class="col-md-12 text-right">
													<a href="/laVender" style="color: #712594;">▶ 라벤더 바로가기</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="wrap" id="listWrap">
					<div class="box right">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="title">
									<font class="font-purple">
										●
									</font> 거래내역
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-7 col-sm-7 col-md-7">
								<div class="multiselect" style="margin-top: 10px;">
									<span class="multiselect-native-select"><select id="tranTypeMultiSelect" multiple="multiple">
										<optgroup label="예치금">
											<option value="01">입금</option>
											<option value="02">출금</option>
											<option value="21">이동(기본→자동)</option>
											<option value="22">이동(자동→기본)</option>
										</optgroup>
										<optgroup label="투자">
											<option value="03">투자</option>
											<option value="04">상환</option>
											<option value="05">분배</option>
											<option value="06">자동투자</option>
											<option value="07">자동투자분배</option>
											<option value="08">투자취소</option>
											<option value="10">자동투자취소</option>
											<option value="12">엄브렐러보상</option>
											<option value="35">최종원금보정</option>
											<option value="36">올리고투자금액</option>
										</optgroup>
										<optgroup label="이벤트">
											<option value="11">리뷰이벤트</option>
											<option value="27">리워드지급</option>
										</optgroup>
										<optgroup label="라벤더">
											<option value="23">리워드구입</option>
											<option value="24">리워드판매</option>
											<option value="25">리워드구입취소</option>
											<option value="29">몰상품구입</option>
											<option value="30">몰상품구입취소</option>
											<option value="31">몰상품구입환불</option>
											<option value="32">몰상품판매</option>
											<option value="33">몰상품판매환불</option>
										</optgroup>
									</select><div class="btn-group" style="width: 150px;"><button type="button" class="multiselect dropdown-toggle btn btn-default" data-toggle="dropdown" title="거래구분 선택" style="width: 100%; overflow: hidden; text-overflow: ellipsis;"><span class="multiselect-selected-text">거래구분 선택</span> <b class="caret"></b></button><ul class="multiselect-container dropdown-menu"><li class="multiselect-item multiselect-group"><a href="javascript:void(0);"><label><b> 예치금</b></label></a></li><li><a tabindex="0"><label class="checkbox" title="입금"><input type="checkbox" value="01"> 입금</label></a></li><li><a tabindex="0"><label class="checkbox" title="출금"><input type="checkbox" value="02"> 출금</label></a></li><li><a tabindex="0"><label class="checkbox" title="이동(기본→자동)"><input type="checkbox" value="21"> 이동(기본→자동)</label></a></li><li><a tabindex="0"><label class="checkbox" title="이동(자동→기본)"><input type="checkbox" value="22"> 이동(자동→기본)</label></a></li><li class="multiselect-item multiselect-group"><a href="javascript:void(0);"><label><b> 투자</b></label></a></li><li><a tabindex="0"><label class="checkbox" title="투자"><input type="checkbox" value="03"> 투자</label></a></li><li><a tabindex="0"><label class="checkbox" title="상환"><input type="checkbox" value="04"> 상환</label></a></li><li><a tabindex="0"><label class="checkbox" title="분배"><input type="checkbox" value="05"> 분배</label></a></li><li><a tabindex="0"><label class="checkbox" title="자동투자"><input type="checkbox" value="06"> 자동투자</label></a></li><li><a tabindex="0"><label class="checkbox" title="자동투자분배"><input type="checkbox" value="07"> 자동투자분배</label></a></li><li><a tabindex="0"><label class="checkbox" title="투자취소"><input type="checkbox" value="08"> 투자취소</label></a></li><li><a tabindex="0"><label class="checkbox" title="자동투자취소"><input type="checkbox" value="10"> 자동투자취소</label></a></li><li><a tabindex="0"><label class="checkbox" title="엄브렐러보상"><input type="checkbox" value="12"> 엄브렐러보상</label></a></li><li><a tabindex="0"><label class="checkbox" title="최종원금보정"><input type="checkbox" value="35"> 최종원금보정</label></a></li><li><a tabindex="0"><label class="checkbox" title="올리고투자금액"><input type="checkbox" value="36"> 올리고투자금액</label></a></li><li class="multiselect-item multiselect-group"><a href="javascript:void(0);"><label><b> 이벤트</b></label></a></li><li><a tabindex="0"><label class="checkbox" title="리뷰이벤트"><input type="checkbox" value="11"> 리뷰이벤트</label></a></li><li><a tabindex="0"><label class="checkbox" title="리워드지급"><input type="checkbox" value="27"> 리워드지급</label></a></li><li class="multiselect-item multiselect-group"><a href="javascript:void(0);"><label><b> 라벤더</b></label></a></li><li><a tabindex="0"><label class="checkbox" title="리워드구입"><input type="checkbox" value="23"> 리워드구입</label></a></li><li><a tabindex="0"><label class="checkbox" title="리워드판매"><input type="checkbox" value="24"> 리워드판매</label></a></li><li><a tabindex="0"><label class="checkbox" title="리워드구입취소"><input type="checkbox" value="25"> 리워드구입취소</label></a></li><li><a tabindex="0"><label class="checkbox" title="몰상품구입"><input type="checkbox" value="29"> 몰상품구입</label></a></li><li><a tabindex="0"><label class="checkbox" title="몰상품구입취소"><input type="checkbox" value="30"> 몰상품구입취소</label></a></li><li><a tabindex="0"><label class="checkbox" title="몰상품구입환불"><input type="checkbox" value="31"> 몰상품구입환불</label></a></li><li><a tabindex="0"><label class="checkbox" title="몰상품판매"><input type="checkbox" value="32"> 몰상품판매</label></a></li><li><a tabindex="0"><label class="checkbox" title="몰상품판매환불"><input type="checkbox" value="33"> 몰상품판매환불</label></a></li></ul></div></span>
								</div>
							</div>
							<div class="col-xs-5 col-sm-5 col-md-5 text-right">
								<div style="margin-top: 12px;">
									<a id="btnExport">
										<button type="button" class="btn btn-purple-transparent btn-gradiation">
											EXCEL <i class="glyphicon glyphicon-download-alt"></i>
										</button>
									</a>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div id="goodList" style="margin-top: 10px;">
									<div class="goodlist-title">
										<div class="row">
											<div class="col-xs-4 col-md-2">
												<div class="name">거래일자</div>
											</div>
											<div class="col-xs-4 col-md-3">
												<div class="name">거래명</div>
											</div>
											<div class="col-xs-4 col-md-2">
												<div class="round">거래구분</div>
											</div>
											<div class="col-xs-4 col-md-2">
												<div class="day">거래금액</div>
											</div>
											<div class="col-xs-4 col-md-3">
												<div class="investAmt">
													거래 후 예치금 <span class="glyphicon glyphicon-question-sign hover" style="font-size: 12px;" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="auto bottom" data-html="true" data-content="기본 예치금(자동투자 예치금)" data-original-title="" title="">
															</span>
												</div>
											</div>
										</div>
									</div>

									<div id="goodListBody"></div>
									
									<table id="tblExport" style="display:none;" class="tblExport">
										<thead>
											<tr>
												<th scope="col">거래일자</th>
												<th scope="col">거래명</th>
												<th scope="col">거래구분</th>
												<th scope="col">거래금액</th>
												<th scope="col">거래 후 기본예치금</th>
												<th scope="col">거래 후 자동투자 예치금</th>
												<th scope="col">거래 후 총 예치금</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
									
									<div class="row" style="margin-top: 10px;">
										<div class="col-xs-12 col-md-push-6 col-md-6" style="margin-top: 5px;">
											<form id="depositHisListSrchForm" class="text-right" onsubmit="return false;">
												<div style="display: inline-block;">
													<input type="text" class="form-control srchText" name="SRCH_TEXT" placeholder="거래명으로 검색" maxlength="20">
												</div>
												<div style="display: inline-block;">
													<button type="button" class="btn btn-purple-transparent" id="depositHisListSrchTextBtn" style="height: 32px;">
														<i class="glyphicon glyphicon-search"></i>
													</button>
												</div>
												<div class="clearfix"></div>
											</form>
										</div>
										<div class="col-xs-12 col-md-pull-6 col-md-6 text-left" style="margin-top: 5px;">
											<ul class="pagination pagination-sm margin-0" id="PAGE_NAVI"></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
				<form name="form_chk" method="post">
					<input type="hidden" name="m" value="checkplusSerivce">	<!-- 필수 데이타로, 누락하시면 안됩니다. -->
					<input type="hidden" id="EncodeData" name="EncodeData" value="">	<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
				</form>
				
	<!-- 예치금 계좌 발급 Modal -->
	<div class="modal fade" id="vtAcntModal" role="dialog" aria-labelledby="vtAcntModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<div class="modal-title" id="vtAcntModalLabel">
						<div style="">
							예치금 계좌 발급을 위한 정보를 입력하여 주십시오
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="modal-body-title">
								출금계좌 등록
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-xs-5 col-sm-5 col-md-3">
							<label for="cusNm" class="control-label">예금주</label>
							<input class="form-control" id="cusNm" type="text" value="김도엽" readonly="">
						</div>
						<div class="form-group col-xs-7 col-sm-7 col-md-4">
							<label for="cusBankCdSelect" class="control-label">은행명</label>
							<select id="cusBankCdSelect" class="form-control" name="cusBankCd">
								<option value="">선택하세요</option>
								
									
										
											<option value="002">산업은행</option>
										
											<option value="003">기업은행</option>
										
											<option value="004">국민은행</option>
										
											<option value="007">수협중앙회</option>
										
											<option value="008">수출입은행</option>
										
											<option value="010">농협</option>
										
											<option value="011">농협중앙회</option>
										
											<option value="012">지역농·축협</option>
										
											<option value="020">우리은행</option>
										
											<option value="023">SC제일은행</option>
										
											<option value="027">한국씨티은행</option>
										
											<option value="031">대구은행</option>
										
											<option value="032">부산은행</option>
										
											<option value="034">광주은행</option>
										
											<option value="035">제주은행</option>
										
											<option value="037">전북은행</option>
										
											<option value="039">경남은행</option>
										
											<option value="045">새마을금고중앙회</option>
										
											<option value="048">신협중앙회</option>
										
											<option value="050">상호저축은행</option>
										
											<option value="052">모건스탠리은행</option>
										
											<option value="054">HSBC은행</option>
										
											<option value="055">도이치은행</option>
										
											<option value="057">제이피모간체이스은행</option>
										
											<option value="058">미즈호은행</option>
										
											<option value="059">미쓰비시도쿄UFJ은행</option>
										
											<option value="060">BOA은행</option>
										
											<option value="061">비엔피파리바은행</option>
										
											<option value="062">중국공상은행</option>
										
											<option value="063">중국은행</option>
										
											<option value="065">대화은행</option>
										
											<option value="066">교통은행</option>
										
											<option value="071">우체국</option>
										
											<option value="081">KEB하나은행</option>
										
											<option value="088">신한은행</option>
										
											<option value="089">케이뱅크</option>
										
											<option value="090">카카오뱅크</option>
										
											<option value="096">한국전자금융(주)</option>
										
											<option value="102">대신저축은행</option>
										
											<option value="103">에스비아이저축은행</option>
										
											<option value="104">에이치케이저축은행</option>
										
											<option value="105">웰컴저축은행</option>
										
											<option value="209">유안타증권</option>
										
											<option value="218">KB증권</option>
										
											<option value="221">골든브릿지투자증권</option>
										
											<option value="222">한양증권</option>
										
											<option value="223">리딩투자증권</option>
										
											<option value="224">BNK투자증권</option>
										
											<option value="225">IBK투자증권</option>
										
											<option value="227">KTB투자증권</option>
										
											<option value="238">미래에셋대우</option>
										
											<option value="240">삼성증권</option>
										
											<option value="243">한국투자증권</option>
										
											<option value="247">NH투자증권</option>
										
											<option value="261">교보증권</option>
										
											<option value="262">하이투자증권</option>
										
											<option value="263">HMC투자증권</option>
										
											<option value="264">키움증권</option>
										
											<option value="265">이베스트투자증권</option>
										
											<option value="266">SK증권</option>
										
											<option value="267">대신증권</option>
										
											<option value="269">한화투자증권</option>
										
											<option value="270">하나금융투자</option>
										
											<option value="278">신한금융투자</option>
										
											<option value="279">동부증권</option>
										
											<option value="280">유진투자증권</option>
										
											<option value="287">메리츠종합금융증권</option>
										
											<option value="290">부국증권</option>
										
											<option value="291">신영증권</option>
										
											<option value="292">케이프투자증권</option>
										
											<option value="293">한국증권금융</option>
										
											<option value="294">펀드온라인코리아</option>
										
											<option value="295">우리종합금융</option>
										
											<option value="296">삼성선물</option>
										
											<option value="297">외환선물</option>
										
											<option value="298">현대선물</option>
										
									
								
							</select>
						</div>
						<div class="form-group col-xs-12 col-sm-12 col-md-5">
							<label for="cusAccount" class="control-label">계좌번호</label>
							<input type="text" class="form-control" id="cusAccount" maxlength="14">
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="modal-body-strong">*출금계좌란?</span>
							<span class="modal-body-light">&nbsp;투자 원리금 및 상환 수익금을 출금받으실 계좌입니다.</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="modal-body-strong">*카카오뱅크를 이용하신다면?</span>
							<span class="modal-body-light">&nbsp;자유적금 계좌는 출금처리가 되지 않으니 입출금통장 계좌로 등록하시기 바랍니다.</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12 display-none" id="cusGb02Div">
							<span class="modal-body-strong">*사업자고객일 경우 거래은행 정책에 따라 예금주명이 변경될 수 있습니다.</span>
						</div>
					</div>
					<div id="pInfDiv" style="">
						<hr>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="modal-body-title">
									개인정보 등록
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-xs-6 col-sm-6 col-md-6">
								<label for="mpNo" class="control-label">휴대전화번호</label>
								<input class="form-control" id="mpNo" type="text" maxlength="11" readonly="">
							</div>
							<div class="form-group col-xs-6 col-sm-6 col-md-6">
								<label for="ssnNo" class="control-label">주민등록번호</label>
								<input class="form-control" id="ssnNo" type="text" maxlength="13">
								<input type="hidden" id="ci" value="">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12">
								<span class="modal-body-strong">※ 왜 주민등록번호가 필요한가요?</span>
								<span class="modal-body-light">&nbsp;주민등록번호는 현행 세법상 원천징수 납부에 사용됩니다.</span>
							</div>
							<div class="clearfix"></div>
							<div class="col-xs-12 col-sm-12 col-md-12">
								<span class="modal-body-light font-purple">&nbsp;주민등록번호 없이도 사이트 이용은 가능하며 최초 투자시 한 번만 등록하시면 됩니다.</span>
							</div>
							<div class="clearfix"></div>
							<div class="col-xs-12 col-sm-12 col-md-12">
								<span class="modal-body-strong">※ 미성년자는 가상계좌 발급시 추가 인증이 필요합니다.</span>
								<span class="modal-body-light">&nbsp;<a href="https://www.midrate.co.kr/info/noticeDetail/43" target="_blank">공지사항</a>을 참고하세요.</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-purple-transparent" onclick="fn_insertVtAcnt()">예치금 계좌 발급받기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
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
#mypage-content #mypage-main .wrap .box.right .subTitle {
    font-size: 15px;
    color: #3d3d3d;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide {
    text-align: center;
    padding: 10px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .box {
    background: url(${pageContext.request.contextPath}/resources/img/bg_loaninfo_type.png) center 0% no-repeat;
    background-size: 100% 100%;
    background-color: #fff;
    border-style: solid;
    padding: 5px;
    border-width: 1px;
    border-color: #dadada;
    border-radius: 4px;
    min-height: 300px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .top {
    font-size: 22px;
    border-bottom-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    padding: 20px 10px;
    font-weight: bold;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .middle {
    font-size: 16px;
    padding: 15px 45px 5px 45px;
    color: #712594;
    text-align: left;
    font-family: 'Noto Sans KR', sans-serif;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom {
    font-size: 14px;
    padding: 10px 0px 10px 40px;
    text-align: left;
}
.bottom ul {
	padding-left: 0px;
}
#mypage-content #mypage-main .wrap .box.right .loanReqGuide .bottom li {
    list-style-type: square;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
#mypage-content .wrap .box .withdrawGuide {
    font-size: 14px;
    padding: 20px;
}
#mypage-content .wrap .box .withdrawGuide li {
    list-style-type: square;
}
#mypage-content .wrap .box .withdraw-wrap {
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-title {
    font-weight: bold;
    color: #858585;
}
#mypage-content .wrap .box .withdraw-wrap .withdraw-content {
    font-weight: bold;
}
.withdrawGuide ul {
    padding-left: 0px;
    font-family: 'Noto Sans KR', sans-serif;
    color: #5a5a5a;
    letter-spacing: -0.4px;
}
#mypage-content .wrap .box .withdraw-box {
    border-style: solid;
    border-color: #d9d9de;
    border-width: 1px;
    border-radius: 4px;
    padding: 15px 30px;
    font-size: 16px;
}
#mypage-content .wrap .box .withdraw-box #withdrawAmt {
    text-align: right;
}
span.multiselect-native-select {
    position: relative;
}
span.multiselect-native-select select {
    border: 0!important;
    clip: rect(0 0 0 0)!important;
    height: 1px!important;
    margin: -1px -1px -1px -3px!important;
    overflow: hidden!important;
    padding: 0!important;
    position: absolute!important;
    width: 1px!important;
    left: 50%;
    top: 30px;
}
optgroup {
    font-weight: bold;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}
#mypage-content .goodlist-title {
    padding: 20px 0px;
    border-style: solid;
    border-width: 1px;
    border-color: #d9d9de;
    border-radius: 4px;
    background-color: #fff;
    margin-bottom: 8px;
    font-size: 15px;
    color: #858585;
    text-align: center;
}
#mypage-content .goodlist-title .row {
    margin-left: 0px;
    margin-right: 0px;
}

</style>
</html>