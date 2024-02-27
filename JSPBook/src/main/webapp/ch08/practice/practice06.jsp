<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>

<body>
	<form name="loginForm" action="practice04_process.jsp" method="post" onsubmit="return checkform();">
		<p> 아 이 디 :<input type="text" name="id">
		<p> 비밀번호 :<input type="password" name="passwd">
		<p> 비밀번호 확인 :<input type="password" name="passwdCheck">
		<p><input type="submit" value="전송">
	</form>
	<script>
		function checkform(){
			var form = document.loginForm;
			if (!/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/.test(form.passwd.value)) {
				alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다");
				form.passwd.focus();
				return false;
			}  else if (form.passwd.value != form.passwdCheck.value) {
				alert("비밀번호가 일치하지 않습니다.");
				form.passwdCheck.focus();
				return false;
			}
		}
	</script>
</body>
</html>