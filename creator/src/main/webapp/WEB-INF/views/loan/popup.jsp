<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"
			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="../resources/jquery/jquery-3.4.1.js"></script>
<title>popup</title>
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
		�̸�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="user_name" maxlength="20">
		<select name="nation" id="nation">
			<option value="local">������</option>
			<option value="foreigner">�ܱ���</option>
		</select>
        <BR>
		�������&nbsp;&nbsp;<input type="text" id="birth" maxlength="20">
		����<input type="radio" name="gender" value="male">
		����<input type="radio" name="gender" value="female">
		<br>
		�޴�����ȣ&nbsp;<input type="text" id="phone" maxlength="30">
        </TD>
        </TR>
      </TABLE>
      <BR>
      <center>
        <input type="button" id="btn_certi_complete" Value="�����Ϸ�" OnClick="fxPopUp()">
      </center>
<script>
function fxPopUp() {
	$.get("/loan/popup2"
			,{
				user_name:$("#user_name").val(),
				phone:$("#phone").val()
				
			}//data
			,function(data,status) {
				if(status == "success") {
					if(data > 0){
						opener.location.href = "${pageContext.request.contextPath}/loan/addinfo";
						window.self.close();
					} else {
						alert("��� �� �ٽ� �õ��� �ּ���.");
					}
				} else {
					alert("admin : 02-5555-7777");
				}
			}//function
	);//get
}
</script>

</body>
</html>