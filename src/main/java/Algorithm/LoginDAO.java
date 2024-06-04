package Algorithm;

import java.sql.Connection;	// JDBC의 연결
import java.sql.PreparedStatement;	// JDBC SQL문장
import java.sql.ResultSet;	// SQL문 결과
import java.sql.SQLException;	// JDBC SQL관련 예외처리

import common.DbClose;	// JDBC 종료를 위한 클래스
import common.DbSet;	// JDBC의 연결을 위한 클래스

import Algorithm.SignupDTO;	// 회원가입 확인용 클래스 참조

public class LoginDAO{
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// 간단하게 login확인용 main 메소드 
	public static void main(String[] args) {
		LoginDAO dao = new LoginDAO();
		
		dao.mLoginAPI("red");
		
		if(dao.rs == null) {
			System.out.println("널");
		} else {
			System.out.println("널X");
		}
	}

	/* 
	아이디와 비밀번호를 받으면 DB정보와 비교하여 맞으면 true
	틀리면 false로 반환해주는 함수
	*/
	public boolean mLoginChk(String id, String pwd) {
		String sql = "select * from Roogle_USER where user_id = ? and user_pwd = ?";
		String vId, vPwd;
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next() != false) {
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DbClose.close(rs, pstmt, conn);
		}
		
		return false;
	}
	
	/* 
	아이디를 받으면 DB정보와 비교하여 맞으면 true
	틀리면 false로 반환해주는 함수
	*/
	public boolean mLoginChk(String id) {
		String sql = "select * from Roogle_USER where user_id = ?";
		String vId, vPwd;
		boolean login = false;
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next() != false) {
				login = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DbClose.close(rs, pstmt, conn);
		}
		
		return login;
	}
	
	/* 
	아이디와 비밀번호를 받으면 DB정보와 비교하여 맞으면 해당 유저의 정보 반환
	*/
	public LoginDTO mLoginAPI(String id, String pwd) {
		String sql = "select * from Roogle_USER where user_id = ? and user_pwd = ?";
		String vId, vPwd, vName, vPhone, vEmail, vAddr;
		
		try {
			if(mLoginChk(id, pwd)) {
				pstmt = DbSet.getPreparedStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				
				rs = pstmt.executeQuery();
				
				rs.next();
				vId = rs.getString("user_id");
				vPwd = rs.getString("user_pwd");
				vName = rs.getString("user_name");
				vEmail = rs.getString("user_email");
				vPhone = rs.getString("user_phon");
				vAddr = rs.getString("user_addr");
				
				return new LoginDTO(vId, vPwd, vName, vPhone, vEmail, vAddr);
			}
			else {
				return new LoginDTO();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(rs, pstmt, conn);
		}
		return new LoginDTO();
	}
	
	/* 
	아이디를 받으면 DB정보와 비교하여 맞으면 해당 유저의 정보 반환
	*/
	public LoginDTO mLoginAPI(String id) {
		String sql = "select * from Roogle_USER where user_id = ?";
		String vId, vPwd, vName, vPhone, vEmail, vAddr;
		
		try {
			if(mLoginChk(id)) {
				pstmt = DbSet.getPreparedStatement(sql);
				pstmt.setString(1, id);
				
				rs = pstmt.executeQuery();
				
				rs.next();
				vId = rs.getString("user_id");
				vPwd = rs.getString("user_pwd");
				vName = rs.getString("user_name");
				vEmail = rs.getString("user_email");
				vPhone = rs.getString("user_phon");
				vAddr = rs.getString("user_addr");
				
				return new LoginDTO(vId, vPwd, vName, vPhone, vEmail, vAddr);
			}
			else {
				return new LoginDTO();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(rs, pstmt, conn);
		}
		return new LoginDTO();
	}
}
