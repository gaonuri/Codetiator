<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<script type="text/javascript">
$(document).ready(function(){
	$("#logout_btn").click(function(){

		$.post("${pageContext.request.contextPath}/logouttime",
				{
					user_num:$("#user_num").val(),
					busi_num:$("#busi_num").val()
				},
				function(data,status){
				}
		);//post
	});//click
});//ready

</script>
<style>
header, section, footer, article, nav {
    display: block;
}
footer {
    background-color: #333;
    color: #8c8c8c;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
.container {
    width: 1170px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
footer .footer-row {
    padding: 50px 0;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-4 {
    width: 33.33333333%;
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
footer .company {
    color: #fff;
}
a:link, a:visited {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}
a {
    background-color: transparent;
}
footer .company .brand_logo img {
    max-width: 150px;
}
img {
    vertical-align: middle;
    border: 0;
}
footer .company .logo {
    margin-top: 10px;
}
footer .company .email {
    margin-top: 10px;
}
footer .company .email a {
    color: #fff;
    font-size: 16px;
}
footer .company .telno a {
    color: #fff;
    font-size: 16px;
}
span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
footer .company .logo {
    margin-top: 10px;
}
footer .row.logo {
    padding: 10px 0;
}
.img-responsive, .thumbnail > img, .thumbnail a > img, .carousel-inner > .item > img, .carousel-inner > .item > a > img {
    display: block;
    max-width: 100%;
    height: auto;
}
.col-md-8 {
    width: 66.66666667%;
}
.col-md-3 {
    width: 25%;
}
footer .list-unstyled.main {
    font-size: 12px;
    margin-bottom: 20px;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
footer .list-unstyled.main li {
    color: #8c8c8c;
    font-size: 16px;
    font-weight: 400;
}
ul, li {
    list-style-type: none;
}
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
footer .list-unstyled.sub li {
    margin-top: 10px;
}
footer .list-unstyled.sub li a {
    color: #ffffff;
    font-size: 16px;
}
.xd {
    display: none;
}
footer hr {
    border-width: 1px;
    border-color: #8c8c8c;
    margin-top: 0px;
    margin-bottom: 0px;
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
    border-style: inset;
    border-width: 1px;
    height: 0;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
footer .footer-row {
    padding: 50px 0;
}
.col-md-push-8 {
    left: 66.66666667%;
}
html, body, div, ul, li, a, header, footer, section, article, nav, p, span, h1, h2, h3, h4 {
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: none;
}
footer .sns h4 {
    margin-top: 0px;
    font-weight: 500;
    color: #fff;
}
h4, .h4 {
    font-size: 18px;
}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}
footer .row.logo {
    padding: 10px 0;
}
.col-md-12 {
    width: 100%;
}
footer .sns img {
    margin-top: 10px;
    height: 28px;
}
.fb_reset {
    background: none;
    border: 0;
    border-spacing: 0;
    color: #000;
    cursor: auto;
    direction: ltr;
    font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
    font-size: 11px;
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    letter-spacing: normal;
    line-height: 1;
    margin: 0;
    overflow: visible;
    padding: 0;
    text-align: left;
    text-decoration: none;
    text-indent: 0;
    text-shadow: none;
    text-transform: none;
    visibility: visible;
    white-space: normal;
    word-spacing: normal;
}
.fb_reset>div {
    overflow: hidden;
}
button, iframe {
    display: block;
    margin: 0 auto;
}
.fb_iframe_widget {
    display: inline-block;
    position: relative;
}
.fb_iframe_widget span {
    display: inline-block;
    position: relative;
    text-align: justify;
}
.fb_iframe_widget iframe {
    position: absolute;
}
footer .sns h4 {
    margin-top: 0px;
    font-weight: 500;
    color: #fff;
}
#plusfriend-chat-button a img {
    height: 36px;
}
.col-md-pull-4 {
    right: 33.33333333%;
}
footer .legal_copyright {
    font-size: 14px;
}
footer p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
footer .borrower-notification {
    font-size: 15px;
    color: rgba(255,255,255,0.8);
}
b, strong {
    font-weight: bold;
}
footer .legal_copyright {
    font-size: 14px;
}
</style>
</head>
	    <!--footer start-->
	    <footer>
	<div class="container">
		<div class="row footer-row">
			<div class="col-xs-12 col-sm-4 col-md-4" style="margin-top: -30px;">
				<div class="company">
					<a class="brand_logo" href="/">
						<img src="${pageContext.request.contextPath}/resources/footlogo.png" alt="creator">
					</a>
					<div class="logo">
						<a href="https://www.facebook.com/creator.co.kr/" target="_blank">
							<img id="fBLogo" src="${pageContext.request.contextPath}/resources/img/btn_footer_sns_facebook_default.png" alt="creator">
						</a>
						<a href="https://brunch.co.kr/@creator" target="_blank">
							<img id="brunchLogo" src="${pageContext.request.contextPath}/resources/img/btn_footer_sns_brunch_default.png" alt="creator">
						</a>
						<a href="https://blog.naver.com/creator" target="_blank">
							<img id="naverLogo" src="${pageContext.request.contextPath}/resources/img/btn_footer_sns_naver_default.png" alt="creator">
						</a>
						<a href="https://goto.kakao.com/@creator" target="_blank">
							<img id="kakaoLogo" src="${pageContext.request.contextPath}/resources/img/btn_footer_sns_kakao_default.png" alt="creator">
						</a>
					</div>
					<div class="email">
						<a href="mailto:contact@creator.co.kr" style="letter-spacing: 0.05em;">
							contact@creator.co.kr
						</a>
					</div>
					<div class="telno">
						<a href="tel:+025464076">
							<span>(02) 777-7777</span>
						</a>
					</div>
					<div class="addr">
						서울특별시 강남구 논현로77길 77, 7층
					</div>
					
					<div class="row logo">
						<div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: -15px;">
							<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=faa6e127dca87&amp;origin=https%3A%2F%2Fwww.creator.co.kr" style="border: none;"></iframe></div><div></div></div></div>
							<div class="fb-like fb_iframe_widget" data-href="https://www.creator.co.kr" data-colorscheme="dark" data-layout="button_count" data-action="like" data-size="large" data-show-faces="true" data-share="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=779679155494047&amp;color_scheme=dark&amp;container_width=360&amp;href=https%3A%2F%2Fwww.creator.co.kr%2F&amp;layout=button_count&amp;locale=ko_KR&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=large"><span style="vertical-align: bottom; width: 198px; height: 28px;"><iframe name="f311d471cc8ec58" width="1000px" height="1000px" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v2.5/plugins/like.php?action=like&amp;app_id=779679155494047&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Dfdb8ea088f3c08%26domain%3Dwww.creator.co.kr%26origin%3Dhttps%253A%252F%252Fwww.creator.co.kr%252Ffaa6e127dca87%26relation%3Dparent.parent&amp;color_scheme=dark&amp;container_width=360&amp;href=https%3A%2F%2Fwww.creator.co.kr%2F&amp;layout=button_count&amp;locale=ko_KR&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=large" style="border: none; visibility: visible; width: 198px; height: 28px;" class=""></iframe></span></div>
						</div>
						<div class="col-xs-5 col-sm-4 col-md-4" style="margin-top: 25px;">
							<div class="logo">
								<a href="http://p2plending.or.kr" target="_blank" >
									<img id="p2pkpfaLogo" src="${pageContext.request.contextPath}/resources/img/img_p2pkpfa_auth_logo_color.jpg" alt="P2PKPFA" class="img-responsive">
								</a>
							</div>
						</div>
						<div class="col-xs-5 col-sm-4 col-md-4" style="margin-top: 25px;">
							<div class="logo" style="padding: 10px 0">
								<img id="comodoLogo" src="${pageContext.request.contextPath}/resources/img/btn_comodo_secure_green.jpg" alt="COMODO" class="img-responsive">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-8 col-md-8" style="margin-top: -40px;">
				<p class="legal_copyright">
					플랫폼 사업자 : (주)크리에이터 | 사업자번호 : 777-88-00000 | 공동대표 김도엽,나영주
					<br>TEL. 02-777-7777 | FAX. 070-7777-7777 | MAIL. contact@creator.co.kr | KakaoTalk. @creator
					<br>통신판매업 2019-서울구로-77777 서울 구로구청(02-3333-5555)
				</p>
				<p class="legal_copyright" id="loanCopyright">
					여신회사 : (주)크리에이터대부 | 사업자번호 : 777-88-99999 | 대표이사 박태민,이명재
					<br>P2P연계대부업 2019-금감원-1777
				</p>
				<p class="borrower-notification" id="loanNotification">
					대출금리 : 연 19.9%내, 연체금리 : 약정금리 +3%(법정최고금리 24%내), 플랫폼 이용료 외 취급수수료 등 기타 부대비용 없습니다.
					<br>중개수수료를 요구하거나 받는 행위는 불법입니다. <strong>과도한 빚은 당신에게 큰 불행을 안겨줄 수 있습니다.</strong>
					<br>대출 시 귀하의 신용등급이 하락할 수 있습니다. 채무의 조기상환 수수료율 등 조기상환 조건 없습니다.
				</p>
				<div style="color: #b386b4;border: 1px solid #b386b4;padding: 10px;font-size: 13px;margin: 10px 0;max-width: 610px;">
					크리에이터는 투자원금과 수익을 보장하지 않으며, 투자손실에 대한 책임은 모두 투자자에게 있습니다.
				</div>
				<p class="legal_copyright">
					Copyright (c) 2019 creator
					<br>creator 플랫폼 이용료 외 취급수수료 등 기타 부대비용 없음. 중개수수료를 요구하거나 받는 것은 불법입니다.
				</p>
			</div>
			<hr>
<!-- 		<div class="row footer-row"> -->
<!-- 			<div class="col-md-4 col-md-push-8"> -->
<!-- 				<div class="sns"> -->
<!-- 					<div class="row logo"> -->
<!-- 						<div class="col-xs-12 col-sm-12 col-md-12"> -->
<!-- 							<div id="plusfriend-addfriend-button" ><a href="#"><img src="https://developers.kakao.com/assets/img/about/logos/plusfriend/friendadd_small_yellow_rect.png" alt="플러스친구 친구 추가 버튼" title="플러스친구 친구 추가 버튼"></a></div> -->
<!-- 							<div id="plusfriend-chat-button"><a href="#"><img src="https://developers.kakao.com/assets/img/about/logos/plusfriend/consult_small_yellow_pc.png" alt="플러스친구 1:1 채팅 버튼" title="플러스친구 1:1 채팅 버튼"></a></div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		</div>
	</div>
</footer>
	    <!--footer end-->