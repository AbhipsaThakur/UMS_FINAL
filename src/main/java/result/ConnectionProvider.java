package result;
import java.sql.*;
public class ConnectionProvider {
public static Connection getCon() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "Abhipsa299@");
		return con;
	}
	catch(Exception e){
		System.out.println(e);
		return null;
	}
	
}
}
