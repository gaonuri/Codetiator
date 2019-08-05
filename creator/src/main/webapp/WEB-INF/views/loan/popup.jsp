<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"
			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.4.1.js"></script>
<title>popup</title>
<script type="text/javascript">

$(document).ready(function(){
	var chkemail = '';
	
	$("#manager_email").blur(function(){
		var emailStd = /([a-z0-9]{1,20}\@)([a-z]{1,20}\.)([a-z]{1,10})/gi;
		
		if($.trim($("#manager_email").val()) != $(this).val().match(emailStd)){
			alert("올바르지 않은 이메일 입니다.");
			return;
		}
		$.post(
				"./busifindChk",
				{
					manager_email:$("#manager_email").val()
				},
				function(data,status){
					if(data == 1){
						alert("이메일이 확인 되었습니다.");
						chkemail = $("#manager_email").val();
					}else{
						alert("등록된 이메일이 없습니다.");
					}
				}//function
		);//post
	});//blur
});//ready

$(document).ready(function(){
	$("#btn_certi").click(function(){
		if($.trim($("#manager_email").val()) == ""){
			alert("등록된 이메일이 없습니다.");
// 			$("#manager_email").focus();
			return;
		}
		$.post(
				"./CerEmail"
				,{
					manager_email:$("#manager_email").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("해당 이메일로 인증번호를 발송했습니다.");
							$("#cer_number").css("display","block");
						} else if(data == 0){
							alert("존재하지 않는 이메일 입니다.");
						} else {
							alert("잠시 후, 다시 시도해 주세요.");
						}
					} else {
						alert("시스템 관리자에게 문의 바랍니다.");
					}
				}
		);//post
	});//click
});//ready
$(document).ready(function() {
	$("#btn_certi_complete").click(function() {
		$.post(
				"./CheckCerNumber"
				,{
					cer_number:$("#cer_number").val()
				}
				,function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("인증이 완료 되었습니다.");
							opener.tempFunction();
							window.self.close();
						} else if(data == 0){
							alert("인증번호가 다릅니다.");
						} else {
							alert("잠시 후, 다시 시도해 주세요.");
						}
					} else {
						alert("시스템 관리자에게 문의 바랍니다.");
					}
				}
		);//post
	});
});
</script>
</head>
<body>
<TABLE WIDTH="320" BORDER="1" BORDERCOLOR="#CCCCCC" ALIGN="center" CELLPADDING="5" CELLSPACING="0">
      <TR BGCOLOR="#FFCC00">
        <TD ALIGN="center"><FONT FACE="굴림" COLOR="#0D5956">
          <B>본인인증</B></FONT></TD>
      </TR>
      <TR BORDERCOLOR="white">
        <TD ALIGN="center">
        <BR>
		&nbsp;&nbsp;&nbsp;&nbsp;이름&nbsp;<input type="text" id="user_name" maxlength="20" style="margin-left: 11px;">
        <BR>
		생년월일&nbsp;&nbsp;<input type="text" id="birth" maxlength="20">
		<br>
		남성<input type="radio" name="gender" value="male">
		여성<input type="radio" name="gender" value="female">
		<select name="nation" id="nation">
			<option value="local">내국인</option>
			<option value="foreigner">외국인</option>
		</select>
		<br>
		<div class="form-group">
			<div class="col-sm-10">
				<input type="text" class="form-control" id="manager_email" placeholder="*이메일">
				<input type="button" id="btn_certi" value="인증하기" >
			</div>
		</div>
		<br>
			<input type="text" class="form-control" id="cer_number" placeholder="" style="display:none;">
		<br>
      	<center>
       	 	<input type="button" id="btn_certi_complete" value="인증완료">
      	</center>
        </TD>
        </TR>
      </TABLE>
</body>
</html>