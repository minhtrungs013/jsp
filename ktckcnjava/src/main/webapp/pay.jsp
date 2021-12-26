<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="slider.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="asset/css/pay.css">
<title>Insert title here</title>
<script>
if(window.history.forwart(1) !=null)
	window.history.forword(1); 
</script>
</head>
<body>
<%
int total = 0;
int sno = 0;
		try{
			Connection con = ConnectionProvider.getConnection();
			Statement st = con.createStatement();
			ResultSet rs1= st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
		while(rs1.next())
		{
			total = rs1.getInt(1);
		
		}
        %>
	<div class="grid wide mt-4 ">
	  <%
         ResultSet rs2  = st.executeQuery("select *from users where email='"+email+"'");
        while(rs2.next()){
        	
        
         %>
			<h2 class="heading__center mb-4 pay-content__box">Shipment Details</h2>
		<form action="payAction.jsp" method="post" class="pay-content pl-4 pr-4">
			<div class="form-row mt-4 ">
				<div class="form-group col-md-6 pay-content__box">
					<label for="inputEmail4">Enter Address</label> <input type="text"
						class="form-control" name="address" value="<%=rs2.getString(7) %>" id="inputEmail4" placeholder="Address" required>
				</div>
				<div class="form-group col-md-6 pay-content__box">
					<label for="inputPassword4">Enter City</label> <input type="text"
						class="form-control" name="city" value="<%=rs2.getString(8) %>" id="inputPassword4" placeholder="City" required>
				</div>
			</div>
			<div class="form-row ">
			<div class="form-group col-md-6 pay-content__box">
				<label for="inputAddress">Enter State</label> <input type="text"
					class="form-control" name="state" value="<%=rs2.getString(9) %>" id="inputAddress" placeholder="State" required>
			</div>
			<div class="form-group col-md-6 pay-content__box">
				<label for="inputAddress2">Enter Country</label> <input type="text"
					class="form-control" name="country" value="<%=rs2.getString(10) %>" id="inputAddress2"
					placeholder="Country" required>
			</div>
			</div>
			<div class="form-row ">
				
				<div class="form-group col-md-4 pay-content__box">
					<label for="inputState">Enter Payments</label> <select id="inputState"
						class="selecrs form-control" name="paymentMethod">
						<option value="Receive payment">Receive payment</option>
						<option value="online payment">online payment</option>
					</select>
				</div>
				<div class="form-group col-md-4 pay-content__box">
					<label for="inputZip">Enter online card code</label> <input type="text"
						class="form-control"  name="transactionId" id="inputZip" required>
				</div>
				<div class="form-group col-md-4 pay-content__box">
					<label for="inputCity">Enter Number</label> <input type="text"
						class="form-control" name="mobileNumber" value="<%=rs2.getString(3) %>" id="inputCity" required>
				</div>
			</div>
			<a href="mycart.jsp" class="btn btn-danger mb-4 mr-4">Back</a>
			<button type="submit" class="btn btn-primary mb-4">Complete Payment</button>
		</form>
		<%
        } }catch(Exception e){
			System.out.println(e);
		}
         %>
	</div>
</body>
</html>
<%@include file="footer.jsp"%>