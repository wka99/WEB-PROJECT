package file;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

public class uploadDB {
   private Connection conn;
   private PreparedStatement pstmt=null;
   private Statement stmt=null;
   public uploadDB() {
      try {
         String dbURL="jdbc:mysql://localhost:3306/webbabies?serverTimezone=UTC";
         String dbID="eshock";
         String dbPassword="dnflrkWkddldi";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
      }catch(Exception e) {
         e.printStackTrace();
      }
   }
   public int upload(String id,String title,String content,String location,String living,String pictureName) throws SQLException {
      String SQL="INSERT INTO post (id,title,content,location,living,picture1) "
            + "VALUES (?,?,?,?,?,?)";
      try {
         
         pstmt =conn.prepareStatement(SQL);
         
         pstmt.setString(1,id);
         pstmt.setString(2,title);
         pstmt.setString(3,content);
         pstmt.setString(4,location);
         pstmt.setString(5,living);
         pstmt.setString(6,pictureName);

         pstmt.executeUpdate();
         return 0;
      }catch(Exception e) {
         e.printStackTrace();
      }
      return -1;
   }
}