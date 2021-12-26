<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String price_sale = request.getParameter("price_sale");
	String active = request.getParameter("active");
	String img = request.getParameter("img");
	
		try{
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into product values (?,?,?,?,?,?,?)");  
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, category);
			ps.setString(4, price);
			ps.setString(5, active);
			ps.setString(6, img);
			ps.setString(7, price_sale);
			ps.executeUpdate(); 
			response.sendRedirect("adminAddProduct.jsp?msg=done");
			
		}catch(Exception e){
			System.out.println(e);
			response.sendRedirect("adminAddProduct.jsp?msg=wrong");
		}

%>