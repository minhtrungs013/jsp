<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="asset/css/home.css">
<title>Insert title here</title>
</head>
<body>
	<div class="grid wide mt-4">
		<div class="mt-4">
			<div class="row">
				<div class="col-lg-12 ">
					<h3 class="product">Featured Products</h3>
					<%
					String id = request.getParameter("id");
					try {
						Connection con = ConnectionProvider.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select *from product where id='" + id + "' ");
						while (rs.next()) {
					%>
					<input type="hidden" name="id" value="<%out.println(id);%>">
					<div class="row sm-gutter home-product">
						<div class="col-lg-5">
							<img alt="" src="<%=rs.getString(6)%>" class="details-img">
						</div>
						<div class="col-lg-7 ">
							<div class="details-item">
								<h3 class="details-heading"><%=rs.getString(2)%></h3>
								<h5 class="details-decs"><%=rs.getString(3)%></h5>
								<i class="fas fa-star"style="  color: red; font-size: 16px;  "></i>
								<i class="fas fa-star"style="  color: red; font-size: 16px;  "></i>
								<i class="fas fa-star"style="  color: red; font-size: 16px;  "></i>
								<i class="fas fa-star"style="  color: red; font-size: 16px;  "></i>
								<i class="fas fa-star"style="   font-size: 16px;  "></i>
								
								<h4 class="details-price">
									price:
									<%=rs.getString(4)%>
									VND
								</h4>
								<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>"
									class="btn details-btn ">By Now</a>
							</div>
						</div>
					</div>
					<%
					}
					} catch (Exception e) {
					System.out.println(e);
					}
					%>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="asset/js/app.js"></script>
</html>
<%@include file="footer.jsp"%>