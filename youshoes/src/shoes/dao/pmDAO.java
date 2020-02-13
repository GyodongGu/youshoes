package shoes.dao;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import shoes.dto.pmDTO;

/**
 * @author 유승우 상위 DAO 클래스를 상속받아서 pmDAO를 생성 
 * 1. 회원목록 전체 조회            pmSelect()
 * 2. 회원 등록 등록                  pmInsert() 
 * 3. 회원 정보 수정                  pmUpdate()
 * 4. 회원 정보 삭제                  pmDelete()
 * 5. 회원가입창에서 아이디 중복체크  idOverlapCheck()
 * 6. 로그인 체크                      loginCheck()
 * 7. 구매회원 현재 포인트 확인  selectPoint()
 */

/**
 * purchase_member 테이블 pm_no, pm_id, pm_pw, pm_name, pm_stat_cd, pm_birth,
 * pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2, point_now
 *
 */

public class pmDAO extends DAO {
	private pmDTO dto;
	private ArrayList<pmDTO> list;

	public pmDAO() {
		super();
	}

	public ArrayList<pmDTO> pmSelect() { // 1. 회원목록 전체 조회 pmSelect()
		list = new ArrayList<pmDTO>();
		String sql = "select * from purchase_member";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new pmDTO();
				dto.setPm_no(rs.getInt("pm_no"));
				dto.setPm_id(rs.getString("pm_id"));
				dto.setPm_pw(rs.getString("pm_pw"));
				dto.setPm_name(rs.getString("pm_name"));
				dto.setPm_stat_cd(rs.getString("pm_stat_cd"));
				dto.setPm_birth(rs.getDate("pm_birth"));
				dto.setPm_email(rs.getString("pm_email"));
				dto.setPm_date(rs.getDate("pm_date"));
				dto.setPm_tell(rs.getString("pm_tell"));
				dto.setPm_post(rs.getString("pm_post"));
				dto.setPm_addr1(rs.getString("pm_addr1"));
				dto.setPm_addr2(rs.getString("pm_addr2"));
				dto.setPm_addr3(rs.getString("pm_addr3"));
				dto.setPoint_now(rs.getInt("point_now"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int pmInsert(pmDTO dto) { // 2. 회원 등록 (회원 가입) pmInsert()
		int n = 0;
		/* 유승우 2020.02.10 뭘 넣어야 할지 아직 모르겠음 */
		String sql = "insert into purchase_member(pm_no, pm_id, pm_pw, pm_name, pm_stat_cd, pm_birth, pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2, pm_addr3, point_now )"
				+ "values(pm_no.nextval, ?, ?, ?, 'act04', ?, ?, sysdate, ?, ?, ?, ?, ?, 500)";

		// 회원번호, 아이디, 비번, 이름, 상태, 생년월일, 이메일, 가입일, 전화번호, 우편번호, 주소1, 주소2, 주소3, 포인트
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_id());
			pstmt.setString(2, dto.getPm_pw());
			pstmt.setString(3, dto.getPm_name());
			pstmt.setDate(4, dto.getPm_birth());
			pstmt.setString(5, dto.getPm_email());
			pstmt.setString(6, dto.getPm_tell());
			pstmt.setString(7, dto.getPm_post());
			pstmt.setString(8, dto.getPm_addr1());
			pstmt.setString(9, dto.getPm_addr2());
			pstmt.setString(10, dto.getPm_addr3());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int pmUpdate(pmDTO dto) { // 3. 회원 정보 수정 pmUpdate()
		int n = 0;
		String sql = "update purchase_member set pm_name = ?, pm_email = ?, pm_tell = ?,"
				+ "pm_post=?, pm_addr1=?, pm_addr2=?, pm_addr3=?" + "where pm_id=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_name());
			pstmt.setString(2, dto.getPm_email());
			pstmt.setString(3, dto.getPm_tell());
			pstmt.setString(4, dto.getPm_post());
			pstmt.setString(5, dto.getPm_addr1());
			pstmt.setString(6, dto.getPm_addr2());
			pstmt.setString(7, dto.getPm_addr3());
			pstmt.setString(8, dto.getPm_id());
			list.add(dto);
			/* n = pstmt.executeUpdate(); */
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int pmDelete(pmDTO dto) { // 4. 회원 정보 삭제 pmDelete()
		int n = 0;
		String sql = "delete from purchase_memeber where pm_id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_id());
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public boolean idOverlapCheck(String id) { // 5. 회원가입창에서 아이디 중복체크 idOverlapCheck()
		boolean bol = true;
		String sql = "select * from purchase_memeber where pm_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bol = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return bol;
	}

	public String loginCheck(String id, String pw) { // 6. 로그인 체크 loginCheck()
		String grant = null;
		String sql = "select pm_stat_cd from purchase_member where pm_id = ? and pm_pw=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			if (rs.next())
				grant = rs.getString("pm_stat_cd");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant; // 로그인 성공 시 권한을 넘겨줌
	}

	public int selectPoint(int id) { // 7. 구매회원 현재 포인트 확인 selectPoint()
		int n = 0;
		String sql = "select sum(point_charge) as idpoint from point where pm_no=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				n = rs.getInt("idpoint");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
}
