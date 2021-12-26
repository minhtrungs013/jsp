
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
            <div class="login_square" style="--i:0;"></div>
            <div class="login_square" style="--i:1;"></div>
            <div class="login_square" style="--i:2;"></div>
            <div class="login_square" style="--i:3;"></div>
            <div class="login_square" style="--i:4;"></div>
            <div class="login-container">
                <div class="login-container_form">
                    <h2 class="login_heading">
                       Forgot Password
                    </h2>
                    <form action="forgotPasswordAction.jsp" method="post" class="login_list">
                        <div class="login_item">
                            <input type="email" class="login_item-input" name="email" placeholder="Email" required >
                           
                        </div>
                         <div class="login_item">
                            <input type="text" class="login_item-input" placeholder="Number Phone" required name="mobileNumber">
                           
                        </div>
                         <select class="login_select" name="securityQuestion" required >
                            <option	value="con mèo">con meo </option>
			    			<option	value="con lợn">con lon</option>
			    			<option	value="con chó">con cho</option>
			    			<option	value="con heo">con heo</option>
                        </select>
                         <div class="login_item">
                            <input type="text" class="login_item-input" name="answer" placeholder="address" required>
                           
                        </div>
                         <div class="login_item">
                            <input type="password" class="login_item-input" name="newPassword" placeholder="New Password" required>
                           
                        </div>
                        <div class="login_item">
                            <input type="submit" class="login_item-input" value="save">
                        </div>
                        <div class="footer">
                           	<%
								String msg = request.getParameter("msg");
								if("done".equals(msg)){
							%> 
							<h1>Password Changed Successfully!</h1>
							<%} %>
							<%
								if("invalid".equals(msg)){
							%> 
							<h1>Some thing Went Wrong! Try Again !</h1>
							<%} %>
                           <div class="footer_login">
                                <a href="login.jsp" class="footer_login-help">
                                    Login
                                    <i class="fab fa-google-plus-g"></i>
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