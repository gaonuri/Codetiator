<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_insert5.jsp</title>
<script src="../resources/jquery/jquery-3.4.1.js"></script>
<script>
$(document).ready(function() {
	$.ajaxSetup({cache:false});
	$("#btn_write").click(function() {
		if($.trim($("#title").val()) == ""){
			alert("제목을 확인하세요.");
			return;
		}
		alert("게시글을 전송합니다.");
		$.post("${pageContext.request.contextPath}/support/insert"
				,{
					title:$("#title").val()
					,notice_contents:$("#cnts").val()
				}//data
				,function(data,status){
 				//alert(data); alert(status);
					if(status == "success"){
						if(data > 0){
							alert("저장 되었습니다.");
							location.href="${pageContext.request.contextPath}/support";
						} else {
							alert("잠시 후에 다시 시도해 주세요.");
						}
					} else {
						alert("admin : 02-5555-7777");
					}
				}//function
		);//post
	});//btn_write
});//ready
</script>
</head>
<body>

<br><br>
<h1>자유 게시판 글 쓰기</h1>
<form id="form_write" enctype="multipart/form-data">
	<br><br>제목 :
	<input type="text" id="title" name="title"
			maxlength="30" />
	<br><br>내용 :
	<textarea rows="5" cols="35" id="cnts" name="cnts"></textarea>
</form>
<br><br>
<input type="button" id="btn_write" value="게시글 전송" />
</body>
</html>
