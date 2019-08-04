<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"
			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="../resources/jquery/jquery-3.4.1.js"></script>
<title>my_popup</title>
<script type="text/javascript">
$(document).ready(function() {
	$("#userDataUpdate1").click(function(){
		var numChk = $("#numChk").val();
		var numChk1 = $("#numChk1").val();
		$.post(
				"${pageContext.request.contextPath}/userdataupdate",
				{
					//user_num:hidden으로 가지고 있다가 가는 부분
					user_num:$("#numChk").val(),
					user_name:$("#user_name").val(),
					jumin:$("#birth").val(),
					phone:$("#phone").val(),
					busi_num:$("#numChk1").val(),
					manager_name:$("#user_name").val(),
					manager_birth:$("#birth").val(),
					manager_phone:$("#phone").val()
				},
				function(data,status){
					if(status == "success"){
						if(data > 0){
							alert("인증이 완료되었습니다.");
							window.self.close();
						} else if(data == 0){
							alert("올바른 입력을 해주세요.");
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
</script>
</head>
<body>
<table width="320" border="1" bordercolor="#CCCCCC" align="center" cellpadding="5" cellspacing="0">
	<tr bgcolor="#FFCC00">
		<td align="center">
			<font face="굴림" color="#0D5956">
				<b>본인인증</b>
			</font>
		</td>
	</tr>
	<tr bordercolor="white">
		<td>
			<p><font size="3"></font></p>
				이름&nbsp;&nbsp;
			<br>
				<input type="text" id="user_name" maxlength="20">
				<select name="nation" id="nation">
					<option value="local">내국인</option>
					<option value="foreigner">외국인</option>
				</select>
			<p><font size="3"></font></p>
				생년월일&nbsp;&nbsp;
			<br>
				<input type="text" id="birth" maxlength="20">
			<p><font size="3"></font></p>
				휴대폰번호&nbsp;&nbsp;
			<br>
				<input type="text" id="phone" maxlength="30">
			<p><font size="3"></font></p>
				&nbsp;&nbsp;남성<input type="radio" name="gender" value="male">
				&nbsp;&nbsp;여성<input type="radio" name="gender" value="female">
			<br>
			<p><font size="3"></font></p>
		</td>
	</tr>
</table>
			<br>
				<center>
					<input type="button" id="userDataUpdate1" Value="인증완료" ">
				</center>
				
				
<input type="hidden" id="numChk" value="${mypageVO.user_num}"/>
<input type="hidden" id="numChk1" value="${mypageVO.busi_num}"/>


</body>


</html>


