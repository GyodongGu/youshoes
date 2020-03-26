package shoes.dao;

import java.sql.SQLException;

import shoes.dto.likeDTO;

public class LikeDAO extends DAO{
	public int InsertLike(likeDTO ldto) {
		int result=0;
		
		String sql="insert into push_like values(?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ldto.getRw_no());
			pstmt.setString(2, ldto.getPm_id());
			result = pstmt.executeUpdate();
			System.out.println(result + "건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public int DeleteLike(likeDTO ddto) {
		int result=0;
		
		String sql = "delete from push_like where rw_no=? and pm_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ddto.getRw_no());
			pstmt.setString(2, ddto.getPm_id());
			result=pstmt.executeUpdate();
			System.out.println(result + "건 삭제되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	public boolean SelectLike(likeDTO sdto) {
		 
		boolean x =false;
		String sql="select * from push_like where rw_no=? and pm_id=? ";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sdto.getRw_no());
			pstmt.setString(2, sdto.getPm_id());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				x=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return x;
	}
	
}
