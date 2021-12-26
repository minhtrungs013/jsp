<%@ page import="dao1.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getConnection();
	Statement st = con.createStatement();
	st.executeUpdate("delete  from product where id='"+id+"'");  
	response.sendRedirect("adminallproduct.jsp?msg=removed");
	
}catch(Exception e){
	System.out.println(e);
}

%>