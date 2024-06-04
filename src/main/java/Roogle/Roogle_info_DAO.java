package Roogle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Roogle_info_DAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public Roogle_info_DTO mSelectInfo(String info_name) {
		String sql = "select * from ROOGLE_ANIINFO where info_name = ?";
		Roogle_info_DTO rg_info_DTO = new Roogle_info_DTO();
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, info_name);
			
			rs = pstmt.executeQuery();
			
			if(rs != null) {
				rs.next();
				rg_info_DTO.setInfo_name(info_name);
				rg_info_DTO.setInfo_data(rs.getString("info_data"));
				rg_info_DTO.setInfo_habitat(rs.getString("info_habitat"));
				rg_info_DTO.setInfo_breeding(rs.getString("info_breeding"));
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DbClose.close(rs, pstmt, conn);
		}
		
		return rg_info_DTO;
	}
}
