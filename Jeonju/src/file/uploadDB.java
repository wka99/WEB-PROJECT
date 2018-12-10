package file;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class uploadDB {
	private Connection conn;
	public uploadDB() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/webbabies?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="skatksgkrtk9218!";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int upload(String id,String title,String content,String location,String living,String [] pictureNames) {
		String SQL="INSERT INTO post (id,title,content,location,living,picture1,picture2,picture3,picture4,picture5) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt =conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			pstmt.setString(2,title);
			pstmt.setString(3,content);
			pstmt.setString(4,location);
			pstmt.setString(5,living);
			for(int i=0;i<pictureNames.length;i++) {
				pstmt.setString(6+i,pictureNames[i]);	
			}
			
			return pstmt.executeUpdate();		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
