package Roogle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Roogle_Cart_DAO {
	
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	Roogle_DAO rgDAO = new Roogle_DAO();
	
	public int mInsertCart(Roogle_Cart_DTO rg_cart_DTO) {
		String sql2 = "select MAX(cart_no) as num from ROOGLE_CART where cart_id = ?";
		String sql = "insert into ROOGLE_CART values(?, ?, ?, ?, ?)";
		int su = 0;
		int cart_no = 0;
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, rg_cart_DTO.getCart_id());
			rs = pstmt.executeQuery();
			
			if(rs != null) {
				rs.next();
				cart_no = rs.getInt("num");
				cart_no++;
				
				DbClose.close(rs);
			}
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rg_cart_DTO.getCart_id());
			pstmt.setInt(2, cart_no);
			pstmt.setString(3, rg_cart_DTO.getCart_animalname());
			pstmt.setInt(4, rg_cart_DTO.getCart_amount());
			pstmt.setInt(5, rg_cart_DTO.getCart_price());
			
			su = pstmt.executeUpdate();
			
			return su;
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		return su;
	}
	
	// DB내의 장바구니 정보 ArrayList<>로 반환
	public ArrayList<Roogle_Cart_DTO> mSelectCart(String id) {
		String sql = "select * from ROOGLE_CART where cart_id = ? order by cart_no asc";
		
		
		ArrayList<Roogle_Cart_DTO> cartAry = new ArrayList<Roogle_Cart_DTO>();
		Roogle_Cart_DTO cartDTO = null;
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					cartDTO = new Roogle_Cart_DTO();
					
					cartDTO.setCart_img(rgDAO.api_select(rs.getString("cart_animalname")).getApi_photo());
					cartDTO.setCart_no(rs.getInt("cart_no"));
					cartDTO.setCart_animalname(rs.getString("cart_animalname"));
					cartDTO.setCart_amount(rs.getInt("cart_amount"));
					cartDTO.setCart_price(rs.getInt("cart_price"));
					
					cartAry.add(cartDTO);
				}
				
				return cartAry;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return cartAry;
	}
	
	// 장바구니 내의 분양수 수정
	public int mUpdCart(String cart_id ,int cart_no, int cart_amount) {
		String sql = "update ROOGLE_CART SET cart_amount = ? where cart_id = ? AND cart_no = ?";
		int su = 0;
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_amount);
			pstmt.setString(2, cart_id);
			pstmt.setInt(3, cart_no);
			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		
		return su;
	}
	
	// 장바구니 내의 물품 모두 삭제
	public int mAllDelCart(String cart_id) {
		String sql = "delete from ROOGLE_CART where cart_id = ?";
		int su = 0;
		
		try {
			conn = DbSet.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cart_id);
			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		
		return su;
	}
	
	// 장바구니 내의 물품 선택 삭제
	public int mDelCart(String cart_id, String cart_no_Ary) {
		String sql = "delete from ROOGLE_CART where cart_no = ?";
		int su = 0;
		
		String[] cart_no = cart_no_Ary.split(" ");
		
		try {
			conn = DbSet.getConnection();
			
			for(int i = 0; i < cart_no.length; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(cart_no[i]));
				
				su = pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DbClose.close(pstmt, conn);
		}
		
		return su;
	}
}
