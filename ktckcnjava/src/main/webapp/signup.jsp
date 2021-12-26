
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
						<h2 class="login_heading">Register</h2>
						<form action="signupAction.jsp" method="post" class="login_list">
							<div class="login_item">
								<input type="text" class="login_item-input" name="name"
									placeholder="Ten" required>
							</div>
							<div class="login_item">
								<input type="text" class="login_item-input" name="email"
									placeholder="Email" required>

							</div>
							<div class="login_item">
								<input type="text" class="login_item-input"
									placeholder="Number Phone" required name="mobileNumber">

							</div>
							<select class="login_select" name="secret question" required>
								<option value="heoss">heoss</option>
								<option value="con lợn">con</option>
								<option value="cpn chó">con</option>
								<option value="con heo">con heo</option>

							</select>
							<div class="login_item">
								<input type="text" class="login_item-input"
									placeholder="address" required name="answer">

							</div>
							<div class="login_item">
								<input type="password" class="login_item-input"
									placeholder="Password" required name="password">

							</div>
							<div class="login_item">
								<input type="submit" class="login_item-input" value="submit">
							</div>
							<div class="footer">
								<%
								String msg = request.getParameter("msg");
								if ("valid".equals(msg)) {
								%>

								<h1>Successfully Updated</h1>
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
									<a href="login.jsp" class="footer_login-help"> Login <i
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