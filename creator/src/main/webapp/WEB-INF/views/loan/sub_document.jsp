<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sub_document</title>
<script src="../resources/jquery/jquery-3.4.1.js"></script>
</head>
<body>
<input type="button" value="��������" id="btn_final_loan">
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_final_loan").click(function() {
		$.get("/loan/final_loan"
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
	});//click
});//ready
</script>
</body>
</html>