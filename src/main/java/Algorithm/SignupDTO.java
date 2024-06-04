package Algorithm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import common.DbClose;
import common.DbSet;
import common.UserAPI;

public class SignupDTO {
	
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    public int signup(LoginDTO dto) {
        int su = 0;
        String id = dto.getId();
        String pwd = dto.getPwd();
        String name = dto.getName();
        String phone = dto.getPhone();
        String email = dto.getEmail();
        String addr = dto.getAddr();
        
        String sql = "INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?)";
        
        try {
            conn = DbSet.getConnection();
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            pstmt.setString(3, name);
            pstmt.setString(4, phone);
            pstmt.setString(5, email);
            pstmt.setString(6, addr);
            su = pstmt.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbClose.close(pstmt, conn);
        }
        return su;
    }
}