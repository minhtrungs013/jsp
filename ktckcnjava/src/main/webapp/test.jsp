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
				<h3 class="product">Featured Products</h3>
				<div class="home-product">
					<div class="row sm-gutter home-product__mail">
						<div class="col-lg-12">
							<div id="carouselExampleSlidesOnly" class="carousel slide slider__imgh" data-ride="carousel">
								<div class=" carousel-inner ">
									<div class="carousel-item active">
										<div class="row">
											<div class="col-lg-12 ">
												<h3 class="product"> nuoc hoa</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class=" carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
											<h3 class="product"> nuoc hoa</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="  carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
											<h3 class="product"> nuoc hoa</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
														<br>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class=" carousel-item ">
										<div class="row">
											<div class="col-lg-12 ">
											<h3 class="product"> nuoc hoa</h3>
												<div class="home-product__srols home-product ">
													<div class="home-product__list row sm-gutter ">
														<div class="card__bdh ">
															<div class="card card-hegth bg__bgr">
																<a href="details.jsp"> <img class="card-img-top"
																	src="asset/img/anh17.jpg" alt="ảnh">

																</a>
																<div class="card-body card-mb">
																	<a href="details.jsp">
																		<h5 class="card-title"></h5>
																	</a>
																	<p class="card-text"></p>
																	<P>PRICE :</P>
																	<a href="#" class="btn item1 ">Xac Nhan</a> <a
																		href="details.jsp" class="btn item2 ">See details</a>
																</div>
															</div>
															<br>
														</div>
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
	</div>
</body>

</html>
<%@include file="footer.jsp"%>