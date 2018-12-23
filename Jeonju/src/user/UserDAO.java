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
      String dbURL="jdbc:mysql://localhost:3306/webbabies?serverTimezone=UTC"/*"jdbc:mysql://localhost:3306/BBS?serverTimezone=UTC"*/;
      String dbEmail="eshock";
      String dbPassword="dnflrkWkddldi";
      Class.forName("com.mysql.jdbc.Driver")/*("com.mysql.cj.jdbc.Driver")*/; //����̹��� ������ �� �ֵ���
      conn=DriverManager.getConnection(dbURL, dbEmail, dbPassword);
   }
   catch(Exception e) {
      e.printStackTrace();
   }
}
public String findName(String userEmail) {
	String SQL = "select userName from user where userEmail = ?"; 
	String name="";
	   //���̵� �����ϴ��� �� �ϴ��� Ȯ��
	   try {
	      pstmt = conn.prepareStatement(SQL);
	      pstmt.setString(1, userEmail);
	      rs= pstmt.executeQuery();
	      while(rs.next())
	    	  name=rs.getString("userName");
	      return name;
	   }catch(Exception e) {
	      e.printStackTrace();
	   }
	   return name;
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
//ȸ��Ȯ�� Ȯ��
public int DoubleCheck (String userEmail, String userPassword) {
	String userName="", useremail="", userpassword="", userAddress="", userAge="";
	try { 
		String SQL="select * from user where userEmail=\""+userEmail+"\"";
		pstmt=conn.prepareStatement(SQL);
		rs=pstmt.executeQuery();
		 
		while(rs.next()) {
			userName=rs.getString("userName");
			useremail=rs.getString("userEmail");
			userpassword=rs.getString("userPassword");
			userAddress=rs.getString("userAddress");
			userAge=rs.getString("userAge");
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	//�̸����̳� ��й�ȣ �߸� ���� ���
	if(!userPassword.equals(userpassword) || !userEmail.equals(useremail))
		return 0; 
	
	//�̸����̶� ��й�ȣ �� �������
	else 
	return 1;
	
}
//ȸ��Ż��
public void out(String userEmail ,String userPassword) {
		//����
		try {
			 String SQL="delete from user where userEmail=\""+userEmail+"\"";
			 pstmt=conn.prepareStatement(SQL);
			 pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
} 


//ȸ������ ����
public void modifyInfo (String userName, String userEmail, String userPassword, String userAddress, String userAge)
{
	try {		
		 String SQL="update user set userName= '"+userName+"', userEmail='"+userEmail+"', userPassword='"+userPassword+
				 "', userAddress='"+userAddress+"', userAge='"+userAge+"' where userEmail=\""+userEmail+"\"";
		 pstmt=conn.prepareStatement(SQL);
			pstmt.executeUpdate();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
}
}
