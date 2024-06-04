package Algorithm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DbClose;
import common.DbSet;

public class Login {
	
	public static void main(String[] args) {
		Login login = new Login();
		
		LoginDTO dto = new LoginDTO();
		
		String vId = dto.getId();
		String vPwd = dto.getPwd();
		
		System.out.println(login.mLoginChk(vId, vPwd));
		
	
		
		System.out.println(dto.getId());
		System.out.println(dto.getPwd());
		System.out.println(dto.getName());
		System.out.println(dto.getPhone());
		System.out.println(dto.getEmail());
		System.out.println(dto.getAddr());
	}
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	/* 
	아이디와 비밀번호를 받으면 DB정보와 비교하여 맞으면 true
	틀리면 false로 반환해주는 함수
	*/
	public boolean mLoginChk(String id, String pwd) {
		String sql = "select * from Roogle_USER where user_id  = ? and user_pwd = ?";
		
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			int su = pstmt.executeUpdate();
			
			if(su != 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DbClose.close(pstmt, conn);
		}
		
		return false;
	}
	
	/* 
	아이디와 비밀번호를 받으면 DB정보와 비교하여 맞으면 해당 유저의 정보 반환
	*/
	public LoginDTO mLoginAPI(String id, String pwd) {
		String sql = "select * from users where id = ? and pwd = ?";
		String vId, vPwd, vName, vPhone, vEmail, vAddr;
		
		try {
			if(mLoginChk(id, pwd)) {
				pstmt = DbSet.getPreparedStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.next();
				vId = rs.getString("id");
				vPwd = rs.getString("pwd");
				vName = rs.getString("name");
				vPhone = rs.getString("phone");
				vEmail = rs.getString("email");
				vAddr = rs.getString("addr");
				
				return new LoginDTO(vId, vPwd, vName, vPhone, vEmail, vAddr);
			}
			else {
				return new LoginDTO();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt);
		}
		return new LoginDTO();
	}
}
