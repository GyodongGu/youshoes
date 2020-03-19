package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shoes.dto.noticeDTO;

/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 noticeDAO를 생성 
 * 1. 공지사항 전체 가져오기 noticeSelect() 
 * 2. 관리자 공지사항 등록 noticeInsert() 
 * 3. 관리자 공지사항 수정 noticeUpdate()
 * 
 */

public class noticeDAO extends DAO {
	public List<noticeDTO> noticeSelect(int page) { // 1. 공지사항 전체 가져오기 noticeSelect()
		List<noticeDTO> list = new ArrayList<noticeDTO>();
		String sql="select * from ( " + 
				" select rownum num, n.* " + 
				" from (select * from notice order by notice_no desc) n " + 
				" ) " + 
				" where num between ? and ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1+(page-1)*5);
			pstmt.setInt(2, page*5);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				// notice_no, notice_title, notice_date, notice_content
				noticeDTO ndto = new noticeDTO();
				ndto.setNum(rs.getInt("num"));
				ndto.setNotice_no(rs.getInt("notice_no"));
				ndto.setNotice_title(rs.getString("notice_title"));
				ndto.setNotice_date(rs.getDate("notice_date"));
				ndto.setNotice_content(rs.getString("notice_content"));
				list.add(ndto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int eventCount() {
		int result=0;
		
		String sql = "select count(notice_no) count from notice";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				result=rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	

//	public List<noticeDTO> noticeInsert(int no, String title, ) { // 2. 관리자 공지사항 등록 noticeInsert()
//		List<noticeDTO> insertList = new ArrayList<noticeDTO>();
//		String sql = "insert into notice(notice_no, notice_title, notice_date, notice_content) " + "value(?,?,sysdate,?)";
//
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, no);
//			pstmt.setString(2, string);
//			pstmt.setDate(3, );
//			pstmt.setString(4, content);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				noticeDTO dto = new noticeDTO();
//				dto.setInt(1, dto.getNotice_no());
//				dto.setString(2, dto.getNotice_title());
//				dto.setDate(3, dto.getNotice_date());
//				dto.setString(4, dto.getNotice_content());
//				insertList.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list;
//	}
//
//	public ArrayList<noticeDTO> noticeUpdate() { // 3. 관리자 공지사항 수정 noticeUpdate()
//		list = new ArrayList<noticeDTO>();
//		String sql = "update notice set notice_title = ?, notice_content = ? where notice_no = ?";
//
//		try {
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				dto = new noticeDTO();
//				pstmt.setString(1, dto.getNotice_title());
//				pstmt.setString(2, dto.getNotice_content());
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return list;
//	}
}
