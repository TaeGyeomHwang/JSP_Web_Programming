<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="../resources/css/styles.css" />
<title>Login</title>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<header class="masthead bg-secondary">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="site-heading">
						<h3 class="form-signin-heading ">Please sign in</h3>
						<%
						String error = request.getParameter("error");
						if (error != null) {
							out.println("<div class='alert alert-danger'>");
							out.println("");
							out.println("</div>");
						}
						%>
						<form class="form-signin subheading"
							action="processLoginMember.jsp" method="post">
							<div class="mb-3">
								<input type="text" class="form-control"
									placeholder="Enter ID..." name='id' required autofocus>
							</div>
							<div class="mb-3">
								<input type="password" class="form-control"
									placeholder="Enter Password..." name='password' required>
							</div>
							<button class="btn btn btn-lg btn-success btn-block"
								type="submit">Login</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
	<%-- <div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
			String error = request.getParameter("error");
			if (error != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("");
				out.println("</div>");
			}
			%>
			<form class="form-signin" action="processLoginMember.jsp"
				method="post">

				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> <input
						type="text" class="form-control" placeholder="ID" name='id'
						required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name='password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>

			</form>
		</div>
	</div> --%>
</body>
</html>