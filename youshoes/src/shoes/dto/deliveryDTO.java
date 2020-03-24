package shoes.dto;

import java.sql.Date;
import java.util.List;

public class deliveryDTO {
	
	private String invoice_no;
	private Date dlvy_date;
	private String dlvy_name;
	private String dlvy_tell;
	private String dlvy_post;
	private String dlvy_addr1;
	private String dlvy_addr2;
	private String dlvy_addr3;
	private String dlvy_cd;
	private String dlvy_remark;
	private int ord_no;
	private List<ordDetailDTO> ordDetail;
	private int pdt_no;
	private List<imageDetailDTO> imgDetail;
	
	
	
	
	public List<imageDetailDTO> getImgDetail() {
		return imgDetail;
	}
	public void setImgDetail(List<imageDetailDTO> imgDetail) {
		this.imgDetail = imgDetail;
	}
	public int getPdt_no() {
		return pdt_no;
	}
	public void setPdt_no(int pdt_no) {
		this.pdt_no = pdt_no;
	}
	public List<ordDetailDTO> getOrdDetail() {
		return ordDetail;
	}
	public void setOrdDetail(List<ordDetailDTO> ordDetail) {
		this.ordDetail = ordDetail;
	}
	public String getDlvy_cd() {
		return dlvy_cd;
	}
	public void setDlvy_cd(String dlvy_cd) {
		this.dlvy_cd = dlvy_cd;
	}
	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public String getInvoice_no() {
		return invoice_no;
	}
	public void setInvoice_no(String invoice_no) {
		this.invoice_no = invoice_no;
	}
	public Date getDlvy_date() {
		return dlvy_date;
	}
	public void setDlvy_date(Date dlvy_date) {
		this.dlvy_date = dlvy_date;
	}
	public String getDlvy_name() {
		return dlvy_name;
	}
	public void setDlvy_name(String dlvy_name) {
		this.dlvy_name = dlvy_name;
	}
	public String getDlvy_tell() {
		return dlvy_tell;
	}
	public void setDlvy_tell(String dlvy_tell) {
		this.dlvy_tell = dlvy_tell;
	}
	public String getDlvy_post() {
		return dlvy_post;
	}
	public void setDlvy_post(String dlvy_post) {
		this.dlvy_post = dlvy_post;
	}
	public String getDlvy_addr1() {
		return dlvy_addr1;
	}
	public void setDlvy_addr1(String dlvy_addr1) {
		this.dlvy_addr1 = dlvy_addr1;
	}
	public String getDlvy_addr2() {
		return dlvy_addr2;
	}
	public void setDlvy_addr2(String dlvy_addr2) {
		this.dlvy_addr2 = dlvy_addr2;
	}
	public String getDlvy_addr3() {
		return dlvy_addr3;
	}
	public void setDlvy_addr3(String dlvy_addr3) {
		this.dlvy_addr3 = dlvy_addr3;
	}
	public String getDlvy_remark() {
		return dlvy_remark;
	}
	public void setDlvy_remark(String dlvy_remark) {
		this.dlvy_remark = dlvy_remark;
	}
	@Override
	public String toString() {
		return "deliveryDTO [invoice_no=" + invoice_no + ", dlvy_date=" + dlvy_date + ", dlvy_name=" + dlvy_name
				+ ", dlvy_tell=" + dlvy_tell + ", dlvy_post=" + dlvy_post + ", dlvy_addr1=" + dlvy_addr1
				+ ", dlvy_addr2=" + dlvy_addr2 + ", dlvy_addr3=" + dlvy_addr3 + ", dlvy_cd=" + dlvy_cd
				+ ", dlvy_remark=" + dlvy_remark + ", ord_no=" + ord_no + "]";
	}
	


	
	
}
