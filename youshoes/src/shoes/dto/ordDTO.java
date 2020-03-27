package shoes.dto;

import java.sql.Date;

public class ordDTO {
	private int ord_no;
	private int pm_no;
	private int pdt_no;
	private Date ord_date;
	private int ord_point;
	private String ord_stat_cd;
	private int num;
	private String pdt_type_cd;
	private String pdt_name;
	private int refund;
	private int ord_cnt;
	private int rw_no;
	
	
	
	public int getRw_no() {
		return rw_no;
	}
	public void setRw_no(int rw_no) {
		this.rw_no = rw_no;
	}
	public int getOrd_cnt() {
		return ord_cnt;
	}
	public void setOrd_cnt(int ord_cnt) {
		this.ord_cnt = ord_cnt;
	}
	public int getRefund() {
		return refund;
	}
	public void setRefund(int refund) {
		this.refund = refund;
	}
	public String getPdt_name() {
		return pdt_name;
	}
	public void setPdt_name(String pdt_name) {
		this.pdt_name = pdt_name;
	}
	public String getPdt_type_cd() {
		return pdt_type_cd;
	}
	public void setPdt_type_cd(String pdt_type_cd) {
		this.pdt_type_cd = pdt_type_cd;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public int getPm_no() {
		return pm_no;
	}
	public void setPm_no(int pm_no) {
		this.pm_no = pm_no;
	}
	public int getPdt_no() {
		return pdt_no;
	}
	public void setPdt_no(int pdt_no) {
		this.pdt_no = pdt_no;
	}
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
	public int getOrd_point() {
		return ord_point;
	}
	public void setOrd_point(int ord_point) {
		this.ord_point = ord_point;
	}
	public String getOrd_stat_cd() {
		return ord_stat_cd;
	}
	public void setOrd_stat_cd(String ord_stat_cd) {
		this.ord_stat_cd = ord_stat_cd;
	}
	
	@Override
	public String toString() {
		return "ordDTO [ord_no=" + ord_no + ", pm_no=" + pm_no + ", pdt_no=" + pdt_no + ", ord_date=" + ord_date
				+ ", ord_point=" + ord_point + ", ord_stat_cd=" + ord_stat_cd + "]";
	}


	
	
	
}