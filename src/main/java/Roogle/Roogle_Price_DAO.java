package Roogle;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

public class Roogle_Price_DAO {
	
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	Roogle_Crawling CrawDAO = new Roogle_Crawling();
	
	public static void main(String[] args) {
		Roogle_Price_DAO rgDAO = new Roogle_Price_DAO();
		
		int[] tempAry = rgDAO.price_animals("노말콘스네이크");
		
		for(int i = 0; i < tempAry.length; i++) {
			System.out.println(tempAry[i]);
		}
	}
	
	// 웹에서 가격만 크롤링해와서 해당 동물의 가격을 ArrayList로 반환해줌
	public int[] price_animals(String pr_name){
		String sql = "select * from ROOGLE_price where pr_name = ?";
		int tempPrice = 0;
		int[] priceAry = new int[11];
		
		try {
			conn = DbSet.getConnection();
			pstmt = DbSet.getPreparedStatement(sql);
			pstmt.setString(1, pr_name);
			rs = pstmt.executeQuery();
			
			if(rs != null) {
				while(rs.next()) {
					priceAry = new int[11];
					
					if(!(rs.getString("pr_bighorn") == "" || rs.getString("pr_bighorn") == null)) {
						priceAry[0] = CrawDAO.bigHorn(rs.getString("pr_bighorn"));
					} 
					if(!(rs.getString("pr_seoul") == "" || rs.getString("pr_seoul") == null)) {
						priceAry[1] = CrawDAO.seoul(rs.getString("pr_seoul"));
					} 
					if(!(rs.getString("pr_breeders") == "" || rs.getString("pr_breeders") == null)) {
						priceAry[2] = CrawDAO.breeders(rs.getString("pr_breeders"));
					}
					if(!(rs.getString("pr_zoo") == "" || rs.getString("pr_zoo") == null)) {
						priceAry[3] = CrawDAO.theZoo(rs.getString("pr_zoo"));
					}
					if(!(rs.getString("pr_balto") == "" || rs.getString("pr_balto") == null)) {
						priceAry[4] = CrawDAO.balto(rs.getString("pr_balto"));
					}
					if(!(rs.getString("pr_woosoo") == "" || rs.getString("pr_woosoo") == null)) {
						priceAry[5] = CrawDAO.woosoo(rs.getString("pr_woosoo"));
					}
					if(!(rs.getString("pr_vanmori") == "" || rs.getString("pr_vanmori") == null)) {
						priceAry[6] = CrawDAO.vanmori(rs.getString("pr_vanmori"));
					}
					if(!(rs.getString("pr_newrun") == "" || rs.getString("pr_newrun") == null)) {
						priceAry[7] = CrawDAO.newrun(rs.getString("pr_newrun"));
					}
					if(!(rs.getString("pr_millim") == "" || rs.getString("pr_millim") == null)) {
						priceAry[8] = CrawDAO.millim(rs.getString("pr_millim"));
					}
					if(!(rs.getString("pr_holic") == "" || rs.getString("pr_holic") == null)) {
						priceAry[9] = CrawDAO.holic(rs.getString("pr_holic"));
					}
					if(!(rs.getString("pr_thereptile") == "" || rs.getString("pr_thereptile") == null)) {
						priceAry[10] = CrawDAO.thereptile(rs.getString("pr_thereptile"));
					}
					
					for(int i = 0; i < priceAry.length-1; i++) {
						for(int j = (i+1); j < priceAry.length; j++) {
							if(priceAry[i] > priceAry[j]) {
								tempPrice = priceAry[i];
								priceAry[i] = priceAry[j];
								priceAry[j] = tempPrice;
							}
						}
					}
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DbClose.close(rs, pstmt, conn);
		}
		
		return priceAry;
	}
	
	// 웹에서 가격만 크롤링해와서 해당 동물의 최소가만 반환해줌
		public int lowPrice_animals(String pr_name){
			String sql = "select * from ROOGLE_price where pr_name = ?";
			int tempPrice = 0;
			int[] priceAry = new int[11];
			int lowPrice = 0;
			
			try {
				conn = DbSet.getConnection();
				pstmt = DbSet.getPreparedStatement(sql);
				pstmt.setString(1, pr_name);
				rs = pstmt.executeQuery();
				
				if(rs != null) {
					while(rs.next()) {
						priceAry = new int[11];
						
						if(!(rs.getString("pr_bighorn") == "" || rs.getString("pr_bighorn") == null)) {
							priceAry[0] = CrawDAO.bigHorn(rs.getString("pr_bighorn"));
						} 
						if(!(rs.getString("pr_seoul") == "" || rs.getString("pr_seoul") == null)) {
							priceAry[1] = CrawDAO.seoul(rs.getString("pr_seoul"));
						} 
						if(!(rs.getString("pr_breeders") == "" || rs.getString("pr_breeders") == null)) {
							priceAry[2] = CrawDAO.breeders(rs.getString("pr_breeders"));
						}
						if(!(rs.getString("pr_zoo") == "" || rs.getString("pr_zoo") == null)) {
							priceAry[3] = CrawDAO.theZoo(rs.getString("pr_zoo"));
						}
						if(!(rs.getString("pr_balto") == "" || rs.getString("pr_balto") == null)) {
							priceAry[4] = CrawDAO.balto(rs.getString("pr_balto"));
						}
						if(!(rs.getString("pr_woosoo") == "" || rs.getString("pr_woosoo") == null)) {
							priceAry[5] = CrawDAO.woosoo(rs.getString("pr_woosoo"));
						}
						if(!(rs.getString("pr_vanmori") == "" || rs.getString("pr_vanmori") == null)) {
							priceAry[6] = CrawDAO.vanmori(rs.getString("pr_vanmori"));
						}
						if(!(rs.getString("pr_newrun") == "" || rs.getString("pr_newrun") == null)) {
							priceAry[7] = CrawDAO.newrun(rs.getString("pr_newrun"));
						}
						if(!(rs.getString("pr_millim") == "" || rs.getString("pr_millim") == null)) {
							priceAry[8] = CrawDAO.millim(rs.getString("pr_millim"));
						}
						if(!(rs.getString("pr_holic") == "" || rs.getString("pr_holic") == null)) {
							priceAry[9] = CrawDAO.holic(rs.getString("pr_holic"));
						}
						if(!(rs.getString("pr_thereptile") == "" || rs.getString("pr_thereptile") == null)) {
							priceAry[10] = CrawDAO.thereptile(rs.getString("pr_thereptile"));
						}
						
						for(int i = 0; i < priceAry.length-1; i++) {
							for(int j = (i+1); j < priceAry.length; j++) {
								if(priceAry[i] > priceAry[j]) {
									tempPrice = priceAry[i];
									priceAry[i] = priceAry[j];
									priceAry[j] = tempPrice;
								}
							}
						}
						for(int i = priceAry.length-1; i > 0; i-- ) {
							if(priceAry[i] != 0) {
								lowPrice = priceAry[i];
							}
						}
					}
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DbClose.close(rs, pstmt, conn);
			}
			
			return lowPrice;
		}
}
