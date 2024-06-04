package Roogle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import common.DbClose;
import common.DbSet;

public class updateDAO {

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	LoginDTO dto =  new LoginDTO();
	
	public int update(LoginDTO dto) {
		String pwd = dto.getPwd();
		String name = dto.getName();
		String email = dto.getEmail();
		String phone = dto.getPhone();
		String addr = dto.getAddr();
		String id = dto.getId();
		
		String sql = "update Roogle_USER "
			+ " set  user_pwd = ?,user_name =?, user_email =?, user_phon =? , user_addr = ?"
				+" where user_id = ?";
		int su = 0;
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			pstmt.setString(5, addr);
			pstmt.setString(6, id);
			
			
			
			su = pstmt.executeUpdate();
			
			}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DbClose.close(pstmt, conn);
		}
		return su;
		
		
	}
	
	
	
}
