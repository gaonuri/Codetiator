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
					//user_num:hidden���� ������ �ִٰ� ���� �κ�
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
							alert("������ �Ϸ�Ǿ����ϴ�.");
							window.self.close();
						} else if(data == 0){
							alert("�ùٸ� �Է��� ���ּ���.");
						} else {
							alert("��� ��, �ٽ� �õ��� �ּ���.");
						}
					} else {
						alert("�ý��� �����ڿ��� ���� �ٶ��ϴ�.");
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
			<font face="����" color="#0D5956">
				<b>��������</b>
			</font>
		</td>
	</tr>
	<tr bordercolor="white">
		<td>
			<p><font size="3"></font></p>
				�̸�&nbsp;&nbsp;
			<br>
				<input type="text" id="user_name" maxlength="20">
				<select name="nation" id="nation">
					<option value="local">������</option>
					<option value="foreigner">�ܱ���</option>
				</select>
			<p><font size="3"></font></p>
				�������&nbsp;&nbsp;
			<br>
				<input type="text" id="birth" maxlength="20">
			<p><font size="3"></font></p>
				�޴�����ȣ&nbsp;&nbsp;
			<br>
				<input type="text" id="phone" maxlength="30">
			<p><font size="3"></font></p>
				&nbsp;&nbsp;����<input type="radio" name="gender" value="male">
				&nbsp;&nbsp;����<input type="radio" name="gender" value="female">
			<br>
			<p><font size="3"></font></p>
		</td>
	</tr>
</table>
			<br>
				<center>
					<input type="button" id="userDataUpdate1" Value="�����Ϸ�" ">
				</center>
				
				
<input type="hidden" id="numChk" value="${mypageVO.user_num}"/>
<input type="hidden" id="numChk1" value="${mypageVO.busi_num}"/>


</body>


</html>


