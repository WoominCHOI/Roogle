package Roogle;

import java.sql.Connection;	// JDBC의 연결
import java.sql.PreparedStatement;	// JDBC SQL문장
import java.sql.ResultSet;	// SQL문 결과
import java.sql.SQLException;	// JDBC SQL관련 예외처리
import java.util.ArrayList;	

import common.DbClose;	// JDBC 종료를 위한 클래스
import common.DbSet;	// JDBC의 연결을 위한 클래스

public class boardDAO {
	
	static Connection conn;
	static PreparedStatement pstmt;
	static ResultSet rs;
	
	// 
	public int bodWrite(boardDTO bodDTO){
		int su = 0;	// 리턴용 변수
		// 쓰기 쉽게 배열로 dto값을 저장
		String[] dtoAry = {bodDTO.getBod_writer(), bodDTO.getBod_title(), bodDTO.getBod_content()};
		
		// 받은 dto에서 값이 null이거나 공백일 경우 0을 리턴
		for(int i = 0; i < dtoAry.length; i++) {
			if(dtoAry[i]==null || dtoAry[i].length() <= 0) {
				return su;
			}
		}
		
		// 현재 디비에 있는 작성자수를 검색하는 sql문
		String sql = "select max(bod_no) as num from Roogle_board";
		conn = DbSet.getConnection();
		
		try {
			// pstmt로 저장한 후 executeQuery로 sql문 적용
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			int number = 1;
			// .next()로 컬럼 한줄 한줄 값이 있으면 참 없으면 거짓
			while(rs.next()) {
				// 현재 작성자 No + 1 >> number
				number = rs.getInt("num") + 1;
			}
			
			// insert할 sql문 작성 후 pstmt에 저장
			sql = "insert into Roogle_board values(? , ? , ? , sysdate , ? , 0)";
			pstmt = conn.prepareStatement(sql);
			
			// setString()으로 ? 값 채워넣기 
			pstmt.setInt(1, number);
			pstmt.setString(2, bodDTO.getBod_writer());
			pstmt.setString(3, bodDTO.getBod_title());
			pstmt.setString(4, bodDTO.getBod_content());
			
			// 적용 * executeUpdate()는 sql문이 적용된 수 만큼 반환
			su = pstmt.executeUpdate();
			
			return su;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return su;
	}
	
	public ArrayList<boardDTO> bodSelect(){
		ArrayList<boardDTO> aryDTO = new ArrayList<boardDTO>();
		boardDTO tempDTO = null;
		
		String sql = "select * from Roogle_board order by Bod_write_time desc";
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				tempDTO = new boardDTO();
				
				tempDTO.setBod_no(rs.getInt("Bod_no"));
				tempDTO.setBod_content(rs.getString("Bod_content"));
				tempDTO.setBod_title(rs.getString("Bod_title"));
				tempDTO.setBod_writer(rs.getString("Bod_writer"));
				tempDTO.setBod_write_time(rs.getString("Bod_write_time"));
				tempDTO.setBod_readcnt(rs.getInt("Bod_readcnt"));
				
				aryDTO.add(tempDTO);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DbClose.close(rs, pstmt, conn);
		}
		
		return aryDTO;
	}
	
	public boardDTO bodSelect(int num) {
		boardDTO tempDTO = null;

		String sql = "select * from Roogle_board where BOD_NO = "+num;
		String sql2 = "update Roogle_board set Bod_readcnt = (Bod_readcnt+1) where BOD_NO = "+num;
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql2);
			pstmt.executeUpdate();
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next();
			tempDTO = new boardDTO();
			
			tempDTO.setBod_no(rs.getInt("BOD_NO"));
			tempDTO.setBod_content(rs.getString("BOD_CONTENT"));
			tempDTO.setBod_title(rs.getString("BOD_title"));
			tempDTO.setBod_writer(rs.getString("BOD_WRITER"));
			tempDTO.setBod_write_time(rs.getString("Bod_write_time"));
			tempDTO.setBod_readcnt(rs.getInt("Bod_readcnt"));
			
			return tempDTO;
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DbClose.close(rs, pstmt, conn);
		}
		
		return tempDTO;
	}
	
	public boardDTO bodSelect_UpdDel(int num) {
		boardDTO tempDTO = null;

		String sql = "select * from Roogle_board where BOD_NO = "+num;
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next();
			tempDTO = new boardDTO();
			
			tempDTO.setBod_no(rs.getInt("BOD_NO"));
			tempDTO.setBod_content(rs.getString("BOD_CONTENT"));
			tempDTO.setBod_title(rs.getString("BOD_title"));
			tempDTO.setBod_writer(rs.getString("BOD_WRITER"));
			tempDTO.setBod_write_time(rs.getString("Bod_write_time"));
			tempDTO.setBod_readcnt(rs.getInt("Bod_readcnt"));
			
			return tempDTO;
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DbClose.close(rs, pstmt, conn);
		}
		
		return tempDTO;
	}
	
	public int bodDelete(boardDTO bodDTO) {
		String sql = "delete from Roogle_board where bod_no ="+bodDTO.getBod_no();
		int idx = 0;
		
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			idx = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		
		return idx;
	}
	
	public int bodUpdate(boardDTO bodDTO) {
		String sql = "update Roogle_board SET BOD_TITLE = ?, BOD_CONTENT = ? where BOD_NO = ?";
		int idx = 0;
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bodDTO.getBod_title());
			pstmt.setString(2, bodDTO.getBod_content());
			pstmt.setInt(3, bodDTO.getBod_no());
			
			idx =  pstmt.executeUpdate();
			
			return idx;
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return idx;
	}
}


