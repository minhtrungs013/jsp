package dao1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionProvider {
	private static Connection connection;
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3307/ktck";
	static final String DB_USER = "root";
	static final String DB_PASS = "0984793694";
	public static Connection getConnection() {
		   try {
		    Class.forName(JDBC_DRIVER);
		    connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
		   } catch (ClassNotFoundException e) {
		    // TODO: handle exception
		    e.printStackTrace();
		   } catch (SQLException e) {
		    // TODO: handle exception
		    e.printStackTrace();
		   }
		   return connection;
		 }
}

