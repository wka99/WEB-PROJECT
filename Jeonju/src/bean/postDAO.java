package bean;
import java.sql.*;
public class postDAO {
	private Connection conn;
	public postDAO() {
		try {
			String dbURL="jdbc:mysql://13.125.136.38:3306/webbabies?serverTimezone=UTC";
			String dbID="eshock";
			String dbPassword="dnflrkWkddldi";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			System.out.println("DB연동 오류입니다 : "+e.getMessage());
		}
	}
	public ResultSet getResult(String sql) {
		ResultSet rs=null;
		try {
			Statement stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
		}catch(Exception e) {
			System.out.println("DB연동 오류입니다 : "+e.getMessage());
		}
		return rs;
	}
	public void upload(String sql) {
		try {
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		}catch(Exception e) {
			System.out.println("DB연동 오류입니다 : "+e.getMessage());
		}
	}
	
}
