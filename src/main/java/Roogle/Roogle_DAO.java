package Roogle;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Roogle.DbClose;
import Roogle.DbSet;
import Roogle.Roogle_DTO;

public class Roogle_DAO {
	Connection conn;
	ResultSet rs;
	Statement stmt;
	PreparedStatement pstmt;
	//메소드 결과에 따른 int값 출력을 위한 변수
	static int result;
	
	//데이터베이스 Roogle_AnimalAPI의 변수 생성
	String api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size;
	
	// 테스트용 메인 메소드입니다. (지워도 됨)
	public static void main(String[] args) {
		Roogle_DAO rgDAO = new Roogle_DAO();
		Roogle_DTO rgDTO = null;
		
		ArrayList<Roogle_DTO> tempAry = rgDAO.api_category("거북");
		
		for(int i = 0; i < tempAry.size(); i++) {
			rgDTO = tempAry.get(i);
			System.out.println("이름 : " + rgDTO.getApi_name());
			System.out.println();
		}
	}
	
	
	// ---------API_dtoset-----------------------------------------------------------------------------------------
	ArrayList<Roogle_DTO> memList = new ArrayList<Roogle_DTO>();
	void dtoSet() {
		// Close를 용이하게 할려고 세개로 나누었습니다.
		conn = DbSet.getConnection();
		stmt = DbSet.getStatement(conn);	// Select * from Roogle_animalAPI
		rs = DbSet.getResultSet(stmt);	

		try {
			while (rs.next()) {
				api_name = rs.getString("api_name");
				api_species = rs.getString("api_species");
				api_ename  = rs.getString("api_ename");
				api_sname  = rs.getString("api_sname");
				api_photo  = rs.getString("api_photo");
				api_life  = rs.getString("api_life");
				api_size = rs.getString("api_size");

				Roogle_DTO dtoset = new Roogle_DTO();
				dtoset.setApi_name(api_name);
				dtoset.setApi_species(api_species);
				dtoset.setApi_ename(api_ename);
				dtoset.setApi_sname(api_sname);
				dtoset.setApi_photo(api_photo);
				dtoset.setApi_life(api_life);
				dtoset.setApi_size(api_size);

				memList.add(dtoset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// Close 추가했습니다.
			DbClose.close(rs, pstmt, conn);
		}
	}
	
	public ArrayList<Roogle_DTO> api_getter() {
		// Close를 용이하게 할려고 세개로 나누었습니다.
		conn = DbSet.getConnection();
		stmt = DbSet.getStatement(conn);	// Select * from Roogle_animalAPI
		rs = DbSet.getResultSet(stmt);	

		try {
			while (rs.next()) {
				api_name = rs.getString("api_name");
				api_species = rs.getString("api_species");
				api_ename  = rs.getString("api_ename");
				api_sname  = rs.getString("api_sname");
				api_photo  = rs.getString("api_photo");
				api_life  = rs.getString("api_life");
				api_size = rs.getString("api_size");

				Roogle_DTO dtoset = new Roogle_DTO();
				dtoset.setApi_name(api_name);
				dtoset.setApi_species(api_species);
				dtoset.setApi_ename(api_ename);
				dtoset.setApi_sname(api_sname);
				dtoset.setApi_photo(api_photo);
				dtoset.setApi_life(api_life);
				dtoset.setApi_size(api_size);

				memList.add(dtoset);
			}
			
			return memList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// Close 추가했습니다.
			DbClose.close(rs, stmt, conn);
		}
		
		return memList;
	}
	
	//db값을 가져오게 한다.
	public Roogle_DTO api_select(String api_name){
		Roogle_DTO dto = null;
		String sql = "select * from ROOGLE_AnimalAPI where api_name = ?";
        
		try {
			conn = DbSet.getConnection();// 1
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, api_name);
			rs = pstmt.executeQuery();
			if(rs!=null) {
				while(rs.next()) {
					api_name = rs.getString("api_name");
					api_species = rs.getString("api_species");
					api_ename  = rs.getString("api_ename");
					api_sname  = rs.getString("api_sname");
					api_photo  = rs.getString("api_photo");
					api_life  = rs.getString("api_life");
					api_size = rs.getString("api_size");
					dto = new Roogle_DTO(api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size);
				}
				return dto;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbClose.close(rs , pstmt, conn);
		}
		return dto;
	}
	
	// 매개변수에 종을 넣어주면 그 해당 종의 동물정보를 ArrayList로 반환해줌
	public ArrayList<Roogle_DTO> api_category(String species){
		String sql = "select * from ROOGLE_AnimalAPI where api_species = ?";
		Roogle_DTO dto = null;
		
		try {
			conn = DbSet.getConnection();// 1
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, species);
			rs = pstmt.executeQuery();
			if(rs!=null) {
				while(rs.next()) {
					dto = new Roogle_DTO();
					
					api_name = rs.getString("api_name");
					api_species = rs.getString("api_species");
					api_ename  = rs.getString("api_ename");
					api_sname  = rs.getString("api_sname");
					api_photo  = rs.getString("api_photo");
					api_life  = rs.getString("api_life");
					api_size = rs.getString("api_size");
					dto = new Roogle_DTO(api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size);
					
					memList.add(dto);
				}
				
				return memList;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbClose.close(rs , pstmt, conn);
		}
		return memList;
	}
}