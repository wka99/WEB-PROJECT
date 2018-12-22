package user;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	
private Connection conn;
private PreparedStatement pstmt;
private ResultSet rs;

public UserDAO() {
	try {
		String dbURL="jdbc:mysql://13.125.136.38:3306/webbabies?serverTimezone=UTC"/*"jdbc:mysql://localhost:3306/BBS?serverTimezone=UTC"*/;
		String dbEmail="eshock";
		String dbPassword="dnflrkWkddldi";
		Class.forName("com.mysql.jdbc.Driver")/*("com.mysql.cj.jdbc.Driver")*/; //����̹��� ������ �� �ֵ���
		conn=DriverManager.getConnection(dbURL, dbEmail, dbPassword);
	}
	catch(Exception e) {
		e.printStackTrace();
	}
}
//�α��� �õ�
public int login(String userEmail, String userPassword) {
	String SQL = "select userPassword from user where userEmail = ?"; 
	//���̵� �����ϴ��� �� �ϴ��� Ȯ��
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, userEmail);
		rs= pstmt.executeQuery();
		
		if(rs.next()) {//���̵� ����
			if(rs.getString(1).equals(userPassword)) {
				return 1; //�α��� ����
			}
			else
				return 0; //��й�ȣ ����ġ
		}
		return -1; //���̵� ����
	}catch(Exception e) {
		e.printStackTrace();
	}
	return -2; //������ ���̽� ����
}

public int join(User user) {
	String SQL = "insert into user values(?, ?,?,?,?)";
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

