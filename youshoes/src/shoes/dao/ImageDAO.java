package shoes.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import shoes.dto.imageDetailDTO;

public class ImageDAO extends DAO{
	
	public int insertProfileImage(String id, imageDetailDTO iddto) {
		int result =0;
		int result1=0;
		String sql = "insert into image values((select max(img_no)+1 from image),'I04',?)";
		String sql1= "insert into image_detail values((select max(img_no)+1 from image_detail),?,sysdate,?,'Y')";
		
		PreparedStatement pstmt1;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
			System.out.println("image 테이블에 "+result+"건 입력되었습니다.");
			
			pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, iddto.getImg_name());
			pstmt1.setInt(2, iddto.getImg_size());
			result1 = pstmt1.executeUpdate();
			System.out.println("image_detail 테이블에 "+result1+"건 입력되었습니다.");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result1+result;
	}
	
	public int updateProfileImage(String id, imageDetailDTO iddto) {
		int result=0;
		String sql = "update image_detail set img_name=? where img_no=(select img_no from image where section_no=?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, iddto.getImg_name());
			pstmt.setString(2, id);
			result=pstmt.executeUpdate();
			System.out.println("image_detail 테이블에 "+result+"건 변경되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	
	public String selectProfileImage(String id) {
		String result = null;
		
		String sql = "select * from image where section_no=? and section='I04'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				result = rs.getString("section_no");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	public int deleteProfileImage(int pmno) {
		int result=0;
		
		String sql ="delete from image where section_no=(select pm_id from purchase_member where pm_no=?) and section='I04'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			result = pstmt.executeUpdate();
			System.out.println("프로필 이미지"+result+"건 삭제했습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	
	public int deleteReviewImage(String pmid) {
		int result=0;
		String sql="delete from image where section_no in(select rw_no from purchase_review where pm_id=?) and section='I03'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pmid);
			result = pstmt.executeUpdate();
			System.out.println("리뷰이미지 "+result+"건 삭제되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public String ImageName(String pmid) {
		String result = null;
		
		String sql = "select img_name from image i join image_detail d on i.img_no = d.img_no where section_no=? and section='I04'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pmid);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getString("img_name");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

}
