package shoes.dao;

import java.sql.SQLException;

import shoes.dto.backupDTO;

public class BackupDAO extends DAO{
	
	public int insertBackup(backupDTO bdto) {
		int result = 0;
		
		String sql = "insert into backup values(?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bdto.getOrd_no());
			pstmt.setInt(2, bdto.getPm_no());
			pstmt.setDate(3, bdto.getOrd_date());
			pstmt.setInt(4, bdto.getOrd_point());
			pstmt.setString(5, bdto.getOrd_stat_cd());
			pstmt.setInt(6, bdto.getOrd_cnt());
			pstmt.setInt(7, bdto.getPdt_no());
			
			result = pstmt.executeUpdate();
			System.out.println("백업테이블에 "+result +"건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
}
