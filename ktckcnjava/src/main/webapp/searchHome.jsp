<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="asset/css/home.css">
<title>Home</title>
</head>
<body>
	<div class="grid wide mt-5">

		<div class="row">
			<div class="col-lg-12">
				<h3 class="product">ket qua tim thay</h3>
				<div class="home-product">
					<div class="row sm-gutter">

						<%
						int z = 0;
						int price = 0;
						int price_sale = 0;
						int sale = 0;
						try {
							String search = request.getParameter("search");
							Connection con = ConnectionProvider.getConnection();
							Statement st = con.createStatement();
							ResultSet rs1 = st.executeQuery("select *from product where name like '%" + search + "%'");
							while (rs1.next()) {
								price = rs1.getInt(4);
								price_sale = rs1.getInt(7);
								sale = rs1.getInt(8);
								z = 1;
						%>
						<div class="col-sm-6 l-2-4 card__bd">
							<div class="card card-hegth bg__bgr">
								<%
								if (sale > 0) {
								%>
								<div class="home-product-item__sale-off">
									<span class="home-product-item__sale-off-percent"><%=rs1.getString(8)%>%</span>
									<span class="home-product-item__sale-off-lable">Sale</span>
								</div>
								<%
								}
								%>
								<a href="details.jsp?id=<%=rs1.getString(1)%>"> <img
									class="imgsa card-img-top" src="<%=rs1.getString(6)%>"
									alt="ảnh">

								</a>
								<div class="card-body card-mb">
									<a href="details.jsp?id=<%=rs1.getString(1)%>">
										<h5 class="card-title"><%=rs1.getString(2)%></h5>
									</a>
									<p class="card-text"><%=rs1.getString(3)%></p>
									<%
									if (price > price_sale) {
									%>
									<P class="card__price  ">
										PRICE :<%=rs1.getString(7)%></P>
									<%
									} else {
									%>
									<P class="card__price  ">
										PRICE :<%=rs1.getString(4)%>
									</P>
									<%
									}
									%>
									<a href="addToCartAction.jsp?id=<%=rs1.getString(1)%>"
										class="btn item3 ">By Now</a> <a
										href="details.jsp?id=<%=rs1.getString(1)%>" class="btn item4 ">See
										details</a>
								</div>
							</div>
							<br>
						</div>
						<%
						}
						} catch (Exception e) {
						System.out.println(e);
						}
						%>

					</div>
				</div>
				<%
				if (z == 0) {
				%>
				<h1 style="color: white; text-align: center;">Nothing to show</h1>
				<%
				}
				%>
			</div>
		</div>
		<br>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-end">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Ban Da Them Thanh Cong</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="mycart.jsp" class="btn ">Toi gio hang</a>
					</div>
				</div>
			</div>
		</div>
</body>

</html>
<%@include file="footer.jsp"%>