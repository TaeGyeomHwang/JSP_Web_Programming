<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>

<body>
	<form name="loginForm" action="practice04_process.jsp" method="post" onsubmit="return checkform();">
		<p> 아 이 디 :<input type="text" name="id">
		<p> 비밀번호 :<input type="password" name="passwd">
		<p><input type="submit" value="전송">
	</form>
	<script>
		function checkform(){
			var form = document.loginForm;
			if(form.id.value.length==0){
				alert("아이디를 입력해주세요");
				form.id.focus();
				return false;
			}else if(form.passwd.value.length==0){
				alert("비밀번호를 입력해주세요");
				form.passwd.focus();
				return false;
			}else if(form.passwd.value.includes(form.id.value)){
				alert("비밀번호는 ID를 포함할 수 없습니다");
				form.passwd.focus();
				return false;
			}
		}
	</script>
</body>
</html>