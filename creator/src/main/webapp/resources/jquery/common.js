//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
	if ($(".navbar").offset().top > 30) {
		$("#top-menu-bar").removeClass("top-nav-band");
		$("#top-menu-bar").addClass("top-nav-collapse");
		//$(".navbar-brand img").attr("src", "/images/logo/midrate/logo_midrate_eng_white.png");
		//$("#top-menu").removeClass('top-wrap');
		//$("#top-menu").addClass('top-fixed');
		$("#top-guide").hide();
		$("#topGuideTextDiv").hide();
	} else {
		$("#top-menu-bar").removeClass("top-nav-collapse");
		$("#top-menu-bar").addClass("top-nav-band");
		//$(".navbar-brand img").attr("src", "/images/logo/midrate/logo_midrate_eng_purple.png");
		//$("#top-menu").removeClass('top-fixed');
		//$("#top-menu").addClass('top-wrap');
		var pathname = location.pathname;
		if(pathname.substr(0,5) == "/loan") {
			$("#top-guide").show();
		} else {
			$("#top-guide").hide();
		}
		//$("#top-guide").show();
	}
});

/* 널 값 자동 변환처리 */
function gfn_isNull(str) {
	if (str == null) return true;
	if (str == "NaN") return true;
	if (new String(str).valueOf() == "undefined") return true;	
	var chkStr = new String(str);
	if( chkStr.valueOf() == "undefined" ) return true;
	if (chkStr == null) return true;	
	if (chkStr.toString().length == 0 ) return true;
	return false; 
}

/* 공용 폼 데이터 submit */
function ComSubmit(opt_formId) {
	this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
	this.url = "";
	 
	if(this.formId == "commonForm"){
		$("#commonForm")[0].reset();
	}
	 
	this.setUrl = function setUrl(url){
		this.url = url;
	};
	 
	this.addParam = function addParam(key, value){
		$("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
	};
	 
	this.submit = function submit(){
		var frm = $("#"+this.formId)[0];
		frm.action = this.url;
		frm.method = "post";
		frm.submit();
	};
}

/* 공통 Ajax 호출 */
var fv_ajaxCallback = "";
function ComAjax(opt_formId){
	this.url = "";	  
	this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
	this.param = "";
	 
	if(this.formId == "commonForm"){
		var frm = $("#commonForm");
		if(frm.length > 0){
			frm.remove();
		}
		var str = "<form id='commonForm' name='commonForm'></form>";
		$('body').append(str);
	}
	 
	this.setUrl = function setUrl(url){
		this.url = url;
	};
	 
	this.setCallback = function setCallback(callBack){
		fv_ajaxCallback = callBack;
	};
 
	this.addParam = function addParam(key,value){ 
		this.param = this.param + "&" + key + "=" + value; 
	};
	 
	this.ajax = function ajax(){
		if(this.formId != "commonForm"){
			this.param += "&" + $("#" + this.formId).serialize();
		}
		$.ajax({
			url : this.url,	
			type : "POST",
			data : this.param,
			async : false, 
			success : function(data, status) {
				if(typeof(fv_ajaxCallback) == "function"){
					fv_ajaxCallback(data);
				}
				else {
					eval(fv_ajaxCallback + "(data);");
				}
			}
			/*
			,beforeSend:function(){
				$('.wrap-loading').removeClass('display-none');
			},complete:function(){
				$('.wrap-loading').addClass('display-none');
			}
			*/
		});
	};
}

/* 페이지네이션 처리 개선 20170310 */

/* var total_pages = data;
var logid = '30';

if($('#pagination').data("twbs-pagination"))
  $('#pagination').twbsPagination('destroy');


$('#pagination').twbsPagination({
  totalPages: total_pages,
  visiblePages: 7,
  onPageClick: function (event, page) {
	  $('#container').load('load_data.php',{page:page,id:logid});
  }
});

$('#container').load('load_data.php',{id:logid});
 */
//var gfv_eventName = null;
var gfv_pageIndex = null;
function gfn_renderPaging(params){
	var divId = params.divId;	// div ID
	var totalCount = params.totalCount;	// 전체 건수
	var recordCount = params.recordCount;	// 페이지당 표시할 건수
	var currentPage = 0;	// 현재 페이지
	//console.log("gfv_pageIndex " + gfv_pageIndex);
	if(gfv_pageIndex == null) {
		currentPage = $("#"+divId).twbsPagination('getCurrentPage');	// js에서 가져온 페이지
	} else {
		currentPage = gfv_pageIndex;	// 화면에서 지정한 페이지
		gfv_pageIndex = null;
	}
	//console.log("currentPage " + currentPage);
	var visiblePages = 5;
	//gfv_eventName = params.eventName;
	var eventName = params.eventName;
	$("#"+divId).twbsPagination('destroy');
	$("#"+divId).twbsPagination({
		startPage: currentPage,
		totalPages: Math.ceil(totalCount/recordCount),
		initiateStartPageClick: false,
		first: "&laquo;",
		prev: "&#60;",
		next: "&#62;",
		last: "&raquo;",
		visiblePages: visiblePages,
		onPageClick: function (event, page) {
			_movePage(eventName, page);
		}
	});
}

function _movePage(eventName, value){
	//$("#"+gfv_pageIndex).val(value);
	if(typeof(eventName) == "function"){
		eventName(value);
	} else {
		eval(eventName + "(value);");
	}
}

/*
divId : 페이징 태그가 그려질 div
pageIndx : 현재 페이지 위치가 저장될 input 태그 id
recordCount : 페이지당 레코드 수
totalCount : 전체 조회 건수 
eventName : 페이징 하단의 숫자 등의 버튼이 클릭되었을 때 호출될 함수 이름
*/
/*var gfv_pageIndex = null;
function gfn_renderPaging2(params){
	var divId = params.divId; //페이징이 그려질 div id
	gfv_pageIndex = params.pageIndex; //현재 위치가 저장될 input 태그
	var totalCount = params.totalCount; //전체 조회 건수
	var currentIndex = $("#"+params.pageIndex).val(); //현재 위치
	if($("#"+params.pageIndex).length == 0 || gfn_isNull(currentIndex) == true){
		currentIndex = 1;
	}
	 
	var recordCount = params.recordCount; //페이지당 레코드 수
	if(gfn_isNull(recordCount) == true){
		recordCount = 20;
	}
	var totalIndexCount = Math.ceil(totalCount / recordCount); // 전체 인덱스 수
	gfv_eventName = params.eventName;

	$("#"+divId).empty();
	var preStr = "";
	var postStr = "";
	var str = "";
	var indexCnt = 5;
	
	var first = (parseInt((currentIndex-1) / indexCnt) * indexCnt) + 1;
	var last = (parseInt((totalIndexCount)/indexCnt) == parseInt((currentIndex-1)/indexCnt)) ? totalIndexCount%indexCnt : indexCnt;
	var prev = (parseInt((currentIndex-1)/indexCnt)*indexCnt) - 9 > 0 ? (parseInt((currentIndex-1)/indexCnt)*indexCnt) - 9 : 1; 
	var next = (parseInt((currentIndex-1)/indexCnt)+1) * indexCnt + 1 < totalIndexCount ? (parseInt((currentIndex-1)/indexCnt)+1) * indexCnt + 1 : totalIndexCount;

	preStr += "<nav><ul class=\"pagination pagination-sm\">";
	
	if(totalIndexCount > indexCnt) { //전체 인덱스가 indexCnt가 넘을 경우, 맨앞, 앞 태그 작성
		if(currentIndex == 1) {	//현재 인덱스가 1이면 맨 앞 태그 비활성화
			preStr += "<li class=\"disabled\">";
		} else {
			preStr += "<li>";
		}
		preStr += "<a href='#this' onclick='_movePage(1)' aria-label=\"First\" class=\"first\">" +
				"<span aria-hidden=\"true\">&laquo;</span></a></li>";
		preStr += "<li><a href='#this' onclick='_movePage("+prev+")' aria-label=\"Previous\">" +
				"<span aria-hidden=\"true\">&#60;</span></a></li>";
	} else if(totalIndexCount <=indexCnt && totalIndexCount > 1) { //전체 인덱스가 indexCnt보다 작을경우, 맨앞 태그 작성
		if(currentIndex == 1) {	//현재 인덱스가 1이면 맨 앞 태그 비활성화
			preStr += "<li class=\"disabled\">";
		} else {
			preStr += "<li>";
		}
		preStr += "<a href='#this' onclick='_movePage(1)' aria-label=\"First\" class=\"first\">" +
				"<span aria-hidden=\"true\">&laquo;</span></a></li>";
	}
	
	if(totalIndexCount > indexCnt) { //전체 인덱스가 indexCnt이 넘을 경우, 맨뒤, 뒤 태그 작성
		postStr += "<li><a href='#this' onclick='_movePage("+next+")' aria-label=\"Next\">" +
				"<span aria-hidden=\"true\">&#62;</span></a></li>";
		if(currentIndex == totalIndexCount) {	//현재 인덱스가 마지막이면 맨 뒤 태그 비활성화
			postStr += "<li class=\"disabled\">";
		} else {
			postStr += "<li>";
		}
		postStr += "<a href='#this' onclick='_movePage("+totalIndexCount+")' aria-label=\"Last\" class=\"last\">" +
				"<span aria-hidden=\"true\">&raquo;</span></a></li>";
	} else if(totalIndexCount <=indexCnt && totalIndexCount > 1) { //전체 인덱스가 indexCnt보다 작을경우, 맨뒤 태그 작성
		if(currentIndex == totalIndexCount) {	//현재 인덱스가 마지막이면 맨 뒤 태그 비활성화
			postStr += "<li class=\"disabled\">";
		} else {
			postStr += "<li>";
		}
		postStr += "<a href='#this' onclick='_movePage("+totalIndexCount+")' aria-label=\"Last\" class=\"last\">" +
				"<span aria-hidden=\"true\">&raquo;</span></a></li>";
	}
	
	for(var i=first; i<(first+last); i++) {
		if(i != currentIndex){
			str += "<li><a href='#this' onclick='_movePage("+i+")'>"+i+"</a></li>";
		} else {
			str += "<li class=\"active\"><a href='#this' onclick='_movePage("+i+")'>"+i+"</a></li>";
		}
	}
	
	postStr += "</ul></nav>";
	
	$("#"+divId).append(preStr + str + postStr);
}*/

/* 금액 3자리마다 콤마 추가 */
function comma(str) {
	return str.toString().replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

// 특정 위치로 부드럽게 이동
function gfn_scrollLink(obj, offset) {
	var position = $("#" + obj).offset();
	$("html, body").animate({
		scrollTop : position.top - offset
	}, 1000);
}

// 주소찾기 팝업 테마 설정
var addrThemeObj = {
	bgColor: "#EFEFEF", //바탕 배경색
	searchBgColor: "#9E5D9F", //검색창 배경색
	contentBgColor: "#FFFFFF", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
	pageBgColor: "#FFFFFF", //페이지 배경색
	//textColor: "", //기본 글자색
	queryTextColor: "#FFFFFF", //검색창 글자색
	postcodeTextColor: "#712594", //우편번호 글자색
	emphTextColor: "#333333", //강조 글자색
	outlineColor: "#FFFFFF" //테두리
};

// zipCd : 우편번호 id, addr1 : 주소1 id, addr2 : 주소2 id
function gfn_findAddr(zipCd,addr1,addr2) {
	new daum.Postcode({
		theme: addrThemeObj,
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullAddr = ''; // 최종 주소 변수
			var extraAddr = ''; // 조합형 주소 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				fullAddr = data.roadAddress;

			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				fullAddr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			if(data.userSelectedType === 'R'){
				//법정동명이 있을 경우 추가한다.
				if(data.bname !== ''){
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if(data.buildingName !== ''){
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			//document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
			//document.getElementById('address').value = fullAddr;
			$("#"+zipCd).val(data.zonecode);
			$("#"+addr1).val(fullAddr);

			// 커서를 상세주소 필드로 이동한다.
			//document.getElementById('address2').focus();
			$("#"+addr2).focus();
		}
	}).open();
}

// 0자리수 2자리로 조정
function itoStr($num) {
	$num < 10 ? $num = '0'+$num : $num;
	return $num.toString();
}

/* 마스킹 처리 */
//이름 
function maskCusNm(str) {
	if (str == undefined || str === '') {
		return '';
	}
	var firstStr = str.substr(0,1);
	var lastStr = str.substr(str.length-1,1);
	var star = "";
	for(var i=0; i<str.length-2; i++) {
		star += "*";
	}
	str =firstStr + star + lastStr; 
	return str;
}

// 주민번호 
function maskSsnNo(str) {
	if (str == undefined || str === '') {
		return '';
	}
	str = str.replace(/-/g, '').replace(/([0-9]{6})([0-9]{7})/g, "$1-$2");
	return str.replace(/.{6}$/, "******");
}

// 이메일
function maskEmail(str) {
	if (str == undefined || str === '') {
		return '';
	}
	
	var at = str.indexOf("@");
	var firstStr = str.substr(0,at);
	var lastStr = str.substr(at+1,str.length);
	var star = "";
	
	for(var i=0; i<firstStr.length-4; i++) {
		star += "*";
	}
	
	firstStr = firstStr.substr(0,4) + star;
	str =firstStr + "@" + lastStr;
	return str;
}

function maskMpNo(str) {
	var pattern = /^(\d{3})-?(\d{1,2})\d{2}-?\d(\d{3})$/;
	var result = "";
	if(!str) return result;

	if(pattern.test(str)) {
		result = str.replace(pattern, '$1-$2**-*$3');
	} else {
		result = "***";
	}
	return result;
}

function mpNoFomatter(num, type) {
	var formatNum = '';
	if (num.length == 11) {
		if (type == 0) {
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
		} else {
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		}
	} else if (num.length == 8) {
		formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	} else {
		if (num.indexOf('02') == 0) {
			if (type == 0) {
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');
			} else {
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
			}
		} else {
			if (type == 0) {
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');
			} else {
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
			}
		}
	}
	return formatNum;
}

//계좌번호
function maskAcntNo(str) {
	if (str == undefined || str === '') {
		return '';
	}
	var firstStr = str.substr(0,5);
	return firstStr + "*****";
}

// 마이페이지 메뉴 가기
function gfn_goMypageMenu(menuId) {
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/mypage/"+menuId);
	comSubmit.submit();
}

// 해당이름의 쿠키를 가져온다.
function gfn_getCookie(cookie_name) {
	var isCookie = false;
	var start, end;
	var i = 0;

	// cookie 문자열 전체를 검색
	while(i <= document.cookie.length) {
		start = i;
		end = start + cookie_name.length;
		// cookie_name과 동일한 문자가 있다면
		if(document.cookie.substring(start, end) == cookie_name) {
			isCookie = true;
			break;
		}
		i++;
	}

	// cookie_name 문자열을 cookie에서 찾았다면
	if(isCookie) {
		start = end + 1;
		end = document.cookie.indexOf(";", start);
		// 마지막 부분이라는 것을 의미(마지막에는 ";"가 없다)
		if(end < start)
			end = document.cookie.length;
		// cookie_name에 해당하는 value값을 추출하여 리턴한다.
		return document.cookie.substring(start, end);
	}
	// 찾지 못했다면
	return "";
}

// 쿠키 등록
function gfn_setCookie(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

function gfn_sendSns(sns, url, txt)
{
	var o;
	var _url = encodeURIComponent(url);
	var _txt = encodeURIComponent(txt);
	var _br  = encodeURIComponent('\r\n');
 
	switch(sns)
	{
		case 'facebook':
			o = {
				method:'popup',
				url:'http://www.facebook.com/sharer/sharer.php?u=' + _url
			};
			break;
 
		case 'twitter':
			o = {
				method:'popup',
				url:'http://twitter.com/intent/tweet?text=' + _txt + '&url=' + _url
			};
			break;
 
		case 'me2day':
			o = {
				method:'popup',
				url:'http://me2day.net/posts/new?new_post[body]=' + _txt + _br + _url + '&new_post[tags]=epiloum'
			};
			break;
 
		case 'kakaotalk':
			o = {
				method:'web2app',
				param:'sendurl?msg=' + _txt + '&url=' + _url + '&type=link&apiver=2.0.1&appver=2.0&appid=dev.epiloum.net&appname=' + encodeURIComponent('midrate'),
				a_store:'itms-apps://itunes.apple.com/app/id362057947?mt=8',
				g_store:'market://details?id=com.kakao.talk',
				a_proto:'kakaolink://',
				g_proto:'scheme=kakaolink;package=com.kakao.talk'
			};
			break;
 
		case 'kakaostory':
			o = {
				method:'web2app',
				param:'posting?post=' + _txt + _br + _url + '&apiver=1.0&appver=2.0&appid=dev.epiloum.net&appname=' + encodeURIComponent('midrate'),
				a_store:'itms-apps://itunes.apple.com/app/id486244601?mt=8',
				g_store:'market://details?id=com.kakao.story',
				a_proto:'storylink://',
				g_proto:'scheme=kakaolink;package=com.kakao.story'
			};
			break;
 
		case 'band':
			o = {
				method:'web2app',
				param:'create/post?text=' + _txt + _br + _url,
				a_store:'itms-apps://itunes.apple.com/app/id542613198?mt=8',
				g_store:'market://details?id=com.nhn.android.band',
				a_proto:'bandapp://',
				g_proto:'scheme=bandapp;package=com.nhn.android.band'
			};
			break;
 
		default:
			alert('지원하지 않는 SNS입니다.');
			return false;
	}
 
	switch(o.method)
	{
		case 'popup':
			window.open(o.url);
			break;
 
		case 'web2app':
			if(navigator.userAgent.match(/android/i))
			{
				// Android
				setTimeout(function(){ location.href = 'intent://' + o.param + '#Intent;' + o.g_proto + ';end'}, 100);
			}
			else if(navigator.userAgent.match(/(iphone)|(ipod)|(ipad)/i))
			{
				// Apple
				setTimeout(function(){ location.href = o.a_store; }, 200);		  
				setTimeout(function(){ location.href = o.a_proto + o.param }, 100);
			}
			else
			{
				alert('이 기능은 모바일에서만 사용할 수 있습니다.');
			}
			break;
	}
}

function gfn_getBrowserTypeCd(){
	var BrowserTypeCd = "PC";
	var filter = "win16|win32|win64|mac";
	 
	if(navigator.platform){
		if(0 > filter.indexOf(navigator.platform.toLowerCase())){
			BrowserTypeCd = "MB";
		}
	}
	return BrowserTypeCd;
}

function gfn_getBrowserNm(browserTypeCd){
	var browserNm = "";
	
	if(browserTypeCd == "PC") {
		browserNm = gfn_getPCBrowserNm();
	} else {
		browserNm = gfn_getMBBrowserNm();
	}
	return browserNm;
}

function gfn_getPCBrowserNm(){
	var _ua = navigator.userAgent;
	var rv = -1;
	 
	//IE 11,10,9,8
	var trident = _ua.match(/Trident\/(\d.\d)/i);
	if( trident != null )
	{
		if( trident[1] == "7.0" ) return rv = "IE" + 11;
		if( trident[1] == "6.0" ) return rv = "IE" + 10;
		if( trident[1] == "5.0" ) return rv = "IE" + 9;
		if( trident[1] == "4.0" ) return rv = "IE" + 8;
	}
	 
	//IE 7...
	if( navigator.appName == 'Microsoft Internet Explorer' ) return rv = "IE" + 7;
	 
	//other
	var agt = _ua.toLowerCase();
	if (agt.indexOf("chrome") != -1) return 'Chrome';
	if (agt.indexOf("opera") != -1) return 'Opera'; 
	if (agt.indexOf("staroffice") != -1) return 'Star Office'; 
	if (agt.indexOf("webtv") != -1) return 'WebTV'; 
	if (agt.indexOf("beonex") != -1) return 'Beonex'; 
	if (agt.indexOf("chimera") != -1) return 'Chimera'; 
	if (agt.indexOf("netpositive") != -1) return 'NetPositive'; 
	if (agt.indexOf("phoenix") != -1) return 'Phoenix'; 
	if (agt.indexOf("firefox") != -1) return 'Firefox'; 
	if (agt.indexOf("safari") != -1) return 'Safari'; 
	if (agt.indexOf("skipstone") != -1) return 'SkipStone'; 
	if (agt.indexOf("netscape") != -1) return 'Netscape'; 
	if (agt.indexOf("mozilla/5.0") != -1) return 'Mozilla';
}

function gfn_getMBBrowserNm(){
	var browserNm = "";
	var mobileArr = new Array("iPhone", "iPod", "BlackBerry", "Android", "Windows CE", "LG", "MOT", "SAMSUNG", "SonyEricsson");
	for(var txt in mobileArr){
		if(navigator.userAgent.match(mobileArr[txt]) != null){
			browserNm = mobileArr[txt];
			break;
		} else {
			browserNm = "etc";
		}
	}
	
	return browserNm;
}

function gfn_closeIt(jspNm) {
	session.removeAttribute(jspNm+"Time");
}

// 숫자를 한글로 변환
function gfn_viewKorean(num) {	
	var hanA = new Array("","일","이","삼","사","오","육","칠","팔","구","십");
	var danA = new Array("","십","백","천","","십","백","천","","십","백","천","","십","백","천");
	var result = "";
	for(i=0; i<num.length; i++) {
		str = "";
		han = hanA[num.charAt(num.length-(i+1))];
		if(han != "")
			str += han+danA[i];
		if(i == 4) str += "만 ";
		if(i == 8) str += "억 ";
		if(i == 12) str += "조 ";
		result = str + result;
	}
	if(num != 0)
		//result = result + "원";
		result = result;
	return result;
}

// 숫자를 전화번호 형식으로 변환
function gfn_viewTelNo(num,type){
	var formatNum = '';
	if(num.length==11){
		if(type==0){
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
		}else{
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		}
	}else if(num.length==8){
		formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	}else{
		if(num.indexOf('02')==0){
			if(type==0){
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');
			}else{
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
			}
		}else{
			if(type==0){
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');
			}else{
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
			}
		}
	}
	return formatNum;
}

//숫자를 계좌번호 형식(농협)으로 변환
function gfn_viewAcntNo(num){
	return num.replace(/(\d{3})(\d{4})(\d{4})(\d{2})/, '$1-$2-$3-$4');
}

// 주민번호 유효성 체크
function gfn_checkSsnNo(ssnNo) {
	var input = ssnNo;
	var mul = [2,3,4,5,6,7,8,9,2,3,4,5];
	var sum = 0;

	for(var i =0; i < mul.length; i++) {
		var digit = parseInt(input[i]);
		sum += digit * mul[i];
	}

	var eleven_spare = sum % 11;
	var confirm_num = 11 - eleven_spare;

	if(confirm_num > 9) {
		confirm_num -= 10;
	}

	if(confirm_num == parseInt(input[input.length - 1]) && input.length == 13) {
		return true;
	} else {
		return false;
	}
}

function gfn_checkMpNo(mpNo) {
	var regExp = /(0[1|7][0|1|6|9|7])(\d{3}|\d{4})(\d{4}$)/g;
	var result = regExp.exec(mpNo);
	if(result) return true;
	else return false;
}

function gfn_checkKoreanOnly(koreanChar) {
	if(koreanChar == null) return false;

	for(var i=0; i < koreanChar.length; i++){
		var c=koreanChar.charCodeAt(i);
		//( 0xAC00 <= c && c <= 0xD7A3 ) 초중종성이 모인 한글자
		//( 0x3131 <= c && c <= 0x318E ) 자음 모음
		if( !( ( 0xAC00 <= c && c <= 0xD7A3 ) || ( 0x3131 <= c && c <= 0x318E ) ) ) {
			return false ; 
		} 
	}
	return true;
}

function gfn_checkDateSize8(date) {
	/*if(date == null) return false;
	var pattern = /[0-9]{4}[0-9]{2}[0-9]{2}/;
	if(pattern.test(date)) {
		return true;
	} else {
		return false;
	}
	*/
	var yyyyMMdd = String(date);
	var year = yyyyMMdd.substring(0, 4);
	var month = yyyyMMdd.substring(4, 6);
	var day = yyyyMMdd.substring(6, 8);

	if (!gfn_isNumber(date) || date.length != 8)
		return false;

	if (Number(month) > 12 || Number(month) < 1)
		return false;

	if (Number(gfn_lastDay(date)) < day)
		return false;

	return true;
}

function gfn_isNumber(x) {
	var reg = /^\d+$/;
	return reg.test(x);
}

function gfn_isNumeric(num, opt){
	// 좌우 trim(공백제거)을 해준다.
	num = String(num).replace(/^\s+|\s+$/g, "");

	if(typeof opt == "undefined" || opt == "1") {
		// 모든 10진수 (부호 선택, 자릿수구분기호 선택, 소수점 선택)
		var regex = /^[+\-]?(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+){1}(\.[0-9]+)?$/g;
	} else if(opt == "2") {
		// 부호 미사용, 자릿수구분기호 선택, 소수점 선택
		var regex = /^(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+){1}(\.[0-9]+)?$/g;
	} else if(opt == "3") {
		// 부호 미사용, 자릿수구분기호 미사용, 소수점 선택
		var regex = /^[0-9]+(\.[0-9]+)?$/g;
	} else {
		// only 숫자만(부호 미사용, 자릿수구분기호 미사용, 소수점 미사용)
		var regex = /^[0-9]$/g;
	}

	if(regex.test(num)){
		num = num.replace(/,/g, "");
		return isNaN(num) ? false : true;
	} else {
		return false;
	}
}


출처: http://sometimes-n.tistory.com/34 [종종 올리는 블로그]

function gfn_lastDay(date_str) {
	var yyyyMMdd = String(date_str);
	var days = "31";
	var year = yyyyMMdd.substring(0, 4);
	var month = yyyyMMdd.substring(4, 6);

	if (Number(month) == 2) {
		if (gfn_isLeapYear(year + month + "01"))
			days = "29";
		else
			days = "28";
	} else if (Number(month) == 4 || Number(month) == 6 || Number(month) == 9
			|| Number(month) == 11)
		days = "30";

	return days;
}

function gfn_isLeapYear(date_str) {
	var year = date_str.substring(0, 4);
	if (year % 4 == 0) {
		if (year % 100 == 0)
			return (year % 400 == 0);
		else
			return true;
	} else
		return false;
}


/* MIDRATE V2 */
function gfn_initTabMenu(topContentsID) {
	var topContents = document.getElementById(topContentsID);
	var tabAnchor = topContents.getElementsByTagName("a");
	var i = 0;

	for(i=0; i<tabAnchor.length; i++) {
		if (tabAnchor.item(i).className == "tab")
			thismenu = tabAnchor.item(i);
		else
			continue;

		thismenu.container = topContents;
		thismenu.targetEl = document.getElementById(tabAnchor.item(i).href.split("#")[1]);
		thismenu.targetEl.style.display = "none";
		thismenu.imgEl = thismenu.getElementsByTagName("img").item(0);
		thismenu.onclick = gfn_tabMenuClick;
		thismenu.onfocus = gfn_tabMenuClick;
		
		if (!thismenu.container.first)
			thismenu.container.first = thismenu;
	}
	topContents.first.onclick();
	topContents.first.onfocus();
}

function gfn_tabMenuClick() {
	currentmenu = this.container.current;
	if (currentmenu != this) {
		if (currentmenu) {
			currentmenu.targetEl.style.display = "none";
			if (currentmenu.imgEl) {
				currentmenu.imgEl.src = currentmenu.imgEl.src.replace("_on.png", "_off.png");
			} else {
				currentmenu.className = currentmenu.className.replace(" on", "");
			}
		}

		this.targetEl.style.display = "block";
		if (this.imgEl) {
			this.imgEl.src = this.imgEl.src.replace("_off.png", "_on.png");
		} else {
			this.className += " on";
		}
		this.container.current = this;
	}
	return false;
}

// 문자열 내 특수문자 변환
function gfn_replaceChar(str) {
	str = str.replace(/\&/g, "");
	//str = str.replace(/\@/g, "");
	str = str.replace(/\'/g, "\"");
	str = str.replace(/\"/g, "\"");
	str = str.replace(/\$/g, "달러");
	str = str.replace(/\%/g, "퍼센트");
	return str;
}

// textarea 개행 처리
function gfn_replaceNtoBR(str) {
	return str.replace(/\n/g, "<br>");
}

function gfn_replaceBRtoN(str) {
	return str.replace(/<br>/gi, "\r\n");
}

// 특수문자 변환
function gfn_replaceSpecialChar(str){
	str = str.replace(/</g,"&lt;");
	str = str.replace(/>/g,"&gt;");
	str = str.replace(/\"/g,"&quot;");
	str = str.replace(/\'/g,"&#39;");
	str = str.replace(/\n/g,"<br/>");
	str = str.replace(/%/g,"&#37;");
	return str;
}

// MySql용 역슬래쉬 추가
function gfn_addSlashes(str){
	str = str.replace(/</g, "\\&lt;");
	str = str.replace(/>/g, "\\&gt;");
	str = str.replace(/\"/g, "\\&quot;");
	str = str.replace(/\'/g, "\\&#39;");
	str = str.replace(/%/g, "\%");
	return str;
}

// close 버튼으로 div 닫기
function gfn_closeDiv(divId) {
	$('#'+divId).addClass('animated flipOutX').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
		$('#'+divId).hide();
	});
}

function gfn_replaceKorDate(date) {
	if(date == null) return false;
	date = date.replace(/-/g, "");
	var year = parseInt(date.substr(0,4));
	var month = parseInt(date.substr(4,2));
	var day = parseInt(date.substr(6,2));
	return year+"년 "+month+"월 "+day+"일";
}

function gfn_setNumber(evt, pattern) {
	var charCode = (evt.which) ? evt.which : event.keyCode;
	if(charCode != 13) {
		if(charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
			return false;
		}
	}
	
	// Textbox value
	var _value = event.srcElement.value;
	
	if(pattern == "-2") {
		// 소수점(.)이 두번 이상 나오지 못하게
		var _pattern0 = /^\d*[.]\d*$/; // 현재 value값에 소수점(.) 이 있으면 . 입력불가
		if(_pattern0.test(_value)) {
			if(charCode == 46) {
				return false;
			}
		}
		
		// 1000 이하의 숫자만 입력가능
		var _pattern1 = /^\d{4}$/; // 현재 value값이 3자리 숫자이면 . 만 입력가능
		if (_pattern1.test(_value)) {
			if (charCode != 46) {
				alert("9999 이하의 숫자만 입력가능합니다");
				return false;
			}
		}
		
		// 소수점 둘째자리까지만 입력가능
		var _pattern2 = /^\d*[.]\d{2}$/; // 현재 value값이 소수점 둘째짜리 숫자이면 더이상 입력 불가
		if (_pattern2.test(_value)) {
			alert("소수점 둘째자리까지만 입력가능합니다.");
			return false;
		}
	} else if(pattern == "6") {
		// 1000000 미만의 숫자만 입력가능
		var _pattern1 = /^\d{6}$/;
		if (_pattern1.test(_value)) {
			alert("999999 이하의 숫자만 입력가능합니다");
			return false;
		}
	} else if(pattern == "8") {
		// 100000000 이하의 숫자만 입력가능
		var _pattern1 = /^\d{8}$/;
		if (_pattern1.test(_value)) {
			alert("99999999 이하의 숫자만 입력가능합니다");
			return false;
		}
	} else if(pattern == "3") {
	}
	return true;
}
