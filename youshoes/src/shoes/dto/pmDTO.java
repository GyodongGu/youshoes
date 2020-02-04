package shoes.dto;

import java.sql.Date;

public class pmDTO {
	private int pm_no;
	private String pm_id;
	private String pm_pw;
	private String pm_name;
	private String pm_stat_cd;
	private Date pm_birth;
	private String pm_email;
	private Date pm_date;
	private int pm_tell;
	private int pm_post;
	private String pm_addr1;
	private String pm_addr2;
	private int point_now;
	
	public int getPm_no() {
		return pm_no;
	}
	public void setPm_no(int pm_no) {
		this.pm_no = pm_no;
	}
	public String getPm_id() {
		return pm_id;
	}
	public void setPm_id(String pm_id) {
		this.pm_id = pm_id;
	}
	public String getPm_pw() {
		return pm_pw;
	}
	public void setPm_pw(String pm_pw) {
		this.pm_pw = pm_pw;
	}
	public String getPm_name() {
		return pm_name;
	}
	public void setPm_name(String pm_name) {
		this.pm_name = pm_name;
	}
	public String getPm_stat_cd() {
		return pm_stat_cd;
	}
	public void setPm_stat_cd(String pm_stat_cd) {
		this.pm_stat_cd = pm_stat_cd;
	}
	public Date getPm_birth() {
		return pm_birth;
	}
	public void setPm_birth(Date pm_birth) {
		this.pm_birth = pm_birth;
	}
	public String getPm_email() {
		return pm_email;
	}
	public void setPm_email(String pm_email) {
		this.pm_email = pm_email;
	}
	public Date getPm_date() {
		return pm_date;
	}
	public void setPm_date(Date pm_date) {
		this.pm_date = pm_date;
	}
	public int getPm_tell() {
		return pm_tell;
	}
	public void setPm_tell(int pm_tell) {
		this.pm_tell = pm_tell;
	}
	public int getPm_post() {
		return pm_post;
	}
	public void setPm_post(int pm_post) {
		this.pm_post = pm_post;
	}
	public String getPm_addr1() {
		return pm_addr1;
	}
	public void setPm_addr1(String pm_addr1) {
		this.pm_addr1 = pm_addr1;
	}
	public String getPm_addr2() {
		return pm_addr2;
	}
	public void setPm_addr2(String pm_addr2) {
		this.pm_addr2 = pm_addr2;
	}
	public int getPoint_now() {
		return point_now;
	}
	public void setPoint_now(int point_now) {
		this.point_now = point_now;
	}
	@Override
	public String toString() {
		return "pmDTO [pm_no=" + pm_no + ", pm_id=" + pm_id + ", pm_pw=" + pm_pw + ", pm_name=" + pm_name
				+ ", pm_stat_cd=" + pm_stat_cd + ", pm_birth=" + pm_birth + ", pm_email=" + pm_email + ", pm_date="
				+ pm_date + ", pm_tell=" + pm_tell + ", pm_post=" + pm_post + ", pm_addr1=" + pm_addr1 + ", pm_addr2="
				+ pm_addr2 + ", point_now=" + point_now + "]";
	}
	
	
}
