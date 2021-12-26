<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="asset/css/cart.css">
<title>My Cart</title>
</head>
<body>
	<div class="grid wide mt-4">
		<div class="cart">
			<div class="cart-inner">
				<div class="dioUnE">
					<h4 class="productsV2__title">
						My Cart <i class="fas fa-cart-plus"></i>
					</h4>
					<div class="productsV2-heading">
						<div class="row">
							<div class="col l-1 color_m ">
								<span class="label"> STT</span>
							</div>
							<div class="col l-4 color_m">
								<label class="styles__StyledCheckbox-sc-kvz5pc-0 hNjxWW">
									<span class="label">Ten San Pham</span>
								</label>
							</div>
							<div class="col l-2 color_m">Don gia</div>
							<div class="col l-2 color_m">So Luong</div>
							<div class="col l-2 color_m">Thanh Tien</div>
							<div class="col l-1 color_m">
								<span class="productsV2__remove-all"> <img
									src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/trash.svg"
									alt="deleted">
								</span>
							</div>
						</div>
					</div>
					<div class="productsV2-content">
						<div>
							<div class="infinite-scroll-component "
								style="height: auto; overflow: auto;">
								<div class="styles__StyledIntendedSeller-sc-1dwh2vk-0 kTsjPS">
									<div class="sellers">
										<div class="sellers__group">
											<div class="sellers__sub-title">
												<div class="row">
													<div class="col l-1 ">
														<span class="label"></span>
													</div>
													<div class="col l-4">
														<img
															src="https://salt.tikicdn.com/ts/upload/30/24/79/8317b36e87e7c0920e33de0ab5c21b62.png"
															alt="seller-link" class="sellers__icon-home"> <a
															href="https://tiki.vn/cua-hang/aeroco-coffee"
															class="sellers__name" target="_blank"
															data-view-id="cart_view_seller" data-view-index="213978">AEROCO
															COFFEE <img
															src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/Path.svg"
															alt="seller-link" class="sellers__icon-arrow">
														</a>
													</div>
												</div>
											</div>
										</div>
										<%
										int total = 0;
										int sno = 0;
										int price = 0;
										int price_sale = 0;
										try {
											Connection con = ConnectionProvider.getConnection();
											Statement st = con.createStatement();
											ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
											while (rs1.next()) {
												total = rs1.getInt(1);

											}
										%>
										<div class="styles__StyledIntended-sc-1dwh2vk-1 bQOXDC">
											<div>
												<%
												ResultSet rs = st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"
														+ email + "' and cart.address is NULL");
												while (rs.next()) {
													price = rs.getInt(4);
													price_sale = rs.getInt(7);
												%>
												<div
													class="styles__StyledIntendedProduct-sc-1idi3y3-0 glclPp">

													<div class="row">
														<div class="col l-1 ">
															<%
															sno = sno + 1;
															%>
															<h4>
																<%
																out.println(sno);
																%>
															</h4>
														</div>
														<div class="col l-4" style="overflow: hidden;">
															<div class="intended__images false">
																<a class="intended__img"
																	data-view-id="cart_main_product"
																	data-view-index="819fd798-47bd-11ec-abfa-3e16072de8dd"
																	href="/product-p117785869.html?spid=117785872"><img style="height: 82px; width: 82px;"
																	src="<%=rs.getString(6)%>" alt="aa"></a>
																<div class="intended__content">
																	<a class="intended__name" target="_blank"
																		data-view-id="cart_main_product"
																		data-view-index="819fd798-47bd-11ec-abfa-3e16072de8dd"
																		href="/product-p117785869.html?spid=117785872"> <%=rs.getString(2)%>
																	</a>
																</div>
															</div>
														</div>
														<div class="col l-2">
															<%
															if (price > price_sale) {
															%>
															<span class="intended__real-prices"><%=rs.getString(7)%>VND</span>
															<%
															} else {
															%>
															<span class="intended__real-prices"><%=rs.getString(4)%>VND</span>
															<%
															}
															%>
														</div>
														<div class="col l-2">
															<div class="intended-qty">
																<div
																	class="styles__StyledIntendedQty-sc-1bo1fa9-0 cGnbJp">
																	<a
																		href="inDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><img
																		src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/decrease.svg"
																		alt="decrease"></a>
																		<p style="padding-left: 13px"><%=rs.getString(11)%></p>
																	
																	<a style="padding-left: 13px"
																		href="inDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><img
																		src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/increase.svg"
																		alt="increase"></a>
																</div>
															</div>
														</div>
														<div class="col l-2">
															<span class="intended__final-prices"><%=rs.getString(13)%>
																VND</span>
														</div>
														<div class="col l-1">
															<a href="removedFromCart.jsp?id=<%=rs.getString(1)%>">
																<img
																src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/trash.svg"
																alt="deleted">
															</a>
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
										<div class="styles__StyledSellerDiscount-sc-rbk7cj-0 hIODeW">
											<div class="wrapper"
												data-view-id="cart_seller.coupon_view.all">
												<div class="description">Shop Khuyen Mai</div>
												<div class="small-coupon-list"></div>
												<span class="seller-coupon__note">Vui long chon san
													pham</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="cart-total-prices">
				<div class="cart-total-prices__inner">
					<div class="styles__StyledCartPrices-sc-1op1gws-0 cdzcxd">

						<div class="prices">
							<ul class="prices__items">
								<li class="prices__item"><span class="prices__text">
										Tam Tinh </span> <span class="prices__value">0 VND </span></li>
								<li class="prices__item"><span class="prices__text">
										Sale </span> <span class="prices__value">0 VND </span></li>
							</ul>
							<div class="prices__total">
								<span class="prices__text">Tong Cong</span>
								<div class="prices__content">
									<div class="prices__value prices__value--final">
										<%
										out.println(total);
										%>
										VND
									</div>
									<span class="prices__value--noted">(Da Bao Gom VAT Neu
										Co )</span>
								</div>
							</div>

							<%
							if (total > 0) {
							%><a href="pay.jsp" class="cart__submit cart__sm">By Now</a>
							<%
							}
							%>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
