package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
private Connection conn;
private PreparedStatement pstmt;
private ResultSet rs;

public UserDAO() {
	try {
		String dbURL="jdbc:mysql://localhost:3306/webbabies?serverTimezone=UTC";
		String dbID="root";
		String dbPassword="skatksgkrtk9218!";
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
	}
	catch(Exception e) {
		e.printStackTrace();
	}
}
//로그인 시도
public int login(String userEmail, String userPassword) {
	String SQL = "SELECT userPassword FROM USER WHERE userEmail = ?"; 
	//아이디가 존재하는지 안 하는지 확인
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, userEmail);
		rs= pstmt.executeQuery();
		
		if(rs.next()) {//아이디가 있음
			if(rs.getString(1).equals(userPassword)) {
				return 1; //로그인 성공
			}
			else
				return 0; //비밀번호 불일치
		}
		return -1; //아이디 없음
	}catch(Exception e) {
		e.printStackTrace();
	}
	return -2; //데이터 베이스 오류
}

public int join(User user) {
	String SQL = "INSERT INTO USER VALUES(?,?,?,?,?)";
	try {
		pstmt=conn.prepareStatement(SQL);
		pstmt.setString(1, user.getUserName());
		pstmt.setString(2, user.getUserEmail());
		pstmt.setString(3, user.getUserPassword());
		pstmt.setString(4, user.getUserAddress());
		pstmt.setString(5, user.getUserAge());
		return pstmt.executeUpdate();
	}catch(Exception e) {
		e.printStackTrace();
	}
	return -1;
}
}
