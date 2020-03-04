package shoes.dao;

import java.sql.PreparedStatement;

import java.sql.SQLException;

public class InsertReviewImgDAO extends DAO{

	public int insertReviewImg(String imgName, int size) {
		int result=0;
		int result1=0;
		String sql = "insert into image values((select max(img_no)+1 from image),'I03',(select max(rw_no) from purchase_review))";
		String sql1= "insert into image_detail values((select max(img_no)+1 from image_detail),?,sysdate,?,'Y')";
		
		PreparedStatement pstmt1;
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			
			System.out.println("image 테이블에 "+result+"건 입력되었습니다.");
			pstmt1=conn.prepareStatement(sql1);
			pstmt1.setString(1, imgName);
			pstmt1.setInt(2, size);
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
}
