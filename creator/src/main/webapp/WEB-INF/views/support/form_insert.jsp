<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새소식</title>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
<script src="https://cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script>
$(document).ready(function() {
	$.ajaxSetup({cache:false});
	$("#btn_write").click(function() {
		if($.trim($("#title").val()) == ""){
			alert("제목을 확인하세요.");
			return;
		}
		var cnts = CKEDITOR.instances.cnts;
// 		if(cnts.getData() == ""){
// 			alert("내용을 확인 하세요.");
// 			cnts.focus();
// 			return;
// 		}
		$.post("${pageContext.request.contextPath}/insert"
				,{
					title:$("#title").val()
					,notice_contents:cnts.getData()//$("#cnts").val()
				}//data
				,function(data,status){
 				//alert(data); alert(status);
					if(status == "success"){
						if(data > 0){
							alert("등록 되었습니다.");
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
<h1>새소식 등록</h1>
<form id="form_write" enctype="multipart/form-data">
	<br><br>제목 :
	<input type="text" id="title" name="title"
			maxlength="30" />
	<br><br>내용 :
	<textarea rows="5" cols="35" id="cnts" name="cnts"></textarea>
	<script>CKEDITOR.replace('cnts');</script>
	<br><br>첨부파일 :
	<input type="file" id="chumbu" name="chumbu" />
</form>
<br><br>
<input type="button" id="btn_write" value="등록" />
</body>
</html>
