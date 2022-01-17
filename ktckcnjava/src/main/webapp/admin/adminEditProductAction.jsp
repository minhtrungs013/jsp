<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String price_sale = request.getParameter("price_sale");
	String sale = request.getParameter("sale");
	String active = request.getParameter("active");
	String img = request.getParameter("img");
	
		try{
			Connection con = ConnectionProvider.getConnection();
			Statement st = con.createStatement();
			st.executeUpdate("update product set name='"+name+"' ,category='"+category+"' ,price='"+price+"',price_sale='"+price_sale+"',sale='"+sale+"',active='"+active+"',img='"+img+"' where id='"+id+"'");  
			if(active.equals("No")){
				st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL ");
			}
			response.sendRedirect("adminallproduct.jsp?msg=done");
			
		}catch(Exception e){
			System.out.println(e);
			response.sendRedirect("adminallproduct.jsp?msg=wrong");
		}

%>