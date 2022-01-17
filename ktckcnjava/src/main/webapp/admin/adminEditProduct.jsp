<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="adminheader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="grid wide mt-4">
		<div class="row">
			<div class="col-lg-3 ">
				<table class="table home-product" style="font-size:14px; text-align: center; ">
					<thead class="thead-dark" style="font-size:16px; text-align: center; ">
						<tr>
							<th scope="col">Dashboard</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="nav-link" href="adminallproduct.jsp"><i
									class="fas fa-dumbbell">All - Edit Products</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link active" href="adminAddProduct.jsp"><i
									class="fas fa-plus-circle">Add Products</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link" href="adminCancelOrder.jsp"><i
									class="fas fa-window-close">Cancel Orders</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link" href="#"><i class="fas fa-truck">delivered
										orders</i></a></td>
						</tr>
						<tr>
							<td><a class="nav-link" href="#"><i class="fas fa-truck">History</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-9 ">
				<%
				String id = request.getParameter("id");
				int price = 0;
				int sale = 0;
				try {
					Connection con = ConnectionProvider.getConnection();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select *from product where id='" + id + "' ");
					while (rs.next()) {
						price = rs.getInt(4);
						sale = rs.getInt(8);
				%>
				<form action="adminEditProductAction.jsp" method="post" class="home-product"  style="font-size:16px; padding-left: 10px; ">
					<input type="hidden" name="id" value="<%out.println(id);%>">
					<div class="form-group">
						<label for="exampleInputEmail1">Enter Name</label> <input
							type="text" name="name" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							value="<%=rs.getString(2)%>" required style="font-size:14px; ">
					</div>
					<div class="form-group">
						<label for="exampleInputcategory">Enter Category</label> <input
							type="text" name="category" class="form-control"
							id="exampleInputcategory" value="<%=rs.getString(3)%>" required style="font-size:14px; ">
					</div>
					<div class="form-group">
						<label for="exampleInputprice">Enter price</label> <input
							type="text" name="price" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(4)%>" required style="font-size:14px; ">
					</div>
					<div class="form-group">
						<label for="exampleInputprice">Enter price_sale</label> <input
							type="text" name="price_sale" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(7)%>" required style="font-size:14px; ">
					</div>
					<div class="form-group">
						<label for="exampleInputprice">Enter sale</label> <input
							type="text" name="sale" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(8)%>" required style="font-size:14px; ">
					</div>
					<div class="form-group" >
						<label for="exampleInputPassword1">Enter Active</label> <select
							class="form-control" name="active" style="font-size:14px; height: 32px; ">
							<option value="yes" style="font-size:14px; ">yes</option>
							<option value="no" style="font-size:14px; ">no</option>
							<option value="hot1" style="font-size:14px; ">hot1</option>
							<option value="hot2" style="font-size:14px; ">hot2</option>
							<option value="hot3" style="font-size:14px; ">hot3</option>
							<option value="hot4" style="font-size:14px; ">hot4</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputprice">Enter link img</label> <input
							type="text" name="img" class="form-control"
							id="exampleInputprice" value="<%=rs.getString(6)%>" required style="font-size:14px; ">
					</div>
					<br>

					<div >
						<a href="adminallproduct.jsp" ><button type="button"
								class="btn btn-danger">Back</button></a>
						<button class="btn btn-primary ">Submit</button>
					</div>
					<%
					}
					} catch (Exception e) {
					System.out.println(e);
					}
					%>
					<br>

				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="../footer.jsp"%>