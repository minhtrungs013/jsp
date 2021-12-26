
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="asset/css/login.css">
<title>Insert title here</title>
</head>
<body>
	<div class="grid wide">
		<section class="form-login">
			<div class="login-color"></div>
			<div class="login-color"></div>
			<div class="login-color"></div>
			<div class="login_box">
				<div class="login_square" style="-i: 0;"></div>
				<div class="login_square" style="-i: 1;"></div>
				<div class="login_square" style="-i: 2;"></div>
				<div class="login_square" style="-i: 3;"></div>
				<div class="login_square" style="-i: 4;"></div>
				<div class="login-container">
					<div class="login-container_form">
						<h2 class="login_heading">Login</h2>
						<form action="loginAction.jsp" method="post" class="login_list">
							<div class="login_item">
								<input type="text" class="login_item-input"
									placeholder="Tai Khoan" name="email" required>
							</div>
							<div class="login_item">
								<input type="password" class="login_item-input"
									placeholder="Mat Khau" name="password" required>

							</div>
							<div class="login_item">
								<input type="submit" class="login_item-input" value="Login">
							</div>
							<div class="footer">
								<%
								String msg = request.getParameter("msg");
								if ("notexist".equals(msg)) {
								%>
								<h1>Incorrect Username or Password</h1>
								<%
								}
								%>
								<%
								if ("invalid".equals(msg)) {
								%>
								<h1>Some thing Went Wrong! Try Again !</h1>
								<%
								}
								%>
								<div class="footer_login">
									<a href="forgotpassword.jsp" class="footer_login-help">
										ForgotPassword <i class="fab fa-facebook-square"></i>
									</a> <a href="signup.jsp" class="footer_login-help"> Register <i
										class="fab fa-google-plus-g"></i>
									</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>


</body>
</html>