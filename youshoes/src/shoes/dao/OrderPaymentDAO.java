package shoes.dao;

import java.sql.SQLException;

import shoes.dto.ordDetailDTO;
import shoes.dto.payHistoryDTO;

public class OrderPaymentDAO extends DAO{
	
	//제품에 대한 결제시 ord테이블에 insert
	public int InsertOrd(int pmno, int pdtno, int point) {
		int result=0;
		
		String sql = "insert into ord values((select max(ord_no)+1 from ord),?,?,sysdate,?,'001')";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pmno);
			pstmt.setInt(2, pdtno);
			pstmt.setInt(3, point);
			result=pstmt.executeUpdate();
			
			System.out.println("ord테이블에 "+result + "건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	//ord테이블 insert후 ord_detail테이블 insert
	public int InsertOrdDetail(ordDetailDTO oddto) {
		int result = 0;
		
		String sql= "insert into ord_detail values((select max(ord_detail_no)+1 from ord_detail),?,?,?,?,(select max(ord_no) from ord))";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, oddto.getOrd_size());
			pstmt.setString(2, oddto.getOrd_color());
			pstmt.setInt(3, oddto.getOrd_cnt());
			pstmt.setInt(4, oddto.getOrd_detail_point());
			
			
			result=pstmt.executeUpdate();
			
			System.out.println("ord_detail 테이블에 "+result + "건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	//주문,주문상세 테이블 입력 수 결제내역 입력하기
	public int insertPayHistory(payHistoryDTO phdto) {
		int result=0;
		
		String sql = "insert into pay_history values(?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, phdto.getOrder_no());
			pstmt.setDate(2, phdto.getPay_date());
			pstmt.setInt(3, phdto.getPay_point());
			
			result=pstmt.executeUpdate();
			System.out.println("payHistory테이블에 "+result + "건 입력되었습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	
	
	//결제내역 입력 후 회원 보유 포인트 수정하기
	public int updatePmPoint(int point, int pmno) {
		int result=0;
		
		String sql ="update purchase_member set point_now=? where pm_no=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			pstmt.setInt(2, pmno);
			result=pstmt.executeUpdate();
			System.out.println("구매자의 현재 포인트가 "+result + "건 변경되었습니다.");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return result;
	}
	
}
