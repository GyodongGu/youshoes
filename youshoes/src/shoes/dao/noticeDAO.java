package shoes.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import shoes.dto.noticeDTO;

/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 noticeDAO를 생성 
 * 1. 공지사항 전체 가져오기 noticeSelect() 
 * 2. 관리자 공지사항 등록 noticeInsert() 
 * 3. 관리자 공지사항 수정 noticeUpdate()
 * 
 */

public class noticeDAO extends DAO {
	ArrayList<noticeDTO> list;
	noticeDTO dto;

	public noticeDAO() {
		super();
	}

	public ArrayList<noticeDTO> noticeSelect() { // 1. 공지사항 전체 가져오기 noticeSelect()
		list = new ArrayList<noticeDTO>();
		String sql = "select * from notice";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
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

	public ArrayList<noticeDTO> noticeInsert() { // 2. 관리자 공지사항 등록 noticeInsert()
		// notice_no, notice_title, notice_date, notice_content  관리자가 수정
		list = new ArrayList<noticeDTO>();
		String sql = "insert into notice(notice_no, notice_title, notice_date, notice_content) " + "value(?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new noticeDTO();
				pstmt.setInt(1, dto.getNotice_no());
				pstmt.setString(2, dto.getNotice_title());
				pstmt.setDate(3, dto.getNotice_date());
				pstmt.setString(4, dto.getNotice_content());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<noticeDTO> noticeUpdate() { // 3. 관리자 공지사항 수정 noticeUpdate()
		list = new ArrayList<noticeDTO>();
		String sql = "update notice set notice_title = ?, notice_content = ? where notice_no = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new noticeDTO();
				pstmt.setString(1, dto.getNotice_title());
				pstmt.setString(2, dto.getNotice_content());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
