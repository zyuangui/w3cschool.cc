package cn.edu.jxnu.JdbcUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {

	/*share-communication*/
	private static String url="jdbc:mysql://localhost:3306/share-communication";
	private static String username="root";
	private static String password="admin";
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ExceptionInInitializerError(e);
		}
	}
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url, username, password);
		
	}
	
	public static void free(ResultSet rs,Statement st,Connection conn){
		try {
			if(rs!=null)
			  rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(st!=null)
					st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				if(conn!=null)
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				
			}
		}
	}
	
}
