package shoes.dto;

import java.sql.Date;

public class reservationDTO {
	private int res_no;
	private int ord_no;
	private String sm_id;
	private Date res_date;
	private String res_remark;
	
	public int getRes_no() {
		return res_no;
	}
	public void setRes_no(int res_no) {
		this.res_no = res_no;
	}

	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public String getSm_id() {
		return sm_id;
	}
	public void setSm_id(String sm_id) {
		this.sm_id = sm_id;
	}
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public String getRes_remark() {
		return res_remark;
	}
	public void setRes_remark(String res_remark) {
		this.res_remark = res_remark;
	}
	
	@Override
	public String toString() {
		return "reservationDTO [res_no=" + res_no + ", ord_no=" + ord_no + ", sm_id=" + sm_id + ", res_date=" + res_date
				+ ", res_remark=" + res_remark + "]";
	}
	

	
}
