package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbSet {
	
	public static Connection conn;
	public static Statement stmt;
	public static PreparedStatement pstmt;
	public static ResultSet rs;
	
	public static Connection getConnection(){
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String vUser = "hr";
		String vPassword = "hr";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, vUser, vPassword);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static Statement getStatement(Connection conn){
		
		try {
			stmt = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 		
		return stmt;
	}
	
	public static PreparedStatement getPreparedStatement(String sql){
		conn = DbSet.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pstmt;
	}
	
	public static ResultSet getResultSet(Statement stmt){
		String sql = "select * from memberT01";
		
		try {
			rs = stmt.executeQuery(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public static ResultSet getResultSetQuery(Statement stmt, String sql){
		
		try {
			rs = stmt.executeQuery(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public static ResultSet getResultSetUpdate(Statement stmt, String sql){
		rs = null;
		
		try {
			rs = stmt.executeQuery(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
}
