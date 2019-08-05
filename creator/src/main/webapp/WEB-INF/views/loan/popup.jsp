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
			alert("�ùٸ��� ���� �̸��� �Դϴ�.");
			return;
		}
		$.post(
				"./busifindChk",
				{
					manager_email:$("#manager_email").val()
				},
				function(data,status){
					if(data == 1){
						alert("�̸����� Ȯ�� �Ǿ����ϴ�.");
						chkemail = $("#manager_email").val();
					}else{
						alert("��ϵ� �̸����� �����ϴ�.");
					}
				}//function
		);//post
	});//blur
});//ready

$(document).ready(function(){
	$("#btn_certi").click(function(){
		if($.trim($("#manager_email").val()) == ""){
			alert("��ϵ� �̸����� �����ϴ�.");
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
							alert("�ش� �̸��Ϸ� ������ȣ�� �߼��߽��ϴ�.");
							$("#cer_number").css("display","block");
						} else if(data == 0){
							alert("�������� �ʴ� �̸��� �Դϴ�.");
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
							alert("������ �Ϸ� �Ǿ����ϴ�.");
							opener.tempFunction();
							window.self.close();
						} else if(data == 0){
							alert("������ȣ�� �ٸ��ϴ�.");
						} else {
							alert("��� ��, �ٽ� �õ��� �ּ���.");
						}
					} else {
						alert("�ý��� �����ڿ��� ���� �ٶ��ϴ�.");
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
        <TD ALIGN="center"><FONT FACE="����" COLOR="#0D5956">
          <B>��������</B></FONT></TD>
      </TR>
      <TR BORDERCOLOR="white">
        <TD ALIGN="center">
        <BR>
		&nbsp;&nbsp;&nbsp;&nbsp;�̸�&nbsp;<input type="text" id="user_name" maxlength="20" style="margin-left: 11px;">
        <BR>
		�������&nbsp;&nbsp;<input type="text" id="birth" maxlength="20">
		<br>
		����<input type="radio" name="gender" value="male">
		����<input type="radio" name="gender" value="female">
		<select name="nation" id="nation">
			<option value="local">������</option>
			<option value="foreigner">�ܱ���</option>
		</select>
		<br>
		<div class="form-group">
			<div class="col-sm-10">
				<input type="text" class="form-control" id="manager_email" placeholder="*�̸���">
				<input type="button" id="btn_certi" value="�����ϱ�" >
			</div>
		</div>
		<br>
			<input type="text" class="form-control" id="cer_number" placeholder="" style="display:none;">
		<br>
      	<center>
       	 	<input type="button" id="btn_certi_complete" value="�����Ϸ�">
      	</center>
        </TD>
        </TR>
      </TABLE>
</body>
</html>