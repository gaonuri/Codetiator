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
        <TD ALIGN="center"><FONT FACE="굴림" COLOR="#0D5956">
          <B>본인인증</B></FONT></TD>
      </TR>
      <TR BORDERCOLOR="white">
        <TD ALIGN="center">
        <BR>
		&nbsp;&nbsp;&nbsp;&nbsp;이름&nbsp;<input type="text" id="user_name" maxlength="20">
		<select name="nation" id="nation">
			<option value="local">내국인</option>
			<option value="foreigner">외국인</option>
		</select>
        <BR>
		생년월일&nbsp;&nbsp;<input type="text" id="birth" maxlength="20">
		<br>
		남성<input type="radio" name="gender" value="male">
		여성<input type="radio" name="gender" value="female">
		<br>
		휴대폰번호&nbsp;<input type="text" id="phone" maxlength="30">
        </TD>
        </TR>
      </TABLE>
      <BR>
      <center>
        <input type="button" id="btn_certi_complete" Value="인증완료" OnClick="fxPopUp2()">
      </center>
<script>

function fxPopUp2() {
	opener.tempFunction();
	window.self.close();
}
</script>

</body>
</html>