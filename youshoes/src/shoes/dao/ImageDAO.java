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
		
		String sql = "select * from image where section_no=?";
		
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

}
