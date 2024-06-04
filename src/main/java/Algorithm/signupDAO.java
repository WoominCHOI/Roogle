package Algorithm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import common.DbClose;
import common.DbSet;

public class signupDAO {

    Connection conn = null;
    Statement stmt = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public int signup(LoginDTO dto) {
        int su = 0;

        String sql = "INSERT INTO Roogle_USER (user_id, user_pwd, user_name, user_email, user_phon, user_addr) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            conn = DbSet.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getPwd());
            pstmt.setString(3, dto.getName());
            pstmt.setString(4, dto.getEmail());
            pstmt.setString(5, dto.getPhone());
            pstmt.setString(6, dto.getAddr());

            su = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbClose.close(pstmt, conn);
        }
        return su;
    }
}