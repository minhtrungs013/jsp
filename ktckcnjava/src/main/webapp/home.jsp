<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="asset/css/home.css">
<title>Home</title>
</head>
<body>
	<div class="grid wide mt-5">
		<div class="row ">
			<div class="col-lg-12">
				<h3 class="product">promotional products</h3>
				<div class="home-product">
					<div class="row sm-gutter home-product__mail">
						<div class="col-lg-4 ">
							<div id="carouselExampleControls"
								class="carousel slide slider__imgh" data-ride="carousel">
								<div class="carousel-inner ">
									<div class="carousel-item active">
										<img class="d-block w-100 imgh" src="asset/img/anh4.png"
											alt="First slide">
									</div>
									<div class="carousel-item ">
										<img class="d-block w-100 imgh" src="asset/img/anh6.png"
											alt="Third slide">
									</div>
									<div class="carousel-item ">
										<img class="d-block w-100 imgh" src="asset/img/anh7.png"
											alt="Third slide">
									</div>
									<div class="carousel-item ">
										<img class="d-block w-100 imgh" src="asset/img/anh5.png"
											alt="Third slide">
									</div>
								</div>
								<a class="carousel-control-prev" href="#carouselExampleControls"
									role="button" data-slide="prev"> <span
									class="carousel-control-prev-icon" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleControls" role="button" data-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
						</div>
						<div class="col-lg-8 sss">
							<div id="carouselExampleSlidesOnly"
								class="carousel slide slider__imgh" data-ride="carousel">
								<div class=" carousel-inner ">
									<div class="carousel-item active">
										<div class="row">
											<div class="col-lg-12 ">
												<h3 class="product">Son</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<%
														try {
															int price = 0;
															int price_sale = 0;
															int sale = 0;
															Connection con = ConnectionProvider.getConnection();
															Statement st = con.createStatement();
															ResultSet rs4 = st.executeQuery("select *from product where active='hot1' ");
															while (rs4.next()) {
																price = rs4.getInt(4);
																price_sale = rs4.getInt(7);
																sale = rs4.getInt(8);
														%>
														<div class="card__bdh ">
															
															<div class="card card-hegth bg__bgr">
															<div class="home-product-item__sale-off">
																<span class="home-product-item__sale-off-percent"><%=rs4.getString(8)%>%</span>
																<span class="home-product-item__sale-off-lable">Sale</span>
															</div>
																<a href="details.jsp"> <img
																	class="imgsa card-img-top " src="<%=rs4.getString(6)%>"
																	alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"><%=rs4.getString(2)%></h5>
																	</a>
																	<p class="card__desc card-text "><%=rs4.getString(3)%></p>
																	<%
																	if (price > price_sale) {
																	%>
																	<P class="card__price  ">
																		PRICE :<%=rs4.getString(7)%></P>
																	<%
																	} else {
																	%>
																	<P class="card__price  ">
																		PRICE :<%=rs4.getString(4)%>
																	</P>
																	<%
																	}
																	%>
																	<a href="addToCartAction.jsp?id=<%=rs4.getString(1)%>"
																		class="btn item3 ">By Now</a> <a
																		href="details.jsp?id=<%=rs4.getString(1)%>"
																		class="btn item4 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<%
														}
														%>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class=" carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
												<h3 class="product">nuoc hoa</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<%
														ResultSet rs5 = st.executeQuery("select *from product where active='hot2' ");
														while (rs5.next()) {
															price = rs5.getInt(4);
															price_sale = rs5.getInt(7);
															sale = rs5.getInt(8);
														%>
														<div class="card__bdh ">
															
															<div class="card card-hegth bg__bgr">
															<div class="home-product-item__sale-off">
																<span class="home-product-item__sale-off-percent"><%=rs5.getString(8)%>%</span>
																<span class="home-product-item__sale-off-lable">Sale</span>
															</div>
																<a href="details.jsp"> <img
																	class="imgsa card-img-top" src="<%=rs5.getString(6)%>"
																	alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"><%=rs5.getString(2)%></h5>
																	</a>
																	<p class="card__desc card-text"><%=rs5.getString(3)%></p>
																	<P class="card__price  ">
																		PRICE :<%=rs5.getString(4)%></P>
																	<a href="addToCartAction.jsp?id=<%=rs5.getString(1)%>"
																		class="btn item3 ">By Now</a> <a
																		href="details.jsp?id=<%=rs5.getString(1)%>"
																		class="btn item4 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<%
														}
														%>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="  carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
												<h3 class="product">My Pham</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<%
														ResultSet rs6 = st.executeQuery("select *from product where active='hot3' ");
														while (rs6.next()) {
														%>
														<div class="card__bdh ">
															
															<div class="card card-hegth bg__bgr">
															<div class="home-product-item__sale-off">
																<span class="home-product-item__sale-off-percent"><%=rs6.getString(8)%>%</span>
																<span class="home-product-item__sale-off-lable">Sale</span>
															</div>
																<a href="details.jsp"> <img
																	class="imgsa card-img-top" src="<%=rs6.getString(6)%>"
																	alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"><%=rs6.getString(2)%></h5>
																	</a>
																	<p class="card__desc card-text"><%=rs6.getString(3)%></p>
																	<P class="card__price  ">
																		PRICE :<%=rs6.getString(4)%></P>
																	<a href="addToCartAction.jsp?id=<%=rs6.getString(1)%>"
																		class="btn item3 ">By Now</a> <a
																		href="details.jsp?id=<%=rs6.getString(1)%>"
																		class="btn item4 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<%
														}
														%>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class=" carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
												<h3 class="product">Ke Mat</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<%
														ResultSet rs7 = st.executeQuery("select *from product where active='hot4' ");
														while (rs7.next()) {
														%>
														<div class="card__bdh ">
															
															<div class="card card-hegth bg__bgr">
															<div class="home-product-item__sale-off">
																<span class="home-product-item__sale-off-percent"><%=rs7.getString(8)%>%</span>
																<span class="home-product-item__sale-off-lable">Sale</span>
															</div>
																<a href="details.jsp"> <img
																	class="imgsa card-img-top" src="<%=rs7.getString(6)%>"
																	alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"><%=rs7.getString(2)%></h5>
																	</a>
																	<p class="card__desc card-text"><%=rs7.getString(3)%></p>
																	<P class="card__price  ">
																		PRICE :<%=rs7.getString(4)%></P>
																	<a href="addToCartAction.jsp?id=<%=rs7.getString(1)%>"
																		class="btn item3 ">By Now</a> <a
																		href="details.jsp?id=<%=rs7.getString(1)%>"
																		class="btn item4 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<%
														}
														%>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row ">
			<div class="col-lg-12">
				<h3 class="product">Featured Products</h3>
				<div class="home-product">
					<div class="row sm-gutter">
						<%
						ResultSet rs8 = st.executeQuery(
								"select *from product where active='yes' or active='hot1' or active='hot2' or active='hot3' or active='hot4'");
						while (rs8.next()) {
							price = rs8.getInt(4);
							price_sale = rs8.getInt(7);
							sale = rs8.getInt(8);
						%>
						<div class="col-sm-6 l-2-4 card__bd">
							<div class="card card-hegth bg__bgr">
								<%
								if (sale > 0) {
								%>
								<div class="home-product-item__sale-off">
									<span class="home-product-item__sale-off-percent"><%=rs8.getString(8)%>%</span>
									<span class="home-product-item__sale-off-lable">Sale</span>
								</div>
								<%
								}
								%>
								<a href="details.jsp?id=<%=rs8.getString(1)%>"> <img
									class="imgsa card-img-top" src="<%=rs8.getString(6)%>"
									alt="ảnh">

								</a>
								<div class="card-body card-mb">
									<a href="details.jsp?id=<%=rs8.getString(1)%>">
										<h5 class="card-title"><%=rs8.getString(2)%></h5>
									</a>
									<p class="card__desc card-text"><%=rs8.getString(3)%></p>
									<%
									if (price > price_sale ) {
									%>
									<P class="card__price  ">
										PRICE :<%=rs8.getString(7)%></P>
									<%
									} else {
									%>
									<P class="card__price  ">
										PRICE :<%=rs8.getString(4)%>
									</P>
									<%
									}
									%>
									<a href="addToCartAction.jsp?id=<%=rs8.getString(1)%>"
										class="btn item3 ">By Now</a> <a
										href="details.jsp?id=<%=rs8.getString(1)%>" class="btn item4 ">See
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
			</div>
		</div>
		<br>
</body>


</html>
<%@include file="footer.jsp"%>