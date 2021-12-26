<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="asset/css/bill.css">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		int total = 0;
		int sno = 0;
		Connection con = ConnectionProvider.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select sum(total) from cart where email='" + email + "' and status='bill'");
		while (rs.next()) {
			total = rs.getInt(1);

		}
		ResultSet rs2 = st.executeQuery("select *from users inner join cart where cart.email='" + email + "' and cart.status='bill'");
		while (rs2.next()) {
	%>
	<div class="grid wide mt-4">
		<h2 class="heading__center bill__total">Online Shopping Bill</h2>
		<div class="bill pl-4 pr-4">
			<div class="form-row  ">
				<div class="form-group col-md-4 bill__list">
					<p>Name</p>
					<h5><%=rs2.getString(1)%></h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>Email</p>
					<h5>
						<%
						out.println(email);
						%>
					</h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>Mobile Number</p>
					<h5><%=rs2.getString(20)%></h5>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-4 bill__list">
					<p>Order Date</p>
					<h5>
						<%=rs2.getString(21)%></h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>Payment Method</p>
					<h5><%=rs2.getString(23)%></h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>Expected Delivery</p>
					<h5><%=rs2.getString(22)%></h5>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-4 bill__list">
					<p>Transaction Id</p>
					<h5><%=rs2.getString(24)%></h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>City</p>
					<h5><%=rs2.getString(17)%></h5>
				</div>
				<div class="form-group col-md-4 bill__list">
					<p>Address</p>
					<h5><%=rs2.getString(16)%></h5>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6 bill__list">
					<p>State</p>
					<h5><%=rs2.getString(18)%></h5>
				</div>
				<div class="form-group col-md-6 bill__list">
					<p>Country</p>
					<h5><%=rs2.getString(19)%></h5>
				</div>
			</div>
			<%
			break;
			}
			%>
		</div>

		<table class="table bill">
			<thead class="thead-dark">
				<tr style="font-size: 1.4rem;">
					<th scope="col">S.no</th>
					<th scope="col">Product Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">QuanTity</th>
					<th scope="col">Sub Total</th>
				</tr>
			</thead>
			<tbody class="bill__list-table ">
				<%
				ResultSet rs1 = st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"
						+ email + "' and cart.status='bill'");
				while (rs1.next()) {
					sno = sno + 1;
				%>
				<tr>
					<th scope="row">
						<%
						out.println(sno);
						%>
					</th>
					<td><%=rs1.getString(17)%></td>
					<td><%=rs1.getString(18)%></td>
					<td><%=rs1.getString(19)%></td>
					<td><%=rs1.getString(3)%></td>
					<td><%=rs1.getString(5)%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<h2 class="heading__center bill__total">Total: <%out.println(total); %></h2>
		<br> <a href="continueShopping.jsp" class="btn btn-success mb-4 mr-4">continue Shopping</a>
		<a onclick="window.print();" class="btn btn-warning mb-4 mr-4">print</a>
	</div>
	<%
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
</body>
</html>
<%@include file="footer.jsp"%>