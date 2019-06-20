package DB;

import java.sql.*;
public class DBConnection {
	public static Connection createConnection () {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/web_toeic";
		String username = "root";
		String password = "hunghip1982";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}