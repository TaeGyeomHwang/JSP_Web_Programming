<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<form name="loginForm" onsubmit="return checkform()">
		<p>
			아 이 디 :<input type="text" name="id">
		<p>
			비밀번호 :<input type="password" name="passwd">
		<p>
			<input type="submit" value="전송">
	</form>
	<script>
		function checkform() {
			alert("아이디 : " + document.loginForm.id.value + "\n" + "비밀번호 : "
					+ document.loginForm.passwd.value);
		}
	</script>
</body>
</html>