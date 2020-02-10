package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import shoes.dto.noticeDTO;

/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 noticeDAO를 생성 
 * 1. 공지사항 전체 가져오기             noticeSelect()
 * 2. 관리자 공지사항 등록                noticeInsert()
 * 3. 관리자 공지사항 수정		  noticeUpdate()
 * 
 */

public class noticeDAO extends DAO {
	ArrayList<noticeDTO> list;
	noticeDTO dto;
	
	public noticeDAO() {
		super();
	}
	public ArrayList<noticeDTO> noticeSelect() { // 공지사항 전체 가져오기
		list = new ArrayList<noticeDTO>();
		String sql = "select * from notice";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new noticeDTO();
				dto.setNotice_no(rs.getInt("noticeNo"));
				dto.setNotice_title(rs.getString("noticeTitle"));
				dto.setNotice_date(rs.getDate("noticeDate"));
				dto.setNotice_content(rs.getString("noticeContent"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
