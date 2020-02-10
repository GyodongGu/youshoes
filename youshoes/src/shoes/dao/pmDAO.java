package shoes.dao;

import java.sql.SQLException;
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
 * 
 */

/** purchase_member 테이블
 *  pm_no, pm_id, pm_pw, pm_name, pm_stat_cd, pm_birth, 
 *  pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2, point_now
 *
 */

public class pmDAO extends DAO {
	private pmDTO dto;
	private ArrayList<pmDTO> list;

	public pmDAO() {
		super();
	}

	public ArrayList<pmDTO> pmSelect() { // 1. 회원목록 전체 조회    pmSelect()
		list = new ArrayList<pmDTO>();
		pmDTO dto = new pmDTO();
		String sql = "select * from purchase_member";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setPm_no(rs.getInt("pMemNo"));
				dto.setPm_id(rs.getString("pMemID"));
				dto.setPm_pw(rs.getString("pMemPW"));
				dto.setPm_name(rs.getString("pMemName"));
				dto.setPm_stat_cd(rs.getString("pMemStatCode"));
				dto.setPm_birth(rs.getDate("pMemBirth"));
				dto.setPm_email(rs.getString("pMemEmail"));
				dto.setPm_date(rs.getDate("pMemDate"));
				dto.setPm_tell(rs.getString("pMemTell"));
				dto.setPm_post(rs.getString("pMemPost"));
				dto.setPm_addr1(rs.getString("pMemAddr1"));
				dto.setPm_addr2(rs.getString("pMemAddr2"));
				dto.setPoint_now(rs.getInt("pMemPoint"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int pmInsert(pmDTO dto)  { // 2. 회원 등록 (회원 가입)      pmInsert() 
		int n = 0;
		/* 유승우 2020.02.10 뭘 넣어야 할지 아직 모르겠음 */
		String sql = "insert into purchase_member(pm_id, pm_pw, pm_name, pm_birth, pm_email, pm_date, pm_tell, pm_post, pm_addr1, pm_addr2  )"
					+ "value(?,?,?,?,?,?,?,?,?,?,?)";
		
		// 아이디, 비번, 비밀번호 확인, 이름, 생년월일, 이메일, 가입일, 전화번호, 우편번호, 주소1, 주소2, 주소3
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPm_id());
			pstmt.setString(2, dto.getPm_pw());
			pstmt.setString(3, dto.getPm_name());
			pstmt.setDate(4, dto.getPm_birth());
			pstmt.setString(5, dto.getPm_email());
			pstmt.setString(6, dto.);
			pstmt.setInt(7, dto.getPm_tell());
			pstmt.setInt(8, dto.getPm_post());
			pstmt.setString(9, dto.getPm_addr1());
			pstmt.setString(10, dto.getPm_addr2());
			pstmt.setString(11, dto.getPm_addr3());
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int pmUpdate(pmDTO dto) { // 3. 회원 정보 수정      pmUpdate()
		int n = 0;
		String sql = "update purchase_member set  = ''";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.set
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int pmDelete(pmDTO dto) { // 4. 회원 정보 삭제      pmDelete()
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

	public boolean idOverlapCheck(String id) { // 5. 회원가입창에서 아이디 중복체크  idOverlapCheck()
		boolean bol = true;
		String sql = "select * from purchase_memeber where pm_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bol = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return bol;
	}
	
	public String loginCheck(String id, String password) { // 6. 로그인 체크       loginCheck()
		String grant = null;
		String sql = "select from purchase_member where pm_id = ? and pm_pw=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				grant = rs.getString("");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant;  // 로그인 성공 시 권한을 넘겨줌
	}
}
